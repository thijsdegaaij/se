Bedrijfstak.create("letter"=>"A", "naam"=>"Landbouw, bosbouw en visserij")
Bedrijfstak.create("letter"=>"B", "naam"=>"Delfstoffenwinning")
Bedrijfstak.create("letter"=>"C", "naam"=>"Industrie")
Bedrijfstak.create("letter"=>"D", "naam"=>"Energie- en waterleidingbedrijven")
Bedrijfstak.create("letter"=>"E", "naam"=>"Water en afvalwater")
Bedrijfstak.create("letter"=>"F", "naam"=>"Bouwnijverheid")
Bedrijfstak.create("letter"=>"G", "naam"=>"Groot- en detailhandel")
Bedrijfstak.create("letter"=>"H", "naam"=>"Vervoer, opslag en communicatie")
Bedrijfstak.create("letter"=>"I", "naam"=>"Horeca")
Bedrijfstak.create("letter"=>"J", "naam"=>"Informatie en communicatie")
Bedrijfstak.create("letter"=>"K", "naam"=>"Financiële instellingen")
Bedrijfstak.create("letter"=>"L", "naam"=>"Onroerend goed")
Bedrijfstak.create("letter"=>"M", "naam"=>"Zakelijke dienstverlening ")
Bedrijfstak.create("letter"=>"N", "naam"=>"Overige zakelijke dienstverlening")
Bedrijfstak.create("letter"=>"O", "naam"=>"Overheid")
Bedrijfstak.create("letter"=>"P", "naam"=>"Onderwijs")
Bedrijfstak.create("letter"=>"Q", "naam"=>"Gezondheidszorg")
Bedrijfstak.create("letter"=>"R", "naam"=>"Recreatie")
Bedrijfstak.create("letter"=>"T", "naam"=>"Huishoudens")
Bedrijfstak.create("letter"=>"U", "naam"=>"Extraterritoriale organisaties")
Boeking.create("grootboekrekening_id"=>11, "journaal_id"=>1, "product_id"=>1, datum: Date.new(2016,1,1),icoon: nil, "bij_af"=>"+", "waarde"=>100000, "p_inkoop"=>1, "hoeveelheid"=>100000, "organisatie_id"=>2, "boekingtype"=>"J", "boekproces_id"=>15)
Boeking.create("grootboekrekening_id"=>12, "journaal_id"=>1, "product_id"=>1, datum: Date.new(2016,1,1),icoon: nil, "bij_af"=>"-", "waarde"=>106000, "p_inkoop"=>0, "hoeveelheid"=>0, "organisatie_id"=>2, "boekingtype"=>"J", "boekproces_id"=>2)
Boeking.create("grootboekrekening_id"=>13, "journaal_id"=>1, "product_id"=>1, datum: Date.new(2016,1,1),icoon: nil, "bij_af"=>"+", "waarde"=>6000, "p_inkoop"=>0, "hoeveelheid"=>0, "organisatie_id"=>2, "boekingtype"=>"J", "boekproces_id"=>10)
Boeking.create("grootboekrekening_id"=>11, "journaal_id"=>9, "product_id"=>1, datum: Date.new(2016,1,1),icoon: nil, "bij_af"=>"-", "waarde"=>100000, "p_inkoop"=>1, "hoeveelheid"=>100000, "organisatie_id"=>2, "boekingtype"=>"I", "boekproces_id"=>24)
Boeking.create("grootboekrekening_id"=>14, "journaal_id"=>9, "product_id"=>1, datum: Date.new(2016,1,1),icoon: nil, "bij_af"=>"-", "waarde"=>8000, "p_inkoop"=>1, "hoeveelheid"=>1, "organisatie_id"=>2, "boekingtype"=>"I", "boekproces_id"=>25)
Boeking.create("grootboekrekening_id"=>14, "journaal_id"=>9, "product_id"=>1, datum: Date.new(2016,1,1),icoon: nil, "bij_af"=>"-", "waarde"=>12000, "p_inkoop"=>1, "hoeveelheid"=>1, "organisatie_id"=>2, "boekingtype"=>"I", "boekproces_id"=>26)
Boeking.create("grootboekrekening_id"=>14, "journaal_id"=>9, "product_id"=>1, datum: Date.new(2016,1,1),icoon: nil, "bij_af"=>"-", "waarde"=>20000, "p_inkoop"=>1, "hoeveelheid"=>1, "organisatie_id"=>2, "boekingtype"=>"I", "boekproces_id"=>27)
Boeking.create("grootboekrekening_id"=>15, "journaal_id"=>4, "product_id"=>1, datum: Date.new(2016,1,1),icoon: nil, "bij_af"=>"-", "waarde"=>100000, "p_inkoop"=>1, "hoeveelheid"=>1, "organisatie_id"=>2, "boekingtype"=>"I", "boekproces_id"=>29)
Boeking.create("grootboekrekening_id"=>26, "journaal_id"=>9, "product_id"=>1, datum: Date.new(2016,1,1),icoon: nil, "bij_af"=>"-", "waarde"=>1000, "p_inkoop"=>1, "hoeveelheid"=>1, "organisatie_id"=>2, "boekingtype"=>"I", "boekproces_id"=>11)
Boeking.create("grootboekrekening_id"=>17, "journaal_id"=>9, "product_id"=>1, datum: Date.new(2016,1,1),icoon: nil, "bij_af"=>"-", "waarde"=>12000, "p_inkoop"=>1, "hoeveelheid"=>1, "organisatie_id"=>2, "boekingtype"=>"I", "boekproces_id"=>9)
Boeking.create("grootboekrekening_id"=>12, "journaal_id"=>3, "product_id"=>1, datum: Date.new(2016,1,1),icoon: nil, "bij_af"=>"+", "waarde"=>212000, "p_inkoop"=>nil, "hoeveelheid"=>nil, "organisatie_id"=>2, "boekingtype"=>"", "boekproces_id"=>1)
Boeking.create("grootboekrekening_id"=>12, "journaal_id"=>2, "product_id"=>1, datum: Date.new(2016,1,1),icoon: nil, "bij_af"=>"-", "waarde"=>36300, "p_inkoop"=>nil, "hoeveelheid"=>nil, "organisatie_id"=>2, "boekingtype"=>"", "boekproces_id"=>2)
Boeking.create("grootboekrekening_id"=>13, "journaal_id"=>1, "product_id"=>1, datum: Date.new(2016,1,1),icoon: nil, "bij_af"=>"+", "waarde"=>6300, "p_inkoop"=>nil, "hoeveelheid"=>nil, "organisatie_id"=>2, "boekingtype"=>"", "boekproces_id"=>10)
Boeking.create("grootboekrekening_id"=>16, "journaal_id"=>1, "product_id"=>1, datum: Date.new(2016,1,1),icoon: nil, "bij_af"=>"-", "waarde"=>20000, "p_inkoop"=>nil, "hoeveelheid"=>nil, "organisatie_id"=>2, "boekingtype"=>"", "boekproces_id"=>15)
Boeking.create("grootboekrekening_id"=>15, "journaal_id"=>3, "product_id"=>1, datum: Date.new(2016,1,1),icoon: nil, "bij_af"=>"-", "waarde"=>100000, "p_inkoop"=>nil, "hoeveelheid"=>nil, "organisatie_id"=>2, "boekingtype"=>"J", "boekproces_id"=>29)
Boeking.create("grootboekrekening_id"=>1, "journaal_id"=>11, "product_id"=>1, datum: Date.new(2016,1,1),icoon: nil, "bij_af"=>"+", "waarde"=>900, "p_inkoop"=>nil, "hoeveelheid"=>nil, "organisatie_id"=>1, "boekingtype"=>"J", "boekproces_id"=>1)
Boeking.create("grootboekrekening_id"=>18, "journaal_id"=>1, "product_id"=>1, datum: Date.new(2016,1,1),icoon: nil, "bij_af"=>"-", "waarde"=>3000, "p_inkoop"=>nil, "hoeveelheid"=>nil, "organisatie_id"=>2, "boekingtype"=>"", "boekproces_id"=>20)
Boeking.create("grootboekrekening_id"=>18, "journaal_id"=>1, "product_id"=>2, datum: Date.new(2016,1,1),icoon: nil, "bij_af"=>"+", "waarde"=>10000, "p_inkoop"=>10000, "hoeveelheid"=>1, "organisatie_id"=>2, "boekingtype"=>"", "boekproces_id"=>15)
Boeking.create("grootboekrekening_id"=>14, "journaal_id"=>1, "product_id"=>1, datum: Date.new(2016,1,1),icoon: nil, "bij_af"=>"+", "waarde"=>30000, "p_inkoop"=>nil, "hoeveelheid"=>nil, "organisatie_id"=>2, "boekingtype"=>"", "boekproces_id"=>15)
Boeking.create("grootboekrekening_id"=>14, "journaal_id"=>1, "product_id"=>1, datum: Date.new(2016,1,1),icoon: nil, "bij_af"=>"-", "waarde"=>32000, "p_inkoop"=>nil, "hoeveelheid"=>nil, "organisatie_id"=>2, "boekingtype"=>"", "boekproces_id"=>23)
Boekproces.create("naam"=>"Inkomsten x", icoon: nil, "kostenspecificatie"=>nil)
Boekproces.create("naam"=>"Betalingen", icoon: nil, "kostenspecificatie"=>nil)
Boekproces.create("naam"=>"Toename recht (waardestijging)", icoon: nil, "kostenspecificatie"=>nil)
Boekproces.create("naam"=>"Afname recht (waardedaling)", icoon: nil, "kostenspecificatie"=>nil)
Boekproces.create("naam"=>"Toename plicht (waardedaling", icoon: nil, "kostenspecificatie"=>nil)
Boekproces.create("naam"=>"Afname plicht (waardestijging", icoon: nil, "kostenspecificatie"=>nil)
Boekproces.create("naam"=>"--, Vennootschapsbelasting", icoon: nil, "kostenspecificatie"=>nil)
Boekproces.create("naam"=>"+, Vernnootschapsbelasting", icoon: nil, "kostenspecificatie"=>nil)
Boekproces.create("naam"=>"- , Nog te betalen btw", icoon: nil, "kostenspecificatie"=>nil)
Boekproces.create("naam"=>"+ , Nog te betalen btw", icoon: nil, "kostenspecificatie"=>nil)
Boekproces.create("naam"=>"Rentelasten", icoon: nil, "kostenspecificatie"=>nil)
Boekproces.create("naam"=>"Rentebaten", icoon: nil, "kostenspecificatie"=>nil)
Boekproces.create("naam"=>"Opbrengst effecten", icoon: nil, "kostenspecificatie"=>nil)
Boekproces.create("naam"=>"Waardeverandering effecten", icoon: nil, "kostenspecificatie"=>nil)
Boekproces.create("naam"=>"Levering in (inkopen)", icoon: nil, "kostenspecificatie"=>nil)
Boekproces.create("naam"=>"Afschrijving vaste activa", icoon: nil, "kostenspecificatie"=>"kostensoorten")
Boekproces.create("naam"=>"Waardeverandering anders", icoon: nil, "kostenspecificatie"=>"kostensoorten")
Boekproces.create("naam"=>"Lonen en salarissen", icoon: nil, "kostenspecificatie"=>"kostensoorten")
Boekproces.create("naam"=>"Sociale lasten", icoon: nil, "kostenspecificatie"=>"kostensoorten")
Boekproces.create("naam"=>"Afschrijvingen vaste activa", icoon: nil, "kostenspecificatie"=>"kostensoorten")
Boekproces.create("naam"=>"Overige waardeveranderingen vaste activa", icoon: nil, "kostenspecificatie"=>"kostensoorten")
Boekproces.create("naam"=>"Bijzondere waardevermindering vlottende activa", icoon: nil, "kostenspecificatie"=>"kostensoorten")
Boekproces.create("naam"=>"Overige bedrijfskosten", icoon: nil, "kostenspecificatie"=>"kostensoorten")
Boekproces.create("naam"=>"Inkoopwaarde van de omzet", icoon: nil, "kostenspecificatie"=>"functionele kosten")
Boekproces.create("naam"=>"Inkoopkosten", icoon: nil, "kostenspecificatie"=>"functionele kosten")
Boekproces.create("naam"=>"Verkoopkosten", icoon: nil, "kostenspecificatie"=>"functionele kosten")
Boekproces.create("naam"=>"Algemene kosten", icoon: nil, "kostenspecificatie"=>"functionele kosten")
Boekproces.create("naam"=>"Bedrijfskosten", icoon: nil, "kostenspecificatie"=>"functionele kosten")
Boekproces.create("naam"=>"Levering uit (verkopen, omzet)", icoon: nil, "kostenspecificatie"=>nil)
Boekproces.create("naam"=>"Basis winst", icoon: nil, "kostenspecificatie"=>nil)


Grootboekrekening.create("naam"=>"Zelf gemaakt", "grootboektype_id"=>14, "organisatie_id"=>"1", icoon: File.open(Rails.root + "/uploads/grootboekrekening/icoon/1/thumb_broodbereid.png"), :thumb File.open(Rails.root + "/uploads/grootboekrekening/icoon/1/thumb_thumb_broodbereid.png")
Grootboekrekening.create("naam"=>"Boodschappen houdbaar", "grootboektype_id"=>12, "organisatie_id"=>"1", icoon: File.open(Rails.root + "/uploads/grootboekrekening/icoon/2/jam.png"), :thumb File.open(Rails.root + "/uploads/grootboekrekening/icoon/2/thumb_jam.png")
Grootboekrekening.create("naam"=>"Vervoersspullen", "grootboektype_id"=>13, "organisatie_id"=>"1", icoon: File.open(Rails.root + "/uploads/grootboekrekening/icoon/3/fiets.png"), :thumb File.open(Rails.root + "/uploads/grootboekrekening/icoon/3/thumb_fiets.png")
Grootboekrekening.create("naam"=>"Interieurspullen", "grootboektype_id"=>13, "organisatie_id"=>"1", icoon: File.open(Rails.root + "/uploads/grootboekrekening/icoon/4/bed.png"), :thumb File.open(Rails.root + "/uploads/grootboekrekening/icoon/4/thumb_bed.png")
Grootboekrekening.create("naam"=>"Kosten voor huis", "grootboektype_id"=>3, "organisatie_id"=>"1", icoon: File.open(Rails.root + "/uploads/grootboekrekening/icoon/5/huis.png"), :thumb File.open(Rails.root + "/uploads/grootboekrekening/icoon/5/thumb_huis.png")
Grootboekrekening.create("naam"=>"Energiekosten", "grootboektype_id"=>3, "organisatie_id"=>"1", icoon: File.open(Rails.root + "/uploads/grootboekrekening/icoon/6/elektriciteit.jpg", :thumb File.open(Rails.root + "/uploads/grootboekrekening/icoon/6/thumb_elektriciteit.jpg")
Grootboekrekening.create("naam"=>"Schoonmakers", "grootboektype_id"=>4, "organisatie_id"=>"1", icoon: File.open(Rails.root + "/uploads/grootboekrekening/icoon/7/figuren_peter.png"), :thumb File.open(Rails.root + "/uploads/grootboekrekening/icoon/7/thumb_figuren_peter.png")
Grootboekrekening.create("naam"=>"Mijn huis", "grootboektype_id"=>14, "organisatie_id"=>"1", icoon: File.open(Rails.root + "/uploads/grootboekrekening/icoon/9/interieur1.jpeg", :thumb File.open(Rails.root + "/uploads/grootboekrekening/icoon/9/thumb_interieur1.jpeg")
Grootboekrekening.create("naam"=>"Mijn werk", "grootboektype_id"=>16, "organisatie_id"=>"1", icoon: File.open(Rails.root + "/uploads/grootboekrekening/icoon/10/figuren_maxima.png"), :thumb File.open(Rails.root + "/uploads/grootboekrekening/icoon/10/thumb_figuren_maxima.png")
Grootboekrekening.create("naam"=>"Inkoop brood", "grootboektype_id"=>1, "organisatie_id"=>"2", icoon: File.open(Rails.root + "/uploads/grootboekrekening/icoon/11/brood.png"), :thumb File.open(Rails.root + "/uploads/grootboekrekening/icoon/11/thumb_brood.png")
Grootboekrekening.create("naam"=>"Bank", "grootboektype_id"=>9, "organisatie_id"=>"2", icoon: File.open(Rails.root + nil, :thumb File.open(Rails.root + nil)
Grootboekrekening.create("naam"=>"BTW Inkopen", "grootboektype_id"=>10, "organisatie_id"=>"2", icoon: File.open(Rails.root + nil, :thumb File.open(Rails.root + nil)
Grootboekrekening.create("naam"=>"Telefoonkosten", "grootboektype_id"=>3, "organisatie_id"=>"2", icoon: File.open(Rails.root + "/uploads/grootboekrekening/icoon/14/telefoonmobiel.jpeg", :thumb File.open(Rails.root + "/uploads/grootboekrekening/icoon/14/thumb_telefoonmobiel.jpeg")
Grootboekrekening.create("naam"=>"Verkoop brood", "grootboektype_id"=>5, "organisatie_id"=>"2", icoon: File.open(Rails.root + "/uploads/grootboekrekening/icoon/15/brood.png"), :thumb File.open(Rails.root + "/uploads/grootboekrekening/icoon/15/thumb_brood.png")
Grootboekrekening.create("naam"=>"Lening 5%", "grootboektype_id"=>11, "organisatie_id"=>"2", icoon: File.open(Rails.root + nil, :thumb File.open(Rails.root + nil)
Grootboekrekening.create("naam"=>"BTW Verkopen", "grootboektype_id"=>10, "organisatie_id"=>"2", icoon: File.open(Rails.root + nil, :thumb File.open(Rails.root + nil)
Grootboekrekening.create("naam"=>"Machines", "grootboektype_id"=>2, "organisatie_id"=>"2", icoon: File.open(Rails.root + "/uploads/grootboekrekening/icoon/18/oven.png"), :thumb File.open(Rails.root + "/uploads/grootboekrekening/icoon/18/thumb_oven.png")
Grootboekrekening.create("naam"=>"Leveringskosten", "grootboektype_id"=>3, "organisatie_id"=>"2", icoon: File.open(Rails.root + "/uploads/grootboekrekening/icoon/19/bestelbus.jpeg", :thumb File.open(Rails.root + "/uploads/grootboekrekening/icoon/19/thumb_bestelbus.jpeg")
Grootboekrekening.create("naam"=>"Advertentie", "grootboektype_id"=>7, "organisatie_id"=>"2", icoon: File.open(Rails.root + "/uploads/grootboekrekening/icoon/20/reclameBroodBart.png"), :thumb File.open(Rails.root + "/uploads/grootboekrekening/icoon/20/thumb_reclameBroodBart.png")
Grootboekrekening.create("naam"=>"Administratie", "grootboektype_id"=>17, "organisatie_id"=>"2", icoon: File.open(Rails.root + "/uploads/grootboekrekening/icoon/21/klappers.png"), :thumb File.open(Rails.root + "/uploads/grootboekrekening/icoon/21/thumb_klappers.png")
Grootboekrekening.create("naam"=>"Boodschappen", "grootboektype_id"=>12, "organisatie_id"=>"1", icoon: File.open(Rails.root + "/uploads/grootboekrekening/icoon/22/brood.png"), :thumb File.open(Rails.root + "/uploads/grootboekrekening/icoon/22/thumb_brood.png")
Grootboekrekening.create("naam"=>"Jan", "grootboektype_id"=>4, "organisatie_id"=>"2", icoon: File.open(Rails.root + "/uploads/grootboekrekening/icoon/23/figuren_bakkerpaars.png"), :thumb File.open(Rails.root + "/uploads/grootboekrekening/icoon/23/thumb_figuren_bakkerpaars.png")
Grootboekrekening.create("naam"=>"Debiteuren", "grootboektype_id"=>8, "organisatie_id"=>"2", icoon: File.open(Rails.root + nil, :thumb File.open(Rails.root + nil)
Grootboekrekening.create("naam"=>"Crediteuren", "grootboektype_id"=>8, "organisatie_id"=>"2", icoon: File.open(Rails.root + nil, :thumb File.open(Rails.root + nil)
Grootboekrekening.create("naam"=>"rente te betalen lening 5%", "grootboektype_id"=>11, "organisatie_id"=>"2", icoon: File.open(Rails.root + nil, :thumb File.open(Rails.root + nil)
Grootboektype.create("naam"=>"Vlottende activa", icoon: File.open(Rails.root + "/uploads/grootboektype/icoon/1/icon_rondje.png"), :thumb File.open(Rails.root + "/uploads/grootboektype/icoon/1/thumb_icon_rondje.png"), "categorie"=>"I")
Grootboektype.create("naam"=>"Vaste activa", icoon: File.open(Rails.root + "/uploads/grootboektype/icoon/2/icon_vierkant.png"), :thumb File.open(Rails.root + "/uploads/grootboektype/icoon/2/thumb_icon_vierkant.png"), "categorie"=>"I")
Grootboektype.create("naam"=>"Kosten", icoon: File.open(Rails.root + "/uploads/grootboektype/icoon/3/icon_pijlhoofdmarkt.png"), :thumb File.open(Rails.root + "/uploads/grootboektype/icoon/3/thumb_icon_pijlhoofdmarkt.png"), "categorie"=>"I")
Grootboektype.create("naam"=>"Personeel", icoon: File.open(Rails.root + "/uploads/grootboektype/icoon/4/icon_mens.png"), :thumb File.open(Rails.root + "/uploads/grootboektype/icoon/4/thumb_icon_mens.png"), "categorie"=>"I")
Grootboektype.create("naam"=>"Verkopen", icoon: File.open(Rails.root + "/uploads/grootboektype/icoon/5/icon_rondje.png"), :thumb File.open(Rails.root + "/uploads/grootboektype/icoon/5/thumb_icon_rondje.png"), "categorie"=>"O")
Grootboektype.create("naam"=>"Know-how", icoon: nil, "categorie"=>"O")
Grootboektype.create("naam"=>"Reclame", icoon: nil, "categorie"=>"O")
Grootboektype.create("naam"=>"Debiteuren en Crediteuren", icoon: nil, "categorie"=>"D")
Grootboektype.create("naam"=>"Geld", icoon: nil, "categorie"=>"D")
Grootboektype.create("naam"=>"Belastingen", icoon: nil, "categorie"=>"D")
Grootboektype.create("naam"=>"Financiele producten", icoon: nil, "categorie"=>"D")
Grootboektype.create("naam"=>"Niet-duurzame consumptiegoederen", icoon: nil, "categorie"=>"N")
Grootboektype.create("naam"=>"Duurzame consumptiegoederen", icoon: nil, "categorie"=>"N")
Grootboektype.create("naam"=>"Voor gezinsleden", icoon: nil, "categorie"=>"N")
Grootboektype.create("naam"=>"Kennis (over huishouden, koken, sociale vaardigheden, etc.)", icoon: nil, "categorie"=>"N")
Grootboektype.create("naam"=>"Arbeid bij bakker", icoon: nil, "categorie"=>"N")
Grootboektype.create("naam"=>"Administratie", icoon: nil, "categorie"=>"O")
Journaal.create("journaaltype_id"=>1, "boeknummer"=>"ink-001", datum: Date.new(2016,1,1),"leverancier"=>"Leverancier A", "klant"=>nil, "hoeveelheid"=>300, "eenheid"=>"stuk", "productnaam"=>"Brood", "stukprijs"=>1, "betalingswijze"=>"Contant", "valuta"=>"euro", "btw_percentage"=>6, "bedrag_ex_btw"=>300, "bedrag_inc_btw"=>318, "organisatie_id"=>2, "voorwaarden"=>"inknr-0027\nVoorwaarde 1\nVoorwaarde 2\nVoorwaarde 3")
Journaal.create("journaaltype_id"=>1, "boeknummer"=>"ink-002", datum: Date.new(2016,1,1), "leverancier"=>"Leverancier B", "klant"=>nil, "hoeveelheid"=>1, "eenheid"=>"kilo", "productnaam"=>"Zout", "stukprijs"=>2, "betalingswijze"=>"Bank", "valuta"=>"euro", "btw_percentage"=>6, "bedrag_ex_btw"=>2, "bedrag_inc_btw"=>2, "organisatie_id"=>2, "voorwaarden"=>"inknr-0028\nVoorwaarde 1\nVoorwaarde 2\nVoorwaarde 3")
Journaal.create("journaaltype_id"=>2, "boeknummer"=>"Verk-001", datum: Date.new(2016,1,1), "leverancier"=>nil, "klant"=>"Diverse kopers", "hoeveelheid"=>300, "eenheid"=>"stuk", "productnaam"=>"Brood", "stukprijs"=>2, "betalingswijze"=>"Contant", "valuta"=>"euro", "btw_percentage"=>6, "bedrag_ex_btw"=>300, "bedrag_inc_btw"=>318, "organisatie_id"=>2, "voorwaarden"=>"Vernr-0001\nVoorwaarde 1\nVoorwaarde 2\nVoorwaarde 3")
Journaal.create("journaaltype_id"=>2, "boeknummer"=>"Verk-002", datum: Date.new(2016,1,1), "leverancier"=>nil, "klant"=>"Klant B", "hoeveelheid"=>10, "eenheid"=>"pot", "productnaam"=>"Jam", "stukprijs"=>5, "betalingswijze"=>"Bank", "valuta"=>"euro", "btw_percentage"=>6, "bedrag_ex_btw"=>50, "bedrag_inc_btw"=>53, "organisatie_id"=>2, "voorwaarden"=>"Vernr-0002\nVoorwaarde 1\nVoorwaarde 2\nVoorwaarde 3")
Journaal.create("journaaltype_id"=>3, "boeknummer"=>"Afschrift-001", datum: Date.new(2016,1,1), "leverancier"=>nil, "klant"=>"Koper A", "hoeveelheid"=>nil, "eenheid"=>nil, "productnaam"=>nil, "stukprijs"=>nil, "betalingswijze"=>nil, "valuta"=>"euro", "btw_percentage"=>nil, "bedrag_ex_btw"=>nil, "bedrag_inc_btw"=>318, "organisatie_id"=>2, "voorwaarden"=>"Afschrift-0001\nBehorende bij Vernr-0001")
Journaal.create("journaaltype_id"=>3, "boeknummer"=>"Afschrift-002", datum: Date.new(2016,1,1), "leverancier"=>"Leverancier A", "klant"=>nil, "hoeveelheid"=>nil, "eenheid"=>nil, "productnaam"=>nil, "stukprijs"=>nil, "betalingswijze"=>nil, "valuta"=>"euro", "btw_percentage"=>nil, "bedrag_ex_btw"=>nil, "bedrag_inc_btw"=>-318, "organisatie_id"=>2, "voorwaarden"=>"Afschrift-0001\nBehorende bij inknr-0001")
Journaal.create("journaaltype_id"=>4, "boeknummer"=>"Levering-001", datum: Date.new(2016,1,1), "leverancier"=>nil, "klant"=>"Koper A", "hoeveelheid"=>300, "eenheid"=>"stuk", "productnaam"=>"Brood", "stukprijs"=>nil, "betalingswijze"=>nil, "valuta"=>"euro", "btw_percentage"=>nil, "bedrag_ex_btw"=>2, "bedrag_inc_btw"=>nil, "organisatie_id"=>2, "voorwaarden"=>"Levering-0001\nBehorende bij Vernr-0001")
Journaal.create("journaaltype_id"=>4, "boeknummer"=>"Levering-002", datum: Date.new(2016,1,1), "leverancier"=>"Leverancier A", "klant"=>nil, "hoeveelheid"=>10, "eenheid"=>"kilo", "productnaam"=>"Meel", "stukprijs"=>nil, "betalingswijze"=>nil, "valuta"=>"euro", "btw_percentage"=>nil, "bedrag_ex_btw"=>2, "bedrag_inc_btw"=>nil, "organisatie_id"=>2, "voorwaarden"=>"levering-0002\nBehorende bij inknr-0001")
Journaal.create("journaaltype_id"=>5, "boeknummer"=>"Feit-001", datum: Date.new(2016,1,1), "leverancier"=>nil, "klant"=>nil, "hoeveelheid"=>nil, "eenheid"=>nil, "productnaam"=>nil, "stukprijs"=>nil, "betalingswijze"=>nil, "valuta"=>nil, "btw_percentage"=>nil, "bedrag_ex_btw"=>nil, "bedrag_inc_btw"=>nil, "organisatie_id"=>2, "voorwaarden"=>"We schrijven de oven in 5 jaar af")
Journaal.create("journaaltype_id"=>5, "boeknummer"=>"Feit-002", datum: Date.new(2016,1,1),"leverancier"=>nil, "klant"=>nil, "hoeveelheid"=>nil, "eenheid"=>nil, "productnaam"=>nil, "stukprijs"=>nil, "betalingswijze"=>nil, "valuta"=>nil, "btw_percentage"=>nil, "bedrag_ex_btw"=>nil, "bedrag_inc_btw"=>nil, "organisatie_id"=>2, "voorwaarden"=>"De rente op onze lening van 20000 euro is 5 procent per jaar")
Journaal.create("journaaltype_id"=>1, "boeknummer"=>"rente 1", datum: Date.new(2016,1,1),"leverancier"=>"Bank ", "klant"=>"", "hoeveelheid"=>1, "eenheid"=>"1", "productnaam"=>"Rente 5%", "stukprijs"=>1000, "betalingswijze"=>"bank", "valuta"=>"euro", "btw_percentage"=>nil, "bedrag_ex_btw"=>nil, "bedrag_inc_btw"=>nil, "organisatie_id"=>1, "voorwaarden"=>"")
Journaaltype.create("naam"=>" Inkoopboek", icoon: File.open(Rails.root + nil, :thumb File.open(Rails.root + nil)
Journaaltype.create("naam"=>"Verkoopboek", icoon: File.open(Rails.root + nil, :thumb File.open(Rails.root + nil)
Journaaltype.create("naam"=>"Bankboek", icoon: File.open(Rails.root + nil, :thumb File.open(Rails.root + nil)
Journaaltype.create("naam"=>"Leveringen", icoon: File.open(Rails.root + nil, :thumb File.open(Rails.root + nil)
Journaaltype.create("naam"=>"Intern", icoon: File.open(Rails.root + nil, :thumb File.open(Rails.root + nil)
Mens.create("naam"=>"Thijs", "leeftijd"=>49, "geslacht"=>"man", "kennisniveau"=>"4", "gezondheidsniveau"=>"4", "geluksniveau"=>"4")
Mens.create("naam"=>"Maxima", "leeftijd"=>24, "geslacht"=>"vrouw", "kennisniveau"=>"3", "gezondheidsniveau"=>"5", "geluksniveau"=>"4")
Mens.create("naam"=>"Bert de Bakker", "leeftijd"=>34, "geslacht"=>"man", "kennisniveau"=>"4", "gezondheidsniveau"=>"4", "geluksniveau"=>"4")
Organisatie.create("naam"=>"Maxima", "bedrijfstak_id"=>19, "rechtsvorm_id"=>1, "voorkant_image"=>"url"=>"/uploads/organisatie/voorkant_image/1/figuren_maxima.png"), :thumb File.open(Rails.root + "/uploads/organisatie/voorkant_image/1/thumb_figuren_maxima.png")
Organisatie.create("naam"=>"Bakker Bart", "bedrijfstak_id"=>7, "rechtsvorm_id"=>2, "voorkant_image"=>"url"=>"/uploads/organisatie/voorkant_image/2/bakkerbuitenkant.jpeg", :thumb File.open(Rails.root + "/uploads/organisatie/voorkant_image/2/thumb_bakkerbuitenkant.jpeg")
Organisatie.create("naam"=>"MediaMarkt", "bedrijfstak_id"=>7, "rechtsvorm_id"=>10, "voorkant_image"=>"url"=>"/uploads/organisatie/voorkant_image/3/mediamarkt.jpg", :thumb File.open(Rails.root + "/uploads/organisatie/voorkant_image/3/thumb_mediamarkt.jpg")
Organisatie.create("naam"=>"Shell", "bedrijfstak_id"=>3, "rechtsvorm_id"=>10, "voorkant_image"=>"url"=>"/uploads/organisatie/voorkant_image/4/shell.jpg", :thumb File.open(Rails.root + "/uploads/organisatie/voorkant_image/4/thumb_shell.jpg")
Organisatie.create("naam"=>"Bank ING", "bedrijfstak_id"=>11, "rechtsvorm_id"=>11, "voorkant_image"=>"url"=>"/uploads/organisatie/voorkant_image/5/inglogo.png"), :thumb File.open(Rails.root + "/uploads/organisatie/voorkant_image/5/thumb_inglogo.png")
Organisatie.create("naam"=>"Parlement", "bedrijfstak_id"=>15, "rechtsvorm_id"=>12, "voorkant_image"=>"url"=>"/uploads/organisatie/voorkant_image/6/parlement.jpeg", :thumb File.open(Rails.root + "/uploads/organisatie/voorkant_image/6/thumb_parlement.jpeg")
Product.create("naam"=>"Brood", icoon: File.open(Rails.root + "/uploads/product/icoon/1/brood.png"), :thumb File.open(Rails.root + "/uploads/product/icoon/1/thumb_brood.png")
Product.create("naam"=>"Oven", icoon: File.open(Rails.root + "/uploads/product/icoon/2/oven.png"), :thumb File.open(Rails.root + "/uploads/product/icoon/2/thumb_oven.png")
Rechtsvorm.create("naam"=>"Gezin", "afkorting"=>"gzn", "sector"=>"Huishoudens")
Rechtsvorm.create("naam"=>"Eenmanszaak", "afkorting"=>"zzp", "sector"=>"Huishoudens")
Rechtsvorm.create("naam"=>"Maatschap", "afkorting"=>"MS", "sector"=>"Huishoudens")
Rechtsvorm.create("naam"=>"Vennootschap Onder Firma", "afkorting"=>"V.O.F.", "sector"=>"Huishoudens")
Rechtsvorm.create("naam"=>"Commanditaire Vennootschap", "afkorting"=>"C.V.", "sector"=>"Huishoudens")
Rechtsvorm.create("naam"=>"Vereniging", "afkorting"=>"ver", "sector"=>"Huishoudens")
Rechtsvorm.create("naam"=>"Coöperatie/Onderlinge waarborgmaatschappij", "afkorting"=>"COWM", "sector"=>"Huishoudens")
Rechtsvorm.create("naam"=>"Stichting", "afkorting"=>"ST", "sector"=>"Huishoudens")
Rechtsvorm.create("naam"=>"B.V.", "afkorting"=>"B.V.", "sector"=>"Vennootschappen")
Rechtsvorm.create("naam"=>"N.V.", "afkorting"=>"N.V.", "sector"=>"Vennootschappen")
Rechtsvorm.create("naam"=>"Vennootschap met bankvergunning", "afkorting"=>"FI", "sector"=>"Financiële_instelling")
Rechtsvorm.create("naam"=>"Overheid", "afkorting"=>"Ov", "sector"=>"Overheid")
