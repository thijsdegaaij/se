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




Mens.create("naam"=>"Thijs", "leeftijd"=>49, "geslacht"=>"man", "kennisniveau"=>"4", "gezondheidsniveau"=>"4", "geluksniveau"=>"4")
Mens.create("naam"=>"Maxima", "leeftijd"=>24, "geslacht"=>"vrouw", "kennisniveau"=>"3", "gezondheidsniveau"=>"5", "geluksniveau"=>"4")
Mens.create("naam"=>"Bert de Bakker", "leeftijd"=>34, "geslacht"=>"man", "kennisniveau"=>"4", "gezondheidsniveau"=>"4", "geluksniveau"=>"4")




Grootboektype.create("naam"=>"Arbeid bij bakker", "icoon"=>nil, :thumb=>"url"=>nil, "categorie"=>"N")

Journaal.create("journaaltype_id"=>1, "boeknummer"=>"ink-001", "datum"=>Fri, 01 Jan 2016, "leverancier"=>"Leverancier A", "klant"=>nil, "hoeveelheid"=>300, "eenheid"=>"stuk", "productnaam"=>"Brood", "stukprijs"=>1, "betalingswijze"=>"Contant", "valuta"=>"euro", "btw_percentage"=>6, "bedrag_ex_btw"=>300, "bedrag_inc_btw"=>318, "organisatie_id"=>2, "voorwaarden"=>"inknr-0027\nVoorwaarde 1\nVoorwaarde 2\nVoorwaarde 3")






Journaaltype.create("naam"=>"Intern", "icoon"=>"url"=>nil, :thumb=>"url"=>nil)


Organisatie.create("naam"=>"Maxima", "bedrijfstak_id"=>19, "rechtsvorm_id"=>1, "voorkant_image"=>"url"=>"/uploads/organisatie/voorkant_image/1/figuren_maxima.png", :thumb=>"url"=>"/uploads/organisatie/voorkant_image/1/thumb_figuren_maxima.png")


