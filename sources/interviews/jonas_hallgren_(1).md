# POLERAD TRANSKRIPTION
**Intervju med:** Jonas Hällgren, IT-chef SH Pension  
**Datum:** Oktober 2025  
**Intervjuare:** Marcus Melkersson, Cordial  
**Längd:** Cirka 30 minuter  
**Status:** Polerad (version 1.2)

---

## SAMMANFATTNING
Jonas Hällgren beskriver resan från SH Pensions egenutvecklade Individual-system till SaaS‑plattformen Lumera. Drivkrafterna var tekniska/personella risker, låg skalbarhet och ökade compliance‑krav. Transformationen växte från IT‑skifte till en verksamhetsförflyttning där SH Pension byggde en egen integrationsplattform (Min Pension 2.0, kundmaster utanför Lumera, SSEK‑flöden, förmedlarflöden) för att äga integrationslagret och minska leverantörsberoende. Avtalsrelationen med FCC/Lumera var initialt komplex, men man säkrade hastighet och oberoende genom att ta kontroll över integrationer och lyckades dessutom genomföra ett snabbt bankbyte. Resan har professionaliserat organisationen; en cyberincident tydliggjorde varför modernisering var nödvändig. Nu är fokus att slutföra migreringen och avveckla Individual under 2026.

---

## TRANSKRIPTION

**Marcus:** Då startar vi. Vi är här för att prata om effektrealiseringen av den här transformationen – och vi har ungefär en halvtimme nu. Tanken med rapporten är att visa styrelsen vad vi åstadkommit sedan 2022–2023, men också ge ledningen ett underlag framåt. Vi börjar i starten: när du kom in – hur såg läget ut och varför blev det en transformation?

**Jonas Hällgren:** Jag anslöt maj/juni 2021. Då fanns en nulägesanalys av vår infrastruktur som visade tydliga problem. Individual‑systemet var ursprungligen AS/400, senare portat till .NET/VB.NET. Det hade tjänat oss väl men blivit en spagettisoppa, med mycket historik och speciallösningar. Personberoendet var stort – flera som kunde systemet närmade sig pension. Vi hade låga licenskostnader men hög risk.

Det fanns inga konkreta planer att byta system just då. Vi träffade FCC tidigt – de försökte sälja Lumera som tjänst men saknade kund. När PP Pension anslöt blev det mer intressant. Vi sonderade andra alternativ (bl.a. ett bolag från Jordanien) men det var inte anpassat till svenska villkor. Utveckla själva? Tidigt landade vi i att man inte bygger ett nytt försäkringssystem 2021 – vi skulle välja standard.

**Marcus:** Hur gick ni från nuläge till faktisk förändring?

**Jonas:** Vi tog fram en IT‑strategi – ”standard före anpassning” – som styrelsen antog. Samtidigt såg vi att flexibiliteten i ett egenutvecklat system också kunde vara en fälla: fler kringlösningar, fler fel. Vi bytte ut webcapen mot **Bonnaya** inom risk/skador – första ersättningen av en kritisk komponent. I den vevan slutade två personer med djup legacy‑kompetens, vilket förstärkte behovet av att ställa om.

**Marcus:** Avtalen med FCC/Lumera?

**Jonas:** Initialt via FCC (de var mellanhand). Vi försökte få direktavtal med Lumera men prisbilden för små kunder var orimlig. FCC kunde inte göra något utan Lumeras godkännande; mot slutet satt vi i praktiken med Lumeras jurister. Driften ligger hos **Aktias** (Lumeras driftspartner). Det här upplägget gjorde oss fast beslutna att inte låsa in oss – där föddes vår **integrationsstrategi**.

**Marcus:** Beskriv integrationsstrategin.

**Jonas:** Vi ska **äga våra egna integrationer**. Vi byggde en lättviktig integrationsplattform: uppgradering till **Min Pension 2.0** (vi tog hem gränssnittet från Försäkringsfabriken), stöd för **SSEK**‑flöden, och en **kundmaster utanför Lumera** för att möjliggöra CRM och snabba förändringar. Med hjälp av Mikael och Niklas gick utvecklingen fort – saker som andra lagt år på gjorde vi på veckor. Effekten: oberoende av Lumeras releasecykler, snabb **time‑to‑market** för förmedlarsamarbeten (t.ex. **SÄKRA**, och framåt **Tydliga**), och möjlighet att bygga egna tillämpningar vid behov. Nackdelen är att vi måste upprätthålla intern kompetens/kapacitet – den kan inte sänkas till noll.

**Marcus:** Ni bytte även bank mitt i allt?

**Jonas:** Ja. Beslut togs i oktober/november – vi var live i januari/februari. I en större organisation är det lätt ett flerårsprojekt. Bankbytet blev en tidig självförtroendeboost och visade att vi kan ta kontrollerad risk.

**Marcus:** Hur följde ni planen över tid?

**Jonas:** Mot ursprungsplanen ligger vi cirka nio månader sena, men ser man till tre scenarier (kort/realistisk/lång) ligger vi nästan ”spik på” den realistiska. Skopet justerades klokt längs vägen. Starten var trög – sedan kom **catch‑up‑effekten** när integrationsplattformen och första leveranserna (fondhandel, bankbyte) landade.

**Marcus:** Största problemen i gamla systemet?

**Jonas:** Operativa fel och bristande feltolerans. Exempel: ett felaktigt personnummer i en blankett kunde, via uppdatering, byta ut adressuppgifter till en annan person. För att motverka fel stängdes funktioner av – handläggning flyttades till IT‑superusers, vilket ökade personberoendet. Listan med ”trasiga försäkringar” växte. Säkerhets‑ och behörighetsstyrning var inte i nivå med kraven framåt. Kort sagt: Individual hade nått vägs ände.

**Marcus:** Vad hade hänt om ni inte gjort transformationen?

**Jonas:** Vi hade polerat vidare: fler abstraktioner och kringlösningar ovanpå Individual, kanske en ”insurance gateway” mot Individual istället. Men compliance‑, drift‑ och skalningsriskerna hade ökat. Kompetensförsörjningen hade blivit svår. Vid dubblerad volym hade felen ökat – fokus hade varit på rättningar och trasiga försäkringar.

**Marcus:** Ni nämner Försäkringsfabriken och Min Pension.

**Jonas:** Ja, Försäkringsfabriken var gränssnittet mot Min Pension. Uppgradering 1.62 → 2.0 blev kostnads‑ och komplexitetsmässigt orimlig via dem, samtidigt som vi upptäckte historiska fel/brister i rapporteringen som inte nått oss. Vi tog hem integrationen: bättre kontroll, snabbare förändring, lägre risk. Mikael byggde centrala delar på **tre veckor** (jämfört med ”tre år” på ett annat bolag). Det visar styrkan i vår verktygslåda.

**Marcus:** Hur har organisationen påverkats?

**Jonas:** Vi har professionaliserats. I början var vi nervösa, idag finns ett lugn. Vi har byggt **strukturkapital**: dokumentation, processer och kontroller – vilket gett en annan dialog med intern/extern revision, compliance och kontrollfunktioner. En **cyberincident** under resan gjorde moderniseringsbehovet konkret och accelererade förändringsviljan. Viktigt framåt: behålla **litenhetens** fördelar (snabbhet, smidighet) samtidigt som vi håller fast vid nya arbetssätt.

**Marcus:** Tre saker till styrelsen – vad lyfter du?

**Jonas:** 1) **Stolthet** – vi har åstadkommit något riktigt bra, tekniskt och verksamhetsmässigt. 2) **Oberoendet** – ägda integrationer och snabb time‑to‑market. 3) **Professionaliserad organisation** – rakryggad kultur, tydligare styrning och bättre riskkontroll.

**Marcus:** Och 2026 – vad krävs för att känna att beslutet var rätt?

**Jonas:** **Migreringen i mål.** Flytta sista bestånden, undvika dubbla årsskiften och kunna **stänga ner Individual**. Servrarna i sig är inte kostnadsfrågan – det är hanteringen och personberoendet. Lyckas vi, då är det champagne – få har klarat en sådan migration på rimlig tid.

---

## NYCKELCITAT

> "Vi ska äga våra egna integrationer – det ger oberoende och time‑to‑market."

> "Först var det trögt, men sedan kom catch‑up‑effekten när plattformen satt."

> "Cyberincidenten gjorde varför‑frågorna konkreta och ökade farten i moderniseringen."

> "Lyckas vi avveckla Individual 2026 – då är det champagne."

> "Vi har gått från oro till trygghet och byggt ett verkligt strukturkapital."

---

## FÖLJDFRÅGOR

1. **Benämningar:** Bekräfta att ”Scandia” i transkriptet avser **Skandia**.  
2. **Standard/format:** I källtext nämns ”SCK” – avses **SSEK**?  
3. **Planavvikelse:** ”~9 månader sena” – specificera exakt baslinje och datum (t.ex. ursprunglig plan: årsskiftet 2024/2025; realistisk: hösten 2025).  
4. **Migreringens målbild:** Vad är ”mållinjen” i praktiken (sista bestånd migrerat, Individual avstängt, inga dubbla årsskiften)?  
5. **Cyberincident:** Kort kronologi och vilka åtgärder (IAM, loggning, segmentering, backuper) infördes efteråt?  
6. **Bankbytet:** Bekräfta tidslinje (beslut okt/nov → live jan/feb) och riskmitigeringar.  
7. **KPI‑koppling:** Knyt integrationsplattformens effekter till målområden och KPI:er (t.ex. Målområde 2, 30/70, eNPS, intäktsmål).  
8. **Förvaltningskostnad:** Behöver vi kvantifiera handläggningskostnad per bestånd/produkt för att visa effekt av avvecklad ”skollåda”?

---

## ÄNDRINGSLOGG
- **Slått ihop** alla källor i kronologisk ordning (Tre filer + inskickad öppningsdel) och **tagit bort överlapp**
- **Rensat** tidsstämplar och TurboScribe‑markeringar
- **Identifierat talare** (Marcus / Jonas Hällgren)
- **Rättat termer** (Lumera, Individual, Bonnaya, Cordial; [TROLIGEN: Skandia]; SSEK)
- **Tydliggjort** integrationsplattform (Min Pension 2.0, kundmaster utanför Lumera, SSEK, förmedlarflöden)
- **Uppdaterat** sammanfattning, nyckelcitat, följdfrågor
- **Version:** 1.2 (ersätter 1.1)
