# Steg 2: Visuella förbättringar - Förslag för v7.2

**Datum:** 2025-12-10
**För:** main_report_v7.2.md

---

## Översikt

Nu när innehållet är verifierat och språket humaniserat kan vi göra rapporten mer visuellt engagerande och lättläst. Nedan är konkreta förslag på förbättringar.

---

## 1. GRAFER OCH VISUALISERINGAR

### A. SAK-fördelningsdiagram (2022 vs 2025)
**Var:** I avsnitt 4 (Nuläge 2025), efter SAK-tabellerna

**Vad:** Stapeldiagram som visar förflyttningen
- X-axel: Betyg 1-5
- Y-axel: Antal SAK
- Två stapelserier: 2022 (röd) och 2025 (grön)

**Varför:** Visualiserar den enorma förflyttningen (55% betyg 1 → 14% betyg 5)

**Implementering:** Jag kan skapa:
- Mermaid-diagram (renderas direkt i många markdown-läsare)
- ASCII-diagram (fungerar överallt)
- Instruktioner för att skapa i Excel/PowerPoint

### B. Målområdes-översikt (radar chart eller tabell)
**Var:** I avsnitt 1 (Exekutiv sammanfattning) eller början av avsnitt 4 (Nuläge 2025)

**Vad:** Visuell översikt av de 6 målområdenas betyg
- Marknad: 3,2
- Kund & Kanal: 3,2
- Erbjudande: 4,2
- Processer & System: 4,2
- Organisation: 3,9
- Lönsamhet: 1,1
- Genomsnitt: 3,4

**Varför:** Snabb översikt av var SH står starkast/svagast

### C. Transformations-timeline
**Var:** I avsnitt 2 (Bakgrund och syfte) eller början av avsnitt 5 (Målläge 2026)

**Vad:** Enkel tidslinje:
```
2022           2025           2026           2027-2028
 |              |              |                |
Kris         Nuläge      Vändpunkt        Full effekt
 |              |              |                |
Do or die   Teknisk     Individual-      Lönsamhet
            grund lagd   avveckling       uppnådd
```

**Varför:** Kontextualiserar transformationsresan

### D. Före/Efter nyckeltal (infografik)
**Var:** I avsnitt 1 (Exekutiv sammanfattning)

**Vad:** Kompakt visuell jämförelse:
```
FÖRE (2022)              EFTER (2025)
─────────────────────────────────────
280 mkr premier    →     660 mkr (+136%)
55% SAK betyg 1    →     14% SAK betyg 5
VB.NET-beroende    →     Modern plattform
Systemkollapsrisk  →     Stabil infrastruktur
Brandkårsläge      →     Strategisk kapacitet
```

**Varför:** Kraftfull visuell sammanfattning av förflyttningen

---

## 2. TABELLFÖRBÄTTRINGAR

### A. Färgkodning för betyg
**Var:** Alla tabeller med betyg 1-5

**Förslag:**
- 🔴 Betyg 1-2: Röd/Orange (utmaning)
- 🟡 Betyg 3: Gul (delvis)
- 🟢 Betyg 4-5: Grön (framgång)

**Implementering:** Kan göras med:
- Markdown extended syntax (om plattformen stödjer)
- Emojis (🔴🟡🟢)
- HTML/CSS (om exporteras till HTML)

### B. Konsekventa tabellformat
**Vad:** Standardisera alla tabeller med:
- Vänsterjusterad text i första kolumnen
- Centrerad data i övriga kolumner
- Tydliga headers
- Konsekvent spacing

### C. Delmål-tabeller med trendpilar
**Var:** I målområdessektionerna

**Förslag:**
```
| Delmål                        | Betyg | Trend | Status          |
|-------------------------------|-------|-------|-----------------|
| Välrenommerat varumärke       | 3,0   | ↗     | Växande         |
| Utmanare till stora aktörer   | 3,3   | →     | Riggade för...  |
```

**Varför:** Visar inte bara nuläge utan också riktning

---

## 3. LAYOUT-FÖRBÄTTRINGAR

### A. Callout-boxar för viktiga citat
**Var:** Vid strategiska platser där citat förstärker budskapet

**Exempel:**
```markdown
> 💡 **Nyckelinsikt**
>
> "Den stora effekten uppstår när vi avvecklar Individual."
>
> — Måluppfyllelse workshop
```

**Alternativ stil:**
```markdown
┌─────────────────────────────────────────────────┐
│ 🎯 KRITISK FRAMGÅNGSFAKTOR                      │
│                                                 │
│ "Transformationen var do or die"                │
│ — Annelie Helsing, VD                           │
└─────────────────────────────────────────────────┘
```

### B. Sidofält med nyckelinsikter
**Var:** I längre avsnitt för att bryta upp text

**Exempel:**
```markdown
┌────────────────────────┐
│ 📊 NYCKELTAL           │
│                        │
│ 280 → 660 mkr premier  │
│ +136% tillväxt         │
│ 51 SAK förbättrade     │
└────────────────────────┘
```

### C. Visuella avdelare mellan sektioner
**Vad:** Tydligare section breaks istället för bara `---`

**Exempel:**
```markdown
═══════════════════════════════════════════════════
                  NULÄGE 2025
═══════════════════════════════════════════════════
```

### D. Sammanfattningsrutor i slutet av varje huvudavsnitt
**Vad:** Kompakt sammanfattning av huvudpunkter

**Exempel:**
```markdown
┌─────────────────────────────────────────────────┐
│ 📋 SAMMANFATTNING: NULÄGE 2025                  │
│                                                 │
│ ✅ Teknisk grund lagd (4,2/5)                   │
│ ✅ Organisation professionaliserad (3,9/5)      │
│ ⏳ Affärer tar längre tid än förväntat          │
│ 🎯 Individual-avveckling 2026 = vändpunkt      │
└─────────────────────────────────────────────────┘
```

---

## 4. IMPLEMENTERINGSFÖRSLAG

### Option A: Minimal (snabbt, fungerar överallt)
- Lägg till emojis för färgkodning (🔴🟡🟢)
- ASCII-diagram för SAK-fördelning
- Enkel timeline med text
- Konsekventa tabellformat

**Tidsåtgång:** 10-15 minuter
**Kompatibilitet:** Fungerar i alla markdown-läsare

### Option B: Standard (balanserat)
- Option A +
- Mermaid-diagram för visualiseringar
- Callout-boxar med citat
- Sammanfattningsrutor per avsnitt

**Tidsåtgång:** 30-45 minuter
**Kompatibilitet:** Fungerar i GitHub, Obsidian, många moderna läsare

### Option C: Full (professionell, kräver export)
- Option B +
- HTML/CSS för färgkodning
- Interaktiva diagram
- Avancerad layout

**Tidsåtgång:** 1-2 timmar
**Kompatibilitet:** Kräver export till HTML/PDF

---

## 5. REKOMMENDATION

Jag rekommenderar **Option B (Standard)** eftersom den:
- Ger stor visuell förbättring
- Fungerar i moderna markdown-läsare (Obsidian, GitHub)
- Tar rimlig tid (~30-45 min)
- Kan alltid exporteras till PDF med styling intakt

### Konkret nästa steg:

1. **SAK-fördelningsdiagram** (Mermaid bar chart)
2. **Målområdes-översikt** (tabell med färgkodning via emojis)
3. **Transformations-timeline** (ASCII art)
4. **Callout-boxar** för de 5 viktigaste citaten
5. **Sammanfattningsrutor** i slutet av varje huvudavsnitt
6. **Konsekventa tabellformat** genom hela dokumentet

---

## FRÅGA TILL MAX:

Vilken option vill du att jag kör?
- A: Minimal (snabbt)
- B: Standard (rekommenderat)
- C: Full (professionell men tar tid)

Eller vill du att jag plockar specifika delar från förslagen ovan?
