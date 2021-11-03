
###########################################################
##
## Master Dataset Creation from preprocessed files
## 09/08/2021
## German Dictionaries
##
######################################################

setwd("~/")

library(fuzzyjoin)
library(data.table)
library(stringr)
library(cld2)
library(textcat)
library(utf8)
library(stopwords)
library(ngram)
library(tm)
library(SnowballC)
library(SentimentAnalysis)
library(syuzhet)
library(radiant.data)
library(wordcloud)
library(stringi)

##
## Importing Data Files
##


Interventions <- read.csv("~/Autres_interventions_BF/Master_Interventions_08262021.csv")#214 Items in Folder

Discourse <- read.csv("~/Discours_BF/Master_Discourse_08282021.csv") #239 Items in Folder

Interviews_BB <- read.csv("~/Interviews_BB/Master_Interviews_BB_08282021.csv") #588 Items in Folder

Interviews_BF <- read.csv("~/Interviews_BF/Master_Interventions_08262021.csv") #267 Items in Folder

Interviews_ECB <- read.csv("~/Interviews_ECB/Master_Interviews_ECB_08282021.csv") # 338 Items in Folder

Press_ECB <- read.csv("~/Interviews_Press_Databases_ECB\\Master_Press_ECB_08282021.csv") # 453 Items in Folder

Reden <- read.csv("~/Reden_BB/Master_08312021.csv") # 1098 Items in Folder

All_ECB <- read.table("~/Data_Processing/all_ECB_speeches.csv", sep = "|", quote = "", fill = TRUE, header = TRUE, encoding = "UTF-8", stringsAsFactors = FALSE)

Speakers_2 <- read.csv("~/Moritz_Speakers_08302021.csv")

Non_Words <- read.table(file = "~/Stopwords/stopwords-de.txt",encoding = "UTF-8")

Bi_Grams <- read.csv("~/Dict_ENG/Dict_Insiders_DE_2.csv")

Out_Dicts <- read.csv("~/Dict_ENG/Dict_DE/Dict_Outsiders_DE_2.csv")

Super_Dicts <- read.csv("~/Dict_ENG/Dict_DE/Dict_Super_DE_2.csv")

Trust_Dicts <- read.csv("~/Dict_ENG\\Dict_DE\\Dict_Trust_DE_2.csv")


colnames(All_ECB)
colnames(Discourse)
colnames(Interventions)
colnames(Interviews_BB)
colnames(Interviews_BF)
colnames(Interviews_ECB)
colnames(Press_ECB)
colnames(Reden)

Discourse$N_Chars <- nchar(Discourse$X)
table(Discourse$N_Chars)
Discourse$N_Chars <- NULL

table(Reden$AUTHOR)


#
# Process All_ECB
#

colnames(All_ECB)
colnames(All_ECB)[1]<- c("DATE")
colnames(All_ECB)[2]<- c("AUTHOR")
colnames(All_ECB)[3]<- c("TITLE") 
colnames(All_ECB)[5]<- c("TEXT")
All_ECB$subtitle <- NULL


##
## Author column
##

colnames(Interventions)
colnames(All_ECB)


unique(Interventions$AUTHOR)
unique(Discourse$AUTHOR)
unique(Interviews_BB$AUTHOR)
unique(Interviews_BF$AUTHOR)
unique(Interviews_ECB$AUTHOR)
unique(Press_ECB$AUTHOR)
unique(Reden$AUTHOR)


Au_Dis <- as.data.frame(Discourse[,c("AUTHOR")])
Au_Inter <- as.data.frame(Interventions[,c("AUTHOR")])
Au_Views_BB <- as.data.frame(Interviews_BB[,c("AUTHOR")])
Au_Views_BF <- as.data.frame(Interviews_BB[,c("AUTHOR")])
Au_Views_ECB <- as.data.frame(Interviews_ECB[,c("AUTHOR")])
Au_Press <- as.data.frame(Press_ECB[,c("AUTHOR")])
Au_Reden <- as.data.frame(Reden[,c("AUTHOR")])
Au_All_ECB <- as.data.frame(All_ECB[,c("AUTHOR")])

colnames(Au_Dis)[1]<- c("AUTHOR")
colnames(Au_Inter)[1]<- c("AUTHOR")
colnames(Au_Views_BB)[1]<- c("AUTHOR")
colnames(Au_Views_BF)[1]<- c("AUTHOR")
colnames(Au_Views_ECB)[1]<- c("AUTHOR")
colnames(Au_Press)[1]<- c("AUTHOR")
colnames(Au_Reden)[1]<- c("AUTHOR")
colnames(Au_All_ECB)[1]<- c("AUTHOR")


Speakers <- as.data.frame(rbind(Au_Dis, 
                                Au_Inter, 
                                Au_Views_BB, 
                                Au_Views_ECB, 
                                Au_Views_BF, 
                                Au_Press, 
                                Au_Reden,
                                Au_All_ECB))

Speakers$AUTHOR <- toupper(Speakers$AUTHOR)
Speakers$AUTHOR <- str_trim(Speakers$AUTHOR)
Speakers$AUTHOR <- str_squish(Speakers$AUTHOR)

Speakers <- unique(Speakers)

rm(Au_Dis, 
   Au_Inter, 
   Au_Views_BB, 
   Au_Views_ECB, 
   Au_Views_BF, 
   Au_Press, 
   Au_Reden,
   Au_All_ECB)

#
# Work names, positions and tenure on Excel
#


#Speaker_List <- read.csv("C:\\Users\\salaz\\Desktop\\Moritz\\Speakers_List.csv")
#Speaker_List$AUTHOR <- toupper(Speaker_List$AUTHOR)
#Speakers <- subset(Speakers, is.na(Speakers$AUTHOR)==FALSE)
#Speakers_2 <- stringdist_left_join(Speakers, Speaker_List, by= c("AUTHOR"), method = "osa", max_dist= 10, distance_col= "Distance")
#write.csv(Speakers_2, file = "Speakers_2.csv")




Discourse$AUTHOR <- toupper(str_trim(Discourse$AUTHOR))
Discourse$Match <- match(Discourse$AUTHOR, Speakers_2$AUTHOR.x)
Discourse$AUTHOR_2 <- Speakers_2[Discourse$Match,]$AUTHOR.y
Discourse$Position <- Speakers_2[Discourse$Match,]$Position
Discourse$Tenure_1_Start <- Speakers_2[Discourse$Match,]$Tenure_1_Start
Discourse$Tenure_1_End <- Speakers_2[Discourse$Match,]$Tenure_1_End
Discourse$Tenure_2_Start <- Speakers_2[Discourse$Match,]$Tenure_2_Start
Discourse$Tenure_2_End <- Speakers_2[Discourse$Match,]$Tenure_2_End
Discourse$Tenure_3_Start <- Speakers_2[Discourse$Match,]$Tenure_3_Start
Discourse$Tenure_3_End <- Speakers_2[Discourse$Match,]$Tenure_3_End
Discourse$Nationality <- Speakers_2[Discourse$Match,]$Nationality



All_ECB$AUTHOR <- toupper(str_trim(All_ECB$AUTHOR))
All_ECB$Match <- match(All_ECB$AUTHOR, Speakers_2$AUTHOR.x)
All_ECB$AUTHOR_2 <- Speakers_2[All_ECB$Match,]$AUTHOR.y
All_ECB$Position <- Speakers_2[All_ECB$Match,]$Position
All_ECB$Tenure_1_Start <- Speakers_2[All_ECB$Match,]$Tenure_1_Start
All_ECB$Tenure_1_End <- Speakers_2[All_ECB$Match,]$Tenure_1_End
All_ECB$Tenure_2_Start <- Speakers_2[All_ECB$Match,]$Tenure_2_Start
All_ECB$Tenure_2_End <- Speakers_2[All_ECB$Match,]$Tenure_2_End
All_ECB$Tenure_3_Start <- Speakers_2[All_ECB$Match,]$Tenure_3_Start
All_ECB$Tenure_3_End <- Speakers_2[All_ECB$Match,]$Tenure_3_End
All_ECB$Nationality <- Speakers_2[All_ECB$Match,]$Nationality



Interventions$AUTHOR <- toupper(str_trim(Interventions$AUTHOR))
Interventions$Match <- match(Interventions$AUTHOR, Speakers_2$AUTHOR.x)
Interventions$AUTHOR_2 <- Speakers_2[Interventions$Match,]$AUTHOR.y
Interventions$Position <- Speakers_2[Interventions$Match,]$Position
Interventions$Tenure_1_Start <- Speakers_2[Interventions$Match,]$Tenure_1_Start
Interventions$Tenure_1_End <- Speakers_2[Interventions$Match,]$Tenure_1_End
Interventions$Tenure_2_Start <- Speakers_2[Interventions$Match,]$Tenure_2_Start
Interventions$Tenure_2_End <- Speakers_2[Interventions$Match,]$Tenure_2_End
Interventions$Tenure_3_Start <- Speakers_2[Interventions$Match,]$Tenure_3_Start
Interventions$Tenure_3_End <- Speakers_2[Interventions$Match,]$Tenure_3_End
Interventions$Nationality <- Speakers_2[Interventions$Match,]$Nationality



Interviews_BB$AUTHOR <- toupper(str_trim(Interviews_BB$AUTHOR))
Interviews_BB$Match <- match(Interviews_BB$AUTHOR, Speakers_2$AUTHOR.x)
Interviews_BB$AUTHOR_2 <- Speakers_2[Interviews_BB$Match,]$AUTHOR.y
Interviews_BB$Position <- Speakers_2[Interviews_BB$Match,]$Position
Interviews_BB$Tenure_1_Start <- Speakers_2[Interviews_BB$Match,]$Tenure_1_Start
Interviews_BB$Tenure_1_End <- Speakers_2[Interviews_BB$Match,]$Tenure_1_End
Interviews_BB$Tenure_2_Start <- Speakers_2[Interviews_BB$Match,]$Tenure_2_Start
Interviews_BB$Tenure_2_End <- Speakers_2[Interviews_BB$Match,]$Tenure_2_End
Interviews_BB$Tenure_3_Start <- Speakers_2[Interviews_BB$Match,]$Tenure_3_Start
Interviews_BB$Tenure_3_End <- Speakers_2[Interviews_BB$Match,]$Tenure_3_End
Interviews_BB$Nationality <- Speakers_2[Interviews_BB$Match,]$Nationality



Interviews_BF$AUTHOR <- toupper(str_trim(Interviews_BF$AUTHOR))
Interviews_BF$Match <- match(Interviews_BF$AUTHOR, Speakers_2$AUTHOR.x)
Interviews_BF$AUTHOR_2 <- Speakers_2[Interviews_BF$Match,]$AUTHOR.y
Interviews_BF$Position <- Speakers_2[Interviews_BF$Match,]$Position
Interviews_BF$Tenure_1_Start <- Speakers_2[Interviews_BF$Match,]$Tenure_1_Start
Interviews_BF$Tenure_1_End <- Speakers_2[Interviews_BF$Match,]$Tenure_1_End
Interviews_BF$Tenure_2_Start <- Speakers_2[Interviews_BF$Match,]$Tenure_2_Start
Interviews_BF$Tenure_2_End <- Speakers_2[Interviews_BF$Match,]$Tenure_2_End
Interviews_BF$Tenure_3_Start <- Speakers_2[Interviews_BF$Match,]$Tenure_3_Start
Interviews_BF$Tenure_3_End <- Speakers_2[Interviews_BF$Match,]$Tenure_3_End
Interviews_BF$Nationality <- Speakers_2[Interviews_BF$Match,]$Nationality


Interviews_ECB$AUTHOR <- toupper(str_trim(Interviews_ECB$AUTHOR))
Interviews_ECB$Match <- match(Interviews_ECB$AUTHOR, Speakers_2$AUTHOR.x)
Interviews_ECB$AUTHOR_2 <- Speakers_2[Interviews_ECB$Match,]$AUTHOR.y
Interviews_ECB$Position <- Speakers_2[Interviews_ECB$Match,]$Position
Interviews_ECB$Tenure_1_Start <- Speakers_2[Interviews_ECB$Match,]$Tenure_1_Start
Interviews_ECB$Tenure_1_End <- Speakers_2[Interviews_ECB$Match,]$Tenure_1_End
Interviews_ECB$Tenure_2_Start <- Speakers_2[Interviews_ECB$Match,]$Tenure_2_Start
Interviews_ECB$Tenure_2_End <- Speakers_2[Interviews_ECB$Match,]$Tenure_2_End
Interviews_ECB$Tenure_3_Start <- Speakers_2[Interviews_ECB$Match,]$Tenure_3_Start
Interviews_ECB$Tenure_3_End <- Speakers_2[Interviews_ECB$Match,]$Tenure_3_End
Interviews_ECB$Nationality <- Speakers_2[Interviews_ECB$Match,]$Nationality


Press_ECB$AUTHOR <- toupper(str_trim(Press_ECB$AUTHOR))
Press_ECB$Match <- match(Press_ECB$AUTHOR, Speakers_2$AUTHOR.x)
Press_ECB$AUTHOR_2 <- Speakers_2[Press_ECB$Match,]$AUTHOR.y
Press_ECB$Position <- Speakers_2[Press_ECB$Match,]$Position
Press_ECB$Tenure_1_Start <- Speakers_2[Press_ECB$Match,]$Tenure_1_Start
Press_ECB$Tenure_1_End <- Speakers_2[Press_ECB$Match,]$Tenure_1_End
Press_ECB$Tenure_2_Start <- Speakers_2[Press_ECB$Match,]$Tenure_2_Start
Press_ECB$Tenure_2_End <- Speakers_2[Press_ECB$Match,]$Tenure_2_End
Press_ECB$Tenure_3_Start <- Speakers_2[Press_ECB$Match,]$Tenure_3_Start
Press_ECB$Tenure_3_End <- Speakers_2[Press_ECB$Match,]$Tenure_3_End
Press_ECB$Nationality <- Speakers_2[Press_ECB$Match,]$Nationality


Reden$AUTHOR <- toupper(str_trim(Reden$AUTHOR))
Reden$Match <- match(Reden$AUTHOR, Speakers_2$AUTHOR.x)
Reden$AUTHOR_2 <- Speakers_2[Reden$Match,]$AUTHOR.y
Reden$Position <- Speakers_2[Reden$Match,]$Position
Reden$Tenure_1_Start <- Speakers_2[Reden$Match,]$Tenure_1_Start
Reden$Tenure_1_End <- Speakers_2[Reden$Match,]$Tenure_1_End
Reden$Tenure_2_Start <- Speakers_2[Reden$Match,]$Tenure_2_Start
Reden$Tenure_2_End <- Speakers_2[Reden$Match,]$Tenure_2_End
Reden$Tenure_3_Start <- Speakers_2[Reden$Match,]$Tenure_3_Start
Reden$Tenure_3_End <- Speakers_2[Reden$Match,]$Tenure_3_End
Reden$Nationality <- Speakers_2[Reden$Match,]$Nationality



table(Reden$AUTHOR_2)
table(Reden$AUTHOR)

#
# Labeling source
#

All_ECB$SOURCE <- paste("ECB_Website")
Discourse$SOURCE <- paste("Discourse_BF")
Interventions$SOURCE <- paste("Autres_Interventions")
Interviews_BB$SOURCE <- paste("Interviews_BB")
Interviews_BF$SOURCE <- paste("Interviews_BF")
Interviews_ECB$SOURCE <- paste("Interviews_ECB")
Press_ECB$SOURCE <- paste("Press_ECB")
Reden$SOURCE <- paste("Reden_BB")

#
# Dates formatting
#


All_ECB$Date_2 <- as.Date(All_ECB$DATE)
Discourse$Date_2 <- paste0(substr(Discourse$DATE,7,10),"/", substr(Discourse$DATE,4,5),"/",substr(Discourse$DATE,0,2))
Discourse$Date_2 <- as.Date(Discourse$Date_2)

Interventions$Date_2 <- paste0(substr(Interventions$DATE,7,10),"/", substr(Interventions$DATE,4,5),"/",substr(Interventions$DATE,0,2))
Interventions$Date_2 <- as.Date(Interventions$Date_2)

Interviews_BB$DATE <- str_trim(Interviews_BB$DATE, side = c("both"))
Interviews_BB$DATE_2 <- ifelse(nchar(Interviews_BB$DATE)<10, paste0("0",Interviews_BB$DATE), paste(Interviews_BB$DATE))
Interviews_BB$DATE_2 <- paste0(substr(Interviews_BB$DATE_2,7,10),"/", substr(Interviews_BB$DATE_2,4,5),"/",substr(Interviews_BB$DATE_2,0,2))
Interviews_BB$Date_2 <- as.Date(Interviews_BB$DATE_2)
Interviews_BB$DATE_2 <- NULL

Interviews_BF$Date_2 <- paste0(substr(Interviews_BF$DATE,7,10),"/", substr(Interviews_BF$DATE,4,5),"/",substr(Interviews_BF$DATE,0,2))
Interviews_BF$Date_2 <- as.Date(Interviews_BF$Date_2)

Interviews_ECB$Date_2 <- as.Date(Interviews_ECB$DATE)

Press_ECB$Date_2 <- paste0(substr(Press_ECB$DATE,7,10),"/", substr(Press_ECB$DATE,4,5),"/",substr(Press_ECB$DATE,0,2))
Press_ECB$Date_2 <- as.Date(Press_ECB$Date_2)

Reden$Date_2 <- paste0(substr(Reden$DATE,7,10),"/", substr(Reden$DATE,4,5),"/",substr(Reden$DATE,0,2))
Reden$Date_2 <- as.Date(Reden$Date_2)

#
# NAs names 
#

table(All_ECB$AUTHOR)#1
table(Discourse$AUTHOR_2, useNA = "always")#173
table(Interventions$AUTHOR_2,useNA = "always")#147
table(Interviews_BB$AUTHOR_2,useNA = "always")#35
table(Interviews_BF$AUTHOR_2, useNA = "always")#177
table(Interviews_ECB$AUTHOR_2, useNA = "always")#135
table(Press_ECB$AUTHOR_2, useNA = "always")# 190
table(Reden$AUTHOR_2, useNA = "always")#599


Discourse_NA <- subset(Discourse, is.na(Discourse$AUTHOR_2)==TRUE)
Discourse <- subset(Discourse,is.na(Discourse$AUTHOR_2)==FALSE)
colnames(Discourse_NA)

Interventions_NA <- subset(Interventions, is.na(Interventions$AUTHOR_2)==TRUE)
Interventions <- subset(Interventions, nchar(Interventions$AUTHOR_2)>4)
colnames(Interventions_NA)

Interviews_BB_NA <- subset(Interviews_BB, is.na(Interviews_BB$AUTHOR_2)==TRUE)
Interviews_BB <- subset(Interviews_BB, nchar(Interviews_BB$AUTHOR_2)>4)

Interviews_BF_NA <- subset(Interviews_BF, is.na(Interviews_BF$AUTHOR_2)==TRUE)
Interviews_BF <- subset(Interviews_BF, nchar(Interviews_BF$AUTHOR_2)>4)

Press_ECB_NA <- subset(Press_ECB, is.na(Press_ECB$AUTHOR_2)==TRUE)
Press_ECB <- subset(Press_ECB, nchar(Press_ECB$AUTHOR_2)>4)

Reden_NA <- subset(Reden, is.na(Reden$AUTHOR_2)==TRUE)
Reden <- subset(Reden, nchar(Reden$AUTHOR_2)>4)



Reden_NA$X <- paste("z")

NAs_Names <- rbind(Discourse_NA,
                   Interventions_NA,
                   Interviews_BB_NA,
                   Interviews_BF_NA,
                   Press_ECB_NA,
                   Reden_NA)
NAs_Names$TEXT <- str_squish(NAs_Names$TEXT)

NAs_Names$AUTHOR_2 <- ifelse(str_detect(NAs_Names$TEXT, "Noyer")== TRUE,"CHRISTIAN NOYER",
                             ifelse(str_detect(NAs_Names$TEXT, "NOYER")==TRUE,"CHRISTIAN NOYER",
                                    ifelse(str_detect(NAs_Names$TEXT, "NOYER")==TRUE, "CHRISTIAN NOYER",
                                           ifelse(str_detect(NAs_Names$TEXT, "NOYER")==TRUE,"CHRISTIAN NOYER",
                                                  ifelse(str_detect(NAs_Names$TEXT, "Noyer")==TRUE,"CHRISTIAN NOYER",
                                                         ifelse(str_detect(NAs_Names$TEXT,"TRICHET")==TRUE, "JEAN-CLAUDE TRICHET",
                                                                ifelse(str_detect(NAs_Names$TEXT, "Trichet")==TRUE, "JEAN-CLAUDE TRICHET",
                                                                       ifelse(str_detect(NAs_Names$TEXT, "TIUCHET")==TRUE, "JEAN-CLAUDE TRICHET",
                                                                              ifelse(str_detect(NAs_Names$TEXT,"TRI CHET")==TRUE, "JEAN-CLAUDE TRICHET",
                                                                                     ifelse(str_detect(NAs_Names$TEXT,"TR/CHET")==TRUE, "JEAN-CLAUDE TRICHET",
                                                                                            ifelse(str_detect(NAs_Names$TEXT,"Trichel")==TRUE, "JEAN-CLAUDE TRICHET",       
                                                                                                   ifelse(str_detect(NAs_Names$TEXT, "Goulard")== TRUE, "SYLVIE GOULARD",
                                                                                                          ifelse(str_detect(NAs_Names$TEXT, "OPHELE")==TRUE,"ROBERT OPH?LE",
                                                                                                                 ifelse(str_detect(NAs_Names$TEXT, "Oph?le")==TRUE,"ROBERT OPH?LE",
                                                                                                                        ifelse(str_detect(NAs_Names$TEXT, "OPH?LE")==TRUE,"ROBERT OPH?LE",
                                                                                                                               ifelse(str_detect(NAs_Names$TEXT, "Denis Beau")==TRUE,"DENIS BEAU",
                                                                                                                                      ifelse(str_detect(NAs_Names$TEXT, "Dombret")==TRUE,"ANDREAS DOMBRET",
                                                                                                                                             ifelse(str_detect(NAs_Names$TEXT, "Weidmann")==TRUE,"JENS WEIDMANN",
                                                                                                                                                    ifelse(str_detect(NAs_Names$TEXT, "Landau")==TRUE,"JEAN-PIERRE LANDAU",
                                                                                                                                                           ifelse(str_detect(NAs_Names$TEXT, "REDOUIN")==TRUE,"JEAN-PAUL REDOUIN",
                                                                                                                                                                  ifelse(str_detect(NAs_Names$TEXT, "Redouin")==TRUE,"JEAN-PAUL REDOUIN",
                                                                                                                                                                         ifelse(str_detect(NAs_Names$TEXT, "GALHAU")==TRUE, "FRAN?OIS VILLEROY DE GALHAU",
                                                                                                                                                                                ifelse(str_detect(NAs_Names$TEXT, "GALHAU")==TRUE,"FRAN?OIS VILLEROY DE GALHAU",
                                                                                                                                                                                       ifelse(str_detect(NAs_Names$TEXT, "Galhau")== TRUE,"FRAN?OIS VILLEROY DE GALHAU",
                                                                                                                                                                                              ifelse(str_detect(NAs_Names$TEXT, "Issing")== TRUE,"OTMAR ISSING",
                                                                                                                                                                                                     ifelse(str_detect(NAs_Names$TEXT, "ISSING")== TRUE,"OTMAR ISSING",
                                                                                                                                                                                                            ifelse(str_detect(NAs_Names$TEXT, "Stark")== TRUE,"J?RGEN STARK",
                                                                                                                                                                                                                   ifelse(str_detect(NAs_Names$TEXT, "Le Lorier")== TRUE,"ANNE LE LORIER",
                                                                                                                                                                                                                          ifelse(str_detect(NAs_Names$TEXT, "LE LORIER")== TRUE,"ANNE LE LORIER",
                                                                                                                                                                                                                                 ifelse(str_detect(NAs_Names$TEXT, "HANNOUN")== TRUE,"HERV? HANNOUN"," "))))))))))))))))))))))))))))))

NAs_Names$AUTHOR_2 <- str_trim(NAs_Names$AUTHOR_2, side = "both")
NAs_Names$N_Char <- nchar(NAs_Names$AUTHOR_2)
table(NAs_Names$N_Char)
sum(table(NAs_Names$AUTHOR_2, useNA = "always"))

rownames(NAs_Names) <- NULL
NAs_Names <- NAs_Names[order(NAs_Names$AUTHOR_2, decreasing = FALSE),]
NAs_Names[2,5]

Still_NAs <- subset(NAs_Names, NAs_Names$AUTHOR_2)

##
## Assigning Names to Governor by date of tenure and speech
##


Names_Gorvernour <- subset(NAs_Names, nchar(NAs_Names$AUTHOR_2)<5)

Names_Gorvernour$AUTHOR_2 <- ifelse(stringr::str_detect(substr(Names_Gorvernour$TEXT,0,200),"Gouverneur")== TRUE,paste("Governor"),
                                    ifelse(stringr::str_detect(substr(Names_Gorvernour$TEXT,0,200),"gouverneur")== TRUE, paste("Governor"),
                                           ifelse(stringr::str_detect(substr(Names_Gorvernour$TEXT,0,200),"GOUVERNEUR")== TRUE, paste("Governor"),"Fail")))
NAs_Names$N_Char <- NULL

table(Names_Gorvernour$AUTHOR_2)

Names_Gorvernour <- subset(Names_Gorvernour, Names_Gorvernour$AUTHOR_2== "Governor")


table(Names_Gorvernour$DATE)

Names_Gorvernour$AUTHOR_2 <- ifelse(as.Date(Names_Gorvernour$Date_2) < "2003-10-31", "JEAN-CLAUDE TRICHET", "CHRISTIAN NOYER")
Names_Gorvernour$AUTHOR_2 <- ifelse(as.Date(Names_Gorvernour$Date_2)> "2015-11-01", "FRAN?OIS VILLEROY DE GALHAU",paste(Names_Gorvernour$AUTHOR_2))


Names_Gorvernour$N_Char <- NULL




rm(Discourse_NA, Interventions_NA, Interviews_BB_NA, Interviews_BF_NA, Press_ECB_NA, Reden_NA)


###
### Merging All Data
###


All_ECB$X <- paste("s")
Reden$X <- paste("z")
All_ECB$DATE <- as.character(All_ECB$DATE)


All_Speeches <- rbind(All_ECB, Discourse,Interventions, Interviews_BB, Interviews_BF, Interviews_ECB, Press_ECB, Reden, NAs_Names,Names_Gorvernour)
table(All_Speeches$AUTHOR_2)
All_Speeches$AUTHOR_2 <- str_trim(All_Speeches$AUTHOR_2, side = c("both"))
All_Speeches$AUTHOR_2 <- ifelse(is.na(All_Speeches$AUTHOR_2)==TRUE, paste(All_Speeches$AUTHOR),paste(All_Speeches$AUTHOR_2))

All_Speeches$AUTHOR_2 <- ifelse(All_Speeches$AUTHOR_2=="HERMANN REMSPERGER", paste("HERMANN REMSPARGER"), paste(All_Speeches$AUTHOR_2))
table(All_Speeches$AUTHOR_2)

All_Speeches$TEXT <- str_trim(All_Speeches$TEXT)
All_Speeches$TEXT <- str_squish(All_Speeches$TEXT)
table(All_Speeches$AUTHOR_2)


##
## How many speeches and speakers
##

All_Speeches$Name_Date <- paste0(All_Speeches$Date_2,"_", All_Speeches$AUTHOR_2)
All_Speeches$Page_Count <- paste(1)

Total_Speeches <- aggregate(as.numeric(All_Speeches$Page_Count)~All_Speeches$Name_Date + All_Speeches$AUTHOR_2, FUN = sum)

colnames(Total_Speeches)[1]<- c("Name_Date")
colnames(Total_Speeches)[2]<- c("Speaker")
colnames(Total_Speeches)[3]<- c("Page_Count")

Total_Speeches$Count <- paste(1)
Total_Speakers <- aggregate(as.numeric(Total_Speeches$Count)~Total_Speeches$Speaker, FUN = sum)
colnames(Total_Speakers)[1]<- c("Speaker")
colnames(Total_Speakers)[2]<- c("Total_Speeches")

table(All_Speeches$AUTHOR_2)

sum(as.numeric(Total_Speeches$Page_Count))
unique(All_Speeches$Name_Date)


##
## Cleaning out Speakers of no interest
##

All_Speeches_2 <- All_Speeches

All_Speeches_2 <- subset(All_Speeches_2, !All_Speeches_2$AUTHOR_2=="ALEXANDRE LAMFALUSSY"&
                           !All_Speeches_2$AUTHOR_2=="CHRISTINE LAGARDE,LUIS DE GUINDOS"&
                           !All_Speeches_2$AUTHOR_2=="EUGENIO DOMINGO SOLANS"&
                           !All_Speeches_2$AUTHOR_2=="FABIO PANETTA"&
                           !All_Speeches_2$AUTHOR_2=="FRANK ELDERSON"&
                           !All_Speeches_2$AUTHOR_2=="HANS-J?RGEN FRIEDERICH"&
                           !All_Speeches_2$AUTHOR_2=="J?RG ASMUSSEN, BENO?T COUR?"&
                           !All_Speeches_2$AUTHOR_2=="JOSé MANUEL GONZáLEZ-PáRAMO"&
                           !All_Speeches_2$AUTHOR_2=="JOS? MANUEL GONZ?LEZ-P?RAMO"&
                           !All_Speeches_2$AUTHOR_2=="LORENZO BINI SMAGHI"&
                           !All_Speeches_2$AUTHOR_2=="LUCAS PAPADEMOS"&
                           !All_Speeches_2$AUTHOR_2=="LUIS DE GUINDOS"&
                           !All_Speeches_2$AUTHOR_2=="MARIO DRAGHI"&
                           !All_Speeches_2$AUTHOR_2=="PETER PRAET"&
                           !All_Speeches_2$AUTHOR_2=="PHILIP R. LANE"&
                           !All_Speeches_2$AUTHOR_2=="SIRKKA HäMäLäINEN"&
                           !All_Speeches_2$AUTHOR_2=="TOMMASO PADOA-SCHIOPPA"&
                           !All_Speeches_2$AUTHOR_2== "V?TOR CONST?NCIO" &
                           !All_Speeches_2$AUTHOR_2=="WILLEM F. DUISENBERG"&
                           !All_Speeches_2$AUTHOR_2=="WILLEM F. DUISENBERG,EUGENIO DOMINGO SOLANS"&
                           !All_Speeches_2$AUTHOR_2=="YVES MERSCH"&
                           !All_Speeches_2$AUTHOR_2=="ISABEL SCHNABEL"&
                           !All_Speeches_2$AUTHOR_2=="GERTRUDE TUMPEL-GUGERELL")

All_Speeches_2$First_Name <- substr(All_Speeches_2$AUTHOR_2,0,1)
table(All_Speeches_2$AUTHOR_2, All_Speeches_2$First_Name)
All_Speeches_2 <- subset(All_Speeches_2, !All_Speeches_2$First_Name == "V")

All_Speeches_2$First_Name <- NULL
All_Speeches_2$N_Chars <- NULL


Total_Speeches_2 <- aggregate(as.numeric(All_Speeches_2$Page_Count)~All_Speeches_2$Name_Date + All_Speeches_2$AUTHOR_2, FUN = sum)
colnames(Total_Speeches_2)[1]<- c("Name_Date")
colnames(Total_Speeches_2)[2]<- c("Speaker")
colnames(Total_Speeches_2)[3]<- c("Page_Count")


Total_Speeches_2$Count <- paste(as.numeric(1))

Total_Speakers_2 <- aggregate(as.numeric(Total_Speeches_2$Count)~Total_Speeches_2$Speaker, FUN = sum)

sum(as.numeric(Total_Speakers_2$`as.numeric(Total_Speeches_2$Count)`))

table(All_Speeches_2$AUTHOR_2)

length(unique(All_Speeches_2$AUTHOR_2))


colnames(All_Speeches_2)
#write.csv(Total_Speakers, file = "Speakers_08242021.csv")


##
## Subsetting by time of analysis January 1st 1999 and December 31ts 2019
##



min(All_Speeches_2$Date_2, na.rm = TRUE)
max(All_Speeches_2$Date_2, na.rm = TRUE)


All_Speeches_3 <- subset(All_Speeches_2, All_Speeches_2$Date_2 >= "1999-01-01")
All_Speeches_3 <- subset(All_Speeches_3, All_Speeches_3$Date_2 <= "2019-12-31")
min(All_Speeches_3$Date_2, na.rm = TRUE)
max(All_Speeches_3$Date_2, na.rm = TRUE)


head(All_Speeches_3,10)

# How many interventions total per speaker
table(All_Speeches_3$AUTHOR_2)
colnames(All_Speeches_3)

summary(as.numeric(All_Speeches_3$Page_Count))
Total_Pages_Per_Speech <- aggregate(as.numeric(All_Speeches_3$Page_Count)~ All_Speeches_3$Name_Date + All_Speeches_3$AUTHOR_2+All_Speeches_3$SOURCE, FUN= sum)

colnames(Total_Pages_Per_Speech)[1]<- c("Speech_Name_Date")
colnames(Total_Pages_Per_Speech)[2]<- c("AUTHOR_2")
colnames(Total_Pages_Per_Speech)[3]<- c("SOURCE")
colnames(Total_Pages_Per_Speech)[4]<- c("Total_Pages")

Total_Pages_Per_Speech$Count <- paste(1)

Total_Speeches_by_Speaker <- aggregate(as.numeric(Total_Pages_Per_Speech$Count)~Total_Pages_Per_Speech$AUTHOR_2, FUN = sum)
colnames(Total_Speeches_by_Speaker)[1]<- c("AUTOR_2")
colnames(Total_Speeches_by_Speaker)[2]<- c("Total_Speeches")

table(All_Speeches_3$SOURCE, useNA = "always")

##
## Date formatting tenure columns
##

All_Speeches_3$Tenure_1_Start <- as.Date(All_Speeches_3$Tenure_1_Start, origin =  "1899-12-30")
All_Speeches_3$Tenure_1_End <- as.Date(All_Speeches_3$Tenure_1_End, origin =  "1899-12-30")

All_Speeches_3$Tenure_2_Start <- as.Date(All_Speeches_3$Tenure_2_Start, origin =  "1899-12-30")
All_Speeches_3$Tenure_2_End <- as.Date(All_Speeches_3$Tenure_2_End, origin =  "1899-12-30")

All_Speeches_3$Tenure_3_Start <- as.Date(All_Speeches_3$Tenure_3_Start, origin =  "1899-12-30")
All_Speeches_3$Tenure_3_End <- as.Date(All_Speeches_3$Tenure_3_End, origin =  "1899-12-30")


##
## Language detection
##

All_Speeches_3$LANGUAGE <- textcat(All_Speeches_3$TEXT)


table(All_Speeches_3$LANGUAGE)

All_Speeches_3$LANGUAGE <- str_trim(All_Speeches_3$LANGUAGE, side = "both")
Other_Languages <- subset(All_Speeches_3, All_Speeches_3$LANGUAGE == "italian"|
                            All_Speeches_3$LANGUAGE == "danish"|
                            All_Speeches_3$LANGUAGE == "dutch"|
                            All_Speeches_3$LANGUAGE == "middle_frisian"|
                            All_Speeches_3$LANGUAGE == "spanish")


All_Speeches_3 <- subset(All_Speeches_3, as.character(All_Speeches_3$LANGUAGE)!= "italian")
All_Speeches_3 <- subset(All_Speeches_3, as.character(All_Speeches_3$LANGUAGE) != "danish")
All_Speeches_3 <- subset(All_Speeches_3, as.character(All_Speeches_3$LANGUAGE) != "dutch")
All_Speeches_3 <- subset(All_Speeches_3, as.character(All_Speeches_3$LANGUAGE) != "middle_frisian")
All_Speeches_3 <- subset(All_Speeches_3, as.character(All_Speeches_3$LANGUAGE) != "spanish")


table(All_Speeches_3$LANGUAGE, useNA = "always")

rm(Discourse,
   Interventions,
   Interviews_BB, 
   Interviews_BF, 
   Interviews_ECB, 
   Names_Gorvernour, 
   NAs_Names, 
   Press_ECB, 
   Reden, 
   Speakers, 
   Total_Pages_Per_Speech,
   Speakers_2,
   Total_Speakers, 
   Total_Speakers_2, 
   Total_Speeches, 
   Total_Speeches_2,
   Total_Speeches_by_Speaker)


##
## Flagging two interviews/speeches within a day 
##


colnames(All_Speeches_3)

Two_Communications <- as.data.frame(All_Speeches_3[,c("AUTHOR_2", "Date_2","Name_Date" ,"TITLE","TEXT")])

Two_Communications <- Two_Communications[order(Two_Communications$AUTHOR_2, Two_Communications$Date_2),]

rownames(Two_Communications)<- NULL

Two_Communications$Helper <- paste(1)


Number_Comm <- aggregate(as.numeric(Two_Communications$Helper)~Two_Communications$Name_Date, FUN = sum)

colnames(Number_Comm)[1]<- c("Name_Date")
colnames(Number_Comm)[2]<- c("Tota_Same_Day_Comm")

Two_Communications$Match <- match(Two_Communications$Name_Date, Number_Comm$Name_Date)
Two_Communications$Total_Day_Comm <- Number_Comm[Two_Communications$Match,]$Tota_Same_Day_Comm

table(Two_Communications$Total_Day_Comm)

#Two_Communications <- subset(Two_Communications, Two_Communications$Total_Day_Comm == "2"|
#                               Two_Communications$Total_Day_Comm == "3"|
#                               Two_Communications$Total_Day_Comm == "4")


All_Speeches_3$Match <- match(All_Speeches_3$Name_Date, Two_Communications$Name_Date)

All_Speeches_3$Total_Day_Comm <- Two_Communications[All_Speeches_3$Match,]$Total_Day_Comm

rm(Two_Communications, Number_Comm)

##
## Preprocessing text. Taking removing punctuation and making letter lower case
##

Final_Comms <- All_Speeches_3[, c("Name_Date", 
                                  "AUTHOR_2", 
                                  "Date_2", 
                                  "Nationality", 
                                  "LANGUAGE",
                                  "Total_Day_Comm",
                                  "SOURCE",
                                  "Tenure_1_End", 
                                  "Tenure_2_End", 
                                  "Tenure_3_End", 
                                  "Tenure_1_Start", 
                                  "Tenure_2_Start",
                                  "Tenure_3_Start",
                                  "TEXT")]

#Final_Comms <- as.data.frame(Final_Comms[1:20,])
colnames(Final_Comms)[1]<- c("Speech_ID")

Final_Comms$TEXT_2 <- tolower(Final_Comms$TEXT)
Final_Comms$TEXT_2 <- gsub('[[:punct:]]',' ',Final_Comms$TEXT_2)

Final_Comms$TEXT_Non_Stop <- removeWords(Final_Comms$TEXT_2, Non_Words$V1)

Final_Comms$TEXT_Non_Stop <- str_squish(Final_Comms$TEXT_Non_Stop)

Final_Comms$TEXT_Non_Stop <- stemDocument(Final_Comms$TEXT_Non_Stop, language = "german")
?stemDocument

Final_Comms$TEXT_Non_Stop <- removeNumbers(Final_Comms$TEXT_Non_Stop)


Final_Comms$TEXT_Non_Stop <- removePunctuation(Final_Comms$TEXT_Non_Stop)
colnames(Final_Comms)

Final_Comms[1,16]


Final_Comms$TEXT_Non_Stop <- gsub('[/"]','',Final_Comms$TEXT_Non_Stop)
Final_Comms$TEXT_Non_Stop <- gsub('[/"]','',Final_Comms$TEXT_Non_Stop)
Final_Comms$TEXT_Non_Stop <- gsub('[/"]','',Final_Comms$TEXT_Non_Stop)
Final_Comms$TEXT_Non_Stop <- gsub('[/']','',Final_Comms$TEXT_Non_Stop)
Final_Comms$TEXT_Non_Stop <- gsub('[/-]','',Final_Comms$TEXT_Non_Stop)

Final_Comms$TEXT_Non_Stop <- gsub('[/"]','',Final_Comms$TEXT_Non_Stop)


Final_Comms$TEXT_Non_Stop <- str_squish(Final_Comms$TEXT_Non_Stop)

Final_Comms[1,16]
rm(All_ECB, All_Speeches, All_Speeches_2)

##
## Counting English Dictionary
##

#
# processing english dictionary n grams
#

Bi_Grams$Adjetives_Verbs <-  gsub('[/*]', '', Bi_Grams$Adjetives_Verbs)
Bi_Grams$Nouns_Dependent <- gsub('[/*]','', Bi_Grams$Nouns_Dependent)
Bi_Grams$Adjetives_Verbs <- stringr::str_trim(Bi_Grams$Adjetives_Verbs)
Bi_Grams$Nouns_Dependent <- stringr::str_trim(Bi_Grams$Nouns_Dependent)
Bi_Grams$N_Grams <- paste(" ", Bi_Grams$Adjetives_Verbs, Bi_Grams$Nouns_Dependent," ")
Bi_Grams$N_Grams_2 <- paste(" ", Bi_Grams$Nouns_Dependent,Bi_Grams$Adjetives_Verbs, " ")
Bi_Grams$N_Grams <- tolower(Bi_Grams$N_Grams)
Bi_Grams$N_Grams_2 <- tolower(Bi_Grams$N_Grams_2)
Bi_Grams$N_Grams <- stemDocument(Bi_Grams$N_Grams, language = "german")
Bi_Grams$N_Grams_2 <- stemDocument(Bi_Grams$N_Grams_2, language = "german")
Bi_Grams_2 <- Bi_Grams
Bi_Grams_2$N_Grams <- NULL
colnames(Bi_Grams_2)[4]<- c("N_Grams")
Bi_Grams$N_Grams_2 <- NULL
Bi_Grams <- rbind(Bi_Grams, Bi_Grams_2)
Bi_Grams$N_Grams <- paste(" ", Bi_Grams$N_Grams, " ")
Bi_Grams$N_Grams_Squished <- gsub(" ","",Bi_Grams$N_Grams, fixed = TRUE)
rm(Bi_Grams_2, Bi_Grams_3)



Out_Dicts$Adjetives_Verbs <-  gsub('[/*]', '', Out_Dicts$Adjetives_Verbs)
Out_Dicts$Nouns_Dependent <- gsub('[/*]','', Out_Dicts$Nouns_Dependent)
Out_Dicts$Adjetives_Verbs <- stringr::str_trim(Out_Dicts$Adjetives_Verbs)
Out_Dicts$Nouns_Dependent <- stringr::str_trim(Out_Dicts$Nouns_Dependent)
Out_Dicts$N_Grams <- paste(" ", Out_Dicts$Adjetives_Verbs, Out_Dicts$Nouns_Dependent," ")
Out_Dicts$N_Grams_2 <- paste(" ", Out_Dicts$Nouns_Dependent,Out_Dicts$Adjetives_Verbs, " ")
Out_Dicts$N_Grams <- tolower(Out_Dicts$N_Grams)
Out_Dicts$N_Grams_2 <- tolower(Out_Dicts$N_Grams_2)
Out_Dicts$N_Grams <- stemDocument(Out_Dicts$N_Grams, language = "german")
Out_Dicts$N_Grams_2 <- stemDocument(Out_Dicts$N_Grams_2, language = "german")
Out_Dicts_2 <- Out_Dicts
Out_Dicts_2$N_Grams <- NULL
colnames(Out_Dicts_2)[4]<- c("N_Grams")
Out_Dicts$N_Grams_2 <- NULL
Out_Dicts <- rbind(Out_Dicts, Out_Dicts_2)
Out_Dicts$N_Grams <- paste(" ", Out_Dicts$N_Grams, " ")
Out_Dicts$N_Grams_Squished <- gsub(" ","",Out_Dicts$N_Grams, fixed = TRUE)
rm(Out_Dicts_2, Out_Dicts_3)


Super_Dicts$Adjetives_Verbs <-  gsub('[/*]', '', Super_Dicts$Adjetives_Verbs)
Super_Dicts$Nouns_Dependent <- gsub('[/*]','', Super_Dicts$Nouns_Dependent)
Super_Dicts$Adjetives_Verbs <- stringr::str_trim(Super_Dicts$Adjetives_Verbs)
Super_Dicts$Nouns_Dependent <- stringr::str_trim(Super_Dicts$Nouns_Dependent)
Super_Dicts$N_Grams <- paste(" ", Super_Dicts$Adjetives_Verbs, Super_Dicts$Nouns_Dependent," ")
Super_Dicts$N_Grams_2 <- paste(" ", Super_Dicts$Nouns_Dependent,Super_Dicts$Adjetives_Verbs, " ")
Super_Dicts$N_Grams <- tolower(Super_Dicts$N_Grams)
Super_Dicts$N_Grams_2 <- tolower(Super_Dicts$N_Grams_2)
Super_Dicts$N_Grams <- stemDocument(Super_Dicts$N_Grams, language = "german")
Super_Dicts$N_Grams_2 <- stemDocument(Super_Dicts$N_Grams_2, language = "german")
Super_Dicts_2 <- Super_Dicts
Super_Dicts_2$N_Grams <- NULL
colnames(Super_Dicts_2)[4]<- c("N_Grams")
Super_Dicts$N_Grams_2 <- NULL
Super_Dicts <- rbind(Super_Dicts, Super_Dicts_2)
Super_Dicts$N_Grams <- paste(" ", Super_Dicts$N_Grams, " ")
Super_Dicts$N_Grams_Squished <- gsub(" ","",Super_Dicts$N_Grams, fixed = TRUE)
rm(Super_Dicts_2, Super_Dicts_3)






Trust_Dicts$Adjetives_Verbs <-  gsub('[/*]', '', Trust_Dicts$Adjetives_Verbs)
Trust_Dicts$Nouns_Dependent <- gsub('[/*]','', Trust_Dicts$Nouns_Dependent)
Trust_Dicts$Adjetives_Verbs <- stringr::str_trim(Trust_Dicts$Adjetives_Verbs)
Trust_Dicts$Nouns_Dependent <- stringr::str_trim(Trust_Dicts$Nouns_Dependent)
Trust_Dicts$N_Grams <- paste(" ", Trust_Dicts$Adjetives_Verbs, Trust_Dicts$Nouns_Dependent," ")
Trust_Dicts$N_Grams_2 <- paste(" ", Trust_Dicts$Nouns_Dependent,Trust_Dicts$Adjetives_Verbs, " ")
Trust_Dicts$N_Grams <- tolower(Trust_Dicts$N_Grams)
Trust_Dicts$N_Grams_2 <- tolower(Trust_Dicts$N_Grams_2)
Trust_Dicts$N_Grams <- stemDocument(Trust_Dicts$N_Grams, language = "german")
Trust_Dicts$N_Grams_2 <- stemDocument(Trust_Dicts$N_Grams_2, language = "german")
Trust_Dicts_2 <- Trust_Dicts
Trust_Dicts_2$N_Grams <- NULL
colnames(Trust_Dicts_2)[4]<- c("N_Grams")
Trust_Dicts$N_Grams_2 <- NULL
Trust_Dicts <- rbind(Trust_Dicts, Trust_Dicts_2)
Trust_Dicts$N_Grams <- paste(" ", Trust_Dicts$N_Grams, " ")
Trust_Dicts$N_Grams_Squished <- gsub(" ","",Trust_Dicts$N_Grams, fixed = TRUE)
rm(Trust_Dicts_2, Trust_Dicts_3)


##
## Word Counts Insiders
##

#write.csv(Bi_Grams, file = "Bi_Grams.csv")

Eng_Counts <- subset(Final_Comms, Final_Comms$LANGUAGE == 'german')

Eng_Counts <- Eng_Counts[, c("Speech_ID", "TEXT_Non_Stop")]

rownames(Eng_Counts) <- NULL

Eng_Counts[11,2]


for(i in 1:nrow(Bi_Grams)){
  
  Eng_Counts[,i+2] <- stri_count(Eng_Counts$TEXT_Non_Stop, fixed = paste0(" ",str_trim(Bi_Grams$N_Grams[i])," "))
  colnames(Eng_Counts)[i+2]= Bi_Grams$N_Grams_Squished[i]
  
}

Non_Sense_Insiders <- as.data.frame(lapply(Eng_Counts[,3:3624], sum))

Non_Sense_Insiders <- Non_Sense_Insiders[,Non_Sense_Insiders>0]

Non_Sense_Insiders  <- as.data.frame(t(Non_Sense_Insiders))

Non_Sense_Insiders$Non_Sense <- rownames(Non_Sense_Insiders)
rownames(Non_Sense_Insiders)<- NULL

Non_Sense_Insiders$Detect_Num <- ifelse(str_detect(Non_Sense_Insiders$Non_Sense,".1")== TRUE, paste(1),
                                        ifelse(str_detect(Non_Sense_Insiders$Non_Sense,".2")== TRUE, paste(1),
                                               ifelse(str_detect(Non_Sense_Insiders$Non_Sense,".3")== TRUE, paste(1),
                                                      ifelse(str_detect(Non_Sense_Insiders$Non_Sense,".4")== TRUE, paste(1),
                                                             ifelse(str_detect(Non_Sense_Insiders$Non_Sense,".5")== TRUE, paste(1),
                                                                    ifelse(str_detect(Non_Sense_Insiders$Non_Sense,".6")== TRUE, paste(1),
                                                                           ifelse(str_detect(Non_Sense_Insiders$Non_Sense,".7")== TRUE, paste(1),
                                                                                  ifelse(str_detect(Non_Sense_Insiders$Non_Sense,".8")== TRUE, paste(1),
                                                                                         ifelse(str_detect(Non_Sense_Insiders$Non_Sense,".9")== TRUE, paste(1),
                                                                                                ifelse(str_detect(Non_Sense_Insiders$Non_Sense,".0")== TRUE, paste(1),paste(0)))))))))))
                                        
Non_Sense_Insiders <- subset(Non_Sense_Insiders, Non_Sense_Insiders$Detect_Num <1)
                                        
#Non_Sense_Insiders <- Non_Sense_Insiders[order(Non_Sense_Insiders$V1, decreasing = TRUE),]

plot(Non_Sense_Insiders$V1[2:20], type = "h")

#write.csv(Non_Sense_Insiders, file = "Non_Sense_Insiders_DE.csv")

#write.csv(Bi_Grams, file = "Bi_Grams_test.csv")

Eng_Counts_2 <- Eng_Counts[,Non_Sense_Insiders$Non_Sense]


Eng_Counts_3 <- Eng_Counts[,c("Speech_ID", "TEXT_Non_Stop")]

Eng_Counts_4 <- cbind(Eng_Counts_3, Eng_Counts_2)

Bi_Grams$Match <- match(Bi_Grams$N_Grams_Squished, Non_Sense_Insiders$Non_Sense)



Bi_Grams_2 <- subset(Bi_Grams, Bi_Grams$Match >0)

Bi_Grams_2 <- Bi_Grams_2[,c("Adjetive_Type","N_Grams_Squished")]
Bi_Grams_2 <- unique(Bi_Grams_2)


Eng_Counts_4$Total_Positive_Insiders <- rowSums(Eng_Counts_4[,which(Bi_Grams_2$Adjetive_Type=="Positive")+2])
Eng_Counts_4$Total_Negative_Insiders <- rowSums(Eng_Counts_4[,which(Bi_Grams_2$Adjetive_Type=="Negative")+2])

Eng_Insiders <- Eng_Counts_4[,c("Speech_ID","TEXT_Non_Stop", "Total_Positive_Insiders", "Total_Negative_Insiders")]


##
## Weighting Negative N_Grams
##

table(Bi_Grams_2$Adjetive_Type)
Ratio_Insider <- table(Bi_Grams_2$Adjetive_Type)[2]/table(Bi_Grams_2$Adjetive_Type)[1]

Eng_Insiders$Total_Negative_Insiders <- Eng_Insiders$Total_Negative_Insiders * Ratio_Insider

##
## Tone Calculation for Insiders
##


Eng_Insiders$Numerator <- Eng_Insiders$Total_Positive_Insiders - Eng_Insiders$Total_Negative_Insiders
Eng_Insiders$Denominator <- Eng_Insiders$Total_Positive_Insiders + Eng_Insiders$Total_Negative_Insiders
Eng_Insiders$Tone <- Eng_Insiders$Numerator/Eng_Insiders$Denominator
hist(Eng_Insiders$Tone, breaks = 30)

sum(Eng_Insiders$Total_Negative_Insiders)

rm(Eng_Counts_2, Eng_Counts_3, Eng_Counts_4, Non_Sense, Non_Sense_Insiders, Non_Words, i, Ratio_Insider, Eng_Count_Check, Bi_Grams_2, Other_Languages)

summary(Eng_Insiders$Tone)

hist(Eng_Insiders$Tone, breaks = 30)

##
## Word Counts Super Insiders
##

#write.csv(Super_Dicts, file = "Super_Dicts.csv")

Eng_Counts <- subset(Final_Comms, Final_Comms$LANGUAGE == 'german')

Eng_Counts <- Eng_Counts[, c("Speech_ID", "TEXT_Non_Stop")]

rownames(Eng_Counts) <- NULL

Eng_Counts[11,2]


for(i in 1:nrow(Super_Dicts)){
  
  Eng_Counts[,i+2] <- stri_count(Eng_Counts$TEXT_Non_Stop, fixed = paste0(" ",str_trim(Super_Dicts$N_Grams[i])," "))
  colnames(Eng_Counts)[i+2]= Super_Dicts$N_Grams_Squished[i]
  
}

Non_Sense_Insiders <- as.data.frame(lapply(Eng_Counts[,3:3690], sum))

Non_Sense_Insiders <- Non_Sense_Insiders[,Non_Sense_Insiders>0]

Non_Sense_Insiders  <- as.data.frame(t(Non_Sense_Insiders))

Non_Sense_Insiders$Non_Sense <- rownames(Non_Sense_Insiders)
rownames(Non_Sense_Insiders)<- NULL

Non_Sense_Insiders$Detect_Num <- ifelse(str_detect(Non_Sense_Insiders$Non_Sense,".1")== TRUE, paste(1),
                                        ifelse(str_detect(Non_Sense_Insiders$Non_Sense,".2")== TRUE, paste(1),
                                               ifelse(str_detect(Non_Sense_Insiders$Non_Sense,".3")== TRUE, paste(1),
                                                      ifelse(str_detect(Non_Sense_Insiders$Non_Sense,".4")== TRUE, paste(1),
                                                             ifelse(str_detect(Non_Sense_Insiders$Non_Sense,".5")== TRUE, paste(1),
                                                                    ifelse(str_detect(Non_Sense_Insiders$Non_Sense,".6")== TRUE, paste(1),
                                                                           ifelse(str_detect(Non_Sense_Insiders$Non_Sense,".7")== TRUE, paste(1),
                                                                                  ifelse(str_detect(Non_Sense_Insiders$Non_Sense,".8")== TRUE, paste(1),
                                                                                         ifelse(str_detect(Non_Sense_Insiders$Non_Sense,".9")== TRUE, paste(1),
                                                                                                ifelse(str_detect(Non_Sense_Insiders$Non_Sense,".0")== TRUE, paste(1),paste(0)))))))))))

Non_Sense_Insiders <- subset(Non_Sense_Insiders, Non_Sense_Insiders$Detect_Num <1)

#Non_Sense_Insiders <- Non_Sense_Insiders[order(Non_Sense_Insiders$V1, decreasing = TRUE),]

plot(Non_Sense_Insiders$V1[2:20], type = "h")

#write.csv(Non_Sense_Insiders, file = "Non_Sense_Insiders_DE.csv")

#write.csv(Super_Dicts, file = "Super_Dicts_test.csv")

Eng_Counts_2 <- Eng_Counts[,Non_Sense_Insiders$Non_Sense]


Eng_Counts_3 <- Eng_Counts[,c("Speech_ID", "TEXT_Non_Stop")]

Eng_Counts_4 <- cbind(Eng_Counts_3, Eng_Counts_2)

Super_Dicts$Match <- match(Super_Dicts$N_Grams_Squished, Non_Sense_Insiders$Non_Sense)



Super_Dicts_2 <- subset(Super_Dicts, Super_Dicts$Match >0)

Super_Dicts_2 <- Super_Dicts_2[,c("Adjetive_Type","N_Grams_Squished")]
Super_Dicts_2 <- unique(Super_Dicts_2)


Eng_Counts_4$Total_Positive_Insiders <- rowSums(Eng_Counts_4[,which(Super_Dicts_2$Adjetive_Type=="Positive")+2])
Eng_Counts_4$Total_Negative_Insiders <- rowSums(Eng_Counts_4[,which(Super_Dicts_2$Adjetive_Type=="Negative")+2])

Eng_Super_Insiders <- Eng_Counts_4[,c("Speech_ID","TEXT_Non_Stop", "Total_Positive_Insiders", "Total_Negative_Insiders")]


##
## Weighting Negative N_Grams
##

table(Super_Dicts_2$Adjetive_Type)
Ratio_Insider <- table(Super_Dicts_2$Adjetive_Type)[2]/table(Super_Dicts_2$Adjetive_Type)[1]

Eng_Super_Insiders$Total_Negative_Insiders <- Eng_Super_Insiders$Total_Negative_Insiders * Ratio_Insider

##
## Tone Calculation for Super Insiders
##


Eng_Super_Insiders$Numerator <- Eng_Super_Insiders$Total_Positive_Insiders - Eng_Super_Insiders$Total_Negative_Insiders
Eng_Super_Insiders$Denominator <- Eng_Super_Insiders$Total_Positive_Insiders + Eng_Super_Insiders$Total_Negative_Insiders
Eng_Super_Insiders$Tone <- Eng_Super_Insiders$Numerator/Eng_Super_Insiders$Denominator
hist(Eng_Super_Insiders$Tone, breaks = 30)

sum(Eng_Super_Insiders$Total_Negative_Insiders)

rm(Eng_Counts_2, Eng_Counts_3, Eng_Counts_4, Non_Sense, Non_Sense_Insiders, Non_Words, i, Ratio_Insider, Eng_Count_Check, Super_Dicts_2, Other_Languages)

summary(Eng_Super_Insiders$Tone)

hist(Eng_Super_Insiders$Tone, breaks = 30)



##
## Word Counts Outsiders
##

#write.csv(Out_Dicts, file = "Out_Dicts.csv")

Eng_Counts <- subset(Final_Comms, Final_Comms$LANGUAGE == 'german')

Eng_Counts <- Eng_Counts[, c("Speech_ID", "TEXT_Non_Stop")]

rownames(Eng_Counts) <- NULL

Eng_Counts[11,2]


for(i in 1:nrow(Out_Dicts)){
  
  Eng_Counts[,i+2] <- stri_count(Eng_Counts$TEXT_Non_Stop, fixed = paste0(" ",str_trim(Out_Dicts$N_Grams[i])," "))
  colnames(Eng_Counts)[i+2]= Out_Dicts$N_Grams_Squished[i]
  
}

Non_Sense_Insiders <- as.data.frame(lapply(Eng_Counts[,3:1216], sum))

Non_Sense_Insiders <- Non_Sense_Insiders[,Non_Sense_Insiders>0]

Non_Sense_Insiders  <- as.data.frame(t(Non_Sense_Insiders))

Non_Sense_Insiders$Non_Sense <- rownames(Non_Sense_Insiders)
rownames(Non_Sense_Insiders)<- NULL

Non_Sense_Insiders$Detect_Num <- ifelse(str_detect(Non_Sense_Insiders$Non_Sense,".1")== TRUE, paste(1),
                                        ifelse(str_detect(Non_Sense_Insiders$Non_Sense,".2")== TRUE, paste(1),
                                               ifelse(str_detect(Non_Sense_Insiders$Non_Sense,".3")== TRUE, paste(1),
                                                      ifelse(str_detect(Non_Sense_Insiders$Non_Sense,".4")== TRUE, paste(1),
                                                             ifelse(str_detect(Non_Sense_Insiders$Non_Sense,".5")== TRUE, paste(1),
                                                                    ifelse(str_detect(Non_Sense_Insiders$Non_Sense,".6")== TRUE, paste(1),
                                                                           ifelse(str_detect(Non_Sense_Insiders$Non_Sense,".7")== TRUE, paste(1),
                                                                                  ifelse(str_detect(Non_Sense_Insiders$Non_Sense,".8")== TRUE, paste(1),
                                                                                         ifelse(str_detect(Non_Sense_Insiders$Non_Sense,".9")== TRUE, paste(1),
                                                                                                ifelse(str_detect(Non_Sense_Insiders$Non_Sense,".0")== TRUE, paste(1),paste(0)))))))))))

Non_Sense_Insiders <- subset(Non_Sense_Insiders, Non_Sense_Insiders$Detect_Num <1)

#Non_Sense_Insiders <- Non_Sense_Insiders[order(Non_Sense_Insiders$V1, decreasing = TRUE),]

plot(Non_Sense_Insiders$V1[2:20], type = "h")

#write.csv(Non_Sense_Insiders, file = "Non_Sense_Insiders_DE.csv")

#write.csv(Out_Dicts, file = "Out_Dicts_test.csv")

Eng_Counts_2 <- Eng_Counts[,Non_Sense_Insiders$Non_Sense]


Eng_Counts_3 <- Eng_Counts[,c("Speech_ID", "TEXT_Non_Stop")]

Eng_Counts_4 <- cbind(Eng_Counts_3, Eng_Counts_2)

Out_Dicts$Match <- match(Out_Dicts$N_Grams_Squished, Non_Sense_Insiders$Non_Sense)



Out_Dicts_2 <- subset(Out_Dicts, Out_Dicts$Match >0)

Out_Dicts_2 <- Out_Dicts_2[,c("Adjetive_Type","N_Grams_Squished")]
Out_Dicts_2 <- unique(Out_Dicts_2)


Eng_Counts_4$Total_Positive_Insiders <- rowSums(Eng_Counts_4[,which(Out_Dicts_2$Adjetive_Type=="Positive")+2])
Eng_Counts_4$Total_Negative_Insiders <- rowSums(Eng_Counts_4[,which(Out_Dicts_2$Adjetive_Type=="Negative")+2])

Eng_Outsiders <- Eng_Counts_4[,c("Speech_ID","TEXT_Non_Stop", "Total_Positive_Insiders", "Total_Negative_Insiders")]


##
## Weighting Negative N_Grams
##

table(Out_Dicts_2$Adjetive_Type)
Ratio_Insider <- table(Out_Dicts_2$Adjetive_Type)[2]/table(Out_Dicts_2$Adjetive_Type)[1]

Eng_Outsiders$Total_Negative_Insiders <- Eng_Outsiders$Total_Negative_Insiders * Ratio_Insider

##
## Tone Calculation for Outsiders
##


Eng_Outsiders$Numerator <- Eng_Outsiders$Total_Positive_Insiders - Eng_Outsiders$Total_Negative_Insiders
Eng_Outsiders$Denominator <- Eng_Outsiders$Total_Positive_Insiders + Eng_Outsiders$Total_Negative_Insiders
Eng_Outsiders$Tone <- Eng_Outsiders$Numerator/Eng_Outsiders$Denominator
hist(Eng_Outsiders$Tone, breaks = 30)

sum(Eng_Outsiders$Total_Negative_Insiders)

#rm(Eng_Counts_2, Eng_Counts_3, Eng_Counts_4, Non_Sense, Non_Sense_Insiders, Non_Words, i, Ratio_Insider, Eng_Count_Check, Out_Dicts_2, Other_Languages)

summary(Eng_Outsiders$Tone)

hist(Eng_Outsiders$Tone, breaks = 30)

rm(Eng_Counts_2, Eng_Counts_3, Eng_Counts_4, Non_Sense, Non_Sense_Insiders, Non_Words, i, Ratio_Insider, Eng_Count_Check, Out_Dicts_2, Other_Languages)


##
## Word Counts Trust
##

#write.csv(Trust_Dicts, file = "Trust_Dicts.csv")




Eng_Counts <- subset(Final_Comms, Final_Comms$LANGUAGE == 'german')

Eng_Counts <- Eng_Counts[, c("Speech_ID", "TEXT_Non_Stop")]

rownames(Eng_Counts) <- NULL

Eng_Counts[11,2]


for(i in 1:nrow(Trust_Dicts)){
  
  Eng_Counts[,i+2] <- stri_count(Eng_Counts$TEXT_Non_Stop, fixed = paste0(" ",str_trim(Trust_Dicts$N_Grams[i])," "))
  colnames(Eng_Counts)[i+2]= Trust_Dicts$N_Grams_Squished[i]
  
}

Non_Sense_Insiders <- as.data.frame(lapply(Eng_Counts[,3:728], sum))

Non_Sense_Insiders <- Non_Sense_Insiders[,Non_Sense_Insiders>0]

Non_Sense_Insiders  <- as.data.frame(t(Non_Sense_Insiders))

Non_Sense_Insiders$Non_Sense <- rownames(Non_Sense_Insiders)
rownames(Non_Sense_Insiders)<- NULL

Non_Sense_Insiders$Detect_Num <- ifelse(str_detect(Non_Sense_Insiders$Non_Sense,".1")== TRUE, paste(1),
                                        ifelse(str_detect(Non_Sense_Insiders$Non_Sense,".2")== TRUE, paste(1),
                                               ifelse(str_detect(Non_Sense_Insiders$Non_Sense,".3")== TRUE, paste(1),
                                                      ifelse(str_detect(Non_Sense_Insiders$Non_Sense,".4")== TRUE, paste(1),
                                                             ifelse(str_detect(Non_Sense_Insiders$Non_Sense,".5")== TRUE, paste(1),
                                                                    ifelse(str_detect(Non_Sense_Insiders$Non_Sense,".6")== TRUE, paste(1),
                                                                           ifelse(str_detect(Non_Sense_Insiders$Non_Sense,".7")== TRUE, paste(1),
                                                                                  ifelse(str_detect(Non_Sense_Insiders$Non_Sense,".8")== TRUE, paste(1),
                                                                                         ifelse(str_detect(Non_Sense_Insiders$Non_Sense,".9")== TRUE, paste(1),
                                                                                                ifelse(str_detect(Non_Sense_Insiders$Non_Sense,".0")== TRUE, paste(1),paste(0)))))))))))

Non_Sense_Insiders <- subset(Non_Sense_Insiders, Non_Sense_Insiders$Detect_Num <1)

#Non_Sense_Insiders <- Non_Sense_Insiders[order(Non_Sense_Insiders$V1, decreasing = TRUE),]

plot(Non_Sense_Insiders$V1[2:20], type = "h")

#write.csv(Non_Sense_Insiders, file = "Non_Sense_Insiders_DE.csv")

#write.csv(Trust_Dicts, file = "Trust_Dicts_test.csv")

Eng_Counts_2 <- Eng_Counts[,Non_Sense_Insiders$Non_Sense]


Eng_Counts_3 <- Eng_Counts[,c("Speech_ID", "TEXT_Non_Stop")]

Eng_Counts_4 <- cbind(Eng_Counts_3, Eng_Counts_2)

Trust_Dicts$Match <- match(Trust_Dicts$N_Grams_Squished, Non_Sense_Insiders$Non_Sense)



Trust_Dicts_2 <- subset(Trust_Dicts, Trust_Dicts$Match >0)

Trust_Dicts_2 <- Trust_Dicts_2[,c("Adjetive_Type","N_Grams_Squished")]
Trust_Dicts_2 <- unique(Trust_Dicts_2)


Eng_Counts_4$Total_Positive_Insiders <- rowSums(Eng_Counts_4[,which(Trust_Dicts_2$Adjetive_Type=="Positive")+2])
Eng_Counts_4$Total_Negative_Insiders <- rowSums(Eng_Counts_4[,which(Trust_Dicts_2$Adjetive_Type=="Negative")+2])

Eng_Trust <- Eng_Counts_4[,c("Speech_ID","TEXT_Non_Stop", "Total_Positive_Insiders", "Total_Negative_Insiders")]


##
## Weighting Negative N_Grams
##

table(Trust_Dicts_2$Adjetive_Type)
Ratio_Insider <- table(Trust_Dicts_2$Adjetive_Type)[2]/table(Trust_Dicts_2$Adjetive_Type)[1]

Eng_Trust$Total_Negative_Insiders <- Eng_Trust$Total_Negative_Insiders * Ratio_Insider

##
## Tone Calculation for Trust
##


Eng_Trust$Numerator <- Eng_Trust$Total_Positive_Insiders - Eng_Trust$Total_Negative_Insiders
Eng_Trust$Denominator <- Eng_Trust$Total_Positive_Insiders + Eng_Trust$Total_Negative_Insiders
Eng_Trust$Tone <- Eng_Trust$Numerator/Eng_Trust$Denominator
hist(Eng_Trust$Tone, breaks = 30)

sum(Eng_Trust$Total_Negative_Insiders)

#rm(Eng_Counts_2, Eng_Counts_3, Eng_Counts_4, Non_Sense, Non_Sense_Insiders, Non_Words, i, Ratio_Insider, Eng_Count_Check, Trust_Dicts_2, Other_Languages)

summary(Eng_Trust$Tone)

hist(Eng_Trust$Tone, breaks = 30)



##
## C Binding totals
##


Total_Counts <-  data.frame(Speech_ID = Eng_Counts$Speech_ID, 
                            TEXT_Non_Stop = Eng_Counts$TEXT_Non_Stop,
                            Tone_Insiders = Eng_Insiders$Tone,
                            Tone_Super_Insiders = Eng_Super_Insiders$Tone,
                            Tone_Outsiders = Eng_Outsiders$Tone,
                            Tone_Trust = Eng_Trust$Tone)




summary(Total_Counts$Tone_Insiders)
summary(Total_Counts$Tone_Super_Insiders)
summary(Total_Counts$Tone_Outsiders)
summary(Total_Counts$Tone_Trust)

colnames(Total_Counts)
Total_Ger <- Total_Counts[,c("Speech_ID","Tone_Insiders", "Tone_Super_Insiders", "Tone_Outsiders", "Tone_Trust")]
#write.csv(Total_Ger, file= "Total_Ger.csv")

#####################################################################
####
####
####          End of Code
####
####
#####################################################################


