# Changelog

All notable changes to the main report are documented here.

Format based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/).

---

## [Unreleased]

### Remaining Work
- Målläge 2026 section (3-4 pages)
- Slutsats section (1-2 pages)
- Cordials externa perspektiv section (2-3 pages)
- Exekutiv sammanfattning (1-2 pages) - write LAST

---

## [0.7.0] - 2025-11-19

### Changed
- **Complete project restructure to workflow-oriented folder structure**
  - Pedagogical organization: sources → work → output
  - Clear separation of immutable sources vs mutable work
  - Professional project layout

### New Structure
```
sources/          # Immutable source material
├── interviews/   # 6 stakeholder transcripts
├── data/        # CSV files
└── knowledge/   # Knowledge base, guides, perspectives

work/            # Active work in progress
├── main_report.md
└── sections/

feedback/        # Stakeholder input
├── cordial/
└── sh_pension/

output/          # Final deliverables
├── reports/
└── presentations/

history/         # Version history & archive
└── versions/

project/         # Project infrastructure
├── scripts/     # check_consistency.sh
├── docs/        # README.md, CHANGELOG.md
└── config/      # .clauderc
```

### File Migrations
- `src/main_report.md` → `work/main_report.md`
- `docs/guides/*` → `sources/knowledge/`
- `docs/perspectives/*` → `sources/knowledge/`
- `docs/interviews/*` → `sources/interviews/`
- `versions/*` → `history/versions/`
- `inputs/*` → `feedback/`
- `check_consistency.sh` → `project/scripts/`
- `README.md` → `project/docs/`
- `CHANGELOG.md` → `project/docs/`
- `.clauderc` → `project/config/`

### Updated
- `.clauderc` - All file paths updated to new structure
- `check_consistency.sh` - All validation paths updated
- `README.md` - Complete rewrite with new structure documentation

### Removed
- Old folders: `src/`, `docs/`, `data/`, `inputs/`, `versions/`
- Cleaned up empty directories

### Philosophy
- **sources/** = Read-only, don't modify
- **work/** = Active editing
- **feedback/** = Stakeholder input
- **output/** = Deliverables
- **history/** = Archive
- **project/** = Meta (tools, config, docs)

---

## [0.6.4] - 2025-11-19

### Changed
- **Professional markdown formatting applied throughout report**
  - Main sections (1-5) now use `# Heading 1` format
  - Subsections (Dimension 1, Målområde 1) use `## Heading 2`
  - Sub-subsections (Konkreta problem, Vad som fungerar) use `### Heading 3`
  - All quotes reformatted as markdown blockquotes (> syntax)
  - 25+ citations now properly formatted with attribution lines

### Technical
- Zero content changes - only formatting improvements
- All numbers, tables, data preserved exactly
- All vi-perspective grammar unchanged
- Report now renders beautifully in markdown viewers, GitHub, PDF export

### Example transformation
**Before:** `"Quote" – Person Name`
**After:**
```markdown
> "Quote"
>
> — Person Name
```

---

## [0.6.3] - 2025-11-19

### Fixed
- **Corrected vi-perspective rewrite using proper source file**
  - Previous 0.6.2 rewrite used wrong source (already in vi-perspective)
  - Now rewritten from correct original (third-person → vi-perspective)
  - Original third-person version saved to `versions/main_report_v0.6.0_original.md`
- **Updated authorship to reflect leadership ownership**
  - Changed: "Författare: Marcus Melkersson & Max Lidén (Cordial)"
  - To: "Författare: SH Pensions Ledningsgrupp / Med assistans från: Cordial"
  - Clarifies that leadership team are authors, Cordial provides support only

### Added
- `versions/` folder for version history tracking
- `versions/main_report_v0.6.0_original.md` - original third-person version for traceability

### Changed
- Proper grammatical transformation from third-person to first-person plural:
  - "SH Pension stod inför" → "Vi stod inför"
  - "Organisationen lade" → "Vi lade"
  - "Transformationen handlade" → "Vår transformation handlade"
  - All references to "SH Pension" or "organisationen" → "vi", "vår", "vårt", "våra"

### Technical
- Word count: 3,724 words (original: 3,717 words)
- All numbers, quotes, tables, and SAK codes preserved exactly
- All structure and sections unchanged
- All interview quotes intact (Jonas Hällgren, Annelie Helsing, Maja Carlzon, etc.)

### Validation
- ✅ Numbers verified: 280→660 mkr, +136%, eNPS +19, etc.
- ✅ All direct quotes preserved
- ✅ Tables and SAK codes intact
- ✅ "Vi"-perspective applied throughout (3,724 words)

---

## [0.6.2] - 2025-11-19

### Changed
- **Rewritten entire report with "vi" (we) perspective** per Marcus/leadership feedback
  - SH Pension's leadership team now clear authors (with Cordial assistance)
  - Grammatical shift: "SH Pension stod inför" → "Vi stod inför"
  - "Vår transformation", "vårt utgångsläge", "våra framsteg" throughout
  - Emphasizes success: on time, on budget, 70-80% of goals (this is a SUCCESS in transformation context)
  - Preserved ALL data, quotes, structure, and information word-for-word

### Context
Marcus feedback after discussion with leadership team:
- Very few transformations succeed - SH has achieved something "normally doesn't succeed with"
- Must be extremely clear this is a SUCCESS story
- Sales not at target shouldn't overshadow actual achievements
- Annelie concerned report not positive enough - balance transparency with pride
- Leadership team must be clear authors, not external consultants

### Technical
- All direct quotes preserved exactly (Jonas Hällgren, Annelie Helsing, etc.)
- All numbers, tables, SAK codes identical
- Structure and sections unchanged
- Original saved as `src/main_report_original.md` for reference

---

## [0.6.0] - 2025-11-14

### Status
Main report ~60% complete. Initial structure established from previous work in Claude browser.

### Added
- Bakgrund och syfte section
- Startläge 2022 section (complete with 4 dimensions):
  - IT-system och tillväxt
  - Data
  - Processer
  - Risk
- Nuläge 2025 section (complete with 6 målområden):
  - M = Marknad
  - K = Kund och Kanal
  - E = Erbjudande
  - P = Processer
  - O = Organisation
  - Finansiellt mål

### Sources
- docs/guides/01_knowledge_base_patches_v3.md (primary source)
- docs/interviews/ (6 stakeholder interviews)
- data/raw/03_sak_assessment_data.csv
- data/raw/03_workshop_results_data.csv

### Notes
- Project reorganized with systematic file naming
- `.clauderc` configuration established
- Migrated from Claude browser to Claude Code

---

## [0.6.1] - 2025-11-19

### Changed
- Project restructured to coding-project format
- Removed browser-based agent templates (using Claude Code agents only)
- Consolidated multiple READMEs into single root README.md
- Moved `report/10_main_report.md` → `src/main_report.md`
- Renamed `data/derived/` → `data/processed/`
- Established CHANGELOG.md for version tracking
- **Simplified all file names** (removed numbering prefixes):
  - `01_writing_style_guide.md` → `writing_style_guide.md`
  - `01_cordial_external_perspective.md` → `cordial_external_perspective.md`
  - `02_interview_*.md` → `interview_*.md` (all 6 files)
  - `00_memory.md` → `memory.md`
  - `03_sak_assessment_data.csv` → `sak_assessment.csv`
  - `03_workshop_results_data.csv` → `workshop_results.csv`

### Added
- `inputs/` folder structure:
  - `inputs/cordial/` - For feedback from Marcus/Cordial team
  - `inputs/sh_pension/` - For input from SH Pension leadership
- **Properly merged knowledge base** (`docs/guides/knowledge_base.md` v3.4):
  - Patches (PATCH 001-005) at top with priority
  - Full base kunskapsbas content preserved
  - Leadership team (8 members) restored
  - All sections intact: Projektöversikt, Målområden, Intäktsutveckling, Milstolpar, Kostnader, Systemlandskap, Tidplan, Effektmätning
  - 706 lines total (vs original 503 base + ~200 patches)

### Removed
- `agents/` folder (browser templates)
- `templates/` folder (feedback templates)
- `process/` folder (redundant documentation)
- `report/` folder (consolidated into `src/`)
- All individual READMEs (consolidated into root)

### Fixed
- **Critical**: Restored missing content from knowledge base that was accidentally deleted during initial merge
  - Leadership team info (Annelie Helsing, Jens Lindberg Ankelstam, Åsa Sjölander, Katarina Karlén, Lars Carlsson, Maja Carlzon, Jonas Hällgren, Kenneth Norling)
  - Complete målområden details
  - Intäktsutveckling tables
  - Milstolpar timeline
  - Cost analysis
  - System landscape
  - Effect measurement methodology

---

## Template for New Entries

```markdown
## [Version] - YYYY-MM-DD

### Added
- New sections, features, or content

### Changed
- Modifications to existing content
- Restructuring or refactoring

### Removed
- Deleted sections or deprecated content

### Fixed
- Corrections to errors or inaccuracies

### Sources
- List all source files referenced (with line numbers if applicable)

### Validation
- [ ] Numbers verified against data/raw/
- [ ] Quotes verified against docs/interviews/
- [ ] Style guide compliance checked
- [ ] Cross-references to other sections updated

### Notes
- Any additional context or follow-up items
```

---

## Version History Summary

| Version | Date | Status | Key Changes |
|---------|------|--------|-------------|
| 0.7.0 | 2025-11-19 | WIP | Complete workflow-oriented folder restructure |
| 0.6.4 | 2025-11-19 | WIP | Professional markdown formatting (headings + blockquotes) |
| 0.6.3 | 2025-11-19 | WIP | Fixed vi-perspective rewrite with correct source |
| 0.6.2 | 2025-11-19 | WIP | Initial vi-perspective rewrite (wrong source) |
| 0.6.1 | 2025-11-19 | WIP | Project restructure to code format |
| 0.6.0 | 2025-11-14 | WIP | Initial structure, 60% complete |

---

## Notes on Versioning

**Semantic versioning for report progress:**
- **0.x.x** = Draft/WIP (current phase)
- **1.0.0** = First complete draft (all sections done)
- **1.x.0** = Major revisions after stakeholder feedback
- **1.x.x** = Minor edits, corrections, polish
- **2.0.0** = Final version delivered to SH Pension

**When to increment:**
- **Patch** (0.6.x): Minor edits, corrections, small additions
- **Minor** (0.x.0): Complete new section added
- **Major** (x.0.0): Major milestone (first draft, post-feedback revision, final)
