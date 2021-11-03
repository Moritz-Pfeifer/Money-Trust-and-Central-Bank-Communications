
Non_Words <- read.table(file = "~/Stopwords/stopwords-fr.txt", encoding = "UTF-8")

Bi_Grams <- read.csv("~/Dict_ENG/Dict_FR/Dict_Trust_FR_2.csv")

#Bi_Grams <- Trust_Dicts

Bi_Grams$Adjetives_Verbs <-  gsub('[/*]', '', Bi_Grams$Adjetives_Verbs)
Bi_Grams$Nouns_Dependent <- gsub('[/*]','', Bi_Grams$Nouns_Dependent)
Bi_Grams$Adjetives_Verbs <- stringr::str_trim(Bi_Grams$Adjetives_Verbs)
Bi_Grams$Nouns_Dependent <- stringr::str_trim(Bi_Grams$Nouns_Dependent)



Bi_Grams$N_Grams <- paste(" ", Bi_Grams$Adjetives_Verbs, Bi_Grams$Nouns_Dependent," ")
Bi_Grams$N_Grams_2 <- paste(" ", Bi_Grams$Nouns_Dependent,Bi_Grams$Adjetives_Verbs, " ")
Bi_Grams$N_Grams <- tolower(Bi_Grams$N_Grams)
Bi_Grams$N_Grams_2 <- tolower(Bi_Grams$N_Grams_2)

Bi_Grams$N_Grams <- stemDocument(Bi_Grams$N_Grams, language = "french")
Bi_Grams$N_Grams_2 <- stemDocument(Bi_Grams$N_Grams_2, language = "french")

Bi_Grams_2 <- Bi_Grams
Bi_Grams_2$N_Grams <- NULL
colnames(Bi_Grams_2)[4]<- c("N_Grams")
Bi_Grams$N_Grams_2 <- NULL
Bi_Grams <- rbind(Bi_Grams, Bi_Grams_2)



Bi_Grams$N_Grams <- paste(" ", Bi_Grams$N_Grams, " ")
Bi_Grams$N_Grams_Squished <- gsub(" ","",Bi_Grams$N_Grams, fixed = TRUE)
rm(Bi_Grams_2, Bi_Grams_3)




Non_Words$Stop_Words <- stemDocument(Non_Words$V1,language = "english")


Test_1 <- as.data.frame(Bi_Grams$Adjetives_Verbs)
Test_2 <- as.data.frame(Bi_Grams$Nouns_Dependent)
colnames(Test_1)[1]<- c("Key")
colnames(Test_2)[1]<- c("Key")


Test_1 <- rbind(Test_1, Test_2)
rm(Test_2)
Test_1 <- unique(Test_1)

Test_1$Key_2 <- tolower(Test_1$Key)

Test_1$Key_2 <- stemDocument(Test_1$Key_2, language = "english")


Non_Words$Match <- match(Non_Words$Stop_Words, Test_1$Key_2)

Non_Words <- subset(Non_Words, is.na(Non_Words$Match)!=TRUE)




