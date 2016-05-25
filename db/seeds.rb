# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Rechtsvorm.create(naam: 'Huishouden', afkorting: 'GZN')
Rechtsvorm.create(naam: 'Eenmanszaak', afkorting: 'zzp')
Rechtsvorm.create(naam: 'Besloten Vennootschap', afkorting: 'B.V.')
Rechtsvorm.create(naam: 'Naamloze Vennootschap', afkorting: 'N.V.')
Rechtsvorm.create(naam: 'Maatschap', afkorting: 'MS')
Rechtsvorm.create(naam: 'Vennootschap Onder Firma', afkorting: 'V.O.F.')
Rechtsvorm.create(naam: 'Commanditaire Vennootschap', afkorting: 'C.V.')
Rechtsvorm.create(naam: 'Vereniging met volledige rechtsbafkortingevoegdheid', afkorting: 'VMVRB')
Rechtsvorm.create(naam: 'Vereniging met beperkte rechtsbevoegdheid', afkorting: 'VMBRB')
Rechtsvorm.create(naam: 'Coöperatie/Onderlinge waarborgmaatschappij', afkorting: 'COWM')
Rechtsvorm.create(naam: 'Stichting', afkorting: 'ST')


Bedrijfstak.create(naam: 'Landbouw, bosbouw en visserij')
Bedrijfstak.create(naam: 'Delfstoffenwinning')
Bedrijfstak.create(naam: 'Industrie')
Bedrijfstak.create(naam: 'Energie- en waterleidingbedrijven')
Bedrijfstak.create(naam: 'Bouwnijverheid')
Bedrijfstak.create(naam: 'Handel, horeca en reparatie')
Bedrijfstak.create(naam: 'Vervoer, opslag en communicatie')
Bedrijfstak.create(naam: 'Financiële en zakelijke dienstverlening')
Bedrijfstak.create(naam: 'Overheid')
Bedrijfstak.create(naam: 'Zorg en overige dienstverlening')

Journaaltype.create(naam: 'Inkoopboek')
Journaaltype.create(naam: 'Verkoopboek')
Journaaltype.create(naam: 'Bankboek')
Journaaltype.create(naam: 'Leveringen')
Journaaltype.create(naam: 'Intern')

Boekproces.create(naam: 'Inkomsten')
Boekproces.create(naam: 'Betalingen')
Boekproces.create(naam: 'Afname plicht')
Boekproces.create(naam: 'Toename recht (waardestijging)')
Boekproces.create(naam: 'Afname recht	')
Boekproces.create(naam: 'Toename plicht vennootschapsbelasting')
Boekproces.create(naam: 'Afname plicht vernnootschapsbelasting')
Boekproces.create(naam: 'Afname plicht nog te betalen btw')
Boekproces.create(naam: 'Toename plicht nog te betalen btw')
Boekproces.create(naam: 'Rentelasten')
Boekproces.create(naam: 'Rentebaten')
Boekproces.create(naam: 'Opbrengst effecten')
Boekproces.create(naam: 'Waardeverandering effecten')
Boekproces.create(naam: 'levering in (inkopen)')
Boekproces.create(naam: 'Afschrijving vaste activa')
Boekproces.create(naam: 'Waardeverandering anders')
Boekproces.create(naam: 'Lonen en salarissen')
Boekproces.create(naam: 'Sociale lasten')
Boekproces.create(naam: 'Afschrijvingen vaste activa')
Boekproces.create(naam: 'Overige waardeveranderingen vaste activa')
Boekproces.create(naam: 'Bijzondere waardevermindering vlottende activa')
Boekproces.create(naam: 'Overige bedrijfskosten')
Boekproces.create(naam: 'Inkoopwaarde van de omzet')
Boekproces.create(naam: 'Inkoopkosten')
Boekproces.create(naam: 'Verkoopkosten')
Boekproces.create(naam: 'Algemene kosten')
Boekproces.create(naam: 'Bedrijfskosten')
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
Grootboektype.create(naam: 'Kennis over huishouden, eten koken, vakantie vieren, vrienden maken, etc.', categorie: 'N')
Grootboektype.create(naam: 'Arbeid bij bakker', categorie: 'N')


Product.create(naam: 'Brood', icoon: File.open(Rails.root + "app/assets/images/brood.png"))
Product.create(naam: 'Oven', icoon: File.open(Rails.root + "app/assets/images/oven.png"))

Organisatie.create(naam: 'Maxima', bedrijfstak_id: 4, rechtsvorm_id: 1, voorkant_image: File.open(Rails.root + "app/assets/images/figuren_maxima.png"))
Organisatie.create(naam: 'Bakker Bart', bedrijfstak_id: 1, rechtsvorm_id: 2, voorkant_image: File.open(Rails.root + "app/assets/images/bakkerbuitenkant.jpeg"))
Organisatie.create(naam: 'MediaMarkt', bedrijfstak_id: 2, rechtsvorm_id: 3, voorkant_image: File.open(Rails.root + "app/assets/images/mediamarkt.jpg"))
Organisatie.create(naam: 'Shell', bedrijfstak_id: 3, rechtsvorm_id: 4, voorkant_image: File.open(Rails.root + "app/assets/images/shell.jpg"))

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
Grootboekrekening.create(naam: 'Verkoop brood', grootboektype_id: 5, organisatie_id: 2, icoon: nil)
Grootboekrekening.create(naam: 'Lening', grootboektype_id: 11, organisatie_id: 2, icoon: nil)
Grootboekrekening.create(naam: 'BTW Verkopen', grootboektype_id: 10, organisatie_id: 2, icoon: nil)

#Inkoop brood
Boeking.create(boekproces_id: 14, boekingtype: "J", organisatie_id: 2,datum: Date.new(2016,1,1), product_id: 1, bij_af: '+', waarde: 100000, p_inkoop: 1000, hoeveelheid: 100, journaal_id: 1, grootboekrekening_id: 11)
Boeking.create(boekproces_id: 2, boekingtype: "J", organisatie_id: 2,datum: Date.new(2016,1,1), product_id: 1, bij_af: '-', waarde: 106000, p_inkoop: 0, hoeveelheid: 0, journaal_id: 1, grootboekrekening_id: 12)
Boeking.create(boekproces_id: 8, boekingtype: "J", organisatie_id: 2,datum: Date.new(2016,1,1), product_id: 1, bij_af: '+', waarde: 6000, p_inkoop: 0, hoeveelheid: 0, journaal_id: 1, grootboekrekening_id: 13)

# Boeking voor inkoopwaarde van de omzet
Boeking.create(boekproces_id: 23, boekingtype: "I", organisatie_id: 2,datum: Date.new(2016,1,1), product_id: 1, bij_af: '-', waarde: 100000, p_inkoop: 1, hoeveelheid: 100000, journaal_id: 9, grootboekrekening_id: 11)
Boeking.create(boekproces_id: 23, boekingtype: "I", organisatie_id: 2,datum: Date.new(2016,1,1), product_id: 1, bij_af: '-', waarde: 100000, p_inkoop: 1, hoeveelheid: 50000, journaal_id: 9, grootboekrekening_id: 11)

# Boekingen voor bedrijfskosten
Boeking.create(boekproces_id: 24, boekingtype: "I", organisatie_id: 2,datum: Date.new(2016,1,1), product_id: 1, bij_af: '-', waarde: 1000, p_inkoop: 1, hoeveelheid: 1, journaal_id: 9, grootboekrekening_id: 14)
Boeking.create(boekproces_id: 25, boekingtype: "I", organisatie_id: 2,datum: Date.new(2016,1,1), product_id: 1, bij_af: '-', waarde: 2000, p_inkoop: 1, hoeveelheid: 1, journaal_id: 9, grootboekrekening_id: 14)
Boeking.create(boekproces_id: 26, boekingtype: "I", organisatie_id: 2,datum: Date.new(2016,1,1), product_id: 1, bij_af: '-', waarde: 2000, p_inkoop: 1, hoeveelheid: 1, journaal_id: 9, grootboekrekening_id: 14)

# Boekingen voor Omzet
Boeking.create(boekproces_id: 28, boekingtype: "I", organisatie_id: 2,datum: Date.new(2016,1,1), product_id: 1, bij_af: '-', waarde: 500000, p_inkoop: 1, hoeveelheid: 1, journaal_id: 9, grootboekrekening_id: 15)

#Boekingen voor Overige bedrijfskosten
Boeking.create(boekproces_id: 10, boekingtype: "I", organisatie_id: 2,datum: Date.new(2016,1,1), product_id: 1, bij_af: '-', waarde: 1000, p_inkoop: 1, hoeveelheid: 1, journaal_id: 9, grootboekrekening_id: 16)

#Boekingen Belastingen
Boeking.create(boekproces_id: 9, boekingtype: "I", organisatie_id: 2,datum: Date.new(2016,1,1), product_id: 1, bij_af: '-', waarde: 9000, p_inkoop: 1, hoeveelheid: 1, journaal_id: 9, grootboekrekening_id: 17)






  


