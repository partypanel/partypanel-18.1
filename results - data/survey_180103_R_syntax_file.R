data <- read.csv("survey_180103_R_data_file.csv", quote = "'\"", na.strings=c("", "\"\""), stringsAsFactors=FALSE)


# LimeSurvey Field type: F
data[, 1] <- as.numeric(data[, 1])
attributes(data)$variable.labels[1] <- "id"
names(data)[1] <- "id"
# LimeSurvey Field type: DATETIME23.2
data[, 2] <- as.character(data[, 2])
attributes(data)$variable.labels[2] <- "submitdate"
names(data)[2] <- "submitdate"
# LimeSurvey Field type: F
data[, 3] <- as.numeric(data[, 3])
attributes(data)$variable.labels[3] <- "lastpage"
names(data)[3] <- "lastpage"
# LimeSurvey Field type: A
data[, 4] <- as.character(data[, 4])
attributes(data)$variable.labels[4] <- "startlanguage"
names(data)[4] <- "startlanguage"
# LimeSurvey Field type: DATETIME23.2
data[, 5] <- as.character(data[, 5])
attributes(data)$variable.labels[5] <- "startdate"
names(data)[5] <- "startdate"
# LimeSurvey Field type: DATETIME23.2
data[, 6] <- as.character(data[, 6])
attributes(data)$variable.labels[6] <- "datestamp"
names(data)[6] <- "datestamp"
# LimeSurvey Field type: F
data[, 7] <- as.numeric(data[, 7])
attributes(data)$variable.labels[7] <- "[Zet hier een vinkje als je meer informatie wilt lezen] 	Het doel van Party Panel is om samen met jou de voorlichting over gezond en leuk uitgaan te verbeteren. Deze vierde ronde gaat over flirten, grenzen aangeven, en anderen hierbij helpen."
data[, 7] <- factor(data[, 7], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[7] <- "moreInfo_1"
# LimeSurvey Field type: A
data[, 8] <- as.character(data[, 8])
attributes(data)$variable.labels[8] <- "Extra uitleg over de vragenlijstDeelname is vrijwillig. Je kunt op elk moment stoppen met invullen. Deze vragenlijst is volledig anoniem. Het is onmogelijk om je antwoorden aan jou te linken (klik hier voor meer informatie).	De vragenlijst start met algemene vragen over uitgaan, flirten en grenzen. Flirten kan ingewikkeld zijn: het is niet altijd duidelijk wat mensen bedoelen met hun lichaamstaal en met wat ze zeggen. Er komt dus een hoop interpretatie bij kijken, en dat kan lastig zijn. Er zijn allerlei situaties waarin dat nog moeilijker kan worden, bijvoorbeeld als mensen alcohol drinken of andere middelen gebruiken, of als mensen verschillende achtergronden hebben en dus verschillende ongeschreven regels hebben geleerd. Als mensen met elkaar communiceren kan het dus zijn dat iemand vriendelijk wil zijn, terwijl de ander het gevoel heeft dat er een grens wordt overschreden. Dit is vaak onschuldig, maar dit grijze gebied kan ook worden misbruikt. Iemand kan bijvoorbeeld signalen negeren met als excuus dat die niet duidelijk waren of anders zijn geïnterpreteerd.	Het hoofddeel van de vragenlijst is in drie delen gedeeld:			Het eerste deel gaat over je grenzen aangeven;			Het tweede deel over het aanspreken van een vriend(in) als hij of zij iemands grenzen lijkt te overschrijden; en			Het derde deel gaat over je vrienden/vriendinnen vertellen als iemand jouw grenzen heeft overschreden.	Je krijgt willekeurig een deel toegewezen, maar kunt ook meer delen invullen als je wil.	Nadat de vragen over flirten en grenzen zijn gesteld volgen er wat vragen over jou persoonlijk. Die kun je overslaan als je wil. Tot slot kun je tips geven voor de volgende vragenlijst, en als je wil kun je je e-mail adres achterlaten om bericht te krijgen over de resultaten en als de volgende vragenlijst online staat (je e-mail adres kan niet gekoppeld worden aan de antwoorden op de vragenlijst)."
names(data)[8] <- "intro"
# LimeSurvey Field type: A
data[, 9] <- as.character(data[, 9])
attributes(data)$variable.labels[9] <- "Voordat je kunt starten willen we je vragen akkoord te gaan met de zogenaamde \'informed consent\'. Dit is nodig voor wetenschappelijk onderzoek.Door akkoord te gaan met deze informed consent stem ik in met het volgende.Ik geef toestemming om de gegevens die verzameld zijn tijdens dit onderzoek te gebruiken voor wetenschappelijk onderzoek.Ik heb de informatie ontvangen die bij dit onderzoek hoorde (zie https://partypanel.nl/?info) en ik heb de gelegenheid gehad om vragen te stellen aan de onderzoekers als er bepaalde dingen niet duidelijk waren (dit kan via https://partypanel.nl/?contact).Ik begrijp dat al de informatie die ik ten behoeve van dit onderzoek geef anoniem worden verzameld en niet tot mij terug te leiden zijn. Ik begrijp dat als ik ergens in een tekstveld informatie invoer, dat die informatie dan ook openbaar wordt gemaakt, en daar geef ik bij deze toestemming voor. Ik zal geen identificerende informatie invoeren in zulke tekstvelden.Ik begrijp dat ik op elk moment kan stoppen met het onderzoek; ik hoef hiervoor geen reden op te geven.Indien je de bovenstaande punten hebt gelezen en akkoord gaat met deelname aan het onderzoek, teken dan hieronder het toestemmingsformulier digitaal door de juiste optie te kiezen.	Heel erg bedankt alvast voor het meedoen, en veel plezier met het invullen van de vragenlijst!"
data[, 9] <- factor(data[, 9], levels=c("yes","no"),labels=c("Ja, ik ga akkoord met deelname!", "Nee, ik wil toch niet meedoen."))
names(data)[9] <- "informedConsent"
# LimeSurvey Field type: A
data[, 10] <- as.character(data[, 10])
attributes(data)$variable.labels[10] <- "{rand(1,3)}"
names(data)[10] <- "randomNumber1"
# LimeSurvey Field type: A
data[, 11] <- as.character(data[, 11])
attributes(data)$variable.labels[11] <- "{rand(1,4)}"
names(data)[11] <- "randomNumber2"
# LimeSurvey Field type: A
data[, 12] <- as.character(data[, 12])
attributes(data)$variable.labels[12] <- "Does the participant use a mobile device?"
names(data)[12] <- "mobile"
# LimeSurvey Field type: A
data[, 13] <- as.character(data[, 13])
attributes(data)$variable.labels[13] <- "Which userAgent does the participant\'s client report?"
names(data)[13] <- "userAgent"
# LimeSurvey Field type: F
data[, 14] <- as.numeric(data[, 14])
attributes(data)$variable.labels[14] <- "Width of the participant\'s browser screen as determined by JQuery."
names(data)[14] <- "screenWidth"
# LimeSurvey Field type: A
data[, 15] <- as.character(data[, 15])
attributes(data)$variable.labels[15] <- "Met \'uitgaan\' bedoelen we het bezoeken van een festival, optreden, feest, evenement, club, of cafe."
names(data)[15] <- "nightlifeDefText"
# LimeSurvey Field type: A
data[, 16] <- as.character(data[, 16])
attributes(data)$variable.labels[16] <- "Waarom doe je liever niet mee?"
names(data)[16] <- "noConsentReason"
# LimeSurvey Field type: A
data[, 17] <- as.character(data[, 17])
attributes(data)$variable.labels[17] <- "Het lijkt er op dat je een smartphone of een device met een relatief klein scherm gebruikt. Deze vragenlijst is het prettigst om in te vullen op een computer of op een tablet. Mocht je halverwege besluiten dat je liever later op een ander device verder gaat, dan kun je altijd onderin op \"Later verdergaan\" klikken."
names(data)[17] <- "smallScreen"
# LimeSurvey Field type: A
data[, 18] <- as.character(data[, 18])
attributes(data)$variable.labels[18] <- "[Een feestje bij mensen thuis] [keer ...] 	Kun je aangeven hoe vaak je het afgelopen half jaar (de afgelopen 6 maanden) naar elk van deze gelegenheden bent geweest?"
names(data)[18] <- "goingOutFreqNr_houseparty_nr"
# LimeSurvey Field type: A
data[, 19] <- as.character(data[, 19])
attributes(data)$variable.labels[19] <- "[Een café, kroeg, of bar] [keer ...] 	Kun je aangeven hoe vaak je het afgelopen half jaar (de afgelopen 6 maanden) naar elk van deze gelegenheden bent geweest?"
names(data)[19] <- "goingOutFreqNr_cafe_nr"
# LimeSurvey Field type: A
data[, 20] <- as.character(data[, 20])
attributes(data)$variable.labels[20] <- "[Een discotheek of club] [keer ...] 	Kun je aangeven hoe vaak je het afgelopen half jaar (de afgelopen 6 maanden) naar elk van deze gelegenheden bent geweest?"
names(data)[20] <- "goingOutFreqNr_disco_nr"
# LimeSurvey Field type: A
data[, 21] <- as.character(data[, 21])
attributes(data)$variable.labels[21] <- "[Een poppodium of concertzaal] [keer ...] 	Kun je aangeven hoe vaak je het afgelopen half jaar (de afgelopen 6 maanden) naar elk van deze gelegenheden bent geweest?"
names(data)[21] <- "goingOutFreqNr_poppodium_nr"
# LimeSurvey Field type: A
data[, 22] <- as.character(data[, 22])
attributes(data)$variable.labels[22] <- "[Een optreden van een band] [keer ...] 	Kun je aangeven hoe vaak je het afgelopen half jaar (de afgelopen 6 maanden) naar elk van deze gelegenheden bent geweest?"
names(data)[22] <- "goingOutFreqNr_band_nr"
# LimeSurvey Field type: A
data[, 23] <- as.character(data[, 23])
attributes(data)$variable.labels[23] <- "[Een kleinschalig binnenfeest of -festival(minder dan 5000 bezoekers)] [keer ...] 	Kun je aangeven hoe vaak je het afgelopen half jaar (de afgelopen 6 maanden) naar elk van deze gelegenheden bent geweest?"
names(data)[23] <- "goingOutFreqNr_smallPartyInside_nr"
# LimeSurvey Field type: A
data[, 24] <- as.character(data[, 24])
attributes(data)$variable.labels[24] <- "[Een groot binnenfeest of -festival(meer dan 5000 bezoekers)] [keer ...] 	Kun je aangeven hoe vaak je het afgelopen half jaar (de afgelopen 6 maanden) naar elk van deze gelegenheden bent geweest?"
names(data)[24] <- "goingOutFreqNr_bigPartyInside_nr"
# LimeSurvey Field type: A
data[, 25] <- as.character(data[, 25])
attributes(data)$variable.labels[25] <- "[Een kleinschalig buitenfeest of -festival(minder dan 5000 bezoekers)] [keer ...] 	Kun je aangeven hoe vaak je het afgelopen half jaar (de afgelopen 6 maanden) naar elk van deze gelegenheden bent geweest?"
names(data)[25] <- "goingOutFreqNr_smallPartyOutside_nr"
# LimeSurvey Field type: A
data[, 26] <- as.character(data[, 26])
attributes(data)$variable.labels[26] <- "[Een groot buitenfeest of -festival(meer dan 5000 bezoekers)] [keer ...] 	Kun je aangeven hoe vaak je het afgelopen half jaar (de afgelopen 6 maanden) naar elk van deze gelegenheden bent geweest?"
names(data)[26] <- "goingOutFreqNr_bigPartyOutside_nr"
# LimeSurvey Field type: F
data[, 27] <- as.numeric(data[, 27])
attributes(data)$variable.labels[27] <- "[Een feestje bij mensen thuis]"
data[, 27] <- factor(data[, 27], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[27] <- "goingOutFreqPeriod_houseparty"
# LimeSurvey Field type: F
data[, 28] <- as.numeric(data[, 28])
attributes(data)$variable.labels[28] <- "[Een café, kroeg, of bar]"
data[, 28] <- factor(data[, 28], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[28] <- "goingOutFreqPeriod_cafe"
# LimeSurvey Field type: F
data[, 29] <- as.numeric(data[, 29])
attributes(data)$variable.labels[29] <- "[Een discotheek of club]"
data[, 29] <- factor(data[, 29], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[29] <- "goingOutFreqPeriod_disco"
# LimeSurvey Field type: F
data[, 30] <- as.numeric(data[, 30])
attributes(data)$variable.labels[30] <- "[Een poppodium of concertzaal]"
data[, 30] <- factor(data[, 30], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[30] <- "goingOutFreqPeriod_poppodium"
# LimeSurvey Field type: F
data[, 31] <- as.numeric(data[, 31])
attributes(data)$variable.labels[31] <- "[Een optreden van een band]"
data[, 31] <- factor(data[, 31], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[31] <- "goingOutFreqPeriod_band"
# LimeSurvey Field type: F
data[, 32] <- as.numeric(data[, 32])
attributes(data)$variable.labels[32] <- "[Een kleinschalig binnenfeest of -festival(minder dan 5000 bezoekers)]"
data[, 32] <- factor(data[, 32], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[32] <- "goingOutFreqPeriod_smallPartyInside"
# LimeSurvey Field type: F
data[, 33] <- as.numeric(data[, 33])
attributes(data)$variable.labels[33] <- "[Een groot binnenfeest of -festival(meer dan 5000 bezoekers)]"
data[, 33] <- factor(data[, 33], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[33] <- "goingOutFreqPeriod_bigPartyInside"
# LimeSurvey Field type: F
data[, 34] <- as.numeric(data[, 34])
attributes(data)$variable.labels[34] <- "[Een kleinschalig buitenfeest of -festival(minder dan 5000 bezoekers)]"
data[, 34] <- factor(data[, 34], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[34] <- "goingOutFreqPeriod_smallPartyOutside"
# LimeSurvey Field type: F
data[, 35] <- as.numeric(data[, 35])
attributes(data)$variable.labels[35] <- "[Een groot buitenfeest of -festival(meer dan 5000 bezoekers)]"
data[, 35] <- factor(data[, 35], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[35] <- "goingOutFreqPeriod_bigPartyOutside"
# LimeSurvey Field type: A
data[, 36] <- as.character(data[, 36])
attributes(data)$variable.labels[36] <- "{(goingOutFreqNr_houseparty_nr * goingOutFreqPeriod_houseparty) + (goingOutFreqNr_cafe_nr * goingOutFreqPeriod_cafe) + (goingOutFreqNr_disco_nr * goingOutFreqPeriod_disco) + (goingOutFreqNr_band_nr * goingOutFreqPeriod_band) + (goingOutFreqNr_smallPartyInside_nr * goingOutFreqPeriod_smallPartyInside) + (goingOutFreqNr_bigPartyInside_nr * goingOutFreqPeriod_bigPartyInside) + (goingOutFreqNr_smallPartyOutside_nr * goingOutFreqPeriod_smallPartyOutside) + (goingOutFreqNr_bigPartyOutside_nr * goingOutFreqPeriod_bigPartyOutside)}"
names(data)[36] <- "totalGoingOutFreq"
# LimeSurvey Field type: F
data[, 37] <- as.numeric(data[, 37])
attributes(data)$variable.labels[37] <- "[Het klopt echt.] Je hebt aangegeven dat je in het afgelopen halfjaar {totalGoingOutFreq} keer op de een of andere manier bent uitgegaan. Het afgelopen halfjaar omvatte 182 dagen, dus dat betekent dat je zo ongeveer elke dag bent uitgegaan. Weet je zeker dat dat klopt, of is er misschien iets fout gegaan?"
data[, 37] <- factor(data[, 37], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[37] <- "tooMuchGoingOutCheck_isCorrect"
# LimeSurvey Field type: F
data[, 38] <- as.numeric(data[, 38])
attributes(data)$variable.labels[38] <- "[Het klopt echt.] Je hebt aangegeven dat je in het afgelopen halfjaar {totalGoingOutFreq} keer op de een of andere manier bent uitgegaan. Party Panel richt zich op het Nederlandse uitgaansleven, dus als je echt niet vaak uitgaat, kan het zijn dat de vragen niet van toepassing zijn. Daarom even deze check: weet je zeker dat dat klopt, of is er misschien iets fout gegaan?"
data[, 38] <- factor(data[, 38], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[38] <- "rarelyWentOutCheck_isCorrect"
# LimeSurvey Field type: A
data[, 39] <- as.character(data[, 39])
attributes(data)$variable.labels[39] <- "[Een feestje bij mensen thuis] This is a hidden question used to store which venues this participant visits."
names(data)[39] <- "visitedVenues_houseparty"
# LimeSurvey Field type: A
data[, 40] <- as.character(data[, 40])
attributes(data)$variable.labels[40] <- "[Een café, kroeg, of bar] This is a hidden question used to store which venues this participant visits."
names(data)[40] <- "visitedVenues_cafe"
# LimeSurvey Field type: A
data[, 41] <- as.character(data[, 41])
attributes(data)$variable.labels[41] <- "[Een discotheek of club] This is a hidden question used to store which venues this participant visits."
names(data)[41] <- "visitedVenues_disco"
# LimeSurvey Field type: A
data[, 42] <- as.character(data[, 42])
attributes(data)$variable.labels[42] <- "[Een optreden van een band] This is a hidden question used to store which venues this participant visits."
names(data)[42] <- "visitedVenues_band"
# LimeSurvey Field type: A
data[, 43] <- as.character(data[, 43])
attributes(data)$variable.labels[43] <- "[Een kleinschalig binnenfeest of -festival] This is a hidden question used to store which venues this participant visits."
names(data)[43] <- "visitedVenues_smallPartyInside"
# LimeSurvey Field type: A
data[, 44] <- as.character(data[, 44])
attributes(data)$variable.labels[44] <- "[Een groot binnenfeest of -festival] This is a hidden question used to store which venues this participant visits."
names(data)[44] <- "visitedVenues_bigPartyInside"
# LimeSurvey Field type: A
data[, 45] <- as.character(data[, 45])
attributes(data)$variable.labels[45] <- "[Een kleinschalig buitenfeest of -festival] This is a hidden question used to store which venues this participant visits."
names(data)[45] <- "visitedVenues_smallPartyOutside"
# LimeSurvey Field type: A
data[, 46] <- as.character(data[, 46])
attributes(data)$variable.labels[46] <- "[Een groot buitenfeest of -festival] This is a hidden question used to store which venues this participant visits."
names(data)[46] <- "visitedVenues_bigPartyOutside"
# LimeSurvey Field type: A
data[, 47] <- as.character(data[, 47])
attributes(data)$variable.labels[47] <- "[Favoriete muziekgenre voor uitgaan:] Wat is jouw favoriete muziek voor als je uit gaat?"
names(data)[47] <- "musicPrefParty_genre1"
# LimeSurvey Field type: A
data[, 48] <- as.character(data[, 48])
attributes(data)$variable.labels[48] <- "[Op-één-na favoriete genre voor uitgaan:] Wat is jouw favoriete muziek voor als je uit gaat?"
names(data)[48] <- "musicPrefParty_genre2"
# LimeSurvey Field type: A
data[, 49] <- as.character(data[, 49])
attributes(data)$variable.labels[49] <- "[Op-twee-na favoriete genre voor uitgaan:] Wat is jouw favoriete muziek voor als je uit gaat?"
names(data)[49] <- "musicPrefParty_genre3"
# LimeSurvey Field type: F
data[, 50] <- as.numeric(data[, 50])
attributes(data)$variable.labels[50] <- "[Een partner (vriend of vriendin)] 	We gaan je verderop vragen stellen over de mensen in je omgeving, zoals je vrienden, ouders, en broers en zussen.	Zou je hier de mensen die er niet zijn kunnen uitvinken?"
data[, 50] <- factor(data[, 50], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[50] <- "socialReferents_partner"
# LimeSurvey Field type: F
data[, 51] <- as.numeric(data[, 51])
attributes(data)$variable.labels[51] <- "[Beste vrienden/vriendinnen] 	We gaan je verderop vragen stellen over de mensen in je omgeving, zoals je vrienden, ouders, en broers en zussen.	Zou je hier de mensen die er niet zijn kunnen uitvinken?"
data[, 51] <- factor(data[, 51], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[51] <- "socialReferents_bestFriends"
# LimeSurvey Field type: F
data[, 52] <- as.numeric(data[, 52])
attributes(data)$variable.labels[52] <- "[Andere vrienden] 	We gaan je verderop vragen stellen over de mensen in je omgeving, zoals je vrienden, ouders, en broers en zussen.	Zou je hier de mensen die er niet zijn kunnen uitvinken?"
data[, 52] <- factor(data[, 52], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[52] <- "socialReferents_otherFriends"
# LimeSurvey Field type: F
data[, 53] <- as.numeric(data[, 53])
attributes(data)$variable.labels[53] <- "[1 of meer ouders en/of verzorgers] 	We gaan je verderop vragen stellen over de mensen in je omgeving, zoals je vrienden, ouders, en broers en zussen.	Zou je hier de mensen die er niet zijn kunnen uitvinken?"
data[, 53] <- factor(data[, 53], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[53] <- "socialReferents_parents"
# LimeSurvey Field type: F
data[, 54] <- as.numeric(data[, 54])
attributes(data)$variable.labels[54] <- "[1 of meer broers en/of zussen] 	We gaan je verderop vragen stellen over de mensen in je omgeving, zoals je vrienden, ouders, en broers en zussen.	Zou je hier de mensen die er niet zijn kunnen uitvinken?"
data[, 54] <- factor(data[, 54], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[54] <- "socialReferents_siblings"
# LimeSurvey Field type: A
data[, 55] <- as.character(data[, 55])
attributes(data)$variable.labels[55] <- "Wat is je geslacht (gender)?"
data[, 55] <- factor(data[, 55], levels=c("noAns","male","femal","queer"),labels=c("Dit wil ik niet zeggen", "Man", "Vrouw", "Genderqueer"))
names(data)[55] <- "gender"
# LimeSurvey Field type: A
data[, 56] <- as.character(data[, 56])
attributes(data)$variable.labels[56] <- "[Andere] Wat is je geslacht (gender)?"
names(data)[56] <- "gender_other"
# LimeSurvey Field type: A
data[, 57] <- as.character(data[, 57])
attributes(data)$variable.labels[57] <- "Wat is je seksuele voorkeur?"
data[, 57] <- factor(data[, 57], levels=c("noAns","1","2","3","4"),labels=c("Dit wil ik niet zeggen", "Heterosexueel", "Bisexueel", "Homosexueel", "Asexueel"))
names(data)[57] <- "sexualPreference"
# LimeSurvey Field type: A
data[, 58] <- as.character(data[, 58])
attributes(data)$variable.labels[58] <- "[Andere] Wat is je seksuele voorkeur?"
names(data)[58] <- "sexualPreference_other"
# LimeSurvey Field type: F
data[, 59] <- as.numeric(data[, 59])
attributes(data)$variable.labels[59] <- "Deze vragenlijst gaat over flirten in het uitgaansleven, specifiek over flirten waarbij persoonlijke grenzen worden overschreden.	Heb jij wel eens een heel onprettige ervaring gehad met flirten, intimiteit, of seks waarbij je grenzen werden overschreden en die een sterke negatieve indruk op je maakte?"
data[, 59] <- factor(data[, 59], levels=c(0,1),labels=c("Nee", "Ja"))
names(data)[59] <- "negativeExperience"
# LimeSurvey Field type: F
data[, 60] <- as.numeric(data[, 60])
attributes(data)$variable.labels[60] <- "Als het je fijn lijkt om eens met iemand te praten over je ervaringen, dan zijn er allerlei mensen om je te helpen. Hieronder staat een lijstje:			Sense kan helpen met allerlei vragen over seks en alles wat er mee samenhangt. Ze zijn beschikbaar via chat, telefoon, en email, maar je kunt ook een afspraak maken. Hun website is https://sense.info/nl/hulp-advies en hun telefoonnummer is 0900 402 4020 (5 cent per minuut, plus de kosten van je mobiele provider)			Een andere organisatie waar je terecht kunt is Verbreek de Stilte. Zij bieden volledig anoniem, via chat, mail of telefoon advies en hulp. Hun website is https://verbreekdestilte.nl en hun telefoonnummer is 0900 9999 001 (dit is een gratis nummer). Zij kunnen je ook doorverwijzen naar gratis hulp bij jou in de buurt.			Voor jongeren tussen 13 en 18 is er de kindertelefoon, waar je terecht kunt met allerlei onderwerpen. Hun website is https://www.kindertelefoon.nl/13-18/, en hun telefoonnummer is 0800 0432 (dit is ook een gratis nummer).	Als je het soms nog moeilijk hebt met je ervaringen raden wij je af om deze vragenlijst in te vullen. Deze vragenlijst gaat over lichte grensoverschrijdingen die niet als emotioneel belastend worden ervaren: maar toch zou de vragenlijst je kunnen herinneren aan je onprettige ervaringen.	Wil je toch verder, dan kun je dat hieronder aangeven. Onthoud dat je sowieso elk moment kunt stoppen als je wil."
data[, 60] <- factor(data[, 60], levels=c(0,1),labels=c("Ik wil inderdaad liever stoppen.", "Ik wil toch graag de vragenlijst invullen."))
names(data)[60] <- "referralAndConfirmat"
# LimeSurvey Field type: A
data[, 61] <- as.character(data[, 61])
attributes(data)$variable.labels[61] <- "De vragenlijst is nu afgerond.	Hier weer het lijstje met mensen die je kunnen helpen mocht je behoefte hebben om over je ervaringen te praten:			Sense kan helpen met allerlei vragen over seks en alles wat er mee samenhangt. Ze zijn beschikbaar via chat, telefoon, en email, maar je kunt ook een afspraak maken. Hun website is https://sense.info/nl/hulp-advies en hun telefoonnummer is 0900 402 4020 (5 cent per minuut, plus de kosten van je mobiele provider)			Een andere organisatie waar je terecht kunt is Verbreek de Stilte. Zij bieden volledig anoniem, via chat, mail of telefoon advies en hulp. Hun website is https://verbreekdestilte.nl en hun telefoonnummer is 0900 9999 001 (dit is een gratis nummer). Zij kunnen je ook doorverwijzen naar gratis hulp bij jou in de buurt.			Voor jongeren tussen 13 en 18 is er de kindertelefoon, waar je terecht kunt met allerlei onderwerpen. Hun website is https://www.kindertelefoon.nl/13-18/, en hun telefoonnummer is 0800 0432 (dit is ook een gratis nummer)."
names(data)[61] <- "negativeExpClosing"
# LimeSurvey Field type: F
data[, 62] <- as.numeric(data[, 62])
attributes(data)$variable.labels[62] <- "[Ik vind het beantwoorden van één deel wel genoeg.] 	We willen de vragenlijst kort houden (hij duurt ongeveer 20-30 minuten). We hebben hem daarom in drieën gedeeld, en iedereen krijgt een ander deel:			{if(randomNumber1==1, \"\", \"\")}Je eigen grenzen aangeven als iemand met je flirt {if(randomNumber1==1, \" (deze heb jij toegewezen gekregen)\", \"\")}			{if(randomNumber1==2, \"\", \"\")}Een vriend of vriendin aanspreken als hij of zij iemands grenzen lijkt te overschrijden {if(randomNumber1==2, \" (deze heb jij toegewezen gekregen)\", \"\")}			{if(randomNumber1==3, \"\", \"\")}Je vriend(inn)en vertellen als je het gevoel hebt dat iemand jouw grenzen heeft overschreden {if(randomNumber1==3, \" (deze heb jij toegewezen gekregen)\", \"\")}	Wil je meer invullen? Dan kun je dat hieronder aangeven.	Houd er wel rekening mee dat elke deel extra tijd kost (ongeveer 20 minuten per deel)."
data[, 62] <- factor(data[, 62], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[62] <- "subsurveyChoice_0"
# LimeSurvey Field type: F
data[, 63] <- as.numeric(data[, 63])
attributes(data)$variable.labels[63] <- "[Ik wil ook graag de vragen beantwoorden over mijn eigen grenzen aangeven als iemand met me flirt] 	We willen de vragenlijst kort houden (hij duurt ongeveer 20-30 minuten). We hebben hem daarom in drieën gedeeld, en iedereen krijgt een ander deel:			{if(randomNumber1==1, \"\", \"\")}Je eigen grenzen aangeven als iemand met je flirt {if(randomNumber1==1, \" (deze heb jij toegewezen gekregen)\", \"\")}			{if(randomNumber1==2, \"\", \"\")}Een vriend of vriendin aanspreken als hij of zij iemands grenzen lijkt te overschrijden {if(randomNumber1==2, \" (deze heb jij toegewezen gekregen)\", \"\")}			{if(randomNumber1==3, \"\", \"\")}Je vriend(inn)en vertellen als je het gevoel hebt dat iemand jouw grenzen heeft overschreden {if(randomNumber1==3, \" (deze heb jij toegewezen gekregen)\", \"\")}	Wil je meer invullen? Dan kun je dat hieronder aangeven.	Houd er wel rekening mee dat elke deel extra tijd kost (ongeveer 20 minuten per deel)."
data[, 63] <- factor(data[, 63], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[63] <- "subsurveyChoice_1"
# LimeSurvey Field type: F
data[, 64] <- as.numeric(data[, 64])
attributes(data)$variable.labels[64] <- "[Ik wil ook graag de vragen beantwoorden over een vriend of vriendin aanspreken als hij of zij iemands grenzen lijkt te overschrijden] 	We willen de vragenlijst kort houden (hij duurt ongeveer 20-30 minuten). We hebben hem daarom in drieën gedeeld, en iedereen krijgt een ander deel:			{if(randomNumber1==1, \"\", \"\")}Je eigen grenzen aangeven als iemand met je flirt {if(randomNumber1==1, \" (deze heb jij toegewezen gekregen)\", \"\")}			{if(randomNumber1==2, \"\", \"\")}Een vriend of vriendin aanspreken als hij of zij iemands grenzen lijkt te overschrijden {if(randomNumber1==2, \" (deze heb jij toegewezen gekregen)\", \"\")}			{if(randomNumber1==3, \"\", \"\")}Je vriend(inn)en vertellen als je het gevoel hebt dat iemand jouw grenzen heeft overschreden {if(randomNumber1==3, \" (deze heb jij toegewezen gekregen)\", \"\")}	Wil je meer invullen? Dan kun je dat hieronder aangeven.	Houd er wel rekening mee dat elke deel extra tijd kost (ongeveer 20 minuten per deel)."
data[, 64] <- factor(data[, 64], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[64] <- "subsurveyChoice_2"
# LimeSurvey Field type: F
data[, 65] <- as.numeric(data[, 65])
attributes(data)$variable.labels[65] <- "[Ik wil ook graag de vragen beantwoorden over mijn vriend(inn)en vertellen als ik het gevoel hebt dat iemand mijn grenzen heeft overschreden] 	We willen de vragenlijst kort houden (hij duurt ongeveer 20-30 minuten). We hebben hem daarom in drieën gedeeld, en iedereen krijgt een ander deel:			{if(randomNumber1==1, \"\", \"\")}Je eigen grenzen aangeven als iemand met je flirt {if(randomNumber1==1, \" (deze heb jij toegewezen gekregen)\", \"\")}			{if(randomNumber1==2, \"\", \"\")}Een vriend of vriendin aanspreken als hij of zij iemands grenzen lijkt te overschrijden {if(randomNumber1==2, \" (deze heb jij toegewezen gekregen)\", \"\")}			{if(randomNumber1==3, \"\", \"\")}Je vriend(inn)en vertellen als je het gevoel hebt dat iemand jouw grenzen heeft overschreden {if(randomNumber1==3, \" (deze heb jij toegewezen gekregen)\", \"\")}	Wil je meer invullen? Dan kun je dat hieronder aangeven.	Houd er wel rekening mee dat elke deel extra tijd kost (ongeveer 20 minuten per deel)."
data[, 65] <- factor(data[, 65], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[65] <- "subsurveyChoice_3"
# LimeSurvey Field type: A
data[, 66] <- as.character(data[, 66])
attributes(data)$variable.labels[66] <- "{if((informedConsent == \"yes\") && ((negativeExperience.NAOK == 0) || (referralAndConfirmat.NAOK == 1)), 1, 0)}"
names(data)[66] <- "accessToSurvey"
# LimeSurvey Field type: A
data[, 67] <- as.character(data[, 67])
attributes(data)$variable.labels[67] <- "Fantastisch dat je alle vragen in deze studie wil beantwoorden! Dat helpt ons echt enorm.	Houd er wel rekening mee dat de vragenlijst natuurlijk steeds langer wordt. Als je één deel invult ben je ongeveer een half uur bezig, en met alle drie de delen ongeveer een uur.	Als je daar geen tijd voor hebt, kun je altijd onderaan aangeven dat je later verder wil gaan. Of, als je dat toch te lang vindt, dan kun je hierboven weer een of twee onderdelen uit zetten."
names(data)[67] <- "fullSubsurveys"
# LimeSurvey Field type: F
data[, 68] <- as.numeric(data[, 68])
attributes(data)$variable.labels[68] <- "[Ik vind dat flirten bij uitgaan hoort.Absoluut niet | Absoluut wel] 	We starten met wat algemene vragen over flirten."
data[, 68] <- factor(data[, 68], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[68] <- "sibGeneralBeliefs_goingOutFlirting"
# LimeSurvey Field type: F
data[, 69] <- as.numeric(data[, 69])
attributes(data)$variable.labels[69] <- "[Ik vind het spel van het flirten tijdens het uitgaan ...Helemaal niet leuk | Heel erg leuk] 	We starten met wat algemene vragen over flirten."
data[, 69] <- factor(data[, 69], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[69] <- "sibGeneralBeliefs_enjoyFlirtingGame"
# LimeSurvey Field type: F
data[, 70] <- as.numeric(data[, 70])
attributes(data)$variable.labels[70] <- "[Als ik tijdens het uitgaan iemand ontmoet die ik leuk vind, en ik praat met diegene, dan ben ik het liefst ...Heel indirect | Heel direct] 	We starten met wat algemene vragen over flirten."
data[, 70] <- factor(data[, 70], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[70] <- "sibGeneralBeliefs_directness"
# LimeSurvey Field type: F
data[, 71] <- as.numeric(data[, 71])
attributes(data)$variable.labels[71] <- "[Bij flirten tijdens het uitgaan worden mijn grenzen ...(Bijna) nooit overschreden | (Bijna) altijd overschreden] 	We starten met wat algemene vragen over flirten."
data[, 71] <- factor(data[, 71], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[71] <- "sibGeneralBeliefs_sibCrossFreq"
# LimeSurvey Field type: F
data[, 72] <- as.numeric(data[, 72])
attributes(data)$variable.labels[72] <- "[Dat iemand tijdens het uitgaan bewust mijn grenzen overschrijdt gebeurt ...(Bijna) nooit | (Bijna) altijd] 	We starten met wat algemene vragen over flirten."
data[, 72] <- factor(data[, 72], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[72] <- "sibGeneralBeliefs_noFlirtCrossFreq"
# LimeSurvey Field type: F
data[, 73] <- as.numeric(data[, 73])
attributes(data)$variable.labels[73] <- "[Als bij flirten tijdens het uitgaan mijn grenzen worden overschreden, dan vind ik dat meestal ...Heel erg | Heel fijn] 	We starten met wat algemene vragen over flirten."
data[, 73] <- factor(data[, 73], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[73] <- "sibGeneralBeliefs_sibCrossEval"
# LimeSurvey Field type: F
data[, 74] <- as.numeric(data[, 74])
attributes(data)$variable.labels[74] <- "[Voor mij is mysterie bij flirten ...Heel onbelangrijk | Heel belangrijk] 	We starten met wat algemene vragen over flirten."
data[, 74] <- factor(data[, 74], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[74] <- "sibGeneralBeliefs_flirtingMystery"
# LimeSurvey Field type: F
data[, 75] <- as.numeric(data[, 75])
attributes(data)$variable.labels[75] <- "[Voor mij is dubbelzinnigheid bij flirten ...Heel onbelangrijk | Heel belangrijk] 	We starten met wat algemene vragen over flirten."
data[, 75] <- factor(data[, 75], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[75] <- "sibGeneralBeliefs_flirtingInnuendo"
# LimeSurvey Field type: F
data[, 76] <- as.numeric(data[, 76])
attributes(data)$variable.labels[76] <- "[In vergelijking met anderen zijn mijn grenzen ...Veel strakker | Veel losser] 	We starten met wat algemene vragen over flirten."
data[, 76] <- factor(data[, 76], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[76] <- "sibGeneralBeliefs_sibRelative"
# LimeSurvey Field type: F
data[, 77] <- as.numeric(data[, 77])
attributes(data)$variable.labels[77] <- "[Als mensen zich sexy kleden, dan doen ze dat omdat ze willen flirten.Waarschijnlijk niet | Waarschijnlijk wel] 	We starten met wat algemene vragen over flirten."
data[, 77] <- factor(data[, 77], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[77] <- "sibGeneralBeliefs_sexyDressFlirt"
# LimeSurvey Field type: F
data[, 78] <- as.numeric(data[, 78])
attributes(data)$variable.labels[78] <- "[In vergelijking met anderen hebben mensen die zich sexy kleden vaak ...Strakkere grenzen | Lossere grenzen] 	We starten met wat algemene vragen over flirten."
data[, 78] <- factor(data[, 78], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[78] <- "sibGeneralBeliefs_sexyDressBoundaries"
# LimeSurvey Field type: F
data[, 79] <- as.numeric(data[, 79])
attributes(data)$variable.labels[79] <- "[Mensen die zich in het algemeen uitdagend gedragen hebben vaak ... Strakkere grenzen | Lossere grenzen] 	We starten met wat algemene vragen over flirten."
data[, 79] <- factor(data[, 79], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[79] <- "sibGeneralBeliefs_teaseBehBoundaries"
# LimeSurvey Field type: F
data[, 80] <- as.numeric(data[, 80])
attributes(data)$variable.labels[80] <- "[Mensen kiezen sexy kleding en uitdagend gedrag vaak om aan te geven dat ze \'beschikbaar\' zijn.Waarschijnlijk niet | Waarschijnlijk wel] 	We starten met wat algemene vragen over flirten."
data[, 80] <- factor(data[, 80], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[80] <- "sibGeneralBeliefs_signalAvailability"
# LimeSurvey Field type: F
data[, 81] <- as.numeric(data[, 81])
attributes(data)$variable.labels[81] <- "Ben je in het afgelopen halfjaar wel eens eerder van een uitgaansgelegenheid weggegaan omdat iemand met je flirtte en daarbij  over jouw grenzen ging?"
data[, 81] <- factor(data[, 81], levels=c(0,1),labels=c("Nee", "Ja"))
names(data)[81] <- "sibLeftDueToBC"
# LimeSurvey Field type: A
data[, 82] <- as.character(data[, 82])
attributes(data)$variable.labels[82] <- "[Een feestje bij mensen thuis] [keer ...] 	Kun je aangeven hoe vaak je het afgelopen halfjaar eerder van een uitgaansgelgenheid bent weggegaan omdat iemand over jouw grenzen ging?"
names(data)[82] <- "leftVenueFreqNr_houseparty_nr"
# LimeSurvey Field type: A
data[, 83] <- as.character(data[, 83])
attributes(data)$variable.labels[83] <- "[Een café, kroeg, of bar] [keer ...] 	Kun je aangeven hoe vaak je het afgelopen halfjaar eerder van een uitgaansgelgenheid bent weggegaan omdat iemand over jouw grenzen ging?"
names(data)[83] <- "leftVenueFreqNr_cafe_nr"
# LimeSurvey Field type: A
data[, 84] <- as.character(data[, 84])
attributes(data)$variable.labels[84] <- "[Een discotheek of club] [keer ...] 	Kun je aangeven hoe vaak je het afgelopen halfjaar eerder van een uitgaansgelgenheid bent weggegaan omdat iemand over jouw grenzen ging?"
names(data)[84] <- "leftVenueFreqNr_disco_nr"
# LimeSurvey Field type: A
data[, 85] <- as.character(data[, 85])
attributes(data)$variable.labels[85] <- "[Een poppodium of concertzaal] [keer ...] 	Kun je aangeven hoe vaak je het afgelopen halfjaar eerder van een uitgaansgelgenheid bent weggegaan omdat iemand over jouw grenzen ging?"
names(data)[85] <- "leftVenueFreqNr_poppodium_nr"
# LimeSurvey Field type: A
data[, 86] <- as.character(data[, 86])
attributes(data)$variable.labels[86] <- "[Een optreden van een band] [keer ...] 	Kun je aangeven hoe vaak je het afgelopen halfjaar eerder van een uitgaansgelgenheid bent weggegaan omdat iemand over jouw grenzen ging?"
names(data)[86] <- "leftVenueFreqNr_band_nr"
# LimeSurvey Field type: A
data[, 87] <- as.character(data[, 87])
attributes(data)$variable.labels[87] <- "[Een kleinschalig binnenfeest of -festival(minder dan 5000 bezoekers)] [keer ...] 	Kun je aangeven hoe vaak je het afgelopen halfjaar eerder van een uitgaansgelgenheid bent weggegaan omdat iemand over jouw grenzen ging?"
names(data)[87] <- "leftVenueFreqNr_smallPartyInside_nr"
# LimeSurvey Field type: A
data[, 88] <- as.character(data[, 88])
attributes(data)$variable.labels[88] <- "[Een groot binnenfeest of -festival(meer dan 5000 bezoekers)] [keer ...] 	Kun je aangeven hoe vaak je het afgelopen halfjaar eerder van een uitgaansgelgenheid bent weggegaan omdat iemand over jouw grenzen ging?"
names(data)[88] <- "leftVenueFreqNr_bigPartyInside_nr"
# LimeSurvey Field type: A
data[, 89] <- as.character(data[, 89])
attributes(data)$variable.labels[89] <- "[Een kleinschalig buitenfeest of -festival(minder dan 5000 bezoekers)] [keer ...] 	Kun je aangeven hoe vaak je het afgelopen halfjaar eerder van een uitgaansgelgenheid bent weggegaan omdat iemand over jouw grenzen ging?"
names(data)[89] <- "leftVenueFreqNr_smallPartyOutside_nr"
# LimeSurvey Field type: A
data[, 90] <- as.character(data[, 90])
attributes(data)$variable.labels[90] <- "[Een groot buitenfeest of -festival(meer dan 5000 bezoekers)] [keer ...] 	Kun je aangeven hoe vaak je het afgelopen halfjaar eerder van een uitgaansgelgenheid bent weggegaan omdat iemand over jouw grenzen ging?"
names(data)[90] <- "leftVenueFreqNr_bigPartyOutside_nr"
# LimeSurvey Field type: F
data[, 91] <- as.numeric(data[, 91])
attributes(data)$variable.labels[91] <- "[Een feestje bij mensen thuis]"
data[, 91] <- factor(data[, 91], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[91] <- "leftVenueFreqPeriod_houseparty"
# LimeSurvey Field type: F
data[, 92] <- as.numeric(data[, 92])
attributes(data)$variable.labels[92] <- "[Een café, kroeg, of bar]"
data[, 92] <- factor(data[, 92], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[92] <- "leftVenueFreqPeriod_cafe"
# LimeSurvey Field type: F
data[, 93] <- as.numeric(data[, 93])
attributes(data)$variable.labels[93] <- "[Een discotheek of club]"
data[, 93] <- factor(data[, 93], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[93] <- "leftVenueFreqPeriod_disco"
# LimeSurvey Field type: F
data[, 94] <- as.numeric(data[, 94])
attributes(data)$variable.labels[94] <- "[Een poppodium of concertzaal]"
data[, 94] <- factor(data[, 94], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[94] <- "leftVenueFreqPeriod_poppodium"
# LimeSurvey Field type: F
data[, 95] <- as.numeric(data[, 95])
attributes(data)$variable.labels[95] <- "[Een optreden van een band]"
data[, 95] <- factor(data[, 95], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[95] <- "leftVenueFreqPeriod_band"
# LimeSurvey Field type: F
data[, 96] <- as.numeric(data[, 96])
attributes(data)$variable.labels[96] <- "[Een kleinschalig binnenfeest of -festival(minder dan 5000 bezoekers)]"
data[, 96] <- factor(data[, 96], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[96] <- "leftVenueFreqPeriod_smallPartyInside"
# LimeSurvey Field type: F
data[, 97] <- as.numeric(data[, 97])
attributes(data)$variable.labels[97] <- "[Een groot binnenfeest of -festival(meer dan 5000 bezoekers)]"
data[, 97] <- factor(data[, 97], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[97] <- "leftVenueFreqPeriod_bigPartyInside"
# LimeSurvey Field type: F
data[, 98] <- as.numeric(data[, 98])
attributes(data)$variable.labels[98] <- "[Een kleinschalig buitenfeest of -festival(minder dan 5000 bezoekers)]"
data[, 98] <- factor(data[, 98], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[98] <- "leftVenueFreqPeriod_smallPartyOutside"
# LimeSurvey Field type: F
data[, 99] <- as.numeric(data[, 99])
attributes(data)$variable.labels[99] <- "[Een groot buitenfeest of -festival(meer dan 5000 bezoekers)]"
data[, 99] <- factor(data[, 99], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[99] <- "leftVenueFreqPeriod_bigPartyOutside"
# LimeSurvey Field type: A
data[, 100] <- as.character(data[, 100])
attributes(data)$variable.labels[100] <- "{if((randomNumber1==1) || (subsurveyChoice_1.NAOK==\"Y\"), 1, 0)}"
names(data)[100] <- "sibeQuestions"
# LimeSurvey Field type: A
data[, 101] <- as.character(data[, 101])
attributes(data)$variable.labels[101] <- "{if((randomNumber1==2) || (subsurveyChoice_2.NAOK==\"Y\"), 1, 0)}"
names(data)[101] <- "sibaQuestions"
# LimeSurvey Field type: A
data[, 102] <- as.character(data[, 102])
attributes(data)$variable.labels[102] <- "{if((randomNumber1==3) || (subsurveyChoice_3.NAOK==\"Y\"), 1, 0)}"
names(data)[102] <- "sibdQuestions"
# LimeSurvey Field type: F
data[, 103] <- as.numeric(data[, 103])
attributes(data)$variable.labels[103] <- "Persoonlijke grenzen zijn voor iedereen anders. Deze vragen gaan over waar jouw grenzen liggen.	Grenzen kunnen niet alleen verschillen per persoon, maar ook per situatie en per moment, daarom vragen we 3 verschillende situaties uit.	Als je deze vragen liever wil overslaan, dan kun je dat hier aangeven."
data[, 103] <- factor(data[, 103], levels=c(1,0),labels=c("Ik wil deze vragen wel beantwoorden.", "Ik wil deze vragen liever overslaan."))
names(data)[103] <- "sibPrsBndrsWilling"
# LimeSurvey Field type: F
data[, 104] <- as.numeric(data[, 104])
attributes(data)$variable.labels[104] <- "[... een niet-seksueel getint compliment maakt over je uiterlijk:Helemaal niet|Heel sterk] 	Deze vragen gaan over iemand			die je niet​ aantrekkelijk vindt			met wie je zelf niet hebt geflirt			met wie je minder dan 15 minuten hebt gepraat	Vind jij dat deze persoon over jouw persoonlijke grenzen gaat als hij/zij..."
data[, 104] <- factor(data[, 104], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[104] <- "sibPrsBndrsDislike_remarkNonSexual"
# LimeSurvey Field type: F
data[, 105] <- as.numeric(data[, 105])
attributes(data)$variable.labels[105] <- "[... een wel seksueel getint compliment maakt over je uiterlijk:Helemaal niet|Heel sterk] 	Deze vragen gaan over iemand			die je niet​ aantrekkelijk vindt			met wie je zelf niet hebt geflirt			met wie je minder dan 15 minuten hebt gepraat	Vind jij dat deze persoon over jouw persoonlijke grenzen gaat als hij/zij..."
data[, 105] <- factor(data[, 105], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[105] <- "sibPrsBndrsDislike_remarkSexual"
# LimeSurvey Field type: F
data[, 106] <- as.numeric(data[, 106])
attributes(data)$variable.labels[106] <- "[... dicht bij je komt staan:Helemaal niet|Heel sterk] 	Deze vragen gaan over iemand			die je niet​ aantrekkelijk vindt			met wie je zelf niet hebt geflirt			met wie je minder dan 15 minuten hebt gepraat	Vind jij dat deze persoon over jouw persoonlijke grenzen gaat als hij/zij..."
data[, 106] <- factor(data[, 106], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[106] <- "sibPrsBndrsDislike_promixity"
# LimeSurvey Field type: F
data[, 107] <- as.numeric(data[, 107])
attributes(data)$variable.labels[107] <- "[... een hand op je schouder of rug legt:Helemaal niet|Heel sterk] 	Deze vragen gaan over iemand			die je niet​ aantrekkelijk vindt			met wie je zelf niet hebt geflirt			met wie je minder dan 15 minuten hebt gepraat	Vind jij dat deze persoon over jouw persoonlijke grenzen gaat als hij/zij..."
data[, 107] <- factor(data[, 107], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[107] <- "sibPrsBndrsDislike_touchShldrBack"
# LimeSurvey Field type: F
data[, 108] <- as.numeric(data[, 108])
attributes(data)$variable.labels[108] <- "[... je billen of borst(en) aanraakt:Helemaal niet|Heel sterk] 	Deze vragen gaan over iemand			die je niet​ aantrekkelijk vindt			met wie je zelf niet hebt geflirt			met wie je minder dan 15 minuten hebt gepraat	Vind jij dat deze persoon over jouw persoonlijke grenzen gaat als hij/zij..."
data[, 108] <- factor(data[, 108], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[108] <- "sibPrsBndrsDislike_touchButtBreast"
# LimeSurvey Field type: F
data[, 109] <- as.numeric(data[, 109])
attributes(data)$variable.labels[109] <- "[... je kruis aanraakt:Helemaal niet|Heel sterk] 	Deze vragen gaan over iemand			die je niet​ aantrekkelijk vindt			met wie je zelf niet hebt geflirt			met wie je minder dan 15 minuten hebt gepraat	Vind jij dat deze persoon over jouw persoonlijke grenzen gaat als hij/zij..."
data[, 109] <- factor(data[, 109], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[109] <- "sibPrsBndrsDislike_touchCrotch"
# LimeSurvey Field type: F
data[, 110] <- as.numeric(data[, 110])
attributes(data)$variable.labels[110] <- "[... je zoent:Helemaal niet|Heel sterk] 	Deze vragen gaan over iemand			die je niet​ aantrekkelijk vindt			met wie je zelf niet hebt geflirt			met wie je minder dan 15 minuten hebt gepraat	Vind jij dat deze persoon over jouw persoonlijke grenzen gaat als hij/zij..."
data[, 110] <- factor(data[, 110], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[110] <- "sibPrsBndrsDislike_kisses"
# LimeSurvey Field type: F
data[, 111] <- as.numeric(data[, 111])
attributes(data)$variable.labels[111] <- "[... aan je vraagt of je met diegene wil zoenen:Helemaal niet|Heel sterk] 	Deze vragen gaan over iemand			die je niet​ aantrekkelijk vindt			met wie je zelf niet hebt geflirt			met wie je minder dan 15 minuten hebt gepraat	Vind jij dat deze persoon over jouw persoonlijke grenzen gaat als hij/zij..."
data[, 111] <- factor(data[, 111], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[111] <- "sibPrsBndrsDislike_askKiss"
# LimeSurvey Field type: F
data[, 112] <- as.numeric(data[, 112])
attributes(data)$variable.labels[112] <- "[... aan je vraagt of je sex wil met diegene:Helemaal niet|Heel sterk] 	Deze vragen gaan over iemand			die je niet​ aantrekkelijk vindt			met wie je zelf niet hebt geflirt			met wie je minder dan 15 minuten hebt gepraat	Vind jij dat deze persoon over jouw persoonlijke grenzen gaat als hij/zij..."
data[, 112] <- factor(data[, 112], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[112] <- "sibPrsBndrsDislike_askSex"
# LimeSurvey Field type: F
data[, 113] <- as.numeric(data[, 113])
attributes(data)$variable.labels[113] <- "[... een niet-seksueel getint compliment maakt over je uiterlijk:Helemaal niet|Heel sterk] 	Deze vragen gaan over iemand			die je wel​ aantrekkelijk vindt			met wie je zelf niet hebt geflirt			met wie je minder dan 15 minuten hebt gepraat	Vind jij dat deze persoon over jouw persoonlijke grenzen gaat als hij/zij..."
data[, 113] <- factor(data[, 113], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[113] <- "sibPrsBndrsAttracted_remarkNonSexual"
# LimeSurvey Field type: F
data[, 114] <- as.numeric(data[, 114])
attributes(data)$variable.labels[114] <- "[... een wel seksueel getint compliment maakt over je uiterlijk:Helemaal niet|Heel sterk] 	Deze vragen gaan over iemand			die je wel​ aantrekkelijk vindt			met wie je zelf niet hebt geflirt			met wie je minder dan 15 minuten hebt gepraat	Vind jij dat deze persoon over jouw persoonlijke grenzen gaat als hij/zij..."
data[, 114] <- factor(data[, 114], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[114] <- "sibPrsBndrsAttracted_remarkSexual"
# LimeSurvey Field type: F
data[, 115] <- as.numeric(data[, 115])
attributes(data)$variable.labels[115] <- "[... dicht bij je komt staan:Helemaal niet|Heel sterk] 	Deze vragen gaan over iemand			die je wel​ aantrekkelijk vindt			met wie je zelf niet hebt geflirt			met wie je minder dan 15 minuten hebt gepraat	Vind jij dat deze persoon over jouw persoonlijke grenzen gaat als hij/zij..."
data[, 115] <- factor(data[, 115], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[115] <- "sibPrsBndrsAttracted_proximity"
# LimeSurvey Field type: F
data[, 116] <- as.numeric(data[, 116])
attributes(data)$variable.labels[116] <- "[... een hand op je schouder of rug legt:Helemaal niet|Heel sterk] 	Deze vragen gaan over iemand			die je wel​ aantrekkelijk vindt			met wie je zelf niet hebt geflirt			met wie je minder dan 15 minuten hebt gepraat	Vind jij dat deze persoon over jouw persoonlijke grenzen gaat als hij/zij..."
data[, 116] <- factor(data[, 116], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[116] <- "sibPrsBndrsAttracted_touchShldrBack"
# LimeSurvey Field type: F
data[, 117] <- as.numeric(data[, 117])
attributes(data)$variable.labels[117] <- "[... je billen of borst(en) aanraakt:Helemaal niet|Heel sterk] 	Deze vragen gaan over iemand			die je wel​ aantrekkelijk vindt			met wie je zelf niet hebt geflirt			met wie je minder dan 15 minuten hebt gepraat	Vind jij dat deze persoon over jouw persoonlijke grenzen gaat als hij/zij..."
data[, 117] <- factor(data[, 117], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[117] <- "sibPrsBndrsAttracted_touchButtBreast"
# LimeSurvey Field type: F
data[, 118] <- as.numeric(data[, 118])
attributes(data)$variable.labels[118] <- "[... je kruis aanraakt:Helemaal niet|Heel sterk] 	Deze vragen gaan over iemand			die je wel​ aantrekkelijk vindt			met wie je zelf niet hebt geflirt			met wie je minder dan 15 minuten hebt gepraat	Vind jij dat deze persoon over jouw persoonlijke grenzen gaat als hij/zij..."
data[, 118] <- factor(data[, 118], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[118] <- "sibPrsBndrsAttracted_touchCrotch"
# LimeSurvey Field type: F
data[, 119] <- as.numeric(data[, 119])
attributes(data)$variable.labels[119] <- "[... je zoent:Helemaal niet|Heel sterk] 	Deze vragen gaan over iemand			die je wel​ aantrekkelijk vindt			met wie je zelf niet hebt geflirt			met wie je minder dan 15 minuten hebt gepraat	Vind jij dat deze persoon over jouw persoonlijke grenzen gaat als hij/zij..."
data[, 119] <- factor(data[, 119], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[119] <- "sibPrsBndrsAttracted_kisses"
# LimeSurvey Field type: F
data[, 120] <- as.numeric(data[, 120])
attributes(data)$variable.labels[120] <- "[... aan je vraagt of je met diegene wil zoenen:Helemaal niet|Heel sterk] 	Deze vragen gaan over iemand			die je wel​ aantrekkelijk vindt			met wie je zelf niet hebt geflirt			met wie je minder dan 15 minuten hebt gepraat	Vind jij dat deze persoon over jouw persoonlijke grenzen gaat als hij/zij..."
data[, 120] <- factor(data[, 120], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[120] <- "sibPrsBndrsAttracted_askKiss"
# LimeSurvey Field type: F
data[, 121] <- as.numeric(data[, 121])
attributes(data)$variable.labels[121] <- "[... aan je vraagt of je sex wil met diegene:Helemaal niet|Heel sterk] 	Deze vragen gaan over iemand			die je wel​ aantrekkelijk vindt			met wie je zelf niet hebt geflirt			met wie je minder dan 15 minuten hebt gepraat	Vind jij dat deze persoon over jouw persoonlijke grenzen gaat als hij/zij..."
data[, 121] <- factor(data[, 121], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[121] <- "sibPrsBndrsAttracted_askSex"
# LimeSurvey Field type: F
data[, 122] <- as.numeric(data[, 122])
attributes(data)$variable.labels[122] <- "[... een niet-seksueel getint compliment maakt over je uiterlijk:Helemaal niet|Heel sterk] 	Deze vragen gaan over iemand			die je wel​ aantrekkelijk vindt			met wie je zelf wel hebt geflirt			met wie je minder dan 15 minuten hebt gepraat	Vind jij dat deze persoon over jouw persoonlijke grenzen gaat als hij/zij..."
data[, 122] <- factor(data[, 122], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[122] <- "sibPerBndrsFlirting_remarkNonSexual"
# LimeSurvey Field type: F
data[, 123] <- as.numeric(data[, 123])
attributes(data)$variable.labels[123] <- "[... een wel seksueel getint compliment maakt over je uiterlijk:Helemaal niet|Heel sterk] 	Deze vragen gaan over iemand			die je wel​ aantrekkelijk vindt			met wie je zelf wel hebt geflirt			met wie je minder dan 15 minuten hebt gepraat	Vind jij dat deze persoon over jouw persoonlijke grenzen gaat als hij/zij..."
data[, 123] <- factor(data[, 123], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[123] <- "sibPerBndrsFlirting_remarkSexual"
# LimeSurvey Field type: F
data[, 124] <- as.numeric(data[, 124])
attributes(data)$variable.labels[124] <- "[... dicht bij je komt staan:Helemaal niet|Heel sterk] 	Deze vragen gaan over iemand			die je wel​ aantrekkelijk vindt			met wie je zelf wel hebt geflirt			met wie je minder dan 15 minuten hebt gepraat	Vind jij dat deze persoon over jouw persoonlijke grenzen gaat als hij/zij..."
data[, 124] <- factor(data[, 124], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[124] <- "sibPerBndrsFlirting_proximity"
# LimeSurvey Field type: F
data[, 125] <- as.numeric(data[, 125])
attributes(data)$variable.labels[125] <- "[... een hand op je schouder of rug legt:Helemaal niet|Heel sterk] 	Deze vragen gaan over iemand			die je wel​ aantrekkelijk vindt			met wie je zelf wel hebt geflirt			met wie je minder dan 15 minuten hebt gepraat	Vind jij dat deze persoon over jouw persoonlijke grenzen gaat als hij/zij..."
data[, 125] <- factor(data[, 125], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[125] <- "sibPerBndrsFlirting_touchShldrBack"
# LimeSurvey Field type: F
data[, 126] <- as.numeric(data[, 126])
attributes(data)$variable.labels[126] <- "[... je billen of borst(en) aanraakt:Helemaal niet|Heel sterk] 	Deze vragen gaan over iemand			die je wel​ aantrekkelijk vindt			met wie je zelf wel hebt geflirt			met wie je minder dan 15 minuten hebt gepraat	Vind jij dat deze persoon over jouw persoonlijke grenzen gaat als hij/zij..."
data[, 126] <- factor(data[, 126], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[126] <- "sibPerBndrsFlirting_touchButtBreast"
# LimeSurvey Field type: F
data[, 127] <- as.numeric(data[, 127])
attributes(data)$variable.labels[127] <- "[... je kruis aanraakt:Helemaal niet|Heel sterk] 	Deze vragen gaan over iemand			die je wel​ aantrekkelijk vindt			met wie je zelf wel hebt geflirt			met wie je minder dan 15 minuten hebt gepraat	Vind jij dat deze persoon over jouw persoonlijke grenzen gaat als hij/zij..."
data[, 127] <- factor(data[, 127], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[127] <- "sibPerBndrsFlirting_touchCrotch"
# LimeSurvey Field type: F
data[, 128] <- as.numeric(data[, 128])
attributes(data)$variable.labels[128] <- "[... je zoent:Helemaal niet|Heel sterk] 	Deze vragen gaan over iemand			die je wel​ aantrekkelijk vindt			met wie je zelf wel hebt geflirt			met wie je minder dan 15 minuten hebt gepraat	Vind jij dat deze persoon over jouw persoonlijke grenzen gaat als hij/zij..."
data[, 128] <- factor(data[, 128], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[128] <- "sibPerBndrsFlirting_kisses"
# LimeSurvey Field type: F
data[, 129] <- as.numeric(data[, 129])
attributes(data)$variable.labels[129] <- "[... aan je vraagt of je met diegene wil zoenen:Helemaal niet|Heel sterk] 	Deze vragen gaan over iemand			die je wel​ aantrekkelijk vindt			met wie je zelf wel hebt geflirt			met wie je minder dan 15 minuten hebt gepraat	Vind jij dat deze persoon over jouw persoonlijke grenzen gaat als hij/zij..."
data[, 129] <- factor(data[, 129], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[129] <- "sibPerBndrsFlirting_askKiss"
# LimeSurvey Field type: F
data[, 130] <- as.numeric(data[, 130])
attributes(data)$variable.labels[130] <- "[... aan je vraagt of je sex wil met diegene:Helemaal niet|Heel sterk] 	Deze vragen gaan over iemand			die je wel​ aantrekkelijk vindt			met wie je zelf wel hebt geflirt			met wie je minder dan 15 minuten hebt gepraat	Vind jij dat deze persoon over jouw persoonlijke grenzen gaat als hij/zij..."
data[, 130] <- factor(data[, 130], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[130] <- "sibPerBndrsFlirting_askSex"
# LimeSurvey Field type: F
data[, 131] <- as.numeric(data[, 131])
attributes(data)$variable.labels[131] <- "[Ik ben van plan om in deze situatie tegen hem/haar te zeggen dat hij/zij over mijn grenzen gaat. Absoluut niet | Absoluut wel] Stel je voor: in het komende halfjaar is iemand tijdens het uitgaan met je aan het flirten en hij/zij gaat daarbij over jouw grenzen. Hoe denk je er over dat dan tegen hem/haar te zeggen?"
data[, 131] <- factor(data[, 131], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[131] <- "sibeCIBERlite_intention"
# LimeSurvey Field type: F
data[, 132] <- as.numeric(data[, 132])
attributes(data)$variable.labels[132] <- "[Tegen hem/haar zeggen dat hij/zij over mijn grenzen gaat is voor mij...Slecht | Goed] Stel je voor: in het komende halfjaar is iemand tijdens het uitgaan met je aan het flirten en hij/zij gaat daarbij over jouw grenzen. Hoe denk je er over dat dan tegen hem/haar te zeggen?"
data[, 132] <- factor(data[, 132], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[132] <- "sibeCIBERlite_attInstrumental"
# LimeSurvey Field type: F
data[, 133] <- as.numeric(data[, 133])
attributes(data)$variable.labels[133] <- "[Tegen hem/haar zeggen dat hij/zij over mijn grenzen gaat is voor mij... Onprettig | Prettig] Stel je voor: in het komende halfjaar is iemand tijdens het uitgaan met je aan het flirten en hij/zij gaat daarbij over jouw grenzen. Hoe denk je er over dat dan tegen hem/haar te zeggen?"
data[, 133] <- factor(data[, 133], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[133] <- "sibeCIBERlite_attExperiential"
# LimeSurvey Field type: F
data[, 134] <- as.numeric(data[, 134])
attributes(data)$variable.labels[134] <- "[Als ik in deze situatie tegen hem/haar zeg dat hij/zij over mijn grenzen gaat, dan keuren de meeste mensen die belangrijk voor mij zijn dat...Af | Goed] Stel je voor: in het komende halfjaar is iemand tijdens het uitgaan met je aan het flirten en hij/zij gaat daarbij over jouw grenzen. Hoe denk je er over dat dan tegen hem/haar te zeggen?"
data[, 134] <- factor(data[, 134], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[134] <- "sibeCIBERlite_pnInjunctive"
# LimeSurvey Field type: F
data[, 135] <- as.numeric(data[, 135])
attributes(data)$variable.labels[135] <- "[Hoeveel mensen zoals jij zouden in deze situatie tegen die persoon zeggen dat hij/zij over hun grenzen gaat?Niemand | Iedereen] Stel je voor: in het komende halfjaar is iemand tijdens het uitgaan met je aan het flirten en hij/zij gaat daarbij over jouw grenzen. Hoe denk je er over dat dan tegen hem/haar te zeggen?"
data[, 135] <- factor(data[, 135], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[135] <- "sibeCIBERlite_pnDescriptive"
# LimeSurvey Field type: F
data[, 136] <- as.numeric(data[, 136])
attributes(data)$variable.labels[136] <- "[Ik heb er vertrouwen in dat ik in deze situatie, als ik dat zou willen, tegen hem/haar kan zeggen dat hij/zij over mijn grenzen gaat.Helemaal geen vertrouwen | Heel veel vertrouwen] Stel je voor: in het komende halfjaar is iemand tijdens het uitgaan met je aan het flirten en hij/zij gaat daarbij over jouw grenzen. Hoe denk je er over dat dan tegen hem/haar te zeggen?"
data[, 136] <- factor(data[, 136], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[136] <- "sibeCIBERlite_pbcCapacity"
# LimeSurvey Field type: F
data[, 137] <- as.numeric(data[, 137])
attributes(data)$variable.labels[137] <- "[Of ik in deze situatie hem/haar wel of niet zeg dat hij/zij over mijn grenzen gaat bepaal ik...Helemaal niet zelf | Helemaal zelf] Stel je voor: in het komende halfjaar is iemand tijdens het uitgaan met je aan het flirten en hij/zij gaat daarbij over jouw grenzen. Hoe denk je er over dat dan tegen hem/haar te zeggen?"
data[, 137] <- factor(data[, 137], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[137] <- "sibeCIBERlite_pbcControl"
# LimeSurvey Field type: F
data[, 138] <- as.numeric(data[, 138])
attributes(data)$variable.labels[138] <- "[Ik ben van plan om in deze situatie tegen die vriend(in) te zeggen dat hij/zij over iemands grenzen heen gaat.Absoluut niet | Absoluut wel] Stel je voor: in het komende halfjaar is een vriend of vriendin van jou tijdens het uitgaan met iemand aan het flirten. Je hebt de indruk dat hij/zij hierbij over de grenzen van de ander gaat. Hoe denk je over je vriend(in) aanspreken op zijn/haar gedrag?"
data[, 138] <- factor(data[, 138], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[138] <- "sibaCIBERlite_intention"
# LimeSurvey Field type: F
data[, 139] <- as.numeric(data[, 139])
attributes(data)$variable.labels[139] <- "[Tegen die vriend(in) zeggen dat hij/zij over iemands grenzen gaat is voor mij...Slecht | Goed] Stel je voor: in het komende halfjaar is een vriend of vriendin van jou tijdens het uitgaan met iemand aan het flirten. Je hebt de indruk dat hij/zij hierbij over de grenzen van de ander gaat. Hoe denk je over je vriend(in) aanspreken op zijn/haar gedrag?"
data[, 139] <- factor(data[, 139], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[139] <- "sibaCIBERlite_attInstrumental"
# LimeSurvey Field type: F
data[, 140] <- as.numeric(data[, 140])
attributes(data)$variable.labels[140] <- "[Tegen die vriend(in) zeggen dat hij/zij over iemands grenzen gaat is voor mij...Onprettig | Prettig] Stel je voor: in het komende halfjaar is een vriend of vriendin van jou tijdens het uitgaan met iemand aan het flirten. Je hebt de indruk dat hij/zij hierbij over de grenzen van de ander gaat. Hoe denk je over je vriend(in) aanspreken op zijn/haar gedrag?"
data[, 140] <- factor(data[, 140], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[140] <- "sibaCIBERlite_attExperiential"
# LimeSurvey Field type: F
data[, 141] <- as.numeric(data[, 141])
attributes(data)$variable.labels[141] <- "[Als ik in deze situatie tegen die vriend(in) zeg dat hij/zij over iemand grenzen gaat, dan keuren de meeste mensen die belangrijk voor mij zijn dat...Af | Goed] Stel je voor: in het komende halfjaar is een vriend of vriendin van jou tijdens het uitgaan met iemand aan het flirten. Je hebt de indruk dat hij/zij hierbij over de grenzen van de ander gaat. Hoe denk je over je vriend(in) aanspreken op zijn/haar gedrag?"
data[, 141] <- factor(data[, 141], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[141] <- "sibaCIBERlite_pnInjunctive"
# LimeSurvey Field type: F
data[, 142] <- as.numeric(data[, 142])
attributes(data)$variable.labels[142] <- "[Hoeveel mensen zoals jij zouden in deze situatie tegen die vriend(in) zeggen dat hij/zij over iemands grenzen gaat?Niemand | Iedereen] Stel je voor: in het komende halfjaar is een vriend of vriendin van jou tijdens het uitgaan met iemand aan het flirten. Je hebt de indruk dat hij/zij hierbij over de grenzen van de ander gaat. Hoe denk je over je vriend(in) aanspreken op zijn/haar gedrag?"
data[, 142] <- factor(data[, 142], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[142] <- "sibaCIBERlite_pnDescriptive"
# LimeSurvey Field type: F
data[, 143] <- as.numeric(data[, 143])
attributes(data)$variable.labels[143] <- "[Ik heb er vertrouwen in dat ik in deze situatie, als ik dat zou willen, tegen die vriend(in) kan zeggen dat hij/zij over iemands grenzen gaat.Helemaal geen vertrouwen | Heel veel vertrouwen] Stel je voor: in het komende halfjaar is een vriend of vriendin van jou tijdens het uitgaan met iemand aan het flirten. Je hebt de indruk dat hij/zij hierbij over de grenzen van de ander gaat. Hoe denk je over je vriend(in) aanspreken op zijn/haar gedrag?"
data[, 143] <- factor(data[, 143], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[143] <- "sibaCIBERlite_pbcCapacity"
# LimeSurvey Field type: F
data[, 144] <- as.numeric(data[, 144])
attributes(data)$variable.labels[144] <- "[Of ik in deze situatie wel of niet tegen die vriend(in) zeg dat hij/zij over iemands grenzen gaat bepaal ik...Helemaal niet zelf | Helemaal zelf] Stel je voor: in het komende halfjaar is een vriend of vriendin van jou tijdens het uitgaan met iemand aan het flirten. Je hebt de indruk dat hij/zij hierbij over de grenzen van de ander gaat. Hoe denk je over je vriend(in) aanspreken op zijn/haar gedrag?"
data[, 144] <- factor(data[, 144], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[144] <- "sibaCIBERlite_pbcControl"
# LimeSurvey Field type: F
data[, 145] <- as.numeric(data[, 145])
attributes(data)$variable.labels[145] <- "[Ik ben van plan om in deze situatie achteraf tegen vriend(inn)en te zeggen dat iemand over mijn grenzen is gegaan.Absoluut niet | Absoluut wel] Stel je voor: in het komende halfjaar is iemand tijdens het uitgaan met je aan het flirten en hij/zij gaat daarbij over jouw grenzen. Hoe denk je over achteraf aan je vrienden/vriendinnen zeggen wat er is gebeurd?"
data[, 145] <- factor(data[, 145], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[145] <- "sibdCIBERlite_intention"
# LimeSurvey Field type: F
data[, 146] <- as.numeric(data[, 146])
attributes(data)$variable.labels[146] <- "[Achteraf tegen vriend(inn)en zeggen dat iemand over mijn grenzen is gegaan is voor mij...Slecht | Goed] Stel je voor: in het komende halfjaar is iemand tijdens het uitgaan met je aan het flirten en hij/zij gaat daarbij over jouw grenzen. Hoe denk je over achteraf aan je vrienden/vriendinnen zeggen wat er is gebeurd?"
data[, 146] <- factor(data[, 146], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[146] <- "sibdCIBERlite_attInstrumental"
# LimeSurvey Field type: F
data[, 147] <- as.numeric(data[, 147])
attributes(data)$variable.labels[147] <- "[Achteraf tegen vriend(inn)en zeggen dat iemand over mijn grenzen is gegaan is voor mij...Onprettig | Prettig] Stel je voor: in het komende halfjaar is iemand tijdens het uitgaan met je aan het flirten en hij/zij gaat daarbij over jouw grenzen. Hoe denk je over achteraf aan je vrienden/vriendinnen zeggen wat er is gebeurd?"
data[, 147] <- factor(data[, 147], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[147] <- "sibdCIBERlite_attExperiential"
# LimeSurvey Field type: F
data[, 148] <- as.numeric(data[, 148])
attributes(data)$variable.labels[148] <- "[Als ik in deze situatie tegen vriend(inn)en zeg dat iemand over mijn grenzen is gegaan, dan keuren de meeste mensen die belangrijk voor mij zijn dat...Af | Goed] Stel je voor: in het komende halfjaar is iemand tijdens het uitgaan met je aan het flirten en hij/zij gaat daarbij over jouw grenzen. Hoe denk je over achteraf aan je vrienden/vriendinnen zeggen wat er is gebeurd?"
data[, 148] <- factor(data[, 148], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[148] <- "sibdCIBERlite_pnInjunctive"
# LimeSurvey Field type: F
data[, 149] <- as.numeric(data[, 149])
attributes(data)$variable.labels[149] <- "[Hoeveel mensen zoals jij zouden in deze situatie tegen hun vriend(inn)en zeggen dat iemand over hun grenzen is gegaan?Niemand | Iedereen] Stel je voor: in het komende halfjaar is iemand tijdens het uitgaan met je aan het flirten en hij/zij gaat daarbij over jouw grenzen. Hoe denk je over achteraf aan je vrienden/vriendinnen zeggen wat er is gebeurd?"
data[, 149] <- factor(data[, 149], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[149] <- "sibdCIBERlite_pnDescriptive"
# LimeSurvey Field type: F
data[, 150] <- as.numeric(data[, 150])
attributes(data)$variable.labels[150] <- "[Ik heb er vertrouwen in dat ik in deze situatie, als ik dat zou willen, tegen vriend(inn)en kan zeggen dat iemand over mijn grenzen is gegaan.Helemaal geen vertrouwen | Heel veel vertrouwen] Stel je voor: in het komende halfjaar is iemand tijdens het uitgaan met je aan het flirten en hij/zij gaat daarbij over jouw grenzen. Hoe denk je over achteraf aan je vrienden/vriendinnen zeggen wat er is gebeurd?"
data[, 150] <- factor(data[, 150], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[150] <- "sibdCIBERlite_pbcCapacity"
# LimeSurvey Field type: F
data[, 151] <- as.numeric(data[, 151])
attributes(data)$variable.labels[151] <- "[Of ik in deze situatie wel of niet tegen vriend(inn)en zeg dat iemand over mijn grenzen is gegaan bepaal ik...Helemaal niet zelf | Helemaal zelf] Stel je voor: in het komende halfjaar is iemand tijdens het uitgaan met je aan het flirten en hij/zij gaat daarbij over jouw grenzen. Hoe denk je over achteraf aan je vrienden/vriendinnen zeggen wat er is gebeurd?"
data[, 151] <- factor(data[, 151], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[151] <- "sibdCIBERlite_pbcControl"
# LimeSurvey Field type: F
data[, 152] <- as.numeric(data[, 152])
attributes(data)$variable.labels[152] <- "[... is de kans dat hij/zij daar boos van wordt ...Heel klein|Heel groot] 	Stel je voor: in het komende halfjaar is iemand tijdens het uitgaan met je aan het flirten en hij/zij gaat daarbij over jouw grenzen.	Als ik dat dan tegen hem/haar zeg..."
data[, 152] <- factor(data[, 152], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[152] <- "sibeAttExpect_angryReaction"
# LimeSurvey Field type: F
data[, 153] <- as.numeric(data[, 153])
attributes(data)$variable.labels[153] <- "[... dan neemt hij/zij mij ...Helemaal niet serieus | Heel serieus] 	Stel je voor: in het komende halfjaar is iemand tijdens het uitgaan met je aan het flirten en hij/zij gaat daarbij over jouw grenzen.	Als ik dat dan tegen hem/haar zeg..."
data[, 153] <- factor(data[, 153], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[153] <- "sibeAttExpect_takenSeriously"
# LimeSurvey Field type: F
data[, 154] <- as.numeric(data[, 154])
attributes(data)$variable.labels[154] <- "[... dan maak ik de sfeer daarmee ...Veel slechter | Veel beter] 	Stel je voor: in het komende halfjaar is iemand tijdens het uitgaan met je aan het flirten en hij/zij gaat daarbij over jouw grenzen.	Als ik dat dan tegen hem/haar zeg..."
data[, 154] <- factor(data[, 154], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[154] <- "sibeAttExpect_atmosphere"
# LimeSurvey Field type: F
data[, 155] <- as.numeric(data[, 155])
attributes(data)$variable.labels[155] <- "[... dan zou ik me ...Helemaal niet schamen | Heel erg schamen] 	Stel je voor: in het komende halfjaar is iemand tijdens het uitgaan met je aan het flirten en hij/zij gaat daarbij over jouw grenzen.	Als ik dat dan tegen hem/haar zeg..."
data[, 155] <- factor(data[, 155], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[155] <- "sibeAttExpect_shame"
# LimeSurvey Field type: F
data[, 156] <- as.numeric(data[, 156])
attributes(data)$variable.labels[156] <- "[... dan denken anderen dat ik preuts ben.Absoluut niet | Absoluut wel] 	Stel je voor: in het komende halfjaar is iemand tijdens het uitgaan met je aan het flirten en hij/zij gaat daarbij over jouw grenzen.	Als ik dat dan tegen hem/haar zeg..."
data[, 156] <- factor(data[, 156], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[156] <- "sibeAttExpect_prude"
# LimeSurvey Field type: F
data[, 157] <- as.numeric(data[, 157])
attributes(data)$variable.labels[157] <- "[... dan laat ik hem/haar ... Niet in hun waarde | Wel in hun waarde] 	Stel je voor: in het komende halfjaar is iemand tijdens het uitgaan met je aan het flirten en hij/zij gaat daarbij over jouw grenzen.	Als ik dat dan tegen hem/haar zeg..."
data[, 157] <- factor(data[, 157], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[157] <- "sibeAttExpect_respectOther"
# LimeSurvey Field type: F
data[, 158] <- as.numeric(data[, 158])
attributes(data)$variable.labels[158] <- "[... is de kans dat hij/zij ophoudt ... Heel klein | Heel groot] 	Stel je voor: in het komende halfjaar is iemand tijdens het uitgaan met je aan het flirten en hij/zij gaat daarbij over jouw grenzen.	Als ik dat dan tegen hem/haar zeg..."
data[, 158] <- factor(data[, 158], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[158] <- "sibeAttExpect_responseEfficacy"
# LimeSurvey Field type: F
data[, 159] <- as.numeric(data[, 159])
attributes(data)$variable.labels[159] <- "[... is de kans dat hij/zij mij respecteert voor het aangeven van mijn grenzen ... Heel klein | Heel groot] 	Stel je voor: in het komende halfjaar is iemand tijdens het uitgaan met je aan het flirten en hij/zij gaat daarbij over jouw grenzen.	Als ik dat dan tegen hem/haar zeg..."
data[, 159] <- factor(data[, 159], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[159] <- "sibeAttExpect_respect"
# LimeSurvey Field type: F
data[, 160] <- as.numeric(data[, 160])
attributes(data)$variable.labels[160] <- "[... dan voel ik me ... Helemaal niet opgelucht | Heel opgelucht] 	Stel je voor: in het komende halfjaar is iemand tijdens het uitgaan met je aan het flirten en hij/zij gaat daarbij over jouw grenzen.	Als ik dat dan tegen hem/haar zeg..."
data[, 160] <- factor(data[, 160], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[160] <- "sibeAttExpect_relief"
# LimeSurvey Field type: F
data[, 161] <- as.numeric(data[, 161])
attributes(data)$variable.labels[161] <- "[... dan neemt diegene mij ...Helemaal niet serieus | Heel serieus] 	Stel je voor: in het komende halfjaar is een vriend of vriendin van jou tijdens het uitgaan met iemand aan het flirten. Je hebt de indruk dat hij/zij hierbij over de grenzen van de ander gaat.	Als ik dat dan tegen die vriend(in) zeg..."
data[, 161] <- factor(data[, 161], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[161] <- "sibaAttExpect_takenSeriously"
# LimeSurvey Field type: F
data[, 162] <- as.numeric(data[, 162])
attributes(data)$variable.labels[162] <- "[... dan is de kans dat diegene daarvan schrikt ...Heel klein | Heel groot] 	Stel je voor: in het komende halfjaar is een vriend of vriendin van jou tijdens het uitgaan met iemand aan het flirten. Je hebt de indruk dat hij/zij hierbij over de grenzen van de ander gaat.	Als ik dat dan tegen die vriend(in) zeg..."
data[, 162] <- factor(data[, 162], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[162] <- "sibaAttExpect_rattlesPerson"
# LimeSurvey Field type: F
data[, 163] <- as.numeric(data[, 163])
attributes(data)$variable.labels[163] <- "[... dan is de kans dat diegene daar boos van wordt ...Heel klein | Heel groot] 	Stel je voor: in het komende halfjaar is een vriend of vriendin van jou tijdens het uitgaan met iemand aan het flirten. Je hebt de indruk dat hij/zij hierbij over de grenzen van de ander gaat.	Als ik dat dan tegen die vriend(in) zeg..."
data[, 163] <- factor(data[, 163], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[163] <- "sibaAttExpect_angryReaction"
# LimeSurvey Field type: F
data[, 164] <- as.numeric(data[, 164])
attributes(data)$variable.labels[164] <- "[... dan bemoei ik me met andermans zaken.Absoluut niet | Absoluut wel] 	Stel je voor: in het komende halfjaar is een vriend of vriendin van jou tijdens het uitgaan met iemand aan het flirten. Je hebt de indruk dat hij/zij hierbij over de grenzen van de ander gaat.	Als ik dat dan tegen die vriend(in) zeg..."
data[, 164] <- factor(data[, 164], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[164] <- "sibaAttExpect_nosy"
# LimeSurvey Field type: F
data[, 165] <- as.numeric(data[, 165])
attributes(data)$variable.labels[165] <- "[... dan maak ik de sfeer daarmee ...Veel slechter | Veel beter] 	Stel je voor: in het komende halfjaar is een vriend of vriendin van jou tijdens het uitgaan met iemand aan het flirten. Je hebt de indruk dat hij/zij hierbij over de grenzen van de ander gaat.	Als ik dat dan tegen die vriend(in) zeg..."
data[, 165] <- factor(data[, 165], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[165] <- "sibaAttExpect_atmosphere"
# LimeSurvey Field type: F
data[, 166] <- as.numeric(data[, 166])
attributes(data)$variable.labels[166] <- "[... dan verpest ik daarmee een grappige situatie.Absoluut niet | Absoluut wel] 	Stel je voor: in het komende halfjaar is een vriend of vriendin van jou tijdens het uitgaan met iemand aan het flirten. Je hebt de indruk dat hij/zij hierbij over de grenzen van de ander gaat.	Als ik dat dan tegen die vriend(in) zeg..."
data[, 166] <- factor(data[, 166], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[166] <- "sibaAttExpect_ruinFunnySituation"
# LimeSurvey Field type: F
data[, 167] <- as.numeric(data[, 167])
attributes(data)$variable.labels[167] <- "[... dan denken anderen dat ik preuts ben.Absoluut niet | Absoluut wel] 	Stel je voor: in het komende halfjaar is een vriend of vriendin van jou tijdens het uitgaan met iemand aan het flirten. Je hebt de indruk dat hij/zij hierbij over de grenzen van de ander gaat.	Als ik dat dan tegen die vriend(in) zeg..."
data[, 167] <- factor(data[, 167], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[167] <- "sibaAttExpect_prude"
# LimeSurvey Field type: F
data[, 168] <- as.numeric(data[, 168])
attributes(data)$variable.labels[168] <- "[... dan laat ik mijn vriend/vriendin ... Niet in hun waarde | Wel in hun waarde] 	Stel je voor: in het komende halfjaar is een vriend of vriendin van jou tijdens het uitgaan met iemand aan het flirten. Je hebt de indruk dat hij/zij hierbij over de grenzen van de ander gaat.	Als ik dat dan tegen die vriend(in) zeg..."
data[, 168] <- factor(data[, 168], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[168] <- "sibaAttExpect_respectFriend"
# LimeSurvey Field type: F
data[, 169] <- as.numeric(data[, 169])
attributes(data)$variable.labels[169] <- "[... dan laat ik degene met wie mijn vriend/vriendin flirt ... Niet in hun waarde | Wel in hun waarde] 	Stel je voor: in het komende halfjaar is een vriend of vriendin van jou tijdens het uitgaan met iemand aan het flirten. Je hebt de indruk dat hij/zij hierbij over de grenzen van de ander gaat.	Als ik dat dan tegen die vriend(in) zeg..."
data[, 169] <- factor(data[, 169], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[169] <- "sibaAttExpect_respectOther"
# LimeSurvey Field type: F
data[, 170] <- as.numeric(data[, 170])
attributes(data)$variable.labels[170] <- "[... dan is de kans dat hij/zij er mee ophoudt ...Heel klein | Heel groot] 	Stel je voor: in het komende halfjaar is een vriend of vriendin van jou tijdens het uitgaan met iemand aan het flirten. Je hebt de indruk dat hij/zij hierbij over de grenzen van de ander gaat.	Als ik dat dan tegen die vriend(in) zeg..."
data[, 170] <- factor(data[, 170], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[170] <- "sibaAttExpect_responseEfficacy"
# LimeSurvey Field type: F
data[, 171] <- as.numeric(data[, 171])
attributes(data)$variable.labels[171] <- "[... dan is de kans hij/zij positief reageert...Heel klein | Heel groot] 	Stel je voor: in het komende halfjaar is een vriend of vriendin van jou tijdens het uitgaan met iemand aan het flirten. Je hebt de indruk dat hij/zij hierbij over de grenzen van de ander gaat.	Als ik dat dan tegen die vriend(in) zeg..."
data[, 171] <- factor(data[, 171], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[171] <- "sibaAttExpect_positiveReaction"
# LimeSurvey Field type: F
data[, 172] <- as.numeric(data[, 172])
attributes(data)$variable.labels[172] <- "[... dan is de kans dat hij/zij zich voortaan anders zal gedragen ...Heel klein | Heel groot] 	Stel je voor: in het komende halfjaar is een vriend of vriendin van jou tijdens het uitgaan met iemand aan het flirten. Je hebt de indruk dat hij/zij hierbij over de grenzen van de ander gaat.	Als ik dat dan tegen die vriend(in) zeg..."
data[, 172] <- factor(data[, 172], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[172] <- "sibaAttExpect_lastingChange"
# LimeSurvey Field type: F
data[, 173] <- as.numeric(data[, 173])
attributes(data)$variable.labels[173] <- "[... dan voel ik me daarna ...Veel slechter | Veel beter] 	Stel je voor: in het komende halfjaar is iemand tijdens het uitgaan met je aan het flirten en hij/zij gaat daarbij over jouw grenzen.	Als ik dat dan achteraf tegen mijn vrienden/vriendinnen zeg ..."
data[, 173] <- factor(data[, 173], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[173] <- "sibdAttExpect_feelBetter"
# LimeSurvey Field type: F
data[, 174] <- as.numeric(data[, 174])
attributes(data)$variable.labels[174] <- "[... dan voel ik me daarna ...Helemaal niet opgelucht | Heel opgelucht] 	Stel je voor: in het komende halfjaar is iemand tijdens het uitgaan met je aan het flirten en hij/zij gaat daarbij over jouw grenzen.	Als ik dat dan achteraf tegen mijn vrienden/vriendinnen zeg ..."
data[, 174] <- factor(data[, 174], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[174] <- "sibdAttExpect_relief"
# LimeSurvey Field type: F
data[, 175] <- as.numeric(data[, 175])
attributes(data)$variable.labels[175] <- "[... dan steunen mijn vrienden/vriendinnen mij ...Helemaal niet | Heel erg] 	Stel je voor: in het komende halfjaar is iemand tijdens het uitgaan met je aan het flirten en hij/zij gaat daarbij over jouw grenzen.	Als ik dat dan achteraf tegen mijn vrienden/vriendinnen zeg ..."
data[, 175] <- factor(data[, 175], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[175] <- "sibdAttExpect_support"
# LimeSurvey Field type: F
data[, 176] <- as.numeric(data[, 176])
attributes(data)$variable.labels[176] <- "[... is de kans dat ze het serieus nemen ...Heel klein | Heel groot] 	Stel je voor: in het komende halfjaar is iemand tijdens het uitgaan met je aan het flirten en hij/zij gaat daarbij over jouw grenzen.	Als ik dat dan achteraf tegen mijn vrienden/vriendinnen zeg ..."
data[, 176] <- factor(data[, 176], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[176] <- "sibdAttExpect_takenSeriously"
# LimeSurvey Field type: F
data[, 177] <- as.numeric(data[, 177])
attributes(data)$variable.labels[177] <- "[... is de kans dat ze vinden dat ik me aanstel ...Heel klein | Heel groot] 	Stel je voor: in het komende halfjaar is iemand tijdens het uitgaan met je aan het flirten en hij/zij gaat daarbij over jouw grenzen.	Als ik dat dan achteraf tegen mijn vrienden/vriendinnen zeg ..."
data[, 177] <- factor(data[, 177], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[177] <- "sibdAttExpect_whining"
# LimeSurvey Field type: F
data[, 178] <- as.numeric(data[, 178])
attributes(data)$variable.labels[178] <- "[... geloven ze mij ...Waarschijnlijk niet | Waarschijnlijk wel] 	Stel je voor: in het komende halfjaar is iemand tijdens het uitgaan met je aan het flirten en hij/zij gaat daarbij over jouw grenzen.	Als ik dat dan achteraf tegen mijn vrienden/vriendinnen zeg ..."
data[, 178] <- factor(data[, 178], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[178] <- "sibdAttExpect_believeMe"
# LimeSurvey Field type: F
data[, 179] <- as.numeric(data[, 179])
attributes(data)$variable.labels[179] <- "[... zeggen mijn vrienden/vriendinnen dat ik daar nu te laat mee ben.Absoluut niet | Absoluut wel] 	Stel je voor: in het komende halfjaar is iemand tijdens het uitgaan met je aan het flirten en hij/zij gaat daarbij over jouw grenzen.	Als ik dat dan achteraf tegen mijn vrienden/vriendinnen zeg ..."
data[, 179] <- factor(data[, 179], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[179] <- "sibdAttExpect_tooLate"
# LimeSurvey Field type: F
data[, 180] <- as.numeric(data[, 180])
attributes(data)$variable.labels[180] <- "[... dan maak ik iemand onterecht zwart.Absoluut niet | Absoluut wel] 	Stel je voor: in het komende halfjaar is iemand tijdens het uitgaan met je aan het flirten en hij/zij gaat daarbij over jouw grenzen.	Als ik dat dan achteraf tegen mijn vrienden/vriendinnen zeg ..."
data[, 180] <- factor(data[, 180], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[180] <- "sibdAttExpect_accusation"
# LimeSurvey Field type: F
data[, 181] <- as.numeric(data[, 181])
attributes(data)$variable.labels[181] <- "[... dan vinden ze dat het ...Niet mijn eigen schuld is | Wel mijn eigen schuld is] 	Stel je voor: in het komende halfjaar is iemand tijdens het uitgaan met je aan het flirten en hij/zij gaat daarbij over jouw grenzen.	Als ik dat dan achteraf tegen mijn vrienden/vriendinnen zeg ..."
data[, 181] <- factor(data[, 181], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[181] <- "sibdAttExpect_victimBlaming"
# LimeSurvey Field type: F
data[, 182] <- as.numeric(data[, 182])
attributes(data)$variable.labels[182] <- "[... dan zou ik me ...Helemaal niet schamen | Heel erg schamen] 	Stel je voor: in het komende halfjaar is iemand tijdens het uitgaan met je aan het flirten en hij/zij gaat daarbij over jouw grenzen.	Als ik dat dan achteraf tegen mijn vrienden/vriendinnen zeg ..."
data[, 182] <- factor(data[, 182], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[182] <- "sibdAttExpect_shame"
# LimeSurvey Field type: F
data[, 183] <- as.numeric(data[, 183])
attributes(data)$variable.labels[183] <- "[... dan maak ik de sfeer daarmee ...Veel slechter | Veel beter] 	Stel je voor: in het komende halfjaar is iemand tijdens het uitgaan met je aan het flirten en hij/zij gaat daarbij over jouw grenzen.	Als ik dat dan achteraf tegen mijn vrienden/vriendinnen zeg ..."
data[, 183] <- factor(data[, 183], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[183] <- "sibdAttExpect_atmosphere"
# LimeSurvey Field type: F
data[, 184] <- as.numeric(data[, 184])
attributes(data)$variable.labels[184] <- "[... dan denken ze dat ik preuts ben.Absoluut niet | Absoluut wel] 	Stel je voor: in het komende halfjaar is iemand tijdens het uitgaan met je aan het flirten en hij/zij gaat daarbij over jouw grenzen.	Als ik dat dan achteraf tegen mijn vrienden/vriendinnen zeg ..."
data[, 184] <- factor(data[, 184], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[184] <- "sibdAttExpect_prude"
# LimeSurvey Field type: F
data[, 185] <- as.numeric(data[, 185])
attributes(data)$variable.labels[185] <- "[... dan voel ik me daarna ...Veel onveiliger | Veel veiliger] 	Stel je voor: in het komende halfjaar is iemand tijdens het uitgaan met je aan het flirten en hij/zij gaat daarbij over jouw grenzen.	Als ik dat dan achteraf tegen mijn vrienden/vriendinnen zeg ..."
data[, 185] <- factor(data[, 185], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[185] <- "sibdAttExpect_safe"
# LimeSurvey Field type: F
data[, 186] <- as.numeric(data[, 186])
attributes(data)$variable.labels[186] <- "[... dan letten mijn vrienden daarna ...Veel minder goed op mij | Veel beter op mij] 	Stel je voor: in het komende halfjaar is iemand tijdens het uitgaan met je aan het flirten en hij/zij gaat daarbij over jouw grenzen.	Als ik dat dan achteraf tegen mijn vrienden/vriendinnen zeg ..."
data[, 186] <- factor(data[, 186], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[186] <- "sibdAttExpect_socialControl"
# LimeSurvey Field type: F
data[, 187] <- as.numeric(data[, 187])
attributes(data)$variable.labels[187] <- "[... hij/zij wordt boos, dan vind ik dat ...Heel erg | Heel fijn] 	Hoe erg of juist prettig vind jij deze dingen?	Stel je voor: in het komende halfjaar is iemand tijdens het uitgaan met je aan het flirten en hij/zij gaat daarbij over jouw grenzen.Als ik dat dan tegen hem/haar zeg, en..."
data[, 187] <- factor(data[, 187], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[187] <- "sibeAttValue_angryReaction"
# LimeSurvey Field type: F
data[, 188] <- as.numeric(data[, 188])
attributes(data)$variable.labels[188] <- "[... hij/zij neemt mij niet serieus, dan vind ik dat ...Heel erg | Heel fijn] 	Hoe erg of juist prettig vind jij deze dingen?	Stel je voor: in het komende halfjaar is iemand tijdens het uitgaan met je aan het flirten en hij/zij gaat daarbij over jouw grenzen.Als ik dat dan tegen hem/haar zeg, en..."
data[, 188] <- factor(data[, 188], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[188] <- "sibeAttValue_takenSeriously"
# LimeSurvey Field type: F
data[, 189] <- as.numeric(data[, 189])
attributes(data)$variable.labels[189] <- "[... ik daarmee de sfeer verpest, dan vind ik dat ...Heel erg | Heel fijn] 	Hoe erg of juist prettig vind jij deze dingen?	Stel je voor: in het komende halfjaar is iemand tijdens het uitgaan met je aan het flirten en hij/zij gaat daarbij over jouw grenzen.Als ik dat dan tegen hem/haar zeg, en..."
data[, 189] <- factor(data[, 189], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[189] <- "sibeAttValue_atmosphere"
# LimeSurvey Field type: F
data[, 190] <- as.numeric(data[, 190])
attributes(data)$variable.labels[190] <- "[... ik zou me schamen, dan vind ik dat ...Heel erg | Heel fijn] 	Hoe erg of juist prettig vind jij deze dingen?	Stel je voor: in het komende halfjaar is iemand tijdens het uitgaan met je aan het flirten en hij/zij gaat daarbij over jouw grenzen.Als ik dat dan tegen hem/haar zeg, en..."
data[, 190] <- factor(data[, 190], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[190] <- "sibeAttValue_shame"
# LimeSurvey Field type: F
data[, 191] <- as.numeric(data[, 191])
attributes(data)$variable.labels[191] <- "[... anderen daardoor denken dat ik preuts ben, dan vind ik dat ...Heel erg | Heel fijn] 	Hoe erg of juist prettig vind jij deze dingen?	Stel je voor: in het komende halfjaar is iemand tijdens het uitgaan met je aan het flirten en hij/zij gaat daarbij over jouw grenzen.Als ik dat dan tegen hem/haar zeg, en..."
data[, 191] <- factor(data[, 191], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[191] <- "sibeAttValue_prude"
# LimeSurvey Field type: F
data[, 192] <- as.numeric(data[, 192])
attributes(data)$variable.labels[192] <- "[... ik daardoor hem/haar niet in zijn/haar waarde laat, dan vind ik dat ...Heel erg | Heel fijn] 	Hoe erg of juist prettig vind jij deze dingen?	Stel je voor: in het komende halfjaar is iemand tijdens het uitgaan met je aan het flirten en hij/zij gaat daarbij over jouw grenzen.Als ik dat dan tegen hem/haar zeg, en..."
data[, 192] <- factor(data[, 192], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[192] <- "sibeAttValue_respectOther"
# LimeSurvey Field type: F
data[, 193] <- as.numeric(data[, 193])
attributes(data)$variable.labels[193] <- "[... hij/zij houdt daardoor op, dan vind ik dat ...Heel erg | Heel fijn] 	Hoe erg of juist prettig vind jij deze dingen?	Stel je voor: in het komende halfjaar is iemand tijdens het uitgaan met je aan het flirten en hij/zij gaat daarbij over jouw grenzen.Als ik dat dan tegen hem/haar zeg, en..."
data[, 193] <- factor(data[, 193], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[193] <- "sibeAttValue_responseEfficacy"
# LimeSurvey Field type: F
data[, 194] <- as.numeric(data[, 194])
attributes(data)$variable.labels[194] <- "[... hij/zij respecteert mij daardoor, dan vind ik dat ...Heel erg | Heel fijn] 	Hoe erg of juist prettig vind jij deze dingen?	Stel je voor: in het komende halfjaar is iemand tijdens het uitgaan met je aan het flirten en hij/zij gaat daarbij over jouw grenzen.Als ik dat dan tegen hem/haar zeg, en..."
data[, 194] <- factor(data[, 194], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[194] <- "sibeAttValue_respect"
# LimeSurvey Field type: F
data[, 195] <- as.numeric(data[, 195])
attributes(data)$variable.labels[195] <- "[... ik voel me daardoor opgelucht, dan vind ik dat ...Heel erg | Heel fijn] 	Hoe erg of juist prettig vind jij deze dingen?	Stel je voor: in het komende halfjaar is iemand tijdens het uitgaan met je aan het flirten en hij/zij gaat daarbij over jouw grenzen.Als ik dat dan tegen hem/haar zeg, en..."
data[, 195] <- factor(data[, 195], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[195] <- "sibeAttValue_relief"
# LimeSurvey Field type: F
data[, 196] <- as.numeric(data[, 196])
attributes(data)$variable.labels[196] <- "[... hij/zij neemt mij niet serieus, dan vind ik dat ...Heel erg | Heel fijn] 	Hoe erg of juist prettig vind jij deze dingen?	Stel je voor: in het komende halfjaar is een vriend of vriendin van jou tijdens het uitgaan met iemand aan het flirten. Je hebt de indruk dat hij/zij hierbij over de grenzen van de ander gaat.Als ik mijn vriend(in) daar dan op aanspreek, en ..."
data[, 196] <- factor(data[, 196], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[196] <- "sibaAttValue_takenSeriously"
# LimeSurvey Field type: F
data[, 197] <- as.numeric(data[, 197])
attributes(data)$variable.labels[197] <- "[... hij/zij schrikt daarvan, dan vind ik dat ...Heel erg | Heel fijn] 	Hoe erg of juist prettig vind jij deze dingen?	Stel je voor: in het komende halfjaar is een vriend of vriendin van jou tijdens het uitgaan met iemand aan het flirten. Je hebt de indruk dat hij/zij hierbij over de grenzen van de ander gaat.Als ik mijn vriend(in) daar dan op aanspreek, en ..."
data[, 197] <- factor(data[, 197], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[197] <- "sibaAttValue_rattlesPerson"
# LimeSurvey Field type: F
data[, 198] <- as.numeric(data[, 198])
attributes(data)$variable.labels[198] <- "[... hij/zij wordt boos, dan vind ik dat ...Heel erg | Heel fijn] 	Hoe erg of juist prettig vind jij deze dingen?	Stel je voor: in het komende halfjaar is een vriend of vriendin van jou tijdens het uitgaan met iemand aan het flirten. Je hebt de indruk dat hij/zij hierbij over de grenzen van de ander gaat.Als ik mijn vriend(in) daar dan op aanspreek, en ..."
data[, 198] <- factor(data[, 198], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[198] <- "sibaAttValue_angryReaction"
# LimeSurvey Field type: F
data[, 199] <- as.numeric(data[, 199])
attributes(data)$variable.labels[199] <- "[... ik me daardoor met andermans zaken bemoei, dan vind ik dat ...Heel erg | Heel fijn] 	Hoe erg of juist prettig vind jij deze dingen?	Stel je voor: in het komende halfjaar is een vriend of vriendin van jou tijdens het uitgaan met iemand aan het flirten. Je hebt de indruk dat hij/zij hierbij over de grenzen van de ander gaat.Als ik mijn vriend(in) daar dan op aanspreek, en ..."
data[, 199] <- factor(data[, 199], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[199] <- "sibaAttValue_nosy"
# LimeSurvey Field type: F
data[, 200] <- as.numeric(data[, 200])
attributes(data)$variable.labels[200] <- "[... ik daarmee de sfeer verpest, dan vind ik dat ...Heel erg | Heel fijn] 	Hoe erg of juist prettig vind jij deze dingen?	Stel je voor: in het komende halfjaar is een vriend of vriendin van jou tijdens het uitgaan met iemand aan het flirten. Je hebt de indruk dat hij/zij hierbij over de grenzen van de ander gaat.Als ik mijn vriend(in) daar dan op aanspreek, en ..."
data[, 200] <- factor(data[, 200], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[200] <- "sibaAttValue_atmosphere"
# LimeSurvey Field type: F
data[, 201] <- as.numeric(data[, 201])
attributes(data)$variable.labels[201] <- "[... ik daarmee een grappige situatie verpest, dan vind ik dat ...Heel erg | Heel fijn] 	Hoe erg of juist prettig vind jij deze dingen?	Stel je voor: in het komende halfjaar is een vriend of vriendin van jou tijdens het uitgaan met iemand aan het flirten. Je hebt de indruk dat hij/zij hierbij over de grenzen van de ander gaat.Als ik mijn vriend(in) daar dan op aanspreek, en ..."
data[, 201] <- factor(data[, 201], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[201] <- "sibaAttValue_ruinFunnySituation"
# LimeSurvey Field type: F
data[, 202] <- as.numeric(data[, 202])
attributes(data)$variable.labels[202] <- "[... anderen daardoor denken dat ik preuts ben, dan vind ik dat ...Heel erg | Heel fijn] 	Hoe erg of juist prettig vind jij deze dingen?	Stel je voor: in het komende halfjaar is een vriend of vriendin van jou tijdens het uitgaan met iemand aan het flirten. Je hebt de indruk dat hij/zij hierbij over de grenzen van de ander gaat.Als ik mijn vriend(in) daar dan op aanspreek, en ..."
data[, 202] <- factor(data[, 202], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[202] <- "sibaAttValue_prude"
# LimeSurvey Field type: F
data[, 203] <- as.numeric(data[, 203])
attributes(data)$variable.labels[203] <- "[... ik daardoor mijn vriend(in) niet in zijn/haar waarde laat, dan vind ik dat ...Heel erg | Heel fijn] 	Hoe erg of juist prettig vind jij deze dingen?	Stel je voor: in het komende halfjaar is een vriend of vriendin van jou tijdens het uitgaan met iemand aan het flirten. Je hebt de indruk dat hij/zij hierbij over de grenzen van de ander gaat.Als ik mijn vriend(in) daar dan op aanspreek, en ..."
data[, 203] <- factor(data[, 203], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[203] <- "sibaAttValue_respectFriend"
# LimeSurvey Field type: F
data[, 204] <- as.numeric(data[, 204])
attributes(data)$variable.labels[204] <- "[... ik daardoor die ander niet in zijn/haar waarde laat, dan vind ik dat ...Heel erg | Heel fijn] 	Hoe erg of juist prettig vind jij deze dingen?	Stel je voor: in het komende halfjaar is een vriend of vriendin van jou tijdens het uitgaan met iemand aan het flirten. Je hebt de indruk dat hij/zij hierbij over de grenzen van de ander gaat.Als ik mijn vriend(in) daar dan op aanspreek, en ..."
data[, 204] <- factor(data[, 204], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[204] <- "sibaAttValue_respectOther"
# LimeSurvey Field type: F
data[, 205] <- as.numeric(data[, 205])
attributes(data)$variable.labels[205] <- "[... hij/zij houdt er daardoor mee op, dan vind ik dat ...Heel erg | Heel fijn] 	Hoe erg of juist prettig vind jij deze dingen?	Stel je voor: in het komende halfjaar is een vriend of vriendin van jou tijdens het uitgaan met iemand aan het flirten. Je hebt de indruk dat hij/zij hierbij over de grenzen van de ander gaat.Als ik mijn vriend(in) daar dan op aanspreek, en ..."
data[, 205] <- factor(data[, 205], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[205] <- "sibaAttValue_responseEfficacy"
# LimeSurvey Field type: F
data[, 206] <- as.numeric(data[, 206])
attributes(data)$variable.labels[206] <- "[... hij/zij reageert positief, dan vind ik dat ...Heel erg | Heel fijn] 	Hoe erg of juist prettig vind jij deze dingen?	Stel je voor: in het komende halfjaar is een vriend of vriendin van jou tijdens het uitgaan met iemand aan het flirten. Je hebt de indruk dat hij/zij hierbij over de grenzen van de ander gaat.Als ik mijn vriend(in) daar dan op aanspreek, en ..."
data[, 206] <- factor(data[, 206], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[206] <- "sibaAttValue_positiveReaction"
# LimeSurvey Field type: F
data[, 207] <- as.numeric(data[, 207])
attributes(data)$variable.labels[207] <- "[... hij/zij gedraagt zich dan voortaan anders, dan vind ik dat ...Heel erg | Heel fijn] 	Hoe erg of juist prettig vind jij deze dingen?	Stel je voor: in het komende halfjaar is een vriend of vriendin van jou tijdens het uitgaan met iemand aan het flirten. Je hebt de indruk dat hij/zij hierbij over de grenzen van de ander gaat.Als ik mijn vriend(in) daar dan op aanspreek, en ..."
data[, 207] <- factor(data[, 207], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[207] <- "sibaAttValue_lastingChange"
# LimeSurvey Field type: F
data[, 208] <- as.numeric(data[, 208])
attributes(data)$variable.labels[208] <- "[... ik voel me daarna beter, dan vind ik dat ...Heel erg | Heel fijn] 	Hoe erg of juist prettig vind jij deze dingen?	Stel je voor: in het komende halfjaar is iemand tijdens het uitgaan met je aan het flirten en hij/zij gaat daarbij over jouw grenzen.Als ik dat dan daarna tegen mijn vrienden/vriendinnen zeg, en ..."
data[, 208] <- factor(data[, 208], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[208] <- "sibdAttValue_feelBetter"
# LimeSurvey Field type: F
data[, 209] <- as.numeric(data[, 209])
attributes(data)$variable.labels[209] <- "[... ik voel me daarna opgelucht, dan vind ik dat ...Heel erg | Heel fijn] 	Hoe erg of juist prettig vind jij deze dingen?	Stel je voor: in het komende halfjaar is iemand tijdens het uitgaan met je aan het flirten en hij/zij gaat daarbij over jouw grenzen.Als ik dat dan daarna tegen mijn vrienden/vriendinnen zeg, en ..."
data[, 209] <- factor(data[, 209], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[209] <- "sibdAttValue_relief"
# LimeSurvey Field type: F
data[, 210] <- as.numeric(data[, 210])
attributes(data)$variable.labels[210] <- "[... mijn vrienden/vriendinnen steunen mij, dan vind ik dat ...Heel erg | Heel fijn] 	Hoe erg of juist prettig vind jij deze dingen?	Stel je voor: in het komende halfjaar is iemand tijdens het uitgaan met je aan het flirten en hij/zij gaat daarbij over jouw grenzen.Als ik dat dan daarna tegen mijn vrienden/vriendinnen zeg, en ..."
data[, 210] <- factor(data[, 210], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[210] <- "sibdAttValue_support"
# LimeSurvey Field type: F
data[, 211] <- as.numeric(data[, 211])
attributes(data)$variable.labels[211] <- "[... zij nemen mij niet serieus, dan vind ik dat ...Heel erg | Heel fijn] 	Hoe erg of juist prettig vind jij deze dingen?	Stel je voor: in het komende halfjaar is iemand tijdens het uitgaan met je aan het flirten en hij/zij gaat daarbij over jouw grenzen.Als ik dat dan daarna tegen mijn vrienden/vriendinnen zeg, en ..."
data[, 211] <- factor(data[, 211], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[211] <- "sibdAttValue_takenSeriously"
# LimeSurvey Field type: F
data[, 212] <- as.numeric(data[, 212])
attributes(data)$variable.labels[212] <- "[... zij vinden dat ik mij aanstel, dan vind ik dat ...Heel erg | Heel fijn] 	Hoe erg of juist prettig vind jij deze dingen?	Stel je voor: in het komende halfjaar is iemand tijdens het uitgaan met je aan het flirten en hij/zij gaat daarbij over jouw grenzen.Als ik dat dan daarna tegen mijn vrienden/vriendinnen zeg, en ..."
data[, 212] <- factor(data[, 212], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[212] <- "sibdAttValue_whining"
# LimeSurvey Field type: F
data[, 213] <- as.numeric(data[, 213])
attributes(data)$variable.labels[213] <- "[... zij geloven me niet, dan vind ik dat ...Heel erg | Heel fijn] 	Hoe erg of juist prettig vind jij deze dingen?	Stel je voor: in het komende halfjaar is iemand tijdens het uitgaan met je aan het flirten en hij/zij gaat daarbij over jouw grenzen.Als ik dat dan daarna tegen mijn vrienden/vriendinnen zeg, en ..."
data[, 213] <- factor(data[, 213], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[213] <- "sibdAttValue_believeMe"
# LimeSurvey Field type: F
data[, 214] <- as.numeric(data[, 214])
attributes(data)$variable.labels[214] <- "[... mijn vrienden/vriendinnen zeggen dat ik daar te laat mee ben, dan vind ik dat ...Heel erg | Heel fijn] 	Hoe erg of juist prettig vind jij deze dingen?	Stel je voor: in het komende halfjaar is iemand tijdens het uitgaan met je aan het flirten en hij/zij gaat daarbij over jouw grenzen.Als ik dat dan daarna tegen mijn vrienden/vriendinnen zeg, en ..."
data[, 214] <- factor(data[, 214], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[214] <- "sibdAttValue_tooLate"
# LimeSurvey Field type: F
data[, 215] <- as.numeric(data[, 215])
attributes(data)$variable.labels[215] <- "[... ik maak daarmee iemand onterecht zwart, dan vind ik dat ...Heel erg | Heel fijn] 	Hoe erg of juist prettig vind jij deze dingen?	Stel je voor: in het komende halfjaar is iemand tijdens het uitgaan met je aan het flirten en hij/zij gaat daarbij over jouw grenzen.Als ik dat dan daarna tegen mijn vrienden/vriendinnen zeg, en ..."
data[, 215] <- factor(data[, 215], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[215] <- "sibdAttValue_accusation"
# LimeSurvey Field type: F
data[, 216] <- as.numeric(data[, 216])
attributes(data)$variable.labels[216] <- "[... zij vinden dat het mijn eigen schuld is, dan vind ik dat ...Heel erg | Heel fijn] 	Hoe erg of juist prettig vind jij deze dingen?	Stel je voor: in het komende halfjaar is iemand tijdens het uitgaan met je aan het flirten en hij/zij gaat daarbij over jouw grenzen.Als ik dat dan daarna tegen mijn vrienden/vriendinnen zeg, en ..."
data[, 216] <- factor(data[, 216], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[216] <- "sibdAttValue_victimBlaming"
# LimeSurvey Field type: F
data[, 217] <- as.numeric(data[, 217])
attributes(data)$variable.labels[217] <- "[... ik zou me schamen, dan vind ik dat ...Heel erg | Heel fijn] 	Hoe erg of juist prettig vind jij deze dingen?	Stel je voor: in het komende halfjaar is iemand tijdens het uitgaan met je aan het flirten en hij/zij gaat daarbij over jouw grenzen.Als ik dat dan daarna tegen mijn vrienden/vriendinnen zeg, en ..."
data[, 217] <- factor(data[, 217], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[217] <- "sibdAttValue_shame"
# LimeSurvey Field type: F
data[, 218] <- as.numeric(data[, 218])
attributes(data)$variable.labels[218] <- "[... ik daarmee de sfeer verpest, dan vind ik dat ...Heel erg | Heel fijn] 	Hoe erg of juist prettig vind jij deze dingen?	Stel je voor: in het komende halfjaar is iemand tijdens het uitgaan met je aan het flirten en hij/zij gaat daarbij over jouw grenzen.Als ik dat dan daarna tegen mijn vrienden/vriendinnen zeg, en ..."
data[, 218] <- factor(data[, 218], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[218] <- "sibdAttValue_atmosphere"
# LimeSurvey Field type: F
data[, 219] <- as.numeric(data[, 219])
attributes(data)$variable.labels[219] <- "[... ze daardoor denken dat ik preuts ben, dan vind ik dat ...Heel erg | Heel fijn] 	Hoe erg of juist prettig vind jij deze dingen?	Stel je voor: in het komende halfjaar is iemand tijdens het uitgaan met je aan het flirten en hij/zij gaat daarbij over jouw grenzen.Als ik dat dan daarna tegen mijn vrienden/vriendinnen zeg, en ..."
data[, 219] <- factor(data[, 219], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[219] <- "sibdAttValue_prude"
# LimeSurvey Field type: F
data[, 220] <- as.numeric(data[, 220])
attributes(data)$variable.labels[220] <- "[... ik me daardoor veiliger voel, dan vind ik dat ...Heel erg | Heel fijn] 	Hoe erg of juist prettig vind jij deze dingen?	Stel je voor: in het komende halfjaar is iemand tijdens het uitgaan met je aan het flirten en hij/zij gaat daarbij over jouw grenzen.Als ik dat dan daarna tegen mijn vrienden/vriendinnen zeg, en ..."
data[, 220] <- factor(data[, 220], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[220] <- "sibdAttValue_safe"
# LimeSurvey Field type: F
data[, 221] <- as.numeric(data[, 221])
attributes(data)$variable.labels[221] <- "[... mijn vrienden/vriendinnen daarna beter op me letten, dan vind ik dat ...Heel erg | Heel fijn] 	Hoe erg of juist prettig vind jij deze dingen?	Stel je voor: in het komende halfjaar is iemand tijdens het uitgaan met je aan het flirten en hij/zij gaat daarbij over jouw grenzen.Als ik dat dan daarna tegen mijn vrienden/vriendinnen zeg, en ..."
data[, 221] <- factor(data[, 221], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[221] <- "sibdAttValue_socialControl"
# LimeSurvey Field type: F
data[, 222] <- as.numeric(data[, 222])
attributes(data)$variable.labels[222] <- "[Mijn partner (vriend of vriendin)Heel afkeurend|Heel goedkeurend] 	Dit gaat weer over een situatie (in de komende zes maanden tijdens het uitgaan) waarin iemand met jou flirt en over jouw grenzen gaat.	Wat denk je dat deze mensen er van vinden als jij dan tegen die persoon zegt dat hij/zij over jouw grenzen is gegaan?"
data[, 222] <- factor(data[, 222], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[222] <- "sibeNrmInjunct_partner"
# LimeSurvey Field type: F
data[, 223] <- as.numeric(data[, 223])
attributes(data)$variable.labels[223] <- "[Mijn beste vrienden/vriendinnenHeel afkeurend|Heel goedkeurend] 	Dit gaat weer over een situatie (in de komende zes maanden tijdens het uitgaan) waarin iemand met jou flirt en over jouw grenzen gaat.	Wat denk je dat deze mensen er van vinden als jij dan tegen die persoon zegt dat hij/zij over jouw grenzen is gegaan?"
data[, 223] <- factor(data[, 223], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[223] <- "sibeNrmInjunct_bestFriends"
# LimeSurvey Field type: F
data[, 224] <- as.numeric(data[, 224])
attributes(data)$variable.labels[224] <- "[Mijn andere vriendenHeel afkeurend|Heel goedkeurend] 	Dit gaat weer over een situatie (in de komende zes maanden tijdens het uitgaan) waarin iemand met jou flirt en over jouw grenzen gaat.	Wat denk je dat deze mensen er van vinden als jij dan tegen die persoon zegt dat hij/zij over jouw grenzen is gegaan?"
data[, 224] <- factor(data[, 224], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[224] <- "sibeNrmInjunct_otherFriends"
# LimeSurvey Field type: F
data[, 225] <- as.numeric(data[, 225])
attributes(data)$variable.labels[225] <- "[De meeste mensen op een feestHeel afkeurend|Heel goedkeurend] 	Dit gaat weer over een situatie (in de komende zes maanden tijdens het uitgaan) waarin iemand met jou flirt en over jouw grenzen gaat.	Wat denk je dat deze mensen er van vinden als jij dan tegen die persoon zegt dat hij/zij over jouw grenzen is gegaan?"
data[, 225] <- factor(data[, 225], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[225] <- "sibeNrmInjunct_partyPeople"
# LimeSurvey Field type: F
data[, 226] <- as.numeric(data[, 226])
attributes(data)$variable.labels[226] <- "[Mijn ouders/verzorgersHeel afkeurend|Heel goedkeurend] 	Dit gaat weer over een situatie (in de komende zes maanden tijdens het uitgaan) waarin iemand met jou flirt en over jouw grenzen gaat.	Wat denk je dat deze mensen er van vinden als jij dan tegen die persoon zegt dat hij/zij over jouw grenzen is gegaan?"
data[, 226] <- factor(data[, 226], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[226] <- "sibeNrmInjunct_parents"
# LimeSurvey Field type: F
data[, 227] <- as.numeric(data[, 227])
attributes(data)$variable.labels[227] <- "[Mijn broers/zussenHeel afkeurend|Heel goedkeurend] 	Dit gaat weer over een situatie (in de komende zes maanden tijdens het uitgaan) waarin iemand met jou flirt en over jouw grenzen gaat.	Wat denk je dat deze mensen er van vinden als jij dan tegen die persoon zegt dat hij/zij over jouw grenzen is gegaan?"
data[, 227] <- factor(data[, 227], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[227] <- "sibeNrmInjunct_siblings"
# LimeSurvey Field type: F
data[, 228] <- as.numeric(data[, 228])
attributes(data)$variable.labels[228] <- "[Mijn partner (vriend of vriendin)Heel afkeurend|Heel goedkeurend] 	Dit gaat weer over een situatie (in de komende zes maanden tijdens het uitgaan) waarin een vriend of vriendin van jou met iemand flirt, en je de indruk hebt dat hij/zij over de grenzen van de ander gaat.	Wat denk je dat deze mensen er van vinden als jij dan je vriend(in) hierop aanspreekt?"
data[, 228] <- factor(data[, 228], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[228] <- "sibaNrmInjunct_partner"
# LimeSurvey Field type: F
data[, 229] <- as.numeric(data[, 229])
attributes(data)$variable.labels[229] <- "[Mijn beste vrienden/vriendinnenHeel afkeurend|Heel goedkeurend] 	Dit gaat weer over een situatie (in de komende zes maanden tijdens het uitgaan) waarin een vriend of vriendin van jou met iemand flirt, en je de indruk hebt dat hij/zij over de grenzen van de ander gaat.	Wat denk je dat deze mensen er van vinden als jij dan je vriend(in) hierop aanspreekt?"
data[, 229] <- factor(data[, 229], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[229] <- "sibaNrmInjunct_bestFriends"
# LimeSurvey Field type: F
data[, 230] <- as.numeric(data[, 230])
attributes(data)$variable.labels[230] <- "[Mijn andere vriendenHeel afkeurend|Heel goedkeurend] 	Dit gaat weer over een situatie (in de komende zes maanden tijdens het uitgaan) waarin een vriend of vriendin van jou met iemand flirt, en je de indruk hebt dat hij/zij over de grenzen van de ander gaat.	Wat denk je dat deze mensen er van vinden als jij dan je vriend(in) hierop aanspreekt?"
data[, 230] <- factor(data[, 230], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[230] <- "sibaNrmInjunct_otherFriends"
# LimeSurvey Field type: F
data[, 231] <- as.numeric(data[, 231])
attributes(data)$variable.labels[231] <- "[De meeste mensen op een feestHeel afkeurend|Heel goedkeurend] 	Dit gaat weer over een situatie (in de komende zes maanden tijdens het uitgaan) waarin een vriend of vriendin van jou met iemand flirt, en je de indruk hebt dat hij/zij over de grenzen van de ander gaat.	Wat denk je dat deze mensen er van vinden als jij dan je vriend(in) hierop aanspreekt?"
data[, 231] <- factor(data[, 231], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[231] <- "sibaNrmInjunct_partyPeople"
# LimeSurvey Field type: F
data[, 232] <- as.numeric(data[, 232])
attributes(data)$variable.labels[232] <- "[Mijn ouders/verzorgersHeel afkeurend|Heel goedkeurend] 	Dit gaat weer over een situatie (in de komende zes maanden tijdens het uitgaan) waarin een vriend of vriendin van jou met iemand flirt, en je de indruk hebt dat hij/zij over de grenzen van de ander gaat.	Wat denk je dat deze mensen er van vinden als jij dan je vriend(in) hierop aanspreekt?"
data[, 232] <- factor(data[, 232], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[232] <- "sibaNrmInjunct_parents"
# LimeSurvey Field type: F
data[, 233] <- as.numeric(data[, 233])
attributes(data)$variable.labels[233] <- "[Mijn broers/zussenHeel afkeurend|Heel goedkeurend] 	Dit gaat weer over een situatie (in de komende zes maanden tijdens het uitgaan) waarin een vriend of vriendin van jou met iemand flirt, en je de indruk hebt dat hij/zij over de grenzen van de ander gaat.	Wat denk je dat deze mensen er van vinden als jij dan je vriend(in) hierop aanspreekt?"
data[, 233] <- factor(data[, 233], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[233] <- "sibaNrmInjunct_siblings"
# LimeSurvey Field type: F
data[, 234] <- as.numeric(data[, 234])
attributes(data)$variable.labels[234] <- "[Mijn partner (vriend of vriendin)Heel afkeurend|Heel goedkeurend] Dit gaat weer over een situatie (in de komende zes maanden tijdens het uitgaan) waarin iemand met jou flirt en over jouw grenzen gaat.	Wat denk je dat deze mensen er van vinden als jij dat achteraf tegen je vrienden/vriendinnen zegt?"
data[, 234] <- factor(data[, 234], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[234] <- "sibdNrmInjunct_partner"
# LimeSurvey Field type: F
data[, 235] <- as.numeric(data[, 235])
attributes(data)$variable.labels[235] <- "[Mijn beste vrienden/vriendinnenHeel afkeurend|Heel goedkeurend] Dit gaat weer over een situatie (in de komende zes maanden tijdens het uitgaan) waarin iemand met jou flirt en over jouw grenzen gaat.	Wat denk je dat deze mensen er van vinden als jij dat achteraf tegen je vrienden/vriendinnen zegt?"
data[, 235] <- factor(data[, 235], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[235] <- "sibdNrmInjunct_bestFriends"
# LimeSurvey Field type: F
data[, 236] <- as.numeric(data[, 236])
attributes(data)$variable.labels[236] <- "[Mijn andere vriendenHeel afkeurend|Heel goedkeurend] Dit gaat weer over een situatie (in de komende zes maanden tijdens het uitgaan) waarin iemand met jou flirt en over jouw grenzen gaat.	Wat denk je dat deze mensen er van vinden als jij dat achteraf tegen je vrienden/vriendinnen zegt?"
data[, 236] <- factor(data[, 236], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[236] <- "sibdNrmInjunct_otherFriends"
# LimeSurvey Field type: F
data[, 237] <- as.numeric(data[, 237])
attributes(data)$variable.labels[237] <- "[De meeste mensen op een feestHeel afkeurend|Heel goedkeurend] Dit gaat weer over een situatie (in de komende zes maanden tijdens het uitgaan) waarin iemand met jou flirt en over jouw grenzen gaat.	Wat denk je dat deze mensen er van vinden als jij dat achteraf tegen je vrienden/vriendinnen zegt?"
data[, 237] <- factor(data[, 237], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[237] <- "sibdNrmInjunct_partyPeople"
# LimeSurvey Field type: F
data[, 238] <- as.numeric(data[, 238])
attributes(data)$variable.labels[238] <- "[Mijn ouders/verzorgersHeel afkeurend|Heel goedkeurend] Dit gaat weer over een situatie (in de komende zes maanden tijdens het uitgaan) waarin iemand met jou flirt en over jouw grenzen gaat.	Wat denk je dat deze mensen er van vinden als jij dat achteraf tegen je vrienden/vriendinnen zegt?"
data[, 238] <- factor(data[, 238], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[238] <- "sibdNrmInjunct_parents"
# LimeSurvey Field type: F
data[, 239] <- as.numeric(data[, 239])
attributes(data)$variable.labels[239] <- "[Mijn broers/zussenHeel afkeurend|Heel goedkeurend] Dit gaat weer over een situatie (in de komende zes maanden tijdens het uitgaan) waarin iemand met jou flirt en over jouw grenzen gaat.	Wat denk je dat deze mensen er van vinden als jij dat achteraf tegen je vrienden/vriendinnen zegt?"
data[, 239] <- factor(data[, 239], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[239] <- "sibdNrmInjunct_siblings"
# LimeSurvey Field type: F
data[, 240] <- as.numeric(data[, 240])
attributes(data)$variable.labels[240] <- "[Mijn partner (vriendin of vriendin)Heel onbelangrijk|Heel belangrijk] En hoe belangrijk is hun mening voor jou, met betrekking tot iemand zeggen dat hij/zij over jouw grenzen is gegaan?"
data[, 240] <- factor(data[, 240], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[240] <- "sibeNrmMTC_partner"
# LimeSurvey Field type: F
data[, 241] <- as.numeric(data[, 241])
attributes(data)$variable.labels[241] <- "[Mijn beste vrienden/vriendinnenHeel onbelangrijk|Heel belangrijk] En hoe belangrijk is hun mening voor jou, met betrekking tot iemand zeggen dat hij/zij over jouw grenzen is gegaan?"
data[, 241] <- factor(data[, 241], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[241] <- "sibeNrmMTC_bestFriends"
# LimeSurvey Field type: F
data[, 242] <- as.numeric(data[, 242])
attributes(data)$variable.labels[242] <- "[Mijn andere vriendenHeel onbelangrijk|Heel belangrijk] En hoe belangrijk is hun mening voor jou, met betrekking tot iemand zeggen dat hij/zij over jouw grenzen is gegaan?"
data[, 242] <- factor(data[, 242], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[242] <- "sibeNrmMTC_otherFriends"
# LimeSurvey Field type: F
data[, 243] <- as.numeric(data[, 243])
attributes(data)$variable.labels[243] <- "[De meeste mensen op een feestHeel onbelangrijk|Heel belangrijk] En hoe belangrijk is hun mening voor jou, met betrekking tot iemand zeggen dat hij/zij over jouw grenzen is gegaan?"
data[, 243] <- factor(data[, 243], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[243] <- "sibeNrmMTC_partyPeople"
# LimeSurvey Field type: F
data[, 244] <- as.numeric(data[, 244])
attributes(data)$variable.labels[244] <- "[Mijn ouders/verzorgersHeel onbelangrijk|Heel belangrijk] En hoe belangrijk is hun mening voor jou, met betrekking tot iemand zeggen dat hij/zij over jouw grenzen is gegaan?"
data[, 244] <- factor(data[, 244], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[244] <- "sibeNrmMTC_parents"
# LimeSurvey Field type: F
data[, 245] <- as.numeric(data[, 245])
attributes(data)$variable.labels[245] <- "[Mijn broertjes/zusjesHeel onbelangrijk|Heel belangrijk] En hoe belangrijk is hun mening voor jou, met betrekking tot iemand zeggen dat hij/zij over jouw grenzen is gegaan?"
data[, 245] <- factor(data[, 245], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[245] <- "sibeNrmMTC_siblings"
# LimeSurvey Field type: F
data[, 246] <- as.numeric(data[, 246])
attributes(data)$variable.labels[246] <- "[Mijn partner (vriendin of vriendin)Heel onbelangrijk|Heel belangrijk] En hoe belangrijk is hun mening voor jou, met betrekking tot een vriend(in) zeggen dat hij/zij misschien andermans grenzen over is gegaan?"
data[, 246] <- factor(data[, 246], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[246] <- "sibaNrmMTC_partner"
# LimeSurvey Field type: F
data[, 247] <- as.numeric(data[, 247])
attributes(data)$variable.labels[247] <- "[Mijn beste vrienden/vriendinnenHeel onbelangrijk|Heel belangrijk] En hoe belangrijk is hun mening voor jou, met betrekking tot een vriend(in) zeggen dat hij/zij misschien andermans grenzen over is gegaan?"
data[, 247] <- factor(data[, 247], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[247] <- "sibaNrmMTC_bestFriends"
# LimeSurvey Field type: F
data[, 248] <- as.numeric(data[, 248])
attributes(data)$variable.labels[248] <- "[Mijn andere vriendenHeel onbelangrijk|Heel belangrijk] En hoe belangrijk is hun mening voor jou, met betrekking tot een vriend(in) zeggen dat hij/zij misschien andermans grenzen over is gegaan?"
data[, 248] <- factor(data[, 248], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[248] <- "sibaNrmMTC_otherFriends"
# LimeSurvey Field type: F
data[, 249] <- as.numeric(data[, 249])
attributes(data)$variable.labels[249] <- "[De meeste mensen op een feestHeel onbelangrijk|Heel belangrijk] En hoe belangrijk is hun mening voor jou, met betrekking tot een vriend(in) zeggen dat hij/zij misschien andermans grenzen over is gegaan?"
data[, 249] <- factor(data[, 249], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[249] <- "sibaNrmMTC_partyPeople"
# LimeSurvey Field type: F
data[, 250] <- as.numeric(data[, 250])
attributes(data)$variable.labels[250] <- "[Mijn ouders/verzorgersHeel onbelangrijk|Heel belangrijk] En hoe belangrijk is hun mening voor jou, met betrekking tot een vriend(in) zeggen dat hij/zij misschien andermans grenzen over is gegaan?"
data[, 250] <- factor(data[, 250], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[250] <- "sibaNrmMTC_parents"
# LimeSurvey Field type: F
data[, 251] <- as.numeric(data[, 251])
attributes(data)$variable.labels[251] <- "[Mijn broertjes/zusjesHeel onbelangrijk|Heel belangrijk] En hoe belangrijk is hun mening voor jou, met betrekking tot een vriend(in) zeggen dat hij/zij misschien andermans grenzen over is gegaan?"
data[, 251] <- factor(data[, 251], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[251] <- "sibaNrmMTC_siblings"
# LimeSurvey Field type: F
data[, 252] <- as.numeric(data[, 252])
attributes(data)$variable.labels[252] <- "[Mijn partner (vriendin of vriendin)Heel onbelangrijk|Heel belangrijk] En hoe belangrijk is hun mening voor jou, met betrekking tot het tegen je vrienden/vriendinnen zeggen dat iemand over jouw grenzen is gegaan?"
data[, 252] <- factor(data[, 252], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[252] <- "sibdNrmMTC_partner"
# LimeSurvey Field type: F
data[, 253] <- as.numeric(data[, 253])
attributes(data)$variable.labels[253] <- "[Mijn beste vrienden/vriendinnenHeel onbelangrijk|Heel belangrijk] En hoe belangrijk is hun mening voor jou, met betrekking tot het tegen je vrienden/vriendinnen zeggen dat iemand over jouw grenzen is gegaan?"
data[, 253] <- factor(data[, 253], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[253] <- "sibdNrmMTC_bestFriends"
# LimeSurvey Field type: F
data[, 254] <- as.numeric(data[, 254])
attributes(data)$variable.labels[254] <- "[Mijn andere vriendenHeel onbelangrijk|Heel belangrijk] En hoe belangrijk is hun mening voor jou, met betrekking tot het tegen je vrienden/vriendinnen zeggen dat iemand over jouw grenzen is gegaan?"
data[, 254] <- factor(data[, 254], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[254] <- "sibdNrmMTC_otherFriends"
# LimeSurvey Field type: F
data[, 255] <- as.numeric(data[, 255])
attributes(data)$variable.labels[255] <- "[De meeste mensen op een feestHeel onbelangrijk|Heel belangrijk] En hoe belangrijk is hun mening voor jou, met betrekking tot het tegen je vrienden/vriendinnen zeggen dat iemand over jouw grenzen is gegaan?"
data[, 255] <- factor(data[, 255], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[255] <- "sibdNrmMTC_partyPeople"
# LimeSurvey Field type: F
data[, 256] <- as.numeric(data[, 256])
attributes(data)$variable.labels[256] <- "[Mijn ouders/verzorgersHeel onbelangrijk|Heel belangrijk] En hoe belangrijk is hun mening voor jou, met betrekking tot het tegen je vrienden/vriendinnen zeggen dat iemand over jouw grenzen is gegaan?"
data[, 256] <- factor(data[, 256], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[256] <- "sibdNrmMTC_parents"
# LimeSurvey Field type: F
data[, 257] <- as.numeric(data[, 257])
attributes(data)$variable.labels[257] <- "[Mijn broertjes/zusjesHeel onbelangrijk|Heel belangrijk] En hoe belangrijk is hun mening voor jou, met betrekking tot het tegen je vrienden/vriendinnen zeggen dat iemand over jouw grenzen is gegaan?"
data[, 257] <- factor(data[, 257], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[257] <- "sibdNrmMTC_siblings"
# LimeSurvey Field type: F
data[, 258] <- as.numeric(data[, 258])
attributes(data)$variable.labels[258] <- "[Mijn partner (vriendin of vriendin) zou dat ...Nooit tegen hem/haar zeggen|Altijd tegen hem/haar zeggen] 	Wat doen deze mensen zelf, als ze uitgaan en iemand over hun grenzen gaat, denk je?"
data[, 258] <- factor(data[, 258], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[258] <- "sibeNrmDescr_partner"
# LimeSurvey Field type: F
data[, 259] <- as.numeric(data[, 259])
attributes(data)$variable.labels[259] <- "[Mijn beste vrienden/vriendinnen zouden dat ...Nooit tegen hem/haar zeggen|Altijd tegen hem/haar zeggen] 	Wat doen deze mensen zelf, als ze uitgaan en iemand over hun grenzen gaat, denk je?"
data[, 259] <- factor(data[, 259], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[259] <- "sibeNrmDescr_bestFriends"
# LimeSurvey Field type: F
data[, 260] <- as.numeric(data[, 260])
attributes(data)$variable.labels[260] <- "[Mijn andere vrienden/vriendinnen zouden dat ...Nooit tegen hem/haar zeggen|Altijd tegen hem/haar zeggen] 	Wat doen deze mensen zelf, als ze uitgaan en iemand over hun grenzen gaat, denk je?"
data[, 260] <- factor(data[, 260], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[260] <- "sibeNrmDescr_otherFriends"
# LimeSurvey Field type: F
data[, 261] <- as.numeric(data[, 261])
attributes(data)$variable.labels[261] <- "[De meeste mensen op een feest zouden dat ...Nooit tegen hem/haar zeggen|Altijd tegen hem/haar zeggen] 	Wat doen deze mensen zelf, als ze uitgaan en iemand over hun grenzen gaat, denk je?"
data[, 261] <- factor(data[, 261], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[261] <- "sibeNrmDescr_partyPeople"
# LimeSurvey Field type: F
data[, 262] <- as.numeric(data[, 262])
attributes(data)$variable.labels[262] <- "[Mijn ouders/verzorgers zouden dat ...Nooit tegen hem/haar zeggen|Altijd tegen hem/haar zeggen] 	Wat doen deze mensen zelf, als ze uitgaan en iemand over hun grenzen gaat, denk je?"
data[, 262] <- factor(data[, 262], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[262] <- "sibeNrmDescr_parents"
# LimeSurvey Field type: F
data[, 263] <- as.numeric(data[, 263])
attributes(data)$variable.labels[263] <- "[Mijn broers/zussen zouden dat ...Nooit tegen hem/haar zeggen|Altijd tegen hem/haar zeggen] 	Wat doen deze mensen zelf, als ze uitgaan en iemand over hun grenzen gaat, denk je?"
data[, 263] <- factor(data[, 263], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[263] <- "sibeNrmDescr_siblings"
# LimeSurvey Field type: F
data[, 264] <- as.numeric(data[, 264])
attributes(data)$variable.labels[264] <- "[Mijn partner (vriendin of vriendin) zou dat ...Nooit tegen die vriend(in) zeggen|Altijd tegen die vriend(in) zeggen] 	Wat doen deze mensen zelf, als ze uitgaan en de indruk hebben dat een van hun vrienden/vriendinnen over de grenzen van iemand anders gaat, denk je?"
data[, 264] <- factor(data[, 264], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[264] <- "sibaNrmDescr_partner"
# LimeSurvey Field type: F
data[, 265] <- as.numeric(data[, 265])
attributes(data)$variable.labels[265] <- "[Mijn beste vrienden/vriendinnen zouden dat ...Nooit tegen die vriend(in) zeggen|Altijd tegen die vriend(in) zeggen] 	Wat doen deze mensen zelf, als ze uitgaan en de indruk hebben dat een van hun vrienden/vriendinnen over de grenzen van iemand anders gaat, denk je?"
data[, 265] <- factor(data[, 265], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[265] <- "sibaNrmDescr_bestFriends"
# LimeSurvey Field type: F
data[, 266] <- as.numeric(data[, 266])
attributes(data)$variable.labels[266] <- "[Mijn andere vrienden/vriendinnen zouden dat ...Nooit tegen die vriend(in) zeggen|Altijd tegen die vriend(in) zeggen] 	Wat doen deze mensen zelf, als ze uitgaan en de indruk hebben dat een van hun vrienden/vriendinnen over de grenzen van iemand anders gaat, denk je?"
data[, 266] <- factor(data[, 266], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[266] <- "sibaNrmDescr_otherFriends"
# LimeSurvey Field type: F
data[, 267] <- as.numeric(data[, 267])
attributes(data)$variable.labels[267] <- "[De meeste mensen op een feest zouden dat ...Nooit tegen die vriend(in) zeggen|Altijd tegen die vriend(in) zeggen] 	Wat doen deze mensen zelf, als ze uitgaan en de indruk hebben dat een van hun vrienden/vriendinnen over de grenzen van iemand anders gaat, denk je?"
data[, 267] <- factor(data[, 267], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[267] <- "sibaNrmDescr_partyPeople"
# LimeSurvey Field type: F
data[, 268] <- as.numeric(data[, 268])
attributes(data)$variable.labels[268] <- "[Mijn ouders/verzorgers zouden dat ...Nooit tegen die vriend(in) zeggen|Altijd tegen die vriend(in) zeggen] 	Wat doen deze mensen zelf, als ze uitgaan en de indruk hebben dat een van hun vrienden/vriendinnen over de grenzen van iemand anders gaat, denk je?"
data[, 268] <- factor(data[, 268], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[268] <- "sibaNrmDescr_parents"
# LimeSurvey Field type: F
data[, 269] <- as.numeric(data[, 269])
attributes(data)$variable.labels[269] <- "[Mijn broers/zussen zouden dat ...Nooit tegen die vriend(in) zeggen|Altijd tegen die vriend(in) zeggen] 	Wat doen deze mensen zelf, als ze uitgaan en de indruk hebben dat een van hun vrienden/vriendinnen over de grenzen van iemand anders gaat, denk je?"
data[, 269] <- factor(data[, 269], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[269] <- "sibaNrmDescr_siblings"
# LimeSurvey Field type: F
data[, 270] <- as.numeric(data[, 270])
attributes(data)$variable.labels[270] <- "[Mijn partner (vriendin of vriendin) zou dat dan achteraf ...Nooit aan hun vriend(inn)en zeggen|Altijd aan hun vriend(inn)en zeggen] Wat doen deze mensen zelf, als ze uitgaan en iemand over hun grenzen gaat, denk je?"
data[, 270] <- factor(data[, 270], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[270] <- "sibdNrmDescr_partner"
# LimeSurvey Field type: F
data[, 271] <- as.numeric(data[, 271])
attributes(data)$variable.labels[271] <- "[Mijn beste vrienden/vriendinnen zouden dat dan achteraf ...Nooit aan hun vriend(inn)en zeggen|Altijd aan hun vriend(inn)en zeggen] Wat doen deze mensen zelf, als ze uitgaan en iemand over hun grenzen gaat, denk je?"
data[, 271] <- factor(data[, 271], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[271] <- "sibdNrmDescr_bestFriends"
# LimeSurvey Field type: F
data[, 272] <- as.numeric(data[, 272])
attributes(data)$variable.labels[272] <- "[Mijn andere vrienden/vriendinnen zouden dat dan achteraf ...Nooit aan hun vriend(inn)en zeggen|Altijd aan hun vriend(inn)en zeggen] Wat doen deze mensen zelf, als ze uitgaan en iemand over hun grenzen gaat, denk je?"
data[, 272] <- factor(data[, 272], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[272] <- "sibdNrmDescr_otherFriends"
# LimeSurvey Field type: F
data[, 273] <- as.numeric(data[, 273])
attributes(data)$variable.labels[273] <- "[De meeste mensen op een feest zouden dat dan achteraf ...Nooit aan hun vriend(inn)en zeggen|Altijd aan hun vriend(inn)en zeggen] Wat doen deze mensen zelf, als ze uitgaan en iemand over hun grenzen gaat, denk je?"
data[, 273] <- factor(data[, 273], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[273] <- "sibdNrmDescr_partyPeople"
# LimeSurvey Field type: F
data[, 274] <- as.numeric(data[, 274])
attributes(data)$variable.labels[274] <- "[Mijn ouders/verzorgers zouden dat dan achteraf ...Nooit aan hun vriend(inn)en zeggen|Altijd aan hun vriend(inn)en zeggen] Wat doen deze mensen zelf, als ze uitgaan en iemand over hun grenzen gaat, denk je?"
data[, 274] <- factor(data[, 274], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[274] <- "sibdNrmDescr_parents"
# LimeSurvey Field type: F
data[, 275] <- as.numeric(data[, 275])
attributes(data)$variable.labels[275] <- "[Mijn broers/zussen zouden dat dan achteraf ...Nooit aan hun vriend(inn)en zeggen|Altijd aan hun vriend(inn)en zeggen] Wat doen deze mensen zelf, als ze uitgaan en iemand over hun grenzen gaat, denk je?"
data[, 275] <- factor(data[, 275], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[275] <- "sibdNrmDescr_siblings"
# LimeSurvey Field type: F
data[, 276] <- as.numeric(data[, 276])
attributes(data)$variable.labels[276] <- "[Als ik dan wil zeggen dat hij/zij over mijn grenzen is gegaan, dan ...weet ik niet wat ik moet zeggen | weet ik goed wat ik moet zeggen] Deze vraag gaat weer over een situatie (in de komende zes maanden tijdens het uitgaan) waarin iemand met jou flirt en over jouw grenzen gaat."
data[, 276] <- factor(data[, 276], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[276] <- "sibePBCbeliefs_knowWhatToSay"
# LimeSurvey Field type: F
data[, 277] <- as.numeric(data[, 277])
attributes(data)$variable.labels[277] <- "[Als hij/zij over mijn grenzen gaat, dan is dat voor mij ...helemaal niet intimiderend | heel intimiderend] Deze vraag gaat weer over een situatie (in de komende zes maanden tijdens het uitgaan) waarin iemand met jou flirt en over jouw grenzen gaat."
data[, 277] <- factor(data[, 277], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[277] <- "sibePBCbeliefs_intimidates"
# LimeSurvey Field type: F
data[, 278] <- as.numeric(data[, 278])
attributes(data)$variable.labels[278] <- "[Als hij/zij mij intimideert, dan is tegen hem/haar zeggen dat hij/zij over mijn grenzen gaat voor mij ...heel moeilijk | heel makkelijk] Deze vraag gaat weer over een situatie (in de komende zes maanden tijdens het uitgaan) waarin iemand met jou flirt en over jouw grenzen gaat."
data[, 278] <- factor(data[, 278], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[278] <- "sibePBCbeliefs_intimidatationEffect"
# LimeSurvey Field type: F
data[, 279] <- as.numeric(data[, 279])
attributes(data)$variable.labels[279] <- "[Als iemand in het openbaar mijn grenzen over gaat, dan is dat tegen hem/haar zeggen voor mij ...heel moeilijk | heel makkelijk] Deze vraag gaat weer over een situatie (in de komende zes maanden tijdens het uitgaan) waarin iemand met jou flirt en over jouw grenzen gaat."
data[, 279] <- factor(data[, 279], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[279] <- "sibePBCbeliefs_public"
# LimeSurvey Field type: F
data[, 280] <- as.numeric(data[, 280])
attributes(data)$variable.labels[280] <- "[Als iemand mijn grenzen over gaat waar niemand het ziet, dan is dat tegen hem/haar zeggen voor mij ...heel moeilijk | heel makkelijk] Deze vraag gaat weer over een situatie (in de komende zes maanden tijdens het uitgaan) waarin iemand met jou flirt en over jouw grenzen gaat."
data[, 280] <- factor(data[, 280], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[280] <- "sibePBCbeliefs_private"
# LimeSurvey Field type: F
data[, 281] <- as.numeric(data[, 281])
attributes(data)$variable.labels[281] <- "[Als iemand mijn grenzen over gaat als mijn vrienden er bij zijn, dan is dat tegen hem/haar zeggen voor mij ...heel moeilijk | heel makkelijk] Deze vraag gaat weer over een situatie (in de komende zes maanden tijdens het uitgaan) waarin iemand met jou flirt en over jouw grenzen gaat."
data[, 281] <- factor(data[, 281], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[281] <- "sibePBCbeliefs_withFriends"
# LimeSurvey Field type: F
data[, 282] <- as.numeric(data[, 282])
attributes(data)$variable.labels[282] <- "[Als iemand mijn grenzen over gaat als ik heb gedronken, dan is dat tegen hem/haar zeggen voor mij ...heel moeilijk | heel makkelijk] Deze vraag gaat weer over een situatie (in de komende zes maanden tijdens het uitgaan) waarin iemand met jou flirt en over jouw grenzen gaat."
data[, 282] <- factor(data[, 282], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[282] <- "sibePBCbeliefs_alcohol"
# LimeSurvey Field type: F
data[, 283] <- as.numeric(data[, 283])
attributes(data)$variable.labels[283] <- "[Als ik dat dan tegen die vriend(in) wil zeggen, dan ...weet ik niet wat ik moet zeggen | weet ik goed wat ik moet zeggen] Deze vraag gaat weer over een situatie (in de komende zes maanden tijdens het uitgaan) waarin een vriend of vriendin van jou met iemand flirt, en je de indruk hebt dat hij/zij over de grenzen van de ander gaat."
data[, 283] <- factor(data[, 283], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[283] <- "sibaPBCBeliefs_knowWhatToSay"
# LimeSurvey Field type: F
data[, 284] <- as.numeric(data[, 284])
attributes(data)$variable.labels[284] <- "[Als ik dat tegen die vriend(in) zeg, en hij/zij wordt boos, dan ...kan ik daar niet goed mee omgaan | kan ik daar goed mee omgaan] Deze vraag gaat weer over een situatie (in de komende zes maanden tijdens het uitgaan) waarin een vriend of vriendin van jou met iemand flirt, en je de indruk hebt dat hij/zij over de grenzen van de ander gaat."
data[, 284] <- factor(data[, 284], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[284] <- "sibaPBCBeliefs_dealWithAnger"
# LimeSurvey Field type: F
data[, 285] <- as.numeric(data[, 285])
attributes(data)$variable.labels[285] <- "[Inschatten of die vriend(in) door te flirten wel of niet over de grenzen van de ander gaat is voor mij ...heel moeilijk | heel makkelijk] Deze vraag gaat weer over een situatie (in de komende zes maanden tijdens het uitgaan) waarin een vriend of vriendin van jou met iemand flirt, en je de indruk hebt dat hij/zij over de grenzen van de ander gaat."
data[, 285] <- factor(data[, 285], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[285] <- "sibaPBCBeliefs_recognize"
# LimeSurvey Field type: F
data[, 286] <- as.numeric(data[, 286])
attributes(data)$variable.labels[286] <- "[Als iemand in het openbaar mijn grenzen over gaat, dan is dat daarna tegen mijn vrienden/vriendinnen zeggen voor mij ...heel moeilijk | heel makkelijk] Deze vraag gaat over een situatie (in de komende zes maanden tijdens het uitgaan) waarin je iemand tegenkomt die met je flirt en over jouw grenzen gaat."
data[, 286] <- factor(data[, 286], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[286] <- "sibdPBCBeliefs_public"
# LimeSurvey Field type: F
data[, 287] <- as.numeric(data[, 287])
attributes(data)$variable.labels[287] <- "[Als ik dat tegen mijn vrienden/vriendinnen wil zeggen, dan ...weet ik niet wat ik moet zeggen | weet ik goed wat ik moet zeggen] Deze vraag gaat over een situatie (in de komende zes maanden tijdens het uitgaan) waarin je iemand tegenkomt die met je flirt en over jouw grenzen gaat."
data[, 287] <- factor(data[, 287], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[287] <- "sibdPBCBeliefs_knowWhatToSay"
# LimeSurvey Field type: F
data[, 288] <- as.numeric(data[, 288])
attributes(data)$variable.labels[288] <- "[Als iemand over mijn grenzen gaat waar niemand het ziet, dan is dat daarna tegen mijn vrienden/vriendinnen zeggen voor mij ...heel moeilijk | heel makkelijk] Deze vraag gaat over een situatie (in de komende zes maanden tijdens het uitgaan) waarin je iemand tegenkomt die met je flirt en over jouw grenzen gaat."
data[, 288] <- factor(data[, 288], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[288] <- "sibdPBCBeliefs_private"
# LimeSurvey Field type: F
data[, 289] <- as.numeric(data[, 289])
attributes(data)$variable.labels[289] <- "[Als iemand over mijn grenzen gaat als ik heb gedronken, dan is dat daarna tegen mijn vrienden/vriendinnen zeggen voor mij ...heel moeilijk | heel makkelijk] Deze vraag gaat over een situatie (in de komende zes maanden tijdens het uitgaan) waarin je iemand tegenkomt die met je flirt en over jouw grenzen gaat."
data[, 289] <- factor(data[, 289], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[289] <- "sibdPBCBeliefs_alcohol"
# LimeSurvey Field type: F
data[, 290] <- as.numeric(data[, 290])
attributes(data)$variable.labels[290] <- "[Als ik dan niets tegen die vriend/vriendin zou zeggen, dan zou ik mij achteraf ...Helemaal niet schuldig voelen | Heel erg schuldig voelen] Deze vraag gaat weer over een situatie (in de komende zes maanden tijdens het uitgaan) waarin een vriend of vriendin van jou met iemand flirt, en je de indruk hebt dat hij/zij over de grenzen van de ander gaat."
data[, 290] <- factor(data[, 290], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[290] <- "sibaMoralNorm_guilt"
# LimeSurvey Field type: F
data[, 291] <- as.numeric(data[, 291])
attributes(data)$variable.labels[291] <- "[Het is mijn verantwoordelijkheid om iets tegen die vriend/vriendin te zeggen.Helemaal niet | Heel sterk] Deze vraag gaat weer over een situatie (in de komende zes maanden tijdens het uitgaan) waarin een vriend of vriendin van jou met iemand flirt, en je de indruk hebt dat hij/zij over de grenzen van de ander gaat."
data[, 291] <- factor(data[, 291], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[291] <- "sibaMoralNorm_responsibility"
# LimeSurvey Field type: F
data[, 292] <- as.numeric(data[, 292])
attributes(data)$variable.labels[292] <- "[Ik vind het mijn morele plicht om dan iets tegen mijn vriend/vriendin te zeggen.Helemaal niet | Heel sterk] Deze vraag gaat weer over een situatie (in de komende zes maanden tijdens het uitgaan) waarin een vriend of vriendin van jou met iemand flirt, en je de indruk hebt dat hij/zij over de grenzen van de ander gaat."
data[, 292] <- factor(data[, 292], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[292] <- "sibaMoralNorm_moralDuty"
# LimeSurvey Field type: F
data[, 293] <- as.numeric(data[, 293])
attributes(data)$variable.labels[293] <- "[In zo\'n situatie moet ik mijn vriend/vriendin tegen zichzelf beschermen.Helemaal niet | Heel sterk] Deze vraag gaat weer over een situatie (in de komende zes maanden tijdens het uitgaan) waarin een vriend of vriendin van jou met iemand flirt, en je de indruk hebt dat hij/zij over de grenzen van de ander gaat."
data[, 293] <- factor(data[, 293], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[293] <- "sibaMoralNorm_protectFromSelf"
# LimeSurvey Field type: F
data[, 294] <- as.numeric(data[, 294])
attributes(data)$variable.labels[294] <- "[Ik wil geen antwoord geven op deze vraag] 	Tijdens het flirten zijn er allerlei manieren om de ander duidelijk te maken dat je diegene leuk vindt.	Welke manieren gebruik jij?"
data[, 294] <- factor(data[, 294], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[294] <- "flirtingStrategies_dontWantToSay"
# LimeSurvey Field type: F
data[, 295] <- as.numeric(data[, 295])
attributes(data)$variable.labels[295] <- "[Ik flirt nooit] 	Tijdens het flirten zijn er allerlei manieren om de ander duidelijk te maken dat je diegene leuk vindt.	Welke manieren gebruik jij?"
data[, 295] <- factor(data[, 295], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[295] <- "flirtingStrategies_neverFlirt"
# LimeSurvey Field type: F
data[, 296] <- as.numeric(data[, 296])
attributes(data)$variable.labels[296] <- "[Lang oogcontact maken] 	Tijdens het flirten zijn er allerlei manieren om de ander duidelijk te maken dat je diegene leuk vindt.	Welke manieren gebruik jij?"
data[, 296] <- factor(data[, 296], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[296] <- "flirtingStrategies_eyeContactSustained"
# LimeSurvey Field type: F
data[, 297] <- as.numeric(data[, 297])
attributes(data)$variable.labels[297] <- "[Vaker kort oogcontact maken] 	Tijdens het flirten zijn er allerlei manieren om de ander duidelijk te maken dat je diegene leuk vindt.	Welke manieren gebruik jij?"
data[, 297] <- factor(data[, 297], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[297] <- "flirtingStrategies_eyeContactRecurring"
# LimeSurvey Field type: F
data[, 298] <- as.numeric(data[, 298])
attributes(data)$variable.labels[298] <- "[Veel (glim)lachen] 	Tijdens het flirten zijn er allerlei manieren om de ander duidelijk te maken dat je diegene leuk vindt.	Welke manieren gebruik jij?"
data[, 298] <- factor(data[, 298], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[298] <- "flirtingStrategies_smiling"
# LimeSurvey Field type: F
data[, 299] <- as.numeric(data[, 299])
attributes(data)$variable.labels[299] <- "[Je gezicht of lichaam aanraken] 	Tijdens het flirten zijn er allerlei manieren om de ander duidelijk te maken dat je diegene leuk vindt.	Welke manieren gebruik jij?"
data[, 299] <- factor(data[, 299], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[299] <- "flirtingStrategies_touchFaceBody"
# LimeSurvey Field type: F
data[, 300] <- as.numeric(data[, 300])
attributes(data)$variable.labels[300] <- "[Een niet-seksueel getint compliment maken over het uiterlijk van die persoon] 	Tijdens het flirten zijn er allerlei manieren om de ander duidelijk te maken dat je diegene leuk vindt.	Welke manieren gebruik jij?"
data[, 300] <- factor(data[, 300], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[300] <- "flirtingStrategies_remarkNonSexual"
# LimeSurvey Field type: F
data[, 301] <- as.numeric(data[, 301])
attributes(data)$variable.labels[301] <- "[Een wel seksueel getint compliment maken over het uiterlijk van die persoon] 	Tijdens het flirten zijn er allerlei manieren om de ander duidelijk te maken dat je diegene leuk vindt.	Welke manieren gebruik jij?"
data[, 301] <- factor(data[, 301], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[301] <- "flirtingStrategies_remarkSexual"
# LimeSurvey Field type: F
data[, 302] <- as.numeric(data[, 302])
attributes(data)$variable.labels[302] <- "[Dicht bij die persoon gaan staan] 	Tijdens het flirten zijn er allerlei manieren om de ander duidelijk te maken dat je diegene leuk vindt.	Welke manieren gebruik jij?"
data[, 302] <- factor(data[, 302], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[302] <- "flirtingStrategies_proximity"
# LimeSurvey Field type: F
data[, 303] <- as.numeric(data[, 303])
attributes(data)$variable.labels[303] <- "[Een hand op de schouder of rug van die persoon leggen] 	Tijdens het flirten zijn er allerlei manieren om de ander duidelijk te maken dat je diegene leuk vindt.	Welke manieren gebruik jij?"
data[, 303] <- factor(data[, 303], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[303] <- "flirtingStrategies_touchShldrBack"
# LimeSurvey Field type: F
data[, 304] <- as.numeric(data[, 304])
attributes(data)$variable.labels[304] <- "[De billen of borst(en) van die persoon aanraken] 	Tijdens het flirten zijn er allerlei manieren om de ander duidelijk te maken dat je diegene leuk vindt.	Welke manieren gebruik jij?"
data[, 304] <- factor(data[, 304], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[304] <- "flirtingStrategies_touchButtBreast"
# LimeSurvey Field type: F
data[, 305] <- as.numeric(data[, 305])
attributes(data)$variable.labels[305] <- "[Het kruis van die persoon aanraken] 	Tijdens het flirten zijn er allerlei manieren om de ander duidelijk te maken dat je diegene leuk vindt.	Welke manieren gebruik jij?"
data[, 305] <- factor(data[, 305], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[305] <- "flirtingStrategies_touchCrotch"
# LimeSurvey Field type: F
data[, 306] <- as.numeric(data[, 306])
attributes(data)$variable.labels[306] <- "[Die persoon zoenen] 	Tijdens het flirten zijn er allerlei manieren om de ander duidelijk te maken dat je diegene leuk vindt.	Welke manieren gebruik jij?"
data[, 306] <- factor(data[, 306], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[306] <- "flirtingStrategies_kisses"
# LimeSurvey Field type: F
data[, 307] <- as.numeric(data[, 307])
attributes(data)$variable.labels[307] <- "[Die persoon vragen of hij of zij wil zoenen] 	Tijdens het flirten zijn er allerlei manieren om de ander duidelijk te maken dat je diegene leuk vindt.	Welke manieren gebruik jij?"
data[, 307] <- factor(data[, 307], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[307] <- "flirtingStrategies_askKiss"
# LimeSurvey Field type: F
data[, 308] <- as.numeric(data[, 308])
attributes(data)$variable.labels[308] <- "[Die persoon vragen of hij of zij sex met je wil] 	Tijdens het flirten zijn er allerlei manieren om de ander duidelijk te maken dat je diegene leuk vindt.	Welke manieren gebruik jij?"
data[, 308] <- factor(data[, 308], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[308] <- "flirtingStrategies_askSex"
# LimeSurvey Field type: A
data[, 309] <- as.character(data[, 309])
attributes(data)$variable.labels[309] <- "[Andere] 	Tijdens het flirten zijn er allerlei manieren om de ander duidelijk te maken dat je diegene leuk vindt.	Welke manieren gebruik jij?"
names(data)[309] <- "flirtingStrategies_other"
# LimeSurvey Field type: F
data[, 310] <- as.numeric(data[, 310])
attributes(data)$variable.labels[310] <- "Omdat Party Panel over het uitgaansleven gaat willen we graag ook weten of je middelen gebruikt. Als je dat niet wil zeggen of de vragen wil overslaan kun je dat hier aangeven."
data[, 310] <- factor(data[, 310], levels=c(1,0),labels=c("Ik wil deze vragen wel beantwoorden.", "Ik wil deze vragen liever overslaan."))
names(data)[310] <- "substanceUseWilling"
# LimeSurvey Field type: A
data[, 311] <- as.character(data[, 311])
attributes(data)$variable.labels[311] <- "[Alcohol] [keer ...] Heb je het afgelopen jaar iets uit dit rijtje gebruikt, en zoja, wat en hoe vaak?"
names(data)[311] <- "substUseFreqNr_alc_nr"
# LimeSurvey Field type: A
data[, 312] <- as.character(data[, 312])
attributes(data)$variable.labels[312] <- "[Tabak (sigaretten, sigaren)] [keer ...] Heb je het afgelopen jaar iets uit dit rijtje gebruikt, en zoja, wat en hoe vaak?"
names(data)[312] <- "substUseFreqNr_tbc_nr"
# LimeSurvey Field type: A
data[, 313] <- as.character(data[, 313])
attributes(data)$variable.labels[313] <- "[Cannabis (wiet, hasj)] [keer ...] Heb je het afgelopen jaar iets uit dit rijtje gebruikt, en zoja, wat en hoe vaak?"
names(data)[313] <- "substUseFreqNr_cnb_nr"
# LimeSurvey Field type: A
data[, 314] <- as.character(data[, 314])
attributes(data)$variable.labels[314] <- "[XTC pillen] [keer ...] Heb je het afgelopen jaar iets uit dit rijtje gebruikt, en zoja, wat en hoe vaak?"
names(data)[314] <- "substUseFreqNr_xtc_nr"
# LimeSurvey Field type: A
data[, 315] <- as.character(data[, 315])
attributes(data)$variable.labels[315] <- "[MDMA poeder] [keer ...] Heb je het afgelopen jaar iets uit dit rijtje gebruikt, en zoja, wat en hoe vaak?"
names(data)[315] <- "substUseFreqNr_mdma_nr"
# LimeSurvey Field type: A
data[, 316] <- as.character(data[, 316])
attributes(data)$variable.labels[316] <- "[4-FA (4FMP)] [keer ...] Heb je het afgelopen jaar iets uit dit rijtje gebruikt, en zoja, wat en hoe vaak?"
names(data)[316] <- "substUseFreqNr_fourfa_nr"
# LimeSurvey Field type: A
data[, 317] <- as.character(data[, 317])
attributes(data)$variable.labels[317] <- "[Cocaine] [keer ...] Heb je het afgelopen jaar iets uit dit rijtje gebruikt, en zoja, wat en hoe vaak?"
names(data)[317] <- "substUseFreqNr_coke_nr"
# LimeSurvey Field type: A
data[, 318] <- as.character(data[, 318])
attributes(data)$variable.labels[318] <- "[Speed] [keer ...] Heb je het afgelopen jaar iets uit dit rijtje gebruikt, en zoja, wat en hoe vaak?"
names(data)[318] <- "substUseFreqNr_spd_nr"
# LimeSurvey Field type: A
data[, 319] <- as.character(data[, 319])
attributes(data)$variable.labels[319] <- "[Lachgas] [keer ...] Heb je het afgelopen jaar iets uit dit rijtje gebruikt, en zoja, wat en hoe vaak?"
names(data)[319] <- "substUseFreqNr_gas_nr"
# LimeSurvey Field type: A
data[, 320] <- as.character(data[, 320])
attributes(data)$variable.labels[320] <- "[GHB] [keer ...] Heb je het afgelopen jaar iets uit dit rijtje gebruikt, en zoja, wat en hoe vaak?"
names(data)[320] <- "substUseFreqNr_ghb_nr"
# LimeSurvey Field type: A
data[, 321] <- as.character(data[, 321])
attributes(data)$variable.labels[321] <- "[2CB] [keer ...] Heb je het afgelopen jaar iets uit dit rijtje gebruikt, en zoja, wat en hoe vaak?"
names(data)[321] <- "substUseFreqNr_2cb_nr"
# LimeSurvey Field type: A
data[, 322] <- as.character(data[, 322])
attributes(data)$variable.labels[322] <- "[Ketamine] [keer ...] Heb je het afgelopen jaar iets uit dit rijtje gebruikt, en zoja, wat en hoe vaak?"
names(data)[322] <- "substUseFreqNr_ket_nr"
# LimeSurvey Field type: F
data[, 323] <- as.numeric(data[, 323])
attributes(data)$variable.labels[323] <- "[Alcohol]"
data[, 323] <- factor(data[, 323], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[323] <- "substUseFreqPeriod_alc"
# LimeSurvey Field type: F
data[, 324] <- as.numeric(data[, 324])
attributes(data)$variable.labels[324] <- "[Tabak (sigaretten, sigaren)]"
data[, 324] <- factor(data[, 324], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[324] <- "substUseFreqPeriod_tbc"
# LimeSurvey Field type: F
data[, 325] <- as.numeric(data[, 325])
attributes(data)$variable.labels[325] <- "[Cannabis (wiet, hasj)]"
data[, 325] <- factor(data[, 325], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[325] <- "substUseFreqPeriod_cnb"
# LimeSurvey Field type: F
data[, 326] <- as.numeric(data[, 326])
attributes(data)$variable.labels[326] <- "[XTC pillen]"
data[, 326] <- factor(data[, 326], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[326] <- "substUseFreqPeriod_xtc"
# LimeSurvey Field type: F
data[, 327] <- as.numeric(data[, 327])
attributes(data)$variable.labels[327] <- "[MDMA poeder]"
data[, 327] <- factor(data[, 327], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[327] <- "substUseFreqPeriod_mdma"
# LimeSurvey Field type: F
data[, 328] <- as.numeric(data[, 328])
attributes(data)$variable.labels[328] <- "[4-FA (4FMP)]"
data[, 328] <- factor(data[, 328], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[328] <- "substUseFreqPeriod_fourf"
# LimeSurvey Field type: F
data[, 329] <- as.numeric(data[, 329])
attributes(data)$variable.labels[329] <- "[Cocaine]"
data[, 329] <- factor(data[, 329], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[329] <- "substUseFreqPeriod_coke"
# LimeSurvey Field type: F
data[, 330] <- as.numeric(data[, 330])
attributes(data)$variable.labels[330] <- "[Speed]"
data[, 330] <- factor(data[, 330], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[330] <- "substUseFreqPeriod_spd"
# LimeSurvey Field type: F
data[, 331] <- as.numeric(data[, 331])
attributes(data)$variable.labels[331] <- "[Lachgas]"
data[, 331] <- factor(data[, 331], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[331] <- "substUseFreqPeriod_gas"
# LimeSurvey Field type: F
data[, 332] <- as.numeric(data[, 332])
attributes(data)$variable.labels[332] <- "[GHB]"
data[, 332] <- factor(data[, 332], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[332] <- "substUseFreqPeriod_ghb"
# LimeSurvey Field type: F
data[, 333] <- as.numeric(data[, 333])
attributes(data)$variable.labels[333] <- "[2CB]"
data[, 333] <- factor(data[, 333], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[333] <- "substUseFreqPeriod_2cb"
# LimeSurvey Field type: F
data[, 334] <- as.numeric(data[, 334])
attributes(data)$variable.labels[334] <- "[Ketamine]"
data[, 334] <- factor(data[, 334], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[334] <- "substUseFreqPeriod_ket"
# LimeSurvey Field type: A
data[, 335] <- as.character(data[, 335])
attributes(data)$variable.labels[335] <- "[Eerste andere middel] Heb je nog iets anders gebruikt dat niet in dit lijstje stond? Dan kun je dat hier aangeven. Anders kun je dit gewoon leeg laten."
names(data)[335] <- "otherSubstances_otherSubstance1"
# LimeSurvey Field type: A
data[, 336] <- as.character(data[, 336])
attributes(data)$variable.labels[336] <- "[Tweede andere middel] Heb je nog iets anders gebruikt dat niet in dit lijstje stond? Dan kun je dat hier aangeven. Anders kun je dit gewoon leeg laten."
names(data)[336] <- "otherSubstances_otherSubstance2"
# LimeSurvey Field type: A
data[, 337] <- as.character(data[, 337])
attributes(data)$variable.labels[337] <- "[Derde andere middel] Heb je nog iets anders gebruikt dat niet in dit lijstje stond? Dan kun je dat hier aangeven. Anders kun je dit gewoon leeg laten."
names(data)[337] <- "otherSubstances_otherSubstance3"
# LimeSurvey Field type: A
data[, 338] <- as.character(data[, 338])
attributes(data)$variable.labels[338] <- "[Vierde andere middel] Heb je nog iets anders gebruikt dat niet in dit lijstje stond? Dan kun je dat hier aangeven. Anders kun je dit gewoon leeg laten."
names(data)[338] <- "otherSubstances_otherSubstance4"
# LimeSurvey Field type: A
data[, 339] <- as.character(data[, 339])
attributes(data)$variable.labels[339] <- "[Vijfde andere middel] Heb je nog iets anders gebruikt dat niet in dit lijstje stond? Dan kun je dat hier aangeven. Anders kun je dit gewoon leeg laten."
names(data)[339] <- "otherSubstances_otherSubstance5"
# LimeSurvey Field type: A
data[, 340] <- as.character(data[, 340])
attributes(data)$variable.labels[340] <- "[{otherSubstances_otherSubstance1.NAOK}] [keer ...] Kun je ook aangeven hoe vaak?"
names(data)[340] <- "otherSubstFreqNr_otherSubstance1_nr"
# LimeSurvey Field type: A
data[, 341] <- as.character(data[, 341])
attributes(data)$variable.labels[341] <- "[{otherSubstances_otherSubstance2.NAOK}] [keer ...] Kun je ook aangeven hoe vaak?"
names(data)[341] <- "otherSubstFreqNr_otherSubstance2_nr"
# LimeSurvey Field type: A
data[, 342] <- as.character(data[, 342])
attributes(data)$variable.labels[342] <- "[{otherSubstances_otherSubstance3.NAOK}] [keer ...] Kun je ook aangeven hoe vaak?"
names(data)[342] <- "otherSubstFreqNr_otherSubstance3_nr"
# LimeSurvey Field type: A
data[, 343] <- as.character(data[, 343])
attributes(data)$variable.labels[343] <- "[{otherSubstances_otherSubstance4.NAOK}] [keer ...] Kun je ook aangeven hoe vaak?"
names(data)[343] <- "otherSubstFreqNr_otherSubstance4_nr"
# LimeSurvey Field type: A
data[, 344] <- as.character(data[, 344])
attributes(data)$variable.labels[344] <- "[{otherSubstances_otherSubstance5.NAOK}] [keer ...] Kun je ook aangeven hoe vaak?"
names(data)[344] <- "otherSubstFreqNr_otherSubstance5_nr"
# LimeSurvey Field type: F
data[, 345] <- as.numeric(data[, 345])
attributes(data)$variable.labels[345] <- "[{otherSubstances_otherSubstance1.NAOK}]"
data[, 345] <- factor(data[, 345], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[345] <- "otherSubstFreqPeriod_otherSubstance1"
# LimeSurvey Field type: F
data[, 346] <- as.numeric(data[, 346])
attributes(data)$variable.labels[346] <- "[{otherSubstances_otherSubstance2.NAOK}]"
data[, 346] <- factor(data[, 346], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[346] <- "otherSubstFreqPeriod_otherSubstance2"
# LimeSurvey Field type: F
data[, 347] <- as.numeric(data[, 347])
attributes(data)$variable.labels[347] <- "[{otherSubstances_otherSubstance3.NAOK}]"
data[, 347] <- factor(data[, 347], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[347] <- "otherSubstFreqPeriod_otherSubstance3"
# LimeSurvey Field type: F
data[, 348] <- as.numeric(data[, 348])
attributes(data)$variable.labels[348] <- "[{otherSubstances_otherSubstance4.NAOK}]"
data[, 348] <- factor(data[, 348], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[348] <- "otherSubstFreqPeriod_otherSubstance4"
# LimeSurvey Field type: F
data[, 349] <- as.numeric(data[, 349])
attributes(data)$variable.labels[349] <- "[{otherSubstances_otherSubstance5.NAOK}]"
data[, 349] <- factor(data[, 349], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[349] <- "otherSubstFreqPeriod_otherSubstance5"
# LimeSurvey Field type: F
data[, 350] <- as.numeric(data[, 350])
attributes(data)$variable.labels[350] <- "Als laatste willen we je graag vragen om wat meer informatie over jezelf te geven. Je kunt een of meerdere van deze vragen ook overslaan als je je bijvoorbeeld zorgen maakt over je privacy. We zouden het natuurlijk erg waarderen als je wel alle vragen beantwoordt: deze informatie is voor ons heel bruikbaar om een indruk te krijgen van wie je bent. Bovendien hebben we niet voor niets gezorgd dat deze vragenlijst volledig anoniem is 	Als je geen van deze vragen in wilt vullen, of als je ze vorige keer hebt ingevuld en een Party Panel Code hebt ingevoerd, dan kun je dat hier aangeven, en dan sla je al deze vragen over."
data[, 350] <- factor(data[, 350], levels=c(0,1,2),labels=c("Ik wil wel één of meer vragen beantwoorden", "Ik wil geen enkele vraag beantwoorden", "Ik heb een Party Panel Code van een vorige Party Panel"))
names(data)[350] <- "noDemographics"
# LimeSurvey Field type: F
data[, 351] <- as.numeric(data[, 351])
attributes(data)$variable.labels[351] <- "Hoe oud ben je?"
names(data)[351] <- "age"
# LimeSurvey Field type: F
data[, 352] <- as.numeric(data[, 352])
attributes(data)$variable.labels[352] <- "Heb je een baan?"
data[, 352] <- factor(data[, 352], levels=c(1,2,3),labels=c("Ik wil deze vraag niet beantwoorden", "Ja, ik heb een baan, bijbaan, of eigen bedrijf", "Nee, ik heb geen baan, bijbaan, of eigen bedrijf"))
names(data)[352] <- "hasJob"
# LimeSurvey Field type: F
data[, 353] <- as.numeric(data[, 353])
attributes(data)$variable.labels[353] <- "Hoeveel uur per week besteed je aan je baan, bijbaan, of eigen bedrijf?"
names(data)[353] <- "jobHours"
# LimeSurvey Field type: F
data[, 354] <- as.numeric(data[, 354])
attributes(data)$variable.labels[354] <- "Volg je op dit moment een studie, en zoja, waar?"
data[, 354] <- factor(data[, 354], levels=c(1,2,3,4,5,6,7,8),labels=c("Ik wil deze vraag niet beantwoorden", "Nee, ik volg op dit moment geen studie", "Ja, ik doe VMBO (vroeger MAVO)", "Ja, ik doe HAVO", "Ja, ik doe VWO", "Ja, ik doe MBO (ROC)", "Ja, ik doe HBO (hogeschool)", "Ja, ik doe WO (universiteit)"))
names(data)[354] <- "currentEducation"
# LimeSurvey Field type: F
data[, 355] <- as.numeric(data[, 355])
attributes(data)$variable.labels[355] <- "Wat is de hoogste opleiding die je hebt voltooid?"
data[, 355] <- factor(data[, 355], levels=c(1,2,3,4,5,6,7,8),labels=c("Ik wil deze vraag niet beantwoorden", "Basisschool", "VMBO (vroeger MAVO)", "HAVO", "VWO", "MBO (ROC)", "HBO (hogeschool)", "WO (universiteit)"))
names(data)[355] <- "prevEducation"
# LimeSurvey Field type: A
data[, 356] <- as.character(data[, 356])
attributes(data)$variable.labels[356] <- "In welk land woon je?"
data[, 356] <- factor(data[, 356], levels=c("NONE","NL","BE"),labels=c("Wil ik niet zeggen", "Nederland", "Belgie"))
names(data)[356] <- "country"
# LimeSurvey Field type: A
data[, 357] <- as.character(data[, 357])
attributes(data)$variable.labels[357] <- "[Andere] In welk land woon je?"
names(data)[357] <- "country_other"
# LimeSurvey Field type: F
data[, 358] <- as.numeric(data[, 358])
attributes(data)$variable.labels[358] <- "Om een grove indruk te krijgen van waar de Party Panel deelnemers wonen, is het handig als we de eerste twee codes van je postcode hebben. Wat zijn de eerste twee cijfers van jouw postcode?"
names(data)[358] <- "postcode"
# LimeSurvey Field type: F
data[, 359] <- as.numeric(data[, 359])
attributes(data)$variable.labels[359] <- "[Dit wil ik niet zeggen] 	Als je een culturele achtergrond zou moeten kiezen, welke achtergrond(en) zou je dan kiezen?"
data[, 359] <- factor(data[, 359], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[359] <- "culturalIdentity_1"
# LimeSurvey Field type: F
data[, 360] <- as.numeric(data[, 360])
attributes(data)$variable.labels[360] <- "[Ik identificeer niet met een culturele achtergrond] 	Als je een culturele achtergrond zou moeten kiezen, welke achtergrond(en) zou je dan kiezen?"
data[, 360] <- factor(data[, 360], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[360] <- "culturalIdentity_2"
# LimeSurvey Field type: F
data[, 361] <- as.numeric(data[, 361])
attributes(data)$variable.labels[361] <- "[Antilliaans] 	Als je een culturele achtergrond zou moeten kiezen, welke achtergrond(en) zou je dan kiezen?"
data[, 361] <- factor(data[, 361], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[361] <- "culturalIdentity_3"
# LimeSurvey Field type: F
data[, 362] <- as.numeric(data[, 362])
attributes(data)$variable.labels[362] <- "[Afrikaans (behalve Marokkaans, zie onder)] 	Als je een culturele achtergrond zou moeten kiezen, welke achtergrond(en) zou je dan kiezen?"
data[, 362] <- factor(data[, 362], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[362] <- "culturalIdentity_4"
# LimeSurvey Field type: F
data[, 363] <- as.numeric(data[, 363])
attributes(data)$variable.labels[363] <- "[Aziatisch] 	Als je een culturele achtergrond zou moeten kiezen, welke achtergrond(en) zou je dan kiezen?"
data[, 363] <- factor(data[, 363], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[363] <- "culturalIdentity_5"
# LimeSurvey Field type: F
data[, 364] <- as.numeric(data[, 364])
attributes(data)$variable.labels[364] <- "[Belgisch] 	Als je een culturele achtergrond zou moeten kiezen, welke achtergrond(en) zou je dan kiezen?"
data[, 364] <- factor(data[, 364], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[364] <- "culturalIdentity_6"
# LimeSurvey Field type: F
data[, 365] <- as.numeric(data[, 365])
attributes(data)$variable.labels[365] <- "[Indisch] 	Als je een culturele achtergrond zou moeten kiezen, welke achtergrond(en) zou je dan kiezen?"
data[, 365] <- factor(data[, 365], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[365] <- "culturalIdentity_7"
# LimeSurvey Field type: F
data[, 366] <- as.numeric(data[, 366])
attributes(data)$variable.labels[366] <- "[Latino] 	Als je een culturele achtergrond zou moeten kiezen, welke achtergrond(en) zou je dan kiezen?"
data[, 366] <- factor(data[, 366], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[366] <- "culturalIdentity_8"
# LimeSurvey Field type: F
data[, 367] <- as.numeric(data[, 367])
attributes(data)$variable.labels[367] <- "[Marrokaans] 	Als je een culturele achtergrond zou moeten kiezen, welke achtergrond(en) zou je dan kiezen?"
data[, 367] <- factor(data[, 367], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[367] <- "culturalIdentity_9"
# LimeSurvey Field type: F
data[, 368] <- as.numeric(data[, 368])
attributes(data)$variable.labels[368] <- "[Nederlands] 	Als je een culturele achtergrond zou moeten kiezen, welke achtergrond(en) zou je dan kiezen?"
data[, 368] <- factor(data[, 368], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[368] <- "culturalIdentity_10"
# LimeSurvey Field type: F
data[, 369] <- as.numeric(data[, 369])
attributes(data)$variable.labels[369] <- "[Surinaams] 	Als je een culturele achtergrond zou moeten kiezen, welke achtergrond(en) zou je dan kiezen?"
data[, 369] <- factor(data[, 369], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[369] <- "culturalIdentity_11"
# LimeSurvey Field type: F
data[, 370] <- as.numeric(data[, 370])
attributes(data)$variable.labels[370] <- "[Turks] 	Als je een culturele achtergrond zou moeten kiezen, welke achtergrond(en) zou je dan kiezen?"
data[, 370] <- factor(data[, 370], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[370] <- "culturalIdentity_12"
# LimeSurvey Field type: A
data[, 371] <- as.character(data[, 371])
attributes(data)$variable.labels[371] <- "[Andere] 	Als je een culturele achtergrond zou moeten kiezen, welke achtergrond(en) zou je dan kiezen?"
names(data)[371] <- "culturalIdentity_other"
# LimeSurvey Field type: A
data[, 372] <- as.character(data[, 372])
attributes(data)$variable.labels[372] <- "Je Party Panel Code	Party Panel is een panelstudie: dat betekent dat we periodiek een nieuwe vragenlijst online plaatsen (zie https://partypanel.nl?info voor meer informatie). We proberen dan informatie van dezelfde mensen aan elkaar te koppelen. De enige manier waarop dat kan en we tegelijkertijd absoluut zeker weten dat je anoniem blijft, is met een persoonlijke code.	Je kunt je persoonlijke code (opnieuw) genereren op https://partypanel.nl?code, en die dan hier invullen.	Met deze code van 6 tekens (2 letters, 2 cijfers, 2 letters) blijf je anoniem, zonder dat je zelf iets hoeft te onthouden."
names(data)[372] <- "partyPanelCode"
# LimeSurvey Field type: A
data[, 373] <- as.character(data[, 373])
attributes(data)$variable.labels[373] <- "Heb je nog ideeen voor de volgende Party Panel? Of heb je nog andere tips of ideeen die je ons wil meegeven?	Die kun je hieronder opgeven. Deze worden bij je data opgeslagen, en dus anoniem - we kunnen geen contact met je opnemen. Als je een suggestie hebt en graag een reactie wil of als je een vraag hebt kun je het formulier gebruiken op https://partypanel.nl/?contact."
names(data)[373] <- "suggestions"
# LimeSurvey Field type: F
data[, 374] <- as.numeric(data[, 374])
attributes(data)$variable.labels[374] <- "[Ik heb de vragenlijst ingevuld om hem te testen, of gewoon om eens te kijken naar het soort vragen, en mijn antwoorden zijn dus niet serieus.] Heb je deze vragenlijst niet serieus ingevuld, bijvoorbeeld als test of gewoon om eens te kijken wat voor vragen werden gesteld? Dan kun je dat hier aangeven. Je data worden dan niet gebruikt in de analyses."
data[, 374] <- factor(data[, 374], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[374] <- "testEntry_test"
# LimeSurvey Field type: A
data[, 375] <- as.character(data[, 375])
attributes(data)$variable.labels[375] <- "Als je op \'Insturen\' klikt, wordt je doorgestuurd naar https://partypanel.nl/?reg waar je je email adres kunt achterlaten.	We mailen je dan bovendien als de resultaten binnen zijn en vertellen je dan wat we er mee gaan doen. Bovendien mailen we je als de volgende Party Panel ronde klaar staat.Heb je vrienden die ook uitgaan? Deel Party Panel op Facebook!	Ook als je je niet in wil schrijven voor Party Panel zijn we je heel erg dankbaar! Door deze vragenlijst in te vullen heb je nu al geholpen het Nederlandse uitgaansleven te verbeteren!"
names(data)[375] <- "endingFinal"
# LimeSurvey Field type: 
data[, 376] <- as.character(data[, 376])
attributes(data)$variable.labels[376] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 377] <- as.character(data[, 377])
attributes(data)$variable.labels[377] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 378] <- as.character(data[, 378])
attributes(data)$variable.labels[378] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 379] <- as.character(data[, 379])
attributes(data)$variable.labels[379] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 380] <- as.character(data[, 380])
attributes(data)$variable.labels[380] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 381] <- as.character(data[, 381])
attributes(data)$variable.labels[381] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 382] <- as.character(data[, 382])
attributes(data)$variable.labels[382] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 383] <- as.character(data[, 383])
attributes(data)$variable.labels[383] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 384] <- as.character(data[, 384])
attributes(data)$variable.labels[384] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 385] <- as.character(data[, 385])
attributes(data)$variable.labels[385] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 386] <- as.character(data[, 386])
attributes(data)$variable.labels[386] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 387] <- as.character(data[, 387])
attributes(data)$variable.labels[387] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 388] <- as.character(data[, 388])
attributes(data)$variable.labels[388] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 389] <- as.character(data[, 389])
attributes(data)$variable.labels[389] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 390] <- as.character(data[, 390])
attributes(data)$variable.labels[390] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 391] <- as.character(data[, 391])
attributes(data)$variable.labels[391] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 392] <- as.character(data[, 392])
attributes(data)$variable.labels[392] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 393] <- as.character(data[, 393])
attributes(data)$variable.labels[393] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 394] <- as.character(data[, 394])
attributes(data)$variable.labels[394] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 395] <- as.character(data[, 395])
attributes(data)$variable.labels[395] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 396] <- as.character(data[, 396])
attributes(data)$variable.labels[396] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 397] <- as.character(data[, 397])
attributes(data)$variable.labels[397] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 398] <- as.character(data[, 398])
attributes(data)$variable.labels[398] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 399] <- as.character(data[, 399])
attributes(data)$variable.labels[399] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 400] <- as.character(data[, 400])
attributes(data)$variable.labels[400] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 401] <- as.character(data[, 401])
attributes(data)$variable.labels[401] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 402] <- as.character(data[, 402])
attributes(data)$variable.labels[402] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 403] <- as.character(data[, 403])
attributes(data)$variable.labels[403] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 404] <- as.character(data[, 404])
attributes(data)$variable.labels[404] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 405] <- as.character(data[, 405])
attributes(data)$variable.labels[405] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 406] <- as.character(data[, 406])
attributes(data)$variable.labels[406] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 407] <- as.character(data[, 407])
attributes(data)$variable.labels[407] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 408] <- as.character(data[, 408])
attributes(data)$variable.labels[408] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 409] <- as.character(data[, 409])
attributes(data)$variable.labels[409] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 410] <- as.character(data[, 410])
attributes(data)$variable.labels[410] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 411] <- as.character(data[, 411])
attributes(data)$variable.labels[411] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 412] <- as.character(data[, 412])
attributes(data)$variable.labels[412] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 413] <- as.character(data[, 413])
attributes(data)$variable.labels[413] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 414] <- as.character(data[, 414])
attributes(data)$variable.labels[414] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 415] <- as.character(data[, 415])
attributes(data)$variable.labels[415] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 416] <- as.character(data[, 416])
attributes(data)$variable.labels[416] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 417] <- as.character(data[, 417])
attributes(data)$variable.labels[417] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 418] <- as.character(data[, 418])
attributes(data)$variable.labels[418] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 419] <- as.character(data[, 419])
attributes(data)$variable.labels[419] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 420] <- as.character(data[, 420])
attributes(data)$variable.labels[420] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 421] <- as.character(data[, 421])
attributes(data)$variable.labels[421] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 422] <- as.character(data[, 422])
attributes(data)$variable.labels[422] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 423] <- as.character(data[, 423])
attributes(data)$variable.labels[423] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 424] <- as.character(data[, 424])
attributes(data)$variable.labels[424] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 425] <- as.character(data[, 425])
attributes(data)$variable.labels[425] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 426] <- as.character(data[, 426])
attributes(data)$variable.labels[426] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 427] <- as.character(data[, 427])
attributes(data)$variable.labels[427] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 428] <- as.character(data[, 428])
attributes(data)$variable.labels[428] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 429] <- as.character(data[, 429])
attributes(data)$variable.labels[429] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 430] <- as.character(data[, 430])
attributes(data)$variable.labels[430] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 431] <- as.character(data[, 431])
attributes(data)$variable.labels[431] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 432] <- as.character(data[, 432])
attributes(data)$variable.labels[432] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 433] <- as.character(data[, 433])
attributes(data)$variable.labels[433] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 434] <- as.character(data[, 434])
attributes(data)$variable.labels[434] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 435] <- as.character(data[, 435])
attributes(data)$variable.labels[435] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 436] <- as.character(data[, 436])
attributes(data)$variable.labels[436] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 437] <- as.character(data[, 437])
attributes(data)$variable.labels[437] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 438] <- as.character(data[, 438])
attributes(data)$variable.labels[438] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 439] <- as.character(data[, 439])
attributes(data)$variable.labels[439] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 440] <- as.character(data[, 440])
attributes(data)$variable.labels[440] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 441] <- as.character(data[, 441])
attributes(data)$variable.labels[441] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 442] <- as.character(data[, 442])
attributes(data)$variable.labels[442] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 443] <- as.character(data[, 443])
attributes(data)$variable.labels[443] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 444] <- as.character(data[, 444])
attributes(data)$variable.labels[444] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 445] <- as.character(data[, 445])
attributes(data)$variable.labels[445] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 446] <- as.character(data[, 446])
attributes(data)$variable.labels[446] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 447] <- as.character(data[, 447])
attributes(data)$variable.labels[447] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 448] <- as.character(data[, 448])
attributes(data)$variable.labels[448] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 449] <- as.character(data[, 449])
attributes(data)$variable.labels[449] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 450] <- as.character(data[, 450])
attributes(data)$variable.labels[450] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 451] <- as.character(data[, 451])
attributes(data)$variable.labels[451] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 452] <- as.character(data[, 452])
attributes(data)$variable.labels[452] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 453] <- as.character(data[, 453])
attributes(data)$variable.labels[453] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 454] <- as.character(data[, 454])
attributes(data)$variable.labels[454] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 455] <- as.character(data[, 455])
attributes(data)$variable.labels[455] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 456] <- as.character(data[, 456])
attributes(data)$variable.labels[456] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 457] <- as.character(data[, 457])
attributes(data)$variable.labels[457] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 458] <- as.character(data[, 458])
attributes(data)$variable.labels[458] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 459] <- as.character(data[, 459])
attributes(data)$variable.labels[459] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 460] <- as.character(data[, 460])
attributes(data)$variable.labels[460] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 461] <- as.character(data[, 461])
attributes(data)$variable.labels[461] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 462] <- as.character(data[, 462])
attributes(data)$variable.labels[462] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 463] <- as.character(data[, 463])
attributes(data)$variable.labels[463] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 464] <- as.character(data[, 464])
attributes(data)$variable.labels[464] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 465] <- as.character(data[, 465])
attributes(data)$variable.labels[465] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 466] <- as.character(data[, 466])
attributes(data)$variable.labels[466] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 467] <- as.character(data[, 467])
attributes(data)$variable.labels[467] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 468] <- as.character(data[, 468])
attributes(data)$variable.labels[468] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 469] <- as.character(data[, 469])
attributes(data)$variable.labels[469] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 470] <- as.character(data[, 470])
attributes(data)$variable.labels[470] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 471] <- as.character(data[, 471])
attributes(data)$variable.labels[471] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 472] <- as.character(data[, 472])
attributes(data)$variable.labels[472] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 473] <- as.character(data[, 473])
attributes(data)$variable.labels[473] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 474] <- as.character(data[, 474])
attributes(data)$variable.labels[474] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 475] <- as.character(data[, 475])
attributes(data)$variable.labels[475] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 476] <- as.character(data[, 476])
attributes(data)$variable.labels[476] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 477] <- as.character(data[, 477])
attributes(data)$variable.labels[477] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 478] <- as.character(data[, 478])
attributes(data)$variable.labels[478] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 479] <- as.character(data[, 479])
attributes(data)$variable.labels[479] <- ""
#sql_name not set
