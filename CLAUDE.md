# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is an **executive transformation assessment report project** for SH Pension, documenting their strategic IT transformation (Individual → Lumera, 2023-2026). The deliverable is a professional Swedish-language report to leadership and board (December 2025).

**Critical Context**: This is NOT a cost-saving transformation—Lumera costs MORE than Individual. The value lies in enabling growth from 280 mkr → 1,000 mkr annual premiums through new capabilities, risk reduction, and strategic positioning.

## Essential Commands

```bash

# Main work file
work/main_report.md           # Primary deliverable (~60% complete)

# Version tracking (update after significant changes)
project/docs/CHANGELOG.md
```

## Architecture & Knowledge System

### Source of Truth Hierarchy

The project uses a **patch-based knowledge system** where conflicts are resolved by priority:

1. **Patches (HIGHEST PRIORITY)** - `sources/knowledge/knowledge_base.md` contains numbered patches (001-005) that ALWAYS override base content
2. **Knowledge Base** - Same file contains foundational knowledge after patches
3. **Interview Transcripts** - 6 stakeholder interviews in `sources/interviews/`
4. **Structured Data** - CSV files in `sources/data/` with assessment frameworks

When information conflicts, patches win. Always check patches first.

### Folder Philosophy

```
sources/     # Immutable source material - READ ONLY, never edit
work/        # Active work in progress - edit freely
feedback/    # Stakeholder input
output/      # Final deliverables
history/     # Version archive
project/     # Meta (config, scripts, docs)
```

**Critical Rule**: NEVER edit files in `sources/`. All changes go to `work/`.

### Knowledge Base Structure

`sources/knowledge/knowledge_base.md` is the PRIMARY SOURCE (706 lines) containing:
- **Patches 001-005**: Corrections and updates (Oct 2025) - these override everything
- Leadership team (8 members) with roles and perspectives
- 6 målområden (strategic goal areas) with detailed mappings
- 41 SAK (strategic business requirements) mapped to goal areas
- Transformation initiatives (5 parallel workstreams)
- Milestones, costs, and critical success factors

### Data Sources

**CSV Files** (in `sources/data/`):
- `Affärskrav.csv` - 41 strategic requirements (SAK) with before/current/target assessments + workshop comments
- `Måluppfyllelse.csv` - 18 sub-goals across 6 areas with fulfillment levels and rationale

**Interview Transcripts** (in `sources/interviews/`):
- Annelie Helsing (VD)
- Lars Carlsson (CFO) - 2 interviews
- Jonas Hällgren (IT-chef)
- Maja Carlzon (HR & Affärsutvecklingschef)
- Åsa Sjölander (Chef Kunderbjudande & Support) - interview 2

All transcripts are polished, structured, and ready for quote extraction.

## Specialized Agents

Two custom agents are configured in `.claude/agents/`:

### 1. iterative-report-writer
Use for writing/continuing report sections. Excels at synthesizing multiple sources into cohesive narrative while maintaining consistency with existing content.

**When to invoke**: Writing new sections, extending existing ones, integrating feedback.

### 2. interview-miner
Use for finding quotes, insights, or themes from interview transcripts. Searches across all 6 interviews.

**When to invoke**: Need quotes for specific topics, comparing stakeholder perspectives, finding concrete examples.

## Writing Standards

### Voice & Perspective
- **Authors**: SH Pensions Ledningsgrupp (med assistans från Cordial)
- **Voice**: "Vi" (we) perspective throughout - this is SH Pension speaking
- **Tone**: Transparent documentation - show both successes AND challenges

### Cordial Style (from writing_style_guide.md)
- **Grundton**: Strategisk, analytisk, empatisk - "hjärtligt och kärnfullt"
- **Språk**: Vardaglig svenska, konkreta exempel, INGA emojis, kort och aktivt
- **Struktur**: Bullet-narrativ, viktigast först, tydliga rubriker
- **Fokus**: Värdeskapande, hypotesdrivet, genomförandekraft

### Report Structure (Trestegsmodellen)
1. **Startläge 2022** - Crisis and baseline (4 critical dimensions)
2. **Nuläge 2025** - Progress and challenges (6 målområden)
3. **Målläge 2026** - What remains

### Must-Follow Rules

1. **Evidence-based**: ALL information must trace to sources. Never invent numbers or facts.
2. **Flag gaps**: If information is missing, mark with `(MÅSTE BEKRÄFTAS I INTERVJU)` and suggest follow-up question.
3. **Read before writing**: Always read relevant knowledge files before drafting.
4. **Patches win**: When conflicts arise, patches in knowledge_base.md override base content.
5. **Validate continuously**: After each major step, verify against source material.
6. **Balance transparency**: Show successes AND areas where results lag behind projections.

### Never Say

- "Kostnadsbesparing" or "ROI genom lägre IT-kostnader" (this is a growth investment, not cost savings)
- Made-up metrics or assumed progress
- Marketing language instead of transparent documentation

## Key Project Insights

### Transformation = Multiple Initiatives
Lumera migration is ONE of FIVE parallel initiatives:
- Systemstöd (Individual → Lumera)
- Förmedlare (broker portals, partnerships)
- Direktkanal (self-service, digitalization)
- Erbjudande & kommunikation (products, TRAD, marketing)
- Arbetssätt & organisation (processes, competency, culture)

Always connect technology to business effect across initiatives.

### Risk is the Strongest Card
- **Before**: System collapse risk, person dependency, VB.NET consultants nearing retirement
- **After**: Modern platform, reduced risk
- **Do-nothing scenario**: Business death (~100+ mkr impact)

### Dual Systems Delay Full Effect
"Den stora effekten uppstår när Individual avvecklas" - capacity only fully freed after legacy decommissioning.

### Strategy-First Narrative
SH Pension chose growth strategy first, then discovered Individual couldn't support it. Frame as "Strategy first, transformation followed" NOT "existential crisis forced transformation."

## Current Status

**Report Progress**: ~60% complete (Version 0.7.0)

**Completed**:
- Bakgrund och syfte
- Startläge 2022 (4 dimensions)
- Nuläge 2025 (6 målområden)
- Professional markdown formatting

**Remaining**:
- Målläge 2026 (3-4 pages)
- Slutsats (1-2 pages)
- Cordials externa perspektiv (2-3 pages)
- Exekutiv sammanfattning (write LAST)

## Workflow Pattern

Max's iterative workflow:
1. Claude creates 80% first draft from structured sources
2. Max refines 20% for precision and voice
3. Stakeholder review
4. Iterate based on feedback
5. Log changes in CHANGELOG.md

**When writing**:
1. Start with 3-7 item checklist
2. Read relevant knowledge files (knowledge_base.md first)
3. Base everything on source material
4. Use specific numbers (e.g., "110→720 mkr")
5. Keep sections short (max 2 pages)
6. Validate against sources after each step

## Configuration

- `project/config/.clauderc` - Auto-loaded by all agents, contains source file references and working rules
- All file paths are relative to project root
- Consistency script validates references, structure, and critical sections

## Domain Context

**Swedish pension industry** - tjänstepension (occupational pension)
**Company**: SH Pension (förening - member association)
**Market position**: "Den självklara utmanaren" (the obvious challenger)
**Target segment**: Traditional TRAD (defined contribution) pension through broker channel
**Transformation period**: 2023-2026
**Status 2025**: 660 mkr annual premiums (+136% from 280 mkr), on time, on budget, 70-80% goals achieved
