data <- read.csv("survey_180102_R_data_file.csv", quote = "'\"", na.strings=c("", "\"\""), stringsAsFactors=FALSE)


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
# LimeSurvey Field type: A
data[, 7] <- as.character(data[, 7])
attributes(data)$variable.labels[7] <- "Dit vragenlijstje gaat over flirten in het Nederlandse uitgaansleven, vooral over de problemen als gevolg van de impliciete communicatie tijdens het flirten. Hier is nog weinig onderzoek naar gedaan. In het bijzonder willen we twee gedragingen in kaart brengen. De eerste is een vriend(in) aanspreken als je de indruk hebt dat diegene (misschien zonder het te weten) iemands grenzen overschrijdt. De tweede is om, als iemand jouw grenzen overschreed, dit te bespreken met je vriend(in)nen of vrienden.	We vragen jou, als expert met betrekking tot de doelgroep (mensen op feesten), wat jij denkt dat redenen zijn waarom mensen die twee gedragingen niet of juist wel uitvoeren.	Voor alle vragen geldt: neem even de tijd om er goed over na te denken. De informatie die je nu geeft gaat de basis vormen voor de uiteindelijke vragenlijst.			Achtergrondinformatie:		Voor degenen die betrokken waren in eerdere besprekingen over deze Party Panel ronde: we hebben besloten deze ronde over \"Seksueel Grensoverschrijdend Gedrag\" te doen. Echter, die term is erg onhandig, dus die vermijden we bewust in communicatie met de doelgroep. (De term is onhandig om twee redenen. Ten eerste is de term erg geladen, waardoor de kans onnodig wordt vergroot dat vragen verkeerd worden begrepen (e.g. alsof ze over seks gaan). Ten tweede is de term niet accuraat gegeven het onderwerp van deze vragenlijst (behalve als je \"seksuele grenzen\" zo extreem geherdefinieert ten opzichte van de gebruikelijke definitie, waarin \"seks\" slaat op seksuele handelingen, dat hij slaat op iets als \"alle grenzen in de mensenlijke communicatie behalve grenzen die betrekking hebben op platonische interactie\". Dat is een herdefinitie die de term \"seksueel grensoverschrijdend gedrag\" wetenschappelijk onbruikbaar maakt.).	 "
names(data)[7] <- "intro"
# LimeSurvey Field type: A
data[, 8] <- as.character(data[, 8])
attributes(data)$variable.labels[8] <- "Vraag 1	Flirten kan ingewikkeld zijn: het is niet altijd duidelijk wat mensen bedoelen met hun lichaamstaal en met wat ze zeggen. Er komt dus een hoop interpretatie bij kijken, en dat kan lastig zijn. Er zijn allerlei situaties waarin dat nog moeilijker kan worden, bijvoorbeeld als mensen alcohol drinken of andere middelen gebruiken, of als mensen verschillende achtergronden hebben en dus verschillende ongeschreven regels hebben geleerd.	Als mensen met elkaar communiceren kan het dus zijn dat iemand vriendelijk wil zijn, terwijl de ander het gevoel heeft dat er een grens wordt overschreden. Dit is vaak onschuldig, maar dit grijze gebied kan ook worden misbruikt. Iemand kan bijvoorbeeld signalen negeren met als excuus dat die niet duidelijk waren of anders zijn geïnterpreteerd.	Wat de situatie ook is, als je ziet dat een van je vriend(inn)en de grens van iemand anders lijkt te overschrijden kun je die vriend(in) dat vertellen.	Kun je aangeven waarom je denkt dat mensen die dat niet doen, dat niet doen?	Je kunt hier alles intypen wat een rol kan spelen."
names(data)[8] <- "adviseFriendUB"
# LimeSurvey Field type: A
data[, 9] <- as.character(data[, 9])
attributes(data)$variable.labels[9] <- "Vraag 2	Dit is misschien een vreemde vraag, maar: welke redenen denk je dat allemaal een rol spelen bij mensen die in zo\'n geval wel met hun vriend(in) gaan praten? Je kunt hier alles intypen wat een rol kan spelen."
names(data)[9] <- "adviseFriendDB"
# LimeSurvey Field type: A
data[, 10] <- as.character(data[, 10])
attributes(data)$variable.labels[10] <- "Vraag 3	Het kan je ook overkomen dat iemand een grens van jou overschrijdt. Dat kan heel onprettig voelen. In zo\'n geval kun je dit bespreken met je vrienden, zodat ze je kunnen steunen en bijvoorbeeld op kunnen letten dat het niet nog een keer gebeurt.	Kun je aangeven waarom je denkt dat mensen die dat niet doen, dat niet doen? Je kunt hier alles intypen wat een rol kan spelen."
names(data)[10] <- "discloseUB"
# LimeSurvey Field type: A
data[, 11] <- as.character(data[, 11])
attributes(data)$variable.labels[11] <- "Vraag 4	Welke redenen denk je dat allemaal een rol spelen bij mensen die in zo\'n geval hun vriend(inn)en wel vertellen wat er is gebeurd? Je kunt hier alles intypen wat een rol kan spelen."
names(data)[11] <- "discloseDB"
# LimeSurvey Field type: A
data[, 12] <- as.character(data[, 12])
attributes(data)$variable.labels[12] <- "Vraag 5Het kan zijn dat we nog graag wat verduidelijking willen vragen. Als je dit goed zou vinden, kun je hier je email adres invullen."
names(data)[12] <- "email"
# LimeSurvey Field type: A
data[, 13] <- as.character(data[, 13])
attributes(data)$variable.labels[13] <- "Vraag 6Op welke manier kom jij in aanraking met de doelgroep van deze Party Panel vragenlijst (dus, mensen die feesten bezoeken, of in het algemeen, uitgaan)?"
names(data)[13] <- "expertise"
# LimeSurvey Field type: A
data[, 14] <- as.character(data[, 14])
attributes(data)$variable.labels[14] <- "Bedankt voor het invullen!	We hebben nog wat extra vragen, voor als je tips hebt over de werving van deelnemers of graag nog ideeën voor andere vragen meegeeft.	Dit kan hieronder, maar dat kun je ook leeg laten als je wil, en gewoon op \'Versturen\' klikken, helemaal onderaan."
names(data)[14] <- "extraQuestionIntro"
# LimeSurvey Field type: A
data[, 15] <- as.character(data[, 15])
attributes(data)$variable.labels[15] <- "Vraag 7Heb je nog ideeën over hoe we leden van deze doelgroep kunnen werven?"
names(data)[15] <- "recruitment"
# LimeSurvey Field type: A
data[, 16] <- as.character(data[, 16])
attributes(data)$variable.labels[16] <- "[Vraag 1] 			Vraag 8Hoewel Party Panel zich hoofdzakelijk richt op het verzamelen van gegevens zodat kansrijke evidence-based interventies kunnen worden ontwikkeld, kunnen we natuurlijk een beperkt aantal andere vragen meenemen. Hier kun je suggesties doen voor dat soort andere vragen waar je graag antwoord op wil hebben."
names(data)[16] <- "extraQuestions_vraag1"
# LimeSurvey Field type: A
data[, 17] <- as.character(data[, 17])
attributes(data)$variable.labels[17] <- "[Vraag 2] 			Vraag 8Hoewel Party Panel zich hoofdzakelijk richt op het verzamelen van gegevens zodat kansrijke evidence-based interventies kunnen worden ontwikkeld, kunnen we natuurlijk een beperkt aantal andere vragen meenemen. Hier kun je suggesties doen voor dat soort andere vragen waar je graag antwoord op wil hebben."
names(data)[17] <- "extraQuestions_vraag2"
# LimeSurvey Field type: F
data[, 18] <- as.numeric(data[, 18])
attributes(data)$variable.labels[18] <- "[Vraag 3] 			Vraag 8Hoewel Party Panel zich hoofdzakelijk richt op het verzamelen van gegevens zodat kansrijke evidence-based interventies kunnen worden ontwikkeld, kunnen we natuurlijk een beperkt aantal andere vragen meenemen. Hier kun je suggesties doen voor dat soort andere vragen waar je graag antwoord op wil hebben."
names(data)[18] <- "extraQuestions_vraag3"
# LimeSurvey Field type: F
data[, 19] <- as.numeric(data[, 19])
attributes(data)$variable.labels[19] <- "[Vraag 4] 			Vraag 8Hoewel Party Panel zich hoofdzakelijk richt op het verzamelen van gegevens zodat kansrijke evidence-based interventies kunnen worden ontwikkeld, kunnen we natuurlijk een beperkt aantal andere vragen meenemen. Hier kun je suggesties doen voor dat soort andere vragen waar je graag antwoord op wil hebben."
names(data)[19] <- "extraQuestions_vraag4"
# LimeSurvey Field type: F
data[, 20] <- as.numeric(data[, 20])
attributes(data)$variable.labels[20] <- "[Vraag 5] 			Vraag 8Hoewel Party Panel zich hoofdzakelijk richt op het verzamelen van gegevens zodat kansrijke evidence-based interventies kunnen worden ontwikkeld, kunnen we natuurlijk een beperkt aantal andere vragen meenemen. Hier kun je suggesties doen voor dat soort andere vragen waar je graag antwoord op wil hebben."
names(data)[20] <- "extraQuestions_vraag5"
# LimeSurvey Field type: F
data[, 21] <- as.numeric(data[, 21])
attributes(data)$variable.labels[21] <- "[Vraag 6] 			Vraag 8Hoewel Party Panel zich hoofdzakelijk richt op het verzamelen van gegevens zodat kansrijke evidence-based interventies kunnen worden ontwikkeld, kunnen we natuurlijk een beperkt aantal andere vragen meenemen. Hier kun je suggesties doen voor dat soort andere vragen waar je graag antwoord op wil hebben."
names(data)[21] <- "extraQuestions_vraag6"
# LimeSurvey Field type: F
data[, 22] <- as.numeric(data[, 22])
attributes(data)$variable.labels[22] <- "[Vraag 7 ] 			Vraag 8Hoewel Party Panel zich hoofdzakelijk richt op het verzamelen van gegevens zodat kansrijke evidence-based interventies kunnen worden ontwikkeld, kunnen we natuurlijk een beperkt aantal andere vragen meenemen. Hier kun je suggesties doen voor dat soort andere vragen waar je graag antwoord op wil hebben."
names(data)[22] <- "extraQuestions_vraag7"
# LimeSurvey Field type: F
data[, 23] <- as.numeric(data[, 23])
attributes(data)$variable.labels[23] <- "[Vraag 8 ] 			Vraag 8Hoewel Party Panel zich hoofdzakelijk richt op het verzamelen van gegevens zodat kansrijke evidence-based interventies kunnen worden ontwikkeld, kunnen we natuurlijk een beperkt aantal andere vragen meenemen. Hier kun je suggesties doen voor dat soort andere vragen waar je graag antwoord op wil hebben."
names(data)[23] <- "extraQuestions_vraag8"
# LimeSurvey Field type: F
data[, 24] <- as.numeric(data[, 24])
attributes(data)$variable.labels[24] <- "[Vraag 9] 			Vraag 8Hoewel Party Panel zich hoofdzakelijk richt op het verzamelen van gegevens zodat kansrijke evidence-based interventies kunnen worden ontwikkeld, kunnen we natuurlijk een beperkt aantal andere vragen meenemen. Hier kun je suggesties doen voor dat soort andere vragen waar je graag antwoord op wil hebben."
names(data)[24] <- "extraQuestions_vraag9"
# LimeSurvey Field type: F
data[, 25] <- as.numeric(data[, 25])
attributes(data)$variable.labels[25] <- "[Vraag 10] 			Vraag 8Hoewel Party Panel zich hoofdzakelijk richt op het verzamelen van gegevens zodat kansrijke evidence-based interventies kunnen worden ontwikkeld, kunnen we natuurlijk een beperkt aantal andere vragen meenemen. Hier kun je suggesties doen voor dat soort andere vragen waar je graag antwoord op wil hebben."
names(data)[25] <- "extraQuestions_vraag10"
# LimeSurvey Field type: A
data[, 26] <- as.character(data[, 26])
attributes(data)$variable.labels[26] <- "[Vraag 1] 			Vraag 9Leg hier uit waarom elk van de extra vragen die je hierboven suggereerde belangrijk is."
names(data)[26] <- "extraQuestJustificat_vraag1"
# LimeSurvey Field type: A
data[, 27] <- as.character(data[, 27])
attributes(data)$variable.labels[27] <- "[Vraag 2] 			Vraag 9Leg hier uit waarom elk van de extra vragen die je hierboven suggereerde belangrijk is."
names(data)[27] <- "extraQuestJustificat_vraag2"
# LimeSurvey Field type: F
data[, 28] <- as.numeric(data[, 28])
attributes(data)$variable.labels[28] <- "[Vraag 3] 			Vraag 9Leg hier uit waarom elk van de extra vragen die je hierboven suggereerde belangrijk is."
names(data)[28] <- "extraQuestJustificat_vraag3"
# LimeSurvey Field type: F
data[, 29] <- as.numeric(data[, 29])
attributes(data)$variable.labels[29] <- "[Vraag 4] 			Vraag 9Leg hier uit waarom elk van de extra vragen die je hierboven suggereerde belangrijk is."
names(data)[29] <- "extraQuestJustificat_vraag4"
# LimeSurvey Field type: F
data[, 30] <- as.numeric(data[, 30])
attributes(data)$variable.labels[30] <- "[Vraag 5] 			Vraag 9Leg hier uit waarom elk van de extra vragen die je hierboven suggereerde belangrijk is."
names(data)[30] <- "extraQuestJustificat_vraag5"
# LimeSurvey Field type: F
data[, 31] <- as.numeric(data[, 31])
attributes(data)$variable.labels[31] <- "[Vraag 6] 			Vraag 9Leg hier uit waarom elk van de extra vragen die je hierboven suggereerde belangrijk is."
names(data)[31] <- "extraQuestJustificat_vraag6"
# LimeSurvey Field type: F
data[, 32] <- as.numeric(data[, 32])
attributes(data)$variable.labels[32] <- "[Vraag 7 ] 			Vraag 9Leg hier uit waarom elk van de extra vragen die je hierboven suggereerde belangrijk is."
names(data)[32] <- "extraQuestJustificat_vraag7"
# LimeSurvey Field type: F
data[, 33] <- as.numeric(data[, 33])
attributes(data)$variable.labels[33] <- "[Vraag 8 ] 			Vraag 9Leg hier uit waarom elk van de extra vragen die je hierboven suggereerde belangrijk is."
names(data)[33] <- "extraQuestJustificat_vraag8"
# LimeSurvey Field type: F
data[, 34] <- as.numeric(data[, 34])
attributes(data)$variable.labels[34] <- "[Vraag 9] 			Vraag 9Leg hier uit waarom elk van de extra vragen die je hierboven suggereerde belangrijk is."
names(data)[34] <- "extraQuestJustificat_vraag9"
# LimeSurvey Field type: F
data[, 35] <- as.numeric(data[, 35])
attributes(data)$variable.labels[35] <- "[Vraag 10] 			Vraag 9Leg hier uit waarom elk van de extra vragen die je hierboven suggereerde belangrijk is."
names(data)[35] <- "extraQuestJustificat_vraag10"
# LimeSurvey Field type: 
data[, 36] <- as.numeric(data[, 36])
attributes(data)$variable.labels[36] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 37] <- as.numeric(data[, 37])
attributes(data)$variable.labels[37] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 38] <- as.numeric(data[, 38])
attributes(data)$variable.labels[38] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 39] <- as.numeric(data[, 39])
attributes(data)$variable.labels[39] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 40] <- as.numeric(data[, 40])
attributes(data)$variable.labels[40] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 41] <- as.numeric(data[, 41])
attributes(data)$variable.labels[41] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 42] <- as.numeric(data[, 42])
attributes(data)$variable.labels[42] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 43] <- as.numeric(data[, 43])
attributes(data)$variable.labels[43] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 44] <- as.numeric(data[, 44])
attributes(data)$variable.labels[44] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 45] <- as.numeric(data[, 45])
attributes(data)$variable.labels[45] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 46] <- as.numeric(data[, 46])
attributes(data)$variable.labels[46] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 47] <- as.numeric(data[, 47])
attributes(data)$variable.labels[47] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 48] <- as.numeric(data[, 48])
attributes(data)$variable.labels[48] <- ""
#sql_name not set
