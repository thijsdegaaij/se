# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

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


Grootboektype.create(naam: 'Vlottende activa', icoon: File.open(Rails.root + "app/assets/images/icon_rondje.png"))
Grootboektype.create(naam: 'Vaste activa', icoon: File.open(Rails.root + "app/assets/images/icon_rondje.png"))
Grootboektype.create(naam: 'Kosten')
Grootboektype.create(naam: 'Personeel')
Grootboektype.create(naam: 'Te koop')
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

# Wordt journaaltype
# Boektype.create(naam: 'Inkoopboek')
# Boektype.create(naam: 'Verkoopboek')
# Boektype.create(naam: 'Kasboek')
# Boektype.create(naam: 'Bankboek')
# Boektype.create(naam: 'Leveringen')

Product.create(naam: 'Brood', icoon: File.open(Rails.root + "app/assets/images/brood.png"))
Product.create(naam: 'Oven', icoon: File.open(Rails.root + "app/assets/images/oven.png"))

Organisatie.create(naam: 'Bakker Bart', bedrijfstak_id: 1, rechtsvorm_id: 1, voorkant_image: File.open(Rails.root + "app/assets/images/bakkerbuitenkant.jpeg"))
Organisatie.create(naam: 'MediaMarkt', bedrijfstak_id: 2, rechtsvorm_id: 2, voorkant_image: File.open(Rails.root + "app/assets/images/mediamarkt.jpg"))
Organisatie.create(naam: 'Shell', bedrijfstak_id: 3, rechtsvorm_id: 3, voorkant_image: File.open(Rails.root + "app/assets/images/shell.jpg"))

Grootboekrekening.create(naam: 'Voorraad goederen', grootboektype_id: 1, organisatie_id: 1)
Grootboekrekening.create(naam: 'Crediteuren (1600)', grootboektype_id: 2, organisatie_id: 1)
Grootboekrekening.create(naam: 'Te ontvangen btw (1801)', grootboektype_id: 7, organisatie_id: 1)

Boeking.create(datum: Date.new(2016,1,1), product_id: 1, bij_af: '+', waarde: 100, p_inkoop: 50, hoeveelheid: 20, boektype_id: 1, grootboekrekening_id: 1) 
Boeking.create(datum: Date.new(2016,1,2), product_id: 2, bij_af: '-', waarde: 200, p_inkoop: 10, hoeveelheid: 20, boektype_id: 1, grootboekrekening_id: 1)


