# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Rechtsvorm.create(naam: 'Gezin', afkorting: 'gzn', sector: 'Huishoudens')
Rechtsvorm.create(naam: 'Eenmanszaak', afkorting: 'zzp', sector: 'Huishoudens')
Rechtsvorm.create(naam: 'Maatschap', afkorting: 'MS', sector: 'Huishoudens')
Rechtsvorm.create(naam: 'Vennootschap Onder Firma', afkorting: 'V.O.F.', sector: 'Huishoudens')
Rechtsvorm.create(naam: 'Commanditaire Vennootschap', afkorting: 'C.V.', sector: 'Huishoudens')
Rechtsvorm.create(naam: 'Vereniging', afkorting: 'ver', sector: 'Huishoudens')
Rechtsvorm.create(naam: 'Coöperatie/Onderlinge waarborgmaatschappij', afkorting: 'COWM', sector: 'Huishoudens')
Rechtsvorm.create(naam: 'Stichting', afkorting: 'ST', sector: 'Huishoudens')
Rechtsvorm.create(naam: 'B.V.', afkorting: 'B.V.', sector: 'Vennootschappen')
Rechtsvorm.create(naam: 'N.V.', afkorting: 'N.V.', sector: 'Vennootschappen')
Rechtsvorm.create(naam: 'Vennootschap met bankvergunning', afkorting: 'FI', sector: 'Financiële_instelling')
Rechtsvorm.create(naam: 'Overheid', afkorting: 'Ov', sector: 'Overheid')

Bedrijfstak.create(naam: 'Landbouw, bosbouw en visserij', letter: 'A')
Bedrijfstak.create(naam: 'Delfstoffenwinning', letter: 'B')
Bedrijfstak.create(naam: 'Industrie', letter: 'C')
Bedrijfstak.create(naam: 'Energie- en waterleidingbedrijven', letter: 'D')
Bedrijfstak.create(naam: 'Water en afvalwater', letter: 'E')
Bedrijfstak.create(naam: 'Bouwnijverheid', letter: 'A')
Bedrijfstak.create(naam: 'Groot- en detailhandel', letter: 'G')
Bedrijfstak.create(naam: 'Vervoer, opslag en communicatie', letter: 'H')
Bedrijfstak.create(naam: 'Horeca', letter: 'I')
Bedrijfstak.create(naam: 'Informatie en communicatie', letter: 'J')
Bedrijfstak.create(naam: 'Financiële instellingen', letter: 'K')
Bedrijfstak.create(naam: 'Onroerend goed', letter: 'L')
Bedrijfstak.create(naam: 'Zakelijke dienstverlening ', letter: 'M')
Bedrijfstak.create(naam: 'Overige zakelijke dienstverlening', letter: 'N')
Bedrijfstak.create(naam: 'Overheid', letter: 'O')
Bedrijfstak.create(naam: 'Onderwijs', letter: 'P')
Bedrijfstak.create(naam: 'Gezondheidszorg', letter: 'Q')
Bedrijfstak.create(naam: 'Recreatie', letter: 'R')
Bedrijfstak.create(naam: 'Huishoudens', letter: 'T')
Bedrijfstak.create(naam: 'Extraterritoriale organisaties', letter: 'T')

Journaaltype.create(naam: 'Inkoopboek')
Journaaltype.create(naam: 'Verkoopboek')
Journaaltype.create(naam: 'Bankboek')
Journaaltype.create(naam: 'Leveringen')
Journaaltype.create(naam: 'Intern')

Boekproces.create(naam: 'Inkomsten')
Boekproces.create(naam: 'Betalingen')
Boekproces.create(naam: 'Toename recht (waardestijging)')
Boekproces.create(naam: 'Afname recht (waardedaling')
Boekproces.create(naam: 'Toename plicht (waardedaling')
Boekproces.create(naam: 'Afname plicht (waardestijging')
Boekproces.create(naam: 'Toename plicht, vennootschapsbelasting')
Boekproces.create(naam: 'Afname plicht, vernnootschapsbelasting')
Boekproces.create(naam: 'Toename plicht, nog te betalen btw')
Boekproces.create(naam: 'Afname plicht, nog te betalen btw')
Boekproces.create(naam: 'Rentelasten')
Boekproces.create(naam: 'Rentebaten')
Boekproces.create(naam: 'Opbrengst effecten')
Boekproces.create(naam: 'Waardeverandering effecten')
Boekproces.create(naam: 'levering in (inkopen)')
Boekproces.create(naam: 'Afschrijving vaste activa', kostenspecificatie: 'kostensoorten')
Boekproces.create(naam: 'Waardeverandering anders', kostenspecificatie: 'kostensoorten')
Boekproces.create(naam: 'Lonen en salarissen', kostenspecificatie: 'kostensoorten')
Boekproces.create(naam: 'Sociale lasten', kostenspecificatie: 'kostensoorten')
Boekproces.create(naam: 'Afschrijvingen vaste activa', kostenspecificatie: 'kostensoorten')
Boekproces.create(naam: 'Overige waardeveranderingen vaste activa', kostenspecificatie: 'kostensoorten')
Boekproces.create(naam: 'Bijzondere waardevermindering vlottende activa', kostenspecificatie: 'kostensoorten')
Boekproces.create(naam: 'Overige bedrijfskosten', kostenspecificatie: 'kostensoorten')
Boekproces.create(naam: 'Inkoopwaarde van de omzet', kostenspecificatie: 'functionele kosten')
Boekproces.create(naam: 'Inkoopkosten', kostenspecificatie: 'functionele kosten')
Boekproces.create(naam: 'Verkoopkosten', kostenspecificatie: 'functionele kosten')
Boekproces.create(naam: 'Algemene kosten', kostenspecificatie: 'functionele kosten')
Boekproces.create(naam: 'Bedrijfskosten', kostenspecificatie: 'functionele kosten')
Boekproces.create(naam: 'Levering uit (verkopen, omzet)')
Boekproces.create(naam: 'Basis winst')


Journaal.create(organisatie_id: 2, journaaltype_id: 1, boeknummer: "ink-001", datum: Date.new(2016,1,1), leverancier: "Leverancier A", hoeveelheid: 300, eenheid: "stuk", productnaam: "Brood", betalingswijze: "Contant", stukprijs: 1.00, valuta: "euro", btw_percentage: 6, bedrag_ex_btw: 300, bedrag_inc_btw: 318.00, voorwaarden: "inknr-0027\nVoorwaarde 1\nVoorwaarde 2\nVoorwaarde 3")
Journaal.create(organisatie_id: 2, journaaltype_id: 1, boeknummer: "ink-002", datum: Date.new(2016,1,2), leverancier: "Leverancier B", hoeveelheid: 1, eenheid: "kilo", productnaam: "Zout", betalingswijze: "Bank", stukprijs: 2.00, valuta: "euro", btw_percentage: 6, bedrag_ex_btw: 2, bedrag_inc_btw: 2.12, voorwaarden: "inknr-0028\nVoorwaarde 1\nVoorwaarde 2\nVoorwaarde 3")

Journaal.create(organisatie_id: 2, journaaltype_id: 2, boeknummer: "Verk-001", datum: Date.new(2016,2,1), klant: "Diverse kopers", hoeveelheid: 300, eenheid: "stuk", productnaam: "Brood", betalingswijze: "Contant", stukprijs: 2.00, valuta: "euro", btw_percentage: 6, bedrag_ex_btw: 300, bedrag_inc_btw: 318.00, voorwaarden: "Vernr-0001\nVoorwaarde 1\nVoorwaarde 2\nVoorwaarde 3")
Journaal.create(organisatie_id: 2, journaaltype_id: 2, boeknummer: "Verk-002", datum: Date.new(2016,2,2), klant: "Klant B", hoeveelheid: 10, eenheid: "pot", productnaam: "Jam", betalingswijze: "Bank", stukprijs: 5.00, valuta: "euro", btw_percentage: 6, bedrag_ex_btw: 50, bedrag_inc_btw: 53.00, voorwaarden: "Vernr-0002\nVoorwaarde 1\nVoorwaarde 2\nVoorwaarde 3")

Journaal.create(organisatie_id: 2, journaaltype_id: 3, boeknummer: "Afschrift-001", datum: Date.new(2016,2,1), klant: "Koper A", valuta: "euro", bedrag_inc_btw: 318.00, voorwaarden: "Afschrift-0001\nBehorende bij Vernr-0001")
Journaal.create(organisatie_id: 2, journaaltype_id: 3, boeknummer: "Afschrift-002", datum: Date.new(2016,2,1), leverancier: "Leverancier A", valuta: "euro", bedrag_inc_btw: -318.00, voorwaarden: "Afschrift-0001\nBehorende bij inknr-0001")

Journaal.create(organisatie_id: 2, journaaltype_id: 4, boeknummer: "Levering-001", datum: Date.new(2016,2,1), klant: "Koper A", hoeveelheid: 300, eenheid: "stuk", productnaam: "Brood", valuta: "euro", bedrag_ex_btw: 2.00, voorwaarden: "Levering-0001\nBehorende bij Vernr-0001")
Journaal.create(organisatie_id: 2, journaaltype_id: 4, boeknummer: "Levering-002", datum: Date.new(2016,2,1), leverancier: "Leverancier A", hoeveelheid: 10, eenheid: "kilo", productnaam: "Meel", valuta: "euro", bedrag_ex_btw: 2.00, voorwaarden: "levering-0002\nBehorende bij inknr-0001")

Journaal.create(organisatie_id: 2, journaaltype_id: 5, boeknummer: "Feit-001", voorwaarden: "We schrijven de oven in 5 jaar af")
Journaal.create(organisatie_id: 2, journaaltype_id: 5, boeknummer: "Feit-002", voorwaarden: "De rente op onze lening van 20000 euro is 5 procent per jaar")

Grootboektype.create(naam: 'Vlottende activa', icoon: File.open(Rails.root + "app/assets/images/icon_rondje.png"), categorie: 'I')
Grootboektype.create(naam: 'Vaste activa', icoon: File.open(Rails.root + "app/assets/images/icon_vierkant.png"), categorie: 'I')
Grootboektype.create(naam: 'Kosten', icoon: File.open(Rails.root + "app/assets/images/icon_pijlhoofdmarkt.png"), categorie: 'I')
Grootboektype.create(naam: 'Personeel', icoon: File.open(Rails.root + "app/assets/images/icon_mens.png"), categorie: 'I')
Grootboektype.create(naam: 'Verkopen', icoon: File.open(Rails.root + "app/assets/images/icon_rondje.png"), categorie: 'O')
Grootboektype.create(naam: 'Know-how', categorie: 'O')
Grootboektype.create(naam: 'Reclame', categorie: 'O')
Grootboektype.create(naam: 'Rechten en Plichten', categorie: 'D')
Grootboektype.create(naam: 'Geld', categorie: 'D')
Grootboektype.create(naam: 'Belastingen', categorie: 'D')
Grootboektype.create(naam: 'Financial producten', categorie: 'D')
Grootboektype.create(naam: 'Niet-duurzame consumptiegoederen', categorie: 'N')
Grootboektype.create(naam: 'Duurzame consumptiegoederen', categorie: 'N')
Grootboektype.create(naam: 'Voor gezinsleden', categorie: 'N')
Grootboektype.create(naam: 'Kennis (over huishouden, koken, sociale vaardigheden, etc.)', categorie: 'N')
Grootboektype.create(naam: 'Arbeid bij bakker', categorie: 'N')


Mens.create("naam"=>"Thijs", "leeftijd"=>49, "geslacht"=>"man", "kennisniveau"=>"4", "gezondheidsniveau"=>"4", "geluksniveau"=>"4")
Mens.create("naam"=>"Maxima", "leeftijd"=>24, "geslacht"=>"vrouw", "kennisniveau"=>"3", "gezondheidsniveau"=>"5", "geluksniveau"=>"4")
Mens.create("naam"=>"Bert de Bakker", "leeftijd"=>34, "geslacht"=>"man", "kennisniveau"=>"4", "gezondheidsniveau"=>"4", "geluksniveau"=>"4")


Product.create(naam: 'Brood', icoon: File.open(Rails.root + "app/assets/images/brood.png"))
Product.create(naam: 'Oven', icoon: File.open(Rails.root + "app/assets/images/oven.png"))

Organisatie.create(naam: 'Maxima', bedrijfstak_id: 19, rechtsvorm_id: 1, voorkant_image: File.open(Rails.root + "app/assets/images/orgfoto/figuren_maxima.png"))
Organisatie.create(naam: 'Bakker Bart', bedrijfstak_id: 7, rechtsvorm_id: 2, voorkant_image: File.open(Rails.root + "app/assets/images/orgfoto/bakkerbuitenkant.jpeg"))

Organisatie.create(naam: 'MediaMarkt', bedrijfstak_id: 7, rechtsvorm_id: 10, voorkant_image: File.open(Rails.root + "app/assets/images/orgfoto/mediamarkt.jpg"))
Organisatie.create(naam: 'Shell', bedrijfstak_id: 3, rechtsvorm_id: 10, voorkant_image: File.open(Rails.root + "app/assets/images/orgfoto/shell.jpg"))
Organisatie.create(naam: 'Bank ING', bedrijfstak_id: 11, rechtsvorm_id: 11, voorkant_image: File.open(Rails.root + "app/assets/images/orgfoto/inglogo.png"))
Organisatie.create(naam: 'Parlement', bedrijfstak_id: 15, rechtsvorm_id: 12, voorkant_image: File.open(Rails.root + "app/assets/images/orgfoto/parlement.jpeg"))

#Example Huishoudens
Grootboekrekening.create(naam: 'Huishouden Brood', grootboektype_id: 14, organisatie_id: 1, icoon: File.open(Rails.root + "app/assets/images/brood.png"))
Grootboekrekening.create(naam: 'Huishouden Jam', grootboektype_id: 14, organisatie_id: 1, icoon: File.open(Rails.root + "app/assets/images/jam.png"))
Grootboekrekening.create(naam: 'Huishouden Fiets', grootboektype_id: 15, organisatie_id: 1, icoon: File.open(Rails.root + "app/assets/images/fiets.png"))
Grootboekrekening.create(naam: 'Huishouden Bed', grootboektype_id: 15, organisatie_id: 1, icoon: File.open(Rails.root + "app/assets/images/bed.png"))
Grootboekrekening.create(naam: 'Huishouden Huis', grootboektype_id: 3, organisatie_id: 1, icoon: File.open(Rails.root + "app/assets/images/huis.png"))
Grootboekrekening.create(naam: 'Huishouden Electriciteit', grootboektype_id: 3, organisatie_id: 1, icoon: File.open(Rails.root + "app/assets/images/elektriciteit.jpg"))
Grootboekrekening.create(naam: 'Huishouden PERSONEEL', grootboektype_id: 4, organisatie_id: 1, icoon: File.open(Rails.root + "app/assets/images/figuren_bakkergroen.png"))
Grootboekrekening.create(naam: 'Huishouden VOOR GEZINSLEDEN Broodbereid', grootboektype_id: 16, organisatie_id: 1, icoon: File.open(Rails.root + "app/assets/images/broodbereid.png"))
Grootboekrekening.create(naam: 'Huishouden VOOR GEZINSLEDEN interieur', grootboektype_id: 1, organisatie_id: 1, icoon: File.open(Rails.root + "app/assets/images/interieur1.jpeg"))
Grootboekrekening.create(naam: 'Huishouden ARBEID BIJ BAKKER Maxima', grootboektype_id: 16, organisatie_id: 1, icoon: File.open(Rails.root + "app/assets/images/figuren_maxima.png"))

#Example Anders dan huishouden
Grootboekrekening.create(naam: 'Inkoop brood', grootboektype_id: 1, organisatie_id: 2, icoon: File.open(Rails.root + "app/assets/images/brood.png"))
Grootboekrekening.create(naam: 'Geld', grootboektype_id: 9, organisatie_id: 2, icoon: nil)
Grootboekrekening.create(naam: 'BTW Inkopen', grootboektype_id: 10, organisatie_id: 2, icoon: nil)
Grootboekrekening.create(naam: 'Telefoon Kosten', grootboektype_id: 3, organisatie_id: 2, icoon: nil)
Grootboekrekening.create(naam: 'Verkoop brood', grootboektype_id: 5, organisatie_id: 2, icoon: File.open(Rails.root + "app/assets/images/brood.png"))
Grootboekrekening.create(naam: 'Lening', grootboektype_id: 11, organisatie_id: 2, icoon: nil)
Grootboekrekening.create(naam: 'BTW Verkopen', grootboektype_id: 10, organisatie_id: 2, icoon: nil)

#Inkoop brood
Boeking.create(boekproces_id: 14, boekingtype: "J", organisatie_id: 2,datum: Date.new(2016,1,1), product_id: 1, bij_af: '+', waarde: 100000, p_inkoop: 1, hoeveelheid: 100000, journaal_id: 1, grootboekrekening_id: 11)
Boeking.create(boekproces_id: 2, boekingtype: "J", organisatie_id: 2,datum: Date.new(2016,1,1), product_id: 1, bij_af: '-', waarde: 106000, p_inkoop: 0, hoeveelheid: 0, journaal_id: 1, grootboekrekening_id: 12)
Boeking.create(boekproces_id: 8, boekingtype: "J", organisatie_id: 2,datum: Date.new(2016,1,1), product_id: 1, bij_af: '+', waarde: 6000, p_inkoop: 0, hoeveelheid: 0, journaal_id: 1, grootboekrekening_id: 13)

# Boeking voor inkoopwaarde van de omzet
Boeking.create(boekproces_id: 23, boekingtype: "I", organisatie_id: 2,datum: Date.new(2016,1,1), product_id: 1, bij_af: '-', waarde: 100000, p_inkoop: 1, hoeveelheid: 100000, journaal_id: 9, grootboekrekening_id: 11)

# Boekingen voor bedrijfskosten
Boeking.create(boekproces_id: 24, boekingtype: "I", organisatie_id: 2,datum: Date.new(2016,1,1), product_id: 1, bij_af: '-', waarde: 8000, p_inkoop: 1, hoeveelheid: 1, journaal_id: 9, grootboekrekening_id: 14)
Boeking.create(boekproces_id: 25, boekingtype: "I", organisatie_id: 2,datum: Date.new(2016,1,1), product_id: 1, bij_af: '-', waarde: 12000, p_inkoop: 1, hoeveelheid: 1, journaal_id: 9, grootboekrekening_id: 14)
Boeking.create(boekproces_id: 26, boekingtype: "I", organisatie_id: 2,datum: Date.new(2016,1,1), product_id: 1, bij_af: '-', waarde: 20000, p_inkoop: 1, hoeveelheid: 1, journaal_id: 9, grootboekrekening_id: 14)

# Boekingen voor Omzet
Boeking.create(boekproces_id: 28, boekingtype: "I", organisatie_id: 2,datum: Date.new(2016,1,1), product_id: 1, bij_af: '-', waarde: 200000, p_inkoop: 1, hoeveelheid: 1, journaal_id: 9, grootboekrekening_id: 15)

#Boekingen voor Overige bedrijfskosten
Boeking.create(boekproces_id: 10, boekingtype: "I", organisatie_id: 2,datum: Date.new(2016,1,1), product_id: 1, bij_af: '-', waarde: 1000, p_inkoop: 1, hoeveelheid: 1, journaal_id: 9, grootboekrekening_id: 16)

#Boekingen Belastingen
Boeking.create(boekproces_id: 9, boekingtype: "I", organisatie_id: 2,datum: Date.new(2016,1,1), product_id: 1, bij_af: '-', waarde: 12000, p_inkoop: 1, hoeveelheid: 1, journaal_id: 9, grootboekrekening_id: 17)






  


