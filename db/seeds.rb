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

Journaaltype.create(naam: 'Inkoopboek', icoon: File.open(Rails.root + "app/assets/images/icon_rondje.png"))
Journaaltype.create(naam: 'Verkoopboek', icoon: File.open(Rails.root + "app/assets/images/icon_rondje.png"))
Journaaltype.create(naam: 'Bankboek', icoon: File.open(Rails.root + "app/assets/images/icon_rondje.png"))
Journaaltype.create(naam: 'Leveringen', icoon: File.open(Rails.root + "app/assets/images/icon_rondje.png"))

Journaal.create(organisatie_id: 2, journaaltype_id: 1, boeknummer: "inknr-0001", datum: Date.new(2016,1,1), leverancier: "Leverancier A", hoeveelheid: 300, eenheid: "stuk", productnaam: "Brood", betalingswijze: "Contant", stukprijs: 1.00, valuta: "euro", btw_percentage: 6, bedrag_ex_btw: 300, bedrag_inc_btw: 318.00, voorwaarden: "inknr-0027\nVoorwaarde 1\nVoorwaarde 2\nVoorwaarde 3")
Journaal.create(organisatie_id: 2, journaaltype_id: 1, boeknummer: "inknr-0002", datum: Date.new(2016,1,2), leverancier: "Leverancier B", hoeveelheid: 1, eenheid: "kilo", productnaam: "Zout", betalingswijze: "Bank", stukprijs: 2.00, valuta: "euro", btw_percentage: 6, bedrag_ex_btw: 2, bedrag_inc_btw: 2.12, voorwaarden: "inknr-0028\nVoorwaarde 1\nVoorwaarde 2\nVoorwaarde 3")

Journaal.create(organisatie_id: 2, journaaltype_id: 2, boeknummer: "Vernr-0001", datum: Date.new(2016,2,1), klant: "Diverse kopers", hoeveelheid: 300, eenheid: "stuk", productnaam: "Brood", betalingswijze: "Contant", stukprijs: 2.00, valuta: "euro", btw_percentage: 6, bedrag_ex_btw: 300, bedrag_inc_btw: 318.00, voorwaarden: "Vernr-0001\nVoorwaarde 1\nVoorwaarde 2\nVoorwaarde 3")
Journaal.create(organisatie_id: 2, journaaltype_id: 2, boeknummer: "Vernr-0002", datum: Date.new(2016,2,2), klant: "Klant B", hoeveelheid: 10, eenheid: "pot", productnaam: "Jam", betalingswijze: "Bank", stukprijs: 5.00, valuta: "euro", btw_percentage: 6, bedrag_ex_btw: 50, bedrag_inc_btw: 53.00, voorwaarden: "Vernr-0002\nVoorwaarde 1\nVoorwaarde 2\nVoorwaarde 3")

Journaal.create(organisatie_id: 2, journaaltype_id: 3, boeknummer: "Afschrift-0001", datum: Date.new(2016,2,1), klant: "Koper A", valuta: "euro", bedrag_inc_btw: 318.00, voorwaarden: "Afschrift-0001\nBehorende bij Vernr-0001")
Journaal.create(organisatie_id: 2, journaaltype_id: 3, boeknummer: "Afschrift-0002", datum: Date.new(2016,2,1), leverancier: "Leverancier A", valuta: "euro", bedrag_inc_btw: -318.00, voorwaarden: "Afschrift-0001\nBehorende bij inknr-0001")

Journaal.create(organisatie_id: 2, journaaltype_id: 4, boeknummer: "Levering-0001", datum: Date.new(2016,2,1), klant: "Koper A", hoeveelheid: 300, eenheid: "stuk", productnaam: "Brood", valuta: "euro", bedrag_ex_btw: 2.00, voorwaarden: "Levering-0001\nBehorende bij Vernr-0001")
Journaal.create(organisatie_id: 2, journaaltype_id: 4, boeknummer: "Levering-0002", datum: Date.new(2016,2,1), leverancier: "Leverancier A", hoeveelheid: 10, eenheid: "kilo", productnaam: "Meel", valuta: "euro", bedrag_ex_btw: 2.00, voorwaarden: "levering-0002\nBehorende bij inknr-0001")


Grootboektype.create(naam: 'Vlottende activa', icoon: File.open(Rails.root + "app/assets/images/icon_rondje.png"))
Grootboektype.create(naam: 'Vaste activa', icoon: File.open(Rails.root + "app/assets/images/icon_vierkant.png"))
Grootboektype.create(naam: 'Kosten', icoon: File.open(Rails.root + "app/assets/images/icon_pijlhoofdmarkt.png"))
Grootboektype.create(naam: 'Personeel', icoon: File.open(Rails.root + "app/assets/images/icon_mens.png"))
Grootboektype.create(naam: 'Te koop', icoon: File.open(Rails.root + "app/assets/images/icon_rondje.png"))
Grootboektype.create(naam: 'Know-how')
Grootboektype.create(naam: 'Reclame')
Grootboektype.create(naam: 'Rechten en Plichten')
Grootboektype.create(naam: 'Geld')
Grootboektype.create(naam: 'Belastingen')
Grootboektype.create(naam: 'Financial producten')
Grootboektype.create(naam: 'Niet-duurzame consumptiegoederen')
Grootboektype.create(naam: 'Duurzame consumptiegoederen')
Grootboektype.create(naam: 'Voor gezinsleden')
Grootboektype.create(naam: 'Kennis over huishouden, eten koken, vakantie vieren, vrienden maken, etc.')
Grootboektype.create(naam: 'Arbeid bij bakker')

Product.create(naam: 'Brood', icoon: File.open(Rails.root + "app/assets/images/brood.png"))
Product.create(naam: 'Oven', icoon: File.open(Rails.root + "app/assets/images/oven.png"))

Organisatie.create(naam: 'Maxima', bedrijfstak_id: 4, rechtsvorm_id: 1, voorkant_image: File.open(Rails.root + "app/assets/images/figuren_maxima.png"))
Organisatie.create(naam: 'Bakker Bart', bedrijfstak_id: 1, rechtsvorm_id: 2, voorkant_image: File.open(Rails.root + "app/assets/images/bakkerbuitenkant.jpeg"))
Organisatie.create(naam: 'MediaMarkt', bedrijfstak_id: 2, rechtsvorm_id: 3, voorkant_image: File.open(Rails.root + "app/assets/images/mediamarkt.jpg"))
Organisatie.create(naam: 'Shell', bedrijfstak_id: 3, rechtsvorm_id: 4, voorkant_image: File.open(Rails.root + "app/assets/images/shell.jpg"))




#Example Huishouden
Grootboekrekening.create(naam: 'NDC Brood', grootboektype_id: 11, organisatie_id: 1, icoon: File.open(Rails.root + "app/assets/images/brood.png"))
Grootboekrekening.create(naam: 'NDC Jam', grootboektype_id: 11, organisatie_id: 1, icoon: File.open(Rails.root + "app/assets/images/jam.png"))
Grootboekrekening.create(naam: 'DC Fiets', grootboektype_id: 12, organisatie_id: 1, icoon: File.open(Rails.root + "app/assets/images/fiets.png"))
Grootboekrekening.create(naam: 'DC Bed', grootboektype_id: 12, organisatie_id: 1, icoon: File.open(Rails.root + "app/assets/images/bed.png"))
Grootboekrekening.create(naam: 'KOSTEN Huis', grootboektype_id: 3, organisatie_id: 1, icoon: File.open(Rails.root + "app/assets/images/huis.png"))
Grootboekrekening.create(naam: 'KOSTEN Electriciteit', grootboektype_id: 3, organisatie_id: 1, icoon: File.open(Rails.root + "app/assets/images/elektriciteit.jpg"))
Grootboekrekening.create(naam: 'PERSONEEL', grootboektype_id: 4, organisatie_id: 1, icoon: File.open(Rails.root + "app/assets/images/figuren_bakkergroen.png"))
Grootboekrekening.create(naam: 'VOOR GEZINSLEDEN Broodbereid', grootboektype_id: 14, organisatie_id: 1, icoon: File.open(Rails.root + "app/assets/images/broodbereid.png"))
Grootboekrekening.create(naam: 'VOOR GEZINSLEDEN interieur', grootboektype_id: 14, organisatie_id: 1, icoon: File.open(Rails.root + "app/assets/images/interieur1.jpeg"))
Grootboekrekening.create(naam: 'ARBEID BIJ BAKKER Maxima', grootboektype_id: 16, organisatie_id: 1, icoon: File.open(Rails.root + "app/assets/images/figuren_maxima.png"))

#Example Anders dan huishouden
Grootboekrekening.create(naam: 'VL Zout', grootboektype_id: 1, organisatie_id: 2, icoon: File.open(Rails.root + "app/assets/images/zout.png"))
Grootboekrekening.create(naam: 'VL Brood', grootboektype_id: 1, organisatie_id: 2, icoon: File.open(Rails.root + "app/assets/images/brood.png"))
Grootboekrekening.create(naam: 'VA Oven', grootboektype_id: 2, organisatie_id: 2, icoon: File.open(Rails.root + "app/assets/images/oven.png"))
Grootboekrekening.create(naam: 'VA Broodkast', grootboektype_id: 2, organisatie_id: 2, icoon: File.open(Rails.root + "app/assets/images/broodkast.png"))
Grootboekrekening.create(naam: 'KOSTEN Electriciteit', grootboektype_id: 3, organisatie_id: 2, icoon: File.open(Rails.root + "app/assets/images/elektriciteit.jpg"))
Grootboekrekening.create(naam: 'Kosten Broodzak', grootboektype_id: 3, organisatie_id: 2, icoon: File.open(Rails.root + "app/assets/images/broodzakje.jpg"))
Grootboekrekening.create(naam: 'PERSONEEL', grootboektype_id: 4, organisatie_id: 2, icoon: File.open(Rails.root + "app/assets/images/figuren_bakkergroen.png"))
Grootboekrekening.create(naam: 'TE KOOP', grootboektype_id: 5, organisatie_id: 2, icoon: File.open(Rails.root + "app/assets/images/brood.png"))
Grootboekrekening.create(naam: 'TE KOOP', grootboektype_id: 5, organisatie_id: 2, icoon: File.open(Rails.root + "app/assets/images/bol.png"))

Boeking.create(datum: Date.new(2016,1,1), product_id: 1, bij_af: '+', waarde: 100, p_inkoop: 50, hoeveelheid: 20, journaal_id: 1, grootboekrekening_id: 11, icoon: File.open(Rails.root + "app/assets/images/icon_stroommarktin.png"))
Boeking.create(datum: Date.new(2016,1,2), product_id: 2, bij_af: '-', waarde: 200, p_inkoop: 10, hoeveelheid: 20, journaal_id: 1, grootboekrekening_id: 13, icoon: File.open(Rails.root + "app/assets/images/icon_stroomintern.png"))
Boeking.create(datum: Date.new(2016,1,3), product_id: 1, bij_af: '+', waarde: 150, p_inkoop: 1, hoeveelheid: 1, journaal_id: 3, grootboekrekening_id: 12, icoon: File.open(Rails.root + "app/assets/images/icon_stroominternin.png"))
Boeking.create(datum: Date.new(2016,1,3), product_id: 2, bij_af: '-', waarde: 300, p_inkoop: 2, hoeveelheid: 2, journaal_id: 3, grootboekrekening_id: 13, icoon: File.open(Rails.root + "app/assets/images/icon_stroommarktuit.png")) 


