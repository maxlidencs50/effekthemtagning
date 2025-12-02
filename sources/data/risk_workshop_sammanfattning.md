# Riskworkshop Transformationen
*Uppföljning av riskbild – 28 november 2025*

## Bakgrund

Ledningsgruppen genomförde en strukturerad uppföljning av transformationens riskbild i november 2025. Workshoppen utgick från den ursprungliga riskanalysen från april 2023 som låg till grund för styrelsens investeringsbeslut.

Workshoppen kom cirka en tredjedel av vägen genom det planerade materialet men identifierade tre prioriterade risker för fortsatt bevakning under 2026.

## Riskbedömning – översikt

| Risk                                  | Sannolikhet | Konsekvens | Status                                                |
| ------------------------------------- | ----------- | ---------- | ----------------------------------------------------- |
| Risk 4: Budgetöverskridande           | 3           | 3 (max)    | Prognostiserat överskridande 15-20%                   |
| Risk 6: Försening från externa parter | 2           | 3          | Mitigerad genom integrationsplattform                 |
| Risk 16: Felhantering i dubbla system | 3           | 4          | Proaktiva åtgärder vidtagna, inga incidenter hittills |

*Skala 1-4 där 4 är högst sannolikhet/konsekvens*

---

## Risk 4: Budgetöverskridande

**Beskrivning:** Risk att transformationsprojektet inte efterlever ursprunglig budget på 88 mkr.

**Bedömning:** Sannolikhet 3, Konsekvens 3 (max)

**Status:** Förväntat överskridande 15-20% av ursprungligt maxestimat (88 mkr). Prognostiserad total kostnad når 88 mkr i maj 2026 enligt nuvarande bränntakt.

**Orsaker:**
- Förlängd tidplan för migreringen (främsta orsaken)
- Oförutsedda händelser som dragit ledningsresurser från transformationen:
  - DORA-implementation
  - IT-säkerhetsincident
  - Kapitalförvaltningsarbete (byte av affärsbank, custodylösning)
- Konstant bränntakt med begränsade ledningsresurser i liten organisation

**Mitigerande faktorer:**
- Respektive års budget har hållits
- Varje årlig investering har följt ordinarie beslutsprocess
- Ursprungligt estimat innehöll ingen riskbuffert
- Alla kostnader har hanterats löpande enligt ordinarie processer
- God budgetstyrning med uppföljning av burn-rate per individ

**Kommentar från workshop:** "Vid varje given tidpunkt har vi fattat ett nytt beslut. Vi har fått budget för varje år. 88 var vår bästa max-gissning. Har hela tiden haft en ordnad budget-process och följt vår mycket tydliga plan."

---

## Risk 6: Försening från externa parter vid integrationer

**Beskrivning:** Risk för försening av tidplan på grund av försening hos externa parter (förmedlare, samarbetspartners).

**Bedömning:** Sannolikhet 2, Konsekvens 3

**Status:** Risken har fallit ut under transformationen men är nu väsentligt mitigerad.

**Orsaker:**
- Inneboende risk vid samarbeten med externa parter (SSEK, Bliwa, förmedlare)
- Beroenden i integrationsutveckling

**Mitigerande åtgärder:**
- Utveckling av flexibel integrationsplattform som gör det enkelt för samarbetsparter att "haka in i"
- Proaktiv och adaptiv planering för att följa externa tidplaner ("vara på tårna")
- Aktivt arbete med att pressa på och säkra leveranser från kritiska parter

**Kommentar från workshop:** "Bara teknikutveckling (integrationer). Vi har utvecklat en flexibel integrationsplattform som gör det enkelt för våra samarbetsparter att 'haka in i'."

**Bedömning framåt:** Inte transformationsspecifik risk längre – blir en del av ordinarie samarbetsrisker för SH Pension.

---

## Risk 16: Felhantering vid parallella processer och arbete i dubbla system

**Beskrivning:** Risk för fel och incidenter när organisationen arbetar parallellt i både Individual och Lumera under migreringsperioden.

**Bedömning:** Sannolikhet 3, Konsekvens 4 (högst av de tre riskerna)

**Status:** Inga incidenter rapporterade under 2023-2025. Risken bedöms bli mer påtaglig först nu när omfattande migrering går live under 2026.

**Mitigerande åtgärder vidtagna:**
- Testmetodik där testning fungerar som utbildning
- Processkartläggning och uppdaterade rutiner
- Tillgång till FCC-stöd behovsbaserat
- KPI-uppföljning av rapporterade incidenter

**Kommentar från workshop:** "Först nu när vi går live med en mer omfattande migrering som vi kommer att märka detta i större utsträckning. Vi har gjort massa åtgärder nu för att detta inte ska bli ett problem. Minskar sannolikheterna att att det händer något."

**Bedömning framåt:** Kräver fortsatt bevakning under 2026 fram till att Individual är helt avvecklat.

---

## Övriga risker från ursprunglig analys

Utöver de tre prioriterade riskerna identifierade den ursprungliga analysen (april 2023) ytterligare 13 risker. Workshoppen bedömde att de flesta av dessa antingen har mitigerats genom transformationens struktur eller inte längre är transformationsspecifika.

**Mitigerade risker (ej längre aktuella för transformationen):**

- **Risk 1 (Resurs- och kompetensbrist):** Mitigerad genom Cordial som transformationspartner, proaktiv rekrytering/konsulttillskott inom alla områden, och löpande resursmonitorering. Transformationen ligger i stort sett i tid trots vissa delar som vuxit i scope.

- **Risk 2 (Försenad avtalsförhandling):** Föll ut tidigt (några månaders försening) men arbetades ikapp för de då pågående initiativen.

- **Risk 5 (Lumera-kompetens):** Mitigerad genom val av FCC som partner, standard-före-anpassning-strategi, rekrytering av testledare med Lumera-kunskap, och testmetodik där testning fungerar som utbildning.

- **Risk 7 (Avtalsskrivning):** Hanterad, inga kvarstående konsekvenser identifierade.

- **Risk 11 (Sena GAP-identifieringar):** Största gapet identifierat tidigt (produkter som ej stöds av Lumera, särskilt från Bliwa) vilket lett till mer omfattande egenutveckling än planerat. Mitigerat genom kvartalsvisa/halvårsvisa taktiska planeringar med FCC och strategiskt arkitekturforum.

- **Risk 12 (Process-/organisationsanpassning):** Förväntat enligt standard-före-anpassning-strategin, hanterat genom utbildning via testning.

- **Risk 13 (Systemavveckling):** Lever kvar enligt plan, hanteras 2026 i migreringsinitiativet.

**Risker som övergår till ordinarie verksamhet:**

- **Risk 3 (IT-säkerhet/molnläckage):** Inte transformationsspecifik. En säkerhetsincident inträffade som tog tid och fokus från ledningen.

- **Risk 9 (Beroende till FCC/Lumera):** Mitigerad genom beslutad målarkitektur med integrationsplattform som minskar beroendet, samt strukturerad samverkan (veckovisa möten, FCC i styrgrupp).

- **Risk 14 (Support från Lumera):** Mitigerad genom vald partnerstrategi där FCC är tjänsteleverantör (ej direkt dialog med Lumera). Stående avstämningar och FCC on-site.

- **Risk 15 (Nya regulatoriska krav):** Blev reell risk – DORA tog mycket resurser och tid. Lever vidare under 2026 men är inte transformationsspecifik.

**Ej diskuterade:**
- Risk 8 (Befintliga avtal behöver justeras) – oklar ursprunglig frågeställning
- Risk 10 (Ofullständig dataöverföring) – sorteras till migreringsinitiativet

---

## Sammanfattande bedömning

Alla tre identifierade prioriterade risker är kända, förutsedda och har proaktivt mitigerats. Den övergripande riskbilden bedöms som kontrollerbar:

- **Budget:** Förväntat överskridande ligger inom rimlig felmarginal för ett projekt av denna storlek och komplexitet
- **Externa parter:** Strukturellt hanterad genom teknisk lösning (integrationsplattform)
- **Dubbla system:** Högst potentiell konsekvens men inga realiserade incidenter – tyder på att åtgärder fungerar

Gemensam nämnare för alla tre risker: En liten organisations begränsade ledningskapacitet i kombination med omfattande, parallell förändring.

**Övergripande slutsats från workshoppen:** De flesta ursprungliga risker har antingen mitigerats genom transformationens uppbyggnad (styrning, partnerstrategi, resursförstärkningar) eller har övergått till att bli ordinarie verksamhetsrisker snarare än transformationsspecifika risker. De tre prioriterade riskerna (4, 6, 16) kräver fortsatt bevakning under 2026, men alla har proaktiva åtgärder på plats.
