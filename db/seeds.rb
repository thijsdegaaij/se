Bedrijfstak.create!([
  {letter: "A", naam: "Landbouw, bosbouw en visserij"},
  {letter: "B", naam: "Delfstoffenwinning"},
  {letter: "C", naam: "Industrie"},
  {letter: "D", naam: "Energie- en waterleidingbedrijven"},
  {letter: "E", naam: "Water en afvalwater"},
  {letter: "F", naam: "Bouwnijverheid"},
  {letter: "G", naam: "Groot- en detailhandel"},
  {letter: "H", naam: "Vervoer, opslag en communicatie"},
  {letter: "I", naam: "Horeca"},
  {letter: "J", naam: "Informatie en communicatie"},
  {letter: "K", naam: "Financi\xC3\xABle instellingen"},
  {letter: "L", naam: "Onroerend goed"},
  {letter: "M", naam: "Zakelijke dienstverlening "},
  {letter: "N", naam: "Overige zakelijke dienstverlening"},
  {letter: "O", naam: "Overheid"},
  {letter: "P", naam: "Onderwijs"},
  {letter: "Q", naam: "Gezondheidszorg"},
  {letter: "R", naam: "Recreatie"},
  {letter: "T", naam: "Huishoudens"},
  {letter: "U", naam: "Extraterritoriale organisaties"}
])
Boekproces.create!([
  {naam: "Inkomsten 13", icoon: nil, kostenspecificatie: nil},
  {naam: "Betalingen", icoon: nil, kostenspecificatie: nil},
  {naam: "Toename recht (waardestijging)", icoon: nil, kostenspecificatie: nil},
  {naam: "Afname recht (waardedaling)", icoon: nil, kostenspecificatie: nil},
  {naam: "Toename plicht (waardedaling", icoon: nil, kostenspecificatie: nil},
  {naam: "Afname plicht (waardestijging", icoon: nil, kostenspecificatie: nil},
  {naam: "--, Vennootschapsbelasting", icoon: nil, kostenspecificatie: nil},
  {naam: "+, Vernnootschapsbelasting", icoon: nil, kostenspecificatie: nil},
  {naam: "- , Nog te betalen btw", icoon: nil, kostenspecificatie: nil},
  {naam: "+ , Nog te betalen btw", icoon: nil, kostenspecificatie: nil},
  {naam: "Rentelasten", icoon: nil, kostenspecificatie: nil},
  {naam: "Rentebaten", icoon: nil, kostenspecificatie: nil},
  {naam: "Opbrengst effecten", icoon: nil, kostenspecificatie: nil},
  {naam: "Waardeverandering effecten", icoon: nil, kostenspecificatie: nil},
  {naam: "Levering in (inkopen)", icoon: nil, kostenspecificatie: nil},
  {naam: "Afschrijving vaste activa", icoon: nil, kostenspecificatie: "kostensoorten"},
  {naam: "Waardeverandering anders", icoon: nil, kostenspecificatie: "kostensoorten"},
  {naam: "Lonen en salarissen", icoon: nil, kostenspecificatie: "kostensoorten"},
  {naam: "Sociale lasten", icoon: nil, kostenspecificatie: "kostensoorten"},
  {naam: "Afschrijvingen vaste activa", icoon: nil, kostenspecificatie: "kostensoorten"},
  {naam: "Overige waardeveranderingen vaste activa", icoon: nil, kostenspecificatie: "kostensoorten"},
  {naam: "Bijzondere waardevermindering vlottende activa", icoon: nil, kostenspecificatie: "kostensoorten"},
  {naam: "Overige bedrijfskosten", icoon: nil, kostenspecificatie: "kostensoorten"},
  {naam: "Inkoopwaarde van de omzet", icoon: nil, kostenspecificatie: "functionele kosten"},
  {naam: "Inkoopkosten", icoon: nil, kostenspecificatie: "functionele kosten"},
  {naam: "Verkoopkosten", icoon: nil, kostenspecificatie: "functionele kosten"},
  {naam: "Algemene kosten", icoon: nil, kostenspecificatie: "functionele kosten"},
  {naam: "Bedrijfskosten", icoon: nil, kostenspecificatie: "functionele kosten"},
  {naam: "Levering uit (verkopen, omzet)", icoon: nil, kostenspecificatie: nil},
  {naam: "Basis winst", icoon: nil, kostenspecificatie: nil}
])
Grootboekrekening.create!([
  {naam: "Zelf gemaakt", grootboektype_id: 14, organisatie_id: "1", icoon: "thumb_broodbereid.png"},
  {naam: "Boodschappen houdbaar", grootboektype_id: 12, organisatie_id: "1", icoon: "jam.png"},
  {naam: "Vervoersspullen", grootboektype_id: 13, organisatie_id: "1", icoon: "fiets.png"},
  {naam: "Interieurspullen", grootboektype_id: 13, organisatie_id: "1", icoon: "bed.png"},
  {naam: "Kosten voor huis", grootboektype_id: 3, organisatie_id: "1", icoon: "huis.png"},
  {naam: "Energiekosten", grootboektype_id: 3, organisatie_id: "1", icoon: "elektriciteit.jpg"},
  {naam: "Schoonmakers", grootboektype_id: 4, organisatie_id: "1", icoon: "figuren_peter.png"},
  {naam: "Mijn huis", grootboektype_id: 14, organisatie_id: "1", icoon: "interieur1.jpeg"},
  {naam: "Mijn werk", grootboektype_id: 16, organisatie_id: "1", icoon: "figuren_maxima.png"},
  {naam: "Inkoop brood", grootboektype_id: 1, organisatie_id: "2", icoon: "brood.png"},
  {naam: "Bank", grootboektype_id: 9, organisatie_id: "2", icoon: nil},
  {naam: "BTW Inkopen", grootboektype_id: 10, organisatie_id: "2", icoon: nil},
  {naam: "Telefoonkosten", grootboektype_id: 3, organisatie_id: "2", icoon: "telefoonmobiel.jpeg"},
  {naam: "Verkoop brood", grootboektype_id: 5, organisatie_id: "2", icoon: "brood.png"},
  {naam: "Lening 5%", grootboektype_id: 11, organisatie_id: "2", icoon: nil},
  {naam: "BTW Verkopen", grootboektype_id: 10, organisatie_id: "2", icoon: nil},
  {naam: "Machines", grootboektype_id: 2, organisatie_id: "2", icoon: "oven.png"},
  {naam: "Leveringskosten", grootboektype_id: 3, organisatie_id: "2", icoon: "bestelbus.jpeg"},
  {naam: "Advertentie", grootboektype_id: 7, organisatie_id: "2", icoon: "reclameBroodBart.png"},
  {naam: "Administratie", grootboektype_id: 17, organisatie_id: "2", icoon: "klappers.png"},
  {naam: "Boodschappen", grootboektype_id: 12, organisatie_id: "1", icoon: "brood.png"},
  {naam: "Jan", grootboektype_id: 4, organisatie_id: "2", icoon: "figuren_bakkerpaars.png"},
  {naam: "Debiteuren", grootboektype_id: 8, organisatie_id: "2", icoon: nil},
  {naam: "Crediteuren", grootboektype_id: 8, organisatie_id: "2", icoon: nil},
  {naam: "rente te betalen lening 5%", grootboektype_id: 11, organisatie_id: "2", icoon: nil}
])
Grootboektype.create!([
  {naam: "Vlottende activa", icoon: "icon_rondje.png", categorie: "I"},
  {naam: "Vaste activa", icoon: "icon_vierkant.png", categorie: "I"},
  {naam: "Kosten", icoon: "icon_pijlhoofdmarkt.png", categorie: "I"},
  {naam: "Personeel", icoon: "icon_mens.png", categorie: "I"},
  {naam: "Verkopen", icoon: "icon_rondje.png", categorie: "O"},
  {naam: "Know-how", icoon: nil, categorie: "O"},
  {naam: "Reclame", icoon: nil, categorie: "O"},
  {naam: "Debiteuren en Crediteuren", icoon: nil, categorie: "D"},
  {naam: "Geld", icoon: nil, categorie: "D"},
  {naam: "Belastingen", icoon: nil, categorie: "D"},
  {naam: "Financiele producten", icoon: nil, categorie: "D"},
  {naam: "Niet-duurzame consumptiegoederen", icoon: nil, categorie: "N"},
  {naam: "Duurzame consumptiegoederen", icoon: nil, categorie: "N"},
  {naam: "Voor gezinsleden", icoon: nil, categorie: "N"},
  {naam: "Kennis (over huishouden, koken, sociale vaardigheden, etc.)", icoon: nil, categorie: "N"},
  {naam: "Arbeid bij bakker", icoon: nil, categorie: "N"},
  {naam: "Administratie", icoon: nil, categorie: "O"}
])
Journaal.create!([
  {journaaltype_id: 1, boeknummer: "ink-001", datum: "2016-01-01", leverancier: "Leverancier A", klant: nil, hoeveelheid: 300, eenheid: "stuk", productnaam: "Brood", stukprijs: 1, betalingswijze: "Contant", valuta: "euro", btw_percentage: 6, bedrag_ex_btw: 300, bedrag_inc_btw: 318, organisatie_id: 2, voorwaarden: "inknr-0027\nVoorwaarde 1\nVoorwaarde 2\nVoorwaarde 3"},
  {journaaltype_id: 1, boeknummer: "ink-002", datum: "2016-01-01", leverancier: "Leverancier B", klant: nil, hoeveelheid: 1, eenheid: "kilo", productnaam: "Zout", stukprijs: 2, betalingswijze: "Bank", valuta: "euro", btw_percentage: 6, bedrag_ex_btw: 2, bedrag_inc_btw: 2, organisatie_id: 2, voorwaarden: "inknr-0028\nVoorwaarde 1\nVoorwaarde 2\nVoorwaarde 3"},
  {journaaltype_id: 2, boeknummer: "Verk-001", datum: "2016-01-01", leverancier: nil, klant: "Diverse kopers", hoeveelheid: 300, eenheid: "stuk", productnaam: "Brood", stukprijs: 2, betalingswijze: "Contant", valuta: "euro", btw_percentage: 6, bedrag_ex_btw: 300, bedrag_inc_btw: 318, organisatie_id: 2, voorwaarden: "Vernr-0001\nVoorwaarde 1\nVoorwaarde 2\nVoorwaarde 3"},
  {journaaltype_id: 2, boeknummer: "Verk-002", datum: "2016-01-01", leverancier: nil, klant: "Klant B", hoeveelheid: 10, eenheid: "pot", productnaam: "Jam", stukprijs: 5, betalingswijze: "Bank", valuta: "euro", btw_percentage: 6, bedrag_ex_btw: 50, bedrag_inc_btw: 53, organisatie_id: 2, voorwaarden: "Vernr-0002\nVoorwaarde 1\nVoorwaarde 2\nVoorwaarde 3"},
  {journaaltype_id: 3, boeknummer: "Afschrift-001", datum: "2016-01-01", leverancier: nil, klant: "Koper A", hoeveelheid: nil, eenheid: nil, productnaam: nil, stukprijs: nil, betalingswijze: nil, valuta: "euro", btw_percentage: nil, bedrag_ex_btw: nil, bedrag_inc_btw: 318, organisatie_id: 2, voorwaarden: "Afschrift-0001\nBehorende bij Vernr-0001"},
  {journaaltype_id: 3, boeknummer: "Afschrift-002", datum: "2016-01-01", leverancier: "Leverancier A", klant: nil, hoeveelheid: nil, eenheid: nil, productnaam: nil, stukprijs: nil, betalingswijze: nil, valuta: "euro", btw_percentage: nil, bedrag_ex_btw: nil, bedrag_inc_btw: -318, organisatie_id: 2, voorwaarden: "Afschrift-0001\nBehorende bij inknr-0001"},
  {journaaltype_id: 4, boeknummer: "Levering-001", datum: "2016-01-01", leverancier: nil, klant: "Koper A", hoeveelheid: 300, eenheid: "stuk", productnaam: "Brood", stukprijs: nil, betalingswijze: nil, valuta: "euro", btw_percentage: nil, bedrag_ex_btw: 2, bedrag_inc_btw: nil, organisatie_id: 2, voorwaarden: "Levering-0001\nBehorende bij Vernr-0001"},
  {journaaltype_id: 4, boeknummer: "Levering-002", datum: "2016-01-01", leverancier: "Leverancier A", klant: nil, hoeveelheid: 10, eenheid: "kilo", productnaam: "Meel", stukprijs: nil, betalingswijze: nil, valuta: "euro", btw_percentage: nil, bedrag_ex_btw: 2, bedrag_inc_btw: nil, organisatie_id: 2, voorwaarden: "levering-0002\nBehorende bij inknr-0001"},
  {journaaltype_id: 5, boeknummer: "Feit-001", datum: "2016-01-01", leverancier: nil, klant: nil, hoeveelheid: nil, eenheid: nil, productnaam: nil, stukprijs: nil, betalingswijze: nil, valuta: nil, btw_percentage: nil, bedrag_ex_btw: nil, bedrag_inc_btw: nil, organisatie_id: 2, voorwaarden: "We schrijven de oven in 5 jaar af"},
  {journaaltype_id: 5, boeknummer: "Feit-002", datum: "2016-01-01", leverancier: nil, klant: nil, hoeveelheid: nil, eenheid: nil, productnaam: nil, stukprijs: nil, betalingswijze: nil, valuta: nil, btw_percentage: nil, bedrag_ex_btw: nil, bedrag_inc_btw: nil, organisatie_id: 2, voorwaarden: "De rente op onze lening van 20000 euro is 5 procent per jaar"},
  {journaaltype_id: 1, boeknummer: "rente 1", datum: "2016-01-01", leverancier: "Bank ", klant: "", hoeveelheid: 1, eenheid: "1", productnaam: "Rente 5%", stukprijs: 1000, betalingswijze: "bank", valuta: "euro", btw_percentage: nil, bedrag_ex_btw: nil, bedrag_inc_btw: nil, organisatie_id: 1, voorwaarden: ""}
])
Journaaltype.create!([
  {naam: " Inkoopboek", icoon: nil},
  {naam: "Verkoopboek", icoon: nil},
  {naam: "Bankboek", icoon: nil},
  {naam: "Leveringen", icoon: nil},
  {naam: "Intern", icoon: nil}
])
Mens.create!([
  {naam: "Thijs", leeftijd: 49, geslacht: "man", kennisniveau: "4", gezondheidsniveau: "4", geluksniveau: "4"},
  {naam: "Maxima", leeftijd: 24, geslacht: "vrouw", kennisniveau: "3", gezondheidsniveau: "5", geluksniveau: "4"},
  {naam: "Bert de Bakker", leeftijd: 34, geslacht: "man", kennisniveau: "4", gezondheidsniveau: "4", geluksniveau: "4"}
])
Organisatie.create!([
  {naam: "Maxima", bedrijfstak_id: 19, rechtsvorm_id: 1, voorkant_image: "figuren_maxima.png"},
  {naam: "Bakker Bart", bedrijfstak_id: 7, rechtsvorm_id: 2, voorkant_image: "bakkerbuitenkant.jpeg"},
  {naam: "MediaMarkt", bedrijfstak_id: 7, rechtsvorm_id: 10, voorkant_image: "mediamarkt.jpg"},
  {naam: "Shell", bedrijfstak_id: 3, rechtsvorm_id: 10, voorkant_image: "shell.jpg"},
  {naam: "Bank ING", bedrijfstak_id: 11, rechtsvorm_id: 11, voorkant_image: "inglogo.png"},
  {naam: "Parlement", bedrijfstak_id: 15, rechtsvorm_id: 12, voorkant_image: "parlement.jpeg"}
])
Product.create!([
  {naam: "Brood", icoon: "brood.png"},
  {naam: "Oven", icoon: "oven.png"}
])
Rechtsvorm.create!([
  {naam: "Gezin", afkorting: "gzn", sector: "Huishoudens"},
  {naam: "Eenmanszaak", afkorting: "zzp", sector: "Huishoudens"},
  {naam: "Maatschap", afkorting: "MS", sector: "Huishoudens"},
  {naam: "Vennootschap Onder Firma", afkorting: "V.O.F.", sector: "Huishoudens"},
  {naam: "Commanditaire Vennootschap", afkorting: "C.V.", sector: "Huishoudens"},
  {naam: "Vereniging", afkorting: "ver", sector: "Huishoudens"},
  {naam: "Co\xC3\xB6peratie/Onderlinge waarborgmaatschappij", afkorting: "COWM", sector: "Huishoudens"},
  {naam: "Stichting", afkorting: "ST", sector: "Huishoudens"},
  {naam: "B.V.", afkorting: "B.V.", sector: "Vennootschappen"},
  {naam: "N.V.", afkorting: "N.V.", sector: "Vennootschappen"},
  {naam: "Vennootschap met bankvergunning", afkorting: "FI", sector: "Financi\xC3\xABle_instelling"},
  {naam: "Overheid", afkorting: "Ov", sector: "Overheid"}
])

Boeking.create!([
  {grootboekrekening_id: 12, journaal_id: 1, product_id: 1, datum: "2016-01-07", icoon: nil, bij_af: "-", waarde: 106000, p_inkoop: 0, hoeveelheid: 0, organisatie_id: 2, boekingtype: "J", boekproces_id: 2},
  {grootboekrekening_id: 13, journaal_id: 1, product_id: 1, datum: "2016-01-01", icoon: nil, bij_af: "+", waarde: 6000, p_inkoop: 0, hoeveelheid: 0, organisatie_id: 2, boekingtype: "J", boekproces_id: 10},
  {grootboekrekening_id: 11, journaal_id: 9, product_id: 1, datum: "2016-01-01", icoon: nil, bij_af: "-", waarde: 100000, p_inkoop: 1, hoeveelheid: 100000, organisatie_id: 2, boekingtype: "I", boekproces_id: 24},
  {grootboekrekening_id: 14, journaal_id: 9, product_id: 1, datum: "2016-01-01", icoon: nil, bij_af: "-", waarde: 8000, p_inkoop: 1, hoeveelheid: 1, organisatie_id: 2, boekingtype: "I", boekproces_id: 25},
  {grootboekrekening_id: 14, journaal_id: 9, product_id: 1, datum: "2016-01-01", icoon: nil, bij_af: "-", waarde: 12000, p_inkoop: 1, hoeveelheid: 1, organisatie_id: 2, boekingtype: "I", boekproces_id: 26},
  {grootboekrekening_id: 14, journaal_id: 9, product_id: 1, datum: "2016-01-01", icoon: nil, bij_af: "-", waarde: 20000, p_inkoop: 1, hoeveelheid: 1, organisatie_id: 2, boekingtype: "I", boekproces_id: 27},
  {grootboekrekening_id: 15, journaal_id: 4, product_id: 1, datum: "2016-01-01", icoon: nil, bij_af: "-", waarde: 100000, p_inkoop: 1, hoeveelheid: 1, organisatie_id: 2, boekingtype: "I", boekproces_id: 29},
  {grootboekrekening_id: 17, journaal_id: 9, product_id: 1, datum: "2016-01-01", icoon: nil, bij_af: "-", waarde: 12000, p_inkoop: 1, hoeveelheid: 1, organisatie_id: 2, boekingtype: "I", boekproces_id: 9},
  {grootboekrekening_id: 12, journaal_id: 3, product_id: 1, datum: "2016-01-01", icoon: nil, bij_af: "+", waarde: 212000, p_inkoop: nil, hoeveelheid: nil, organisatie_id: 2, boekingtype: "", boekproces_id: 1},
  {grootboekrekening_id: 12, journaal_id: 2, product_id: 1, datum: "2016-01-01", icoon: nil, bij_af: "-", waarde: 36300, p_inkoop: nil, hoeveelheid: nil, organisatie_id: 2, boekingtype: "", boekproces_id: 2},
  {grootboekrekening_id: 13, journaal_id: 1, product_id: 1, datum: "2016-01-01", icoon: nil, bij_af: "+", waarde: 6300, p_inkoop: nil, hoeveelheid: nil, organisatie_id: 2, boekingtype: "", boekproces_id: 10},
  {grootboekrekening_id: 16, journaal_id: 1, product_id: 1, datum: "2016-01-01", icoon: nil, bij_af: "-", waarde: 20000, p_inkoop: nil, hoeveelheid: nil, organisatie_id: 2, boekingtype: "", boekproces_id: 15},
  {grootboekrekening_id: 15, journaal_id: 3, product_id: 1, datum: "2016-01-01", icoon: nil, bij_af: "-", waarde: 100000, p_inkoop: nil, hoeveelheid: nil, organisatie_id: 2, boekingtype: "J", boekproces_id: 29},
  {grootboekrekening_id: 1, journaal_id: 11, product_id: 1, datum: "2016-01-01", icoon: nil, bij_af: "+", waarde: 900, p_inkoop: nil, hoeveelheid: nil, organisatie_id: 1, boekingtype: "J", boekproces_id: 1},
  {grootboekrekening_id: 18, journaal_id: 1, product_id: 1, datum: "2016-01-01", icoon: nil, bij_af: "-", waarde: 3000, p_inkoop: nil, hoeveelheid: nil, organisatie_id: 2, boekingtype: "", boekproces_id: 20},
  {grootboekrekening_id: 18, journaal_id: 1, product_id: 2, datum: "2016-01-01", icoon: nil, bij_af: "+", waarde: 10000, p_inkoop: 10000, hoeveelheid: 1, organisatie_id: 2, boekingtype: "", boekproces_id: 15},
  {grootboekrekening_id: 14, journaal_id: 1, product_id: 1, datum: "2016-01-01", icoon: nil, bij_af: "+", waarde: 30000, p_inkoop: nil, hoeveelheid: nil, organisatie_id: 2, boekingtype: "", boekproces_id: 15},
  {grootboekrekening_id: 14, journaal_id: 1, product_id: 1, datum: "2016-01-01", icoon: nil, bij_af: "-", waarde: 32000, p_inkoop: nil, hoeveelheid: nil, organisatie_id: 2, boekingtype: "", boekproces_id: 23}
])
