# SH Pension IT-Transformation Effekthemtagningsrapport

**Deliverable**: Executive impact assessment report for SH Pension's IT transformation (2023-2026)
**Authors**: SH Pensions Ledningsgrupp (med assistans från Cordial)
**Target**: Leadership & Board | December 2025

---

## Quick Start

```bash
# Main deliverable
work/main_report.md           # ~60% complete - 4 sections remaining

# Configuration
project/config/.clauderc      # Auto-loaded by all Claude Code agents

# Version history
project/docs/CHANGELOG.md     # Track all changes here (like git log)

# Check project consistency
project/scripts/check_consistency.sh
```

**Working on the report?**
1. Edit `work/main_report.md`
2. Log changes in `project/docs/CHANGELOG.md`
3. Use Claude Code agents as needed
4. Run `./project/scripts/check_consistency.sh` to validate

---

## Project Structure

```
effekthemtagning/
│
├── sources/                  # KÄLLMATERIAL (read-only, immutable)
│   ├── interviews/          # 6 stakeholder interview transcripts
│   │   ├── annelie_helsing_(1).md
│   │   ├── asa_sjolander_(2).md
│   │   ├── jonas_hallgren_(1).md
│   │   ├── lars_carlsson_(1).md
│   │   ├── lars_carlsson_(2).md
│   │   └── maja_carlzon_(1).md
│   │
│   ├── data/                # CSV source data
│   │   ├── Affärskrav.csv
│   │   └── Måluppfyllelse.csv
│   │
│   └── knowledge/           # Guides & knowledge base
│       ├── knowledge_base.md
│       ├── writing_style_guide.md
│       ├── cordial_external_perspective.md
│       ├── memory.md
│       └── quote_suggestions.md
│
├── work/                    # AKTIVT ARBETE (mutable, work in progress)
│   ├── main_report.md       # Main deliverable
│   └── sections/            # If breaking out målområden separately
│
├── feedback/                # INPUT FRÅN STAKEHOLDERS
│   ├── cordial/            # From Marcus & Cordial team
│   └── sh_pension/         # From SH Pension leadership
│
├── output/                  # FÄRDIGA DELIVERABLES
│   ├── reports/            # Final PDF/DOCX exports
│   └── presentations/      # Slides if needed
│
├── history/                 # VERSIONSHISTORIK & ARKIV
│   └── versions/           # Historical report versions
│       └── main_report_v0.6.0_original.md
│
└── project/                 # PROJEKTSTÖD (config, tools, docs)
    ├── scripts/            # Automation & validation
    │   └── check_consistency.sh
    ├── docs/               # Project documentation
    │   ├── README.md       # ← You are here
    │   └── CHANGELOG.md    # Version history
    └── config/             # Configuration files
        └── .clauderc       # Agent instructions
```

**Design philosophy:**
- **sources/** = Immutable source material (don't edit)
- **work/** = Active work in progress (edit freely)
- **feedback/** = Input from stakeholders
- **output/** = Final deliverables
- **history/** = Version history & archive
- **project/** = Meta (tools, config, docs)

---

## Using Claude Code Agents

You have 2 specialized agents available:

### 1. **iterative-report-writer**
Use when writing or continuing report sections.

```
Example: "Use the iterative-report-writer agent to write the Slutsats section"
```

### 2. **interview-miner**
Use when finding quotes or insights from interviews.

```
Example: "Use the interview-miner agent to find quotes about Individual system risks"
```

**How to invoke**: Just tell Claude which agent and what task. Results appear automatically.

---

## Current Status

**Main Report Progress**: ~60% complete (Version 0.6.4)

✅ **Done**:
- Bakgrund och syfte
- Startläge 2022 (4 dimensions)
- Nuläge 2025 (6 målområden)
- Professional markdown formatting (headings + blockquotes)
- "Vi" perspective throughout
- Correct authorship (SH Pensions Ledningsgrupp)

❌ **Remaining**:
- Målläge 2026 (3-4 pages)
- Slutsats (1-2 pages)
- Cordials externa perspektiv (2-3 pages)
- Exekutiv sammanfattning (1-2 pages) - write last

---

## Key Files

### Source Material
- `sources/knowledge/knowledge_base.md` - PRIMARY SOURCE (706 lines)
  - Contains: Patches (001-005) + base knowledge
  - Leadership team (8 members), målområden, SAK mappings, milestones, costs
- `sources/knowledge/writing_style_guide.md` - Cordial writing style
- `sources/interviews/*.md` - 6 stakeholder interviews

### Active Work
- `work/main_report.md` - Main deliverable (639 lines, 3,724 words)
- `work/sections/` - Optional section breakdown

### Project Configuration
- `project/config/.clauderc` - Agent instructions & source references
- `project/docs/CHANGELOG.md` - Complete version history
- `project/scripts/check_consistency.sh` - Validation script

---

## Workflow

**Typical workflow when writing:**

1. **Read sources** - Check `sources/knowledge/knowledge_base.md` first
2. **Write/edit** - Edit `work/main_report.md`
3. **Get feedback** - Save to `feedback/cordial/` or `feedback/sh_pension/`
4. **Iterate** - Refine based on feedback
5. **Export** - Final version to `output/reports/`
6. **Archive** - Save milestone versions to `history/versions/`
7. **Log changes** - Update `project/docs/CHANGELOG.md`

**Running consistency checks:**
```bash
cd /Users/max/Desktop/effekthemtagning
./project/scripts/check_consistency.sh
```

---

## Version History

See `project/docs/CHANGELOG.md` for full history.

**Recent versions:**
- **0.6.4** (2025-11-19) - Professional markdown formatting
- **0.6.3** (2025-11-19) - Corrected vi-perspective rewrite
- **0.6.2** (2025-11-19) - Initial vi-perspective transformation
- **0.6.1** (2025-11-19) - Project restructure to code format
- **0.6.0** (2025-11-14) - Initial structure, 60% complete

---

## Notes

**Transformation context:**
- "Do or die" scenario - Individual system at end of life
- Strategic transformation (NOT cost savings) - Lumera costs MORE but enables growth
- Target: 280 mkr → 1,000 mkr annual premiums
- Status 2025: 660 mkr (+136%), on time, on budget, 70-80% goals achieved

**Report perspective:**
- Authors: SH Pension's leadership team (with Cordial assistance)
- Voice: "Vi" (we) perspective throughout
- Tone: Transparent documentation - both successes AND challenges
- This is a SUCCESS story (rare in transformation context)

**Working with Claude:**
- All file paths in `.clauderc` are relative to project root
- Patches in knowledge_base.md override base content
- Interview quotes must be verified against source files
- Numbers must trace back to data files or interviews
