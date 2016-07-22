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
=begin

Boeking.create!([
  {grootboekrekening_id: 17, journaal_id: 1, product_id: 1, datum: "2016-07-22", icoon: nil, bij_af: "+", waarde: 10006, p_inkoop: nil, hoeveelheid: nil, organisatie_id: 2, boekingtype: "j", boekproces_id: 15}
])
=end


Boekproces.create!([
  {naam: "Inkomsten 11", icoon: nil, kostenspecificatie: nil},
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
  {naam: "Zelf gemaakt", grootboektype_id: 14, organisatie_id: "1", icoon: nil},
  {naam: "Boodschappen houdbaar", grootboektype_id: 12, organisatie_id: "1", icoon: nil},
  {naam: "Vervoersspullen", grootboektype_id: 13, organisatie_id: "1", icoon: nil},
  {naam: "Interieurspullen", grootboektype_id: 13, organisatie_id: "1", icoon: nil},
  {naam: "Kosten voor huis", grootboektype_id: 3, organisatie_id: "1", icoon: nil},
  {naam: "Energiekosten", grootboektype_id: 3, organisatie_id: "1", icoon: nil},
  {naam: "Schoonmakers", grootboektype_id: 4, organisatie_id: "1", icoon: nil},
  {naam: "Mijn huis", grootboektype_id: 14, organisatie_id: "1", icoon: nil},
  {naam: "Mijn werk", grootboektype_id: 16, organisatie_id: "1", icoon: nil},
  {naam: "Inkoop brood", grootboektype_id: 1, organisatie_id: "2", icoon: nil},
  {naam: "Bank", grootboektype_id: 9, organisatie_id: "2", icoon: nil},
  {naam: "BTW Inkopen", grootboektype_id: 10, organisatie_id: "2", icoon: nil},
  {naam: "Telefoonkosten", grootboektype_id: 3, organisatie_id: "2", icoon: nil},
  {naam: "Verkoop brood", grootboektype_id: 5, organisatie_id: "2", icoon: nil},
  {naam: "Lening 5%", grootboektype_id: 11, organisatie_id: "2", icoon: nil},
  {naam: "BTW Verkopen", grootboektype_id: 10, organisatie_id: "2", icoon: nil},
  {naam: "Machines", grootboektype_id: 2, organisatie_id: "2", icoon: nil},
  {naam: "Leveringskosten", grootboektype_id: 3, organisatie_id: "2", icoon: nil},
  {naam: "Advertentie", grootboektype_id: 7, organisatie_id: "2", icoon: nil},
  {naam: "Administratie", grootboektype_id: 17, organisatie_id: "2", icoon: nil},
  {naam: "Boodschappen", grootboektype_id: 12, organisatie_id: "1", icoon: nil},
  {naam: "Jan", grootboektype_id: 4, organisatie_id: "2", icoon: nil},
  {naam: "Debiteuren", grootboektype_id: 8, organisatie_id: "2", icoon: nil},
  {naam: "Crediteuren", grootboektype_id: 8, organisatie_id: "2", icoon: nil},
  {naam: "rente te betalen lening 5%", grootboektype_id: 11, organisatie_id: "2", icoon: nil}
])
Grootboektype.create!([
  {naam: "Vlottende activa", icoon: nil, categorie: "I"},
  {naam: "Vaste activa", icoon: nil, categorie: "I"},
  {naam: "Kosten", icoon: nil, categorie: "I"},
  {naam: "Personeel", icoon: nil, categorie: "I"},
  {naam: "Verkopen", icoon: nil, categorie: "O"},
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
  {naam: "Maxima", bedrijfstak_id: 19, rechtsvorm_id: 1, voorkant_image: nil},
  {naam: "Bakker Bart", bedrijfstak_id: 7, rechtsvorm_id: 2, voorkant_image: nil},
  {naam: "MediaMarkt", bedrijfstak_id: 7, rechtsvorm_id: 10, voorkant_image: nil},
  {naam: "Shell", bedrijfstak_id: 3, rechtsvorm_id: 10, voorkant_image: nil},
  {naam: "Bank ING", bedrijfstak_id: 11, rechtsvorm_id: 11, voorkant_image: nil},
  {naam: "Parlement", bedrijfstak_id: 15, rechtsvorm_id: 12, voorkant_image: nil}
])
Product.create!([
  {naam: "Brood", icoon: nil},
  {naam: "Oven", icoon: nil}
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
