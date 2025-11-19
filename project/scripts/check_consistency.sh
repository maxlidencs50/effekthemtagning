#!/bin/bash
# Consistency checker for Effekthemtagning project
# Validates file references and structure

echo "🔍 Checking project consistency..."
echo ""

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

ERRORS=0
WARNINGS=0

# ============================================
# 1. Check that referenced files actually exist
# ============================================
echo "📁 Checking file references..."

# Extract all markdown file references from README and .clauderc
REFERENCED_FILES=$(grep -h '`[^`]*\.md\|`[^`]*\.csv' project/docs/README.md project/config/.clauderc 2>/dev/null | \
    grep -o '\`[^`]*\.\(md\|csv\)' | \
    tr -d '`' | \
    sort -u)

while IFS= read -r file; do
    if [ -n "$file" ] && [ ! -f "$file" ]; then
        echo -e "${RED}❌ Missing referenced file: $file${NC}"
        ((ERRORS++))
    fi
done <<< "$REFERENCED_FILES"

echo -e "${GREEN}✓ File reference check complete${NC}"
echo ""

# ============================================
# 2. Validate critical files exist
# ============================================
echo "📋 Checking critical files exist..."

CRITICAL_FILES=(
    "project/docs/README.md"
    "project/docs/CHANGELOG.md"
    "project/config/.clauderc"
    "work/main_report.md"
    "sources/knowledge/knowledge_base.md"
    "sources/knowledge/writing_style_guide.md"
    "sources/data/Affärskrav och måluppfyllelse.csv"
)

for file in "${CRITICAL_FILES[@]}"; do
    if [ ! -f "$file" ]; then
        echo -e "${RED}❌ Critical file missing: $file${NC}"
        ((ERRORS++))
    else
        echo -e "${GREEN}✓ $file${NC}"
    fi
done

echo ""

# ============================================
# 3. Check CHANGELOG version matches reality
# ============================================
echo "📊 Checking CHANGELOG consistency..."

# Get latest version from CHANGELOG
LATEST_VERSION=$(grep -E "^## \[0\.[0-9]+\.[0-9]+\]" project/docs/CHANGELOG.md | head -1 | grep -oE "[0-9]+\.[0-9]+\.[0-9]+")

if [ -n "$LATEST_VERSION" ]; then
    echo -e "${GREEN}✓ Latest version: $LATEST_VERSION${NC}"
else
    echo -e "${YELLOW}⚠ Could not detect version in CHANGELOG${NC}"
    ((WARNINGS++))
fi

echo ""

# ============================================
# 4. Validate knowledge_base.md structure
# ============================================
echo "📚 Checking knowledge_base.md structure..."

KB_FILE="sources/knowledge/knowledge_base.md"

if [ -f "$KB_FILE" ]; then
    # Check for critical sections
    REQUIRED_SECTIONS=(
        "LEDNINGSGRUPPEN"
        "Annelie Helsing"
        "Lars Carlsson"
        "Jonas Hällgren"
        "INTÄKTSUTVECKLING"
        "MILSTOLPAR"
    )

    for section in "${REQUIRED_SECTIONS[@]}"; do
        if grep -q "$section" "$KB_FILE"; then
            echo -e "${GREEN}✓ Found: $section${NC}"
        else
            echo -e "${RED}❌ Missing section: $section${NC}"
            ((ERRORS++))
        fi
    done

    # Check line count (should be ~700)
    LINES=$(wc -l < "$KB_FILE")
    if [ "$LINES" -lt 600 ]; then
        echo -e "${YELLOW}⚠ knowledge_base.md seems short ($LINES lines, expected ~700)${NC}"
        ((WARNINGS++))
    else
        echo -e "${GREEN}✓ knowledge_base.md has $LINES lines${NC}"
    fi
else
    echo -e "${RED}❌ knowledge_base.md not found${NC}"
    ((ERRORS++))
fi

echo ""

# ============================================
# 5. Check main report structure
# ============================================
echo "📝 Checking main_report.md structure..."

REPORT_FILE="work/main_report.md"

if [ -f "$REPORT_FILE" ]; then
    # Check for required sections
    REPORT_SECTIONS=(
        "EXEKUTIV SAMMANFATTNING"
        "BAKGRUND OCH SYFTE"
        "STARTLÄGE 2022"
        "NULÄGE 2025"
    )

    for section in "${REPORT_SECTIONS[@]}"; do
        if grep -q "$section" "$REPORT_FILE"; then
            echo -e "${GREEN}✓ Found: $section${NC}"
        else
            echo -e "${RED}❌ Missing section: $section${NC}"
            ((ERRORS++))
        fi
    done

    # Check that it uses "vi" perspective (should find many instances)
    VI_COUNT=$(grep -c "\bvi\b\|\bvår\b\|\bvårt\b\|\bvåra\b" "$REPORT_FILE" || echo "0")
    if [ "$VI_COUNT" -gt 50 ]; then
        echo -e "${GREEN}✓ Report uses 'vi' perspective ($VI_COUNT instances)${NC}"
    else
        echo -e "${YELLOW}⚠ Report may not use 'vi' perspective enough ($VI_COUNT instances)${NC}"
        ((WARNINGS++))
    fi
else
    echo -e "${RED}❌ main_report.md not found${NC}"
    ((ERRORS++))
fi

echo ""

# ============================================
# 6. Check for broken internal links
# ============================================
echo "🔗 Checking for potentially broken references..."

# Find all file references in markdown files and check if they exist
find . -name "*.md" -not -path "./.claude/*" -not -path "./.obsidian/*" | while read -r mdfile; do
    # Extract file paths mentioned in backticks
    grep -o '`[^`]*\.\(md\|csv\)`' "$mdfile" 2>/dev/null | tr -d '`' | while read -r referenced; do
        if [ -n "$referenced" ] && [ ! -f "$referenced" ]; then
            echo -e "${YELLOW}⚠ In $mdfile: references missing file '$referenced'${NC}"
            ((WARNINGS++))
        fi
    done
done

echo ""

# ============================================
# 7. Summary
# ============================================
echo "================================"
echo "📊 SUMMARY"
echo "================================"

if [ $ERRORS -eq 0 ] && [ $WARNINGS -eq 0 ]; then
    echo -e "${GREEN}✓ All checks passed! Project is consistent.${NC}"
elif [ $ERRORS -eq 0 ]; then
    echo -e "${YELLOW}⚠ $WARNINGS warning(s) found${NC}"
    echo "Project is mostly consistent but review warnings above."
else
    echo -e "${RED}❌ $ERRORS error(s) found${NC}"
    echo -e "${YELLOW}⚠ $WARNINGS warning(s) found${NC}"
    echo "Please fix errors above before continuing."
    exit 1
fi

echo ""
echo "Last checked: $(date)"
