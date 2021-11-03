

###########################################################
##
## Master Dataset for Modeling
## 09/30/2021
##
######################################################
library(MASS)
library(EnvStats)
library(stargazer)
library(nlme)
library(car)
library(gap)
library(strucchange)
library(nortest)
library(SCGLR)
library(lmtest)
library(heplots)
setwd("~/")


Trust <- read.csv("~/Macro_Data/Trust_Data_Series.csv")

GDP_Forecast <- read.csv("~/Macro_Data/GDP_Forecast.csv", encoding = "utf-8")
Realized_GDP <- read.csv("~/Macro_Data/Realized_GDP.csv", encoding = "utf-8")

CPI_Forecast <- read.csv("~/Macro_Data/Inflation_Forecast.csv", encoding = "utf-8")
CPI_Realized <- read.csv("~/Macro_Data/Realized_Inflation.csv", encoding = "utf-8")

Unemployment_Forecast <- read.csv("~/Macro_Data/Unemployment_Forecast.csv", encoding = "utf-8")
Unemployment_Realized <- read.csv("~/Macro_Data/Realized_Unemployment.csv", encoding = "utf-8")

Macro_Data <- rbind(GDP_Forecast, Realized_GDP,CPI_Forecast, CPI_Realized, Unemployment_Forecast, Unemployment_Realized)


Total_Eng <- read.csv("~/Modeling/Total_Eng.csv")
Total_Fra <- read.csv("~/Modeling/Total_Fr.csv")
Total_Ger <- read.csv("~/Modeling/Total_Ger.csv")

Speakers_2 <- read.csv("~/Moritz_Speakers_08302021.csv", encoding = "utf-8")

MRR <- read.csv("~/Modeling/MRR.csv")


Source_Data <- read.csv("~/Source_Data.csv")

Vstoxx_EA <- read.csv("~/Volatility/Vstoxx_EA.csv")

Vstoxx_Fra <- read.csv("~/Volatility/Vstoxx_France.csv")

Vstoxx_Ger <- read.csv("~/Volatility/Vstoxx_Germany.csv")

Save_Forecast <- read.csv("~/Savings/Household_savings_forecast.csv")


Save_EA <- read.csv("~/Savings/Save_Realized_EA.csv")
Save_Ger <- read.csv("~/Savings/Save_Realized_Ger.csv")
Save_Fra <- read.csv("~/Savings/Save_Realized_Fra.csv")



Shares_P <- read.csv("~/Macro_Data/Quarterly_share_prices.csv")


#Save_Realized <- read.csv("~/Savings/Savings_Realized.csv")


##
## Master Dataset by Date
##

Master <- seq(as.Date("1999-01-01"), as.Date("2019-12-31"), by=1)
Master <- as.data.frame(Master)
Master$Year_Month <- substr(Master$Master,0,7)
colnames(Master)[1]<- c("Date")

Master$Month <- substr(Master$Date,6,7)

Master$Quarter <- ifelse(Master$Month == "01", paste("Q1"),
                         ifelse(Master$Month== "02", paste("Q1"),
                                ifelse(Master$Month== "03", paste("Q1"),
                                       ifelse(Master$Month== "04", paste("Q2"),
                                              ifelse(Master$Month== "05", paste("Q2"),
                                                     ifelse(Master$Month== "06", paste("Q2"),
                                                            ifelse(Master$Month=="07", paste("Q3"),
                                                                   ifelse(Master$Month=="08", paste("Q3"),
                                                                          ifelse(Master$Month=="09", paste("Q3"),
                                                                                 ifelse(Master$Month=="10", paste("Q4"),
                                                                                        ifelse(Master$Month=="11", paste("Q4"), paste("Q4"))))))))))))

Master$Quarter_2 <- paste0(substr(Master$Year_Month,0,4),"-",Master$Quarter)

table(Master$Quarter)
table(Master$Month)

##
## Merging Tones to Master
##

Total_Eng$Date <- substr(Total_Eng$Speech_ID, 0,10)
Total_Fra$Date <- substr(Total_Fra$Speech_ID, 0,10)
Total_Ger$Date <- substr(Total_Ger$Speech_ID, 0,10)

Total_Eng$Month <- substr(Total_Eng$Date, 6,7)
Total_Fra$Month <- substr(Total_Fra$Date, 6,7)
Total_Ger$Month <- substr(Total_Ger$Date, 6,7)

Total_Eng$Quarter <- ifelse(Total_Eng$Month == "01", paste("Q1"),
                            ifelse(Total_Eng$Month== "02", paste("Q1"),
                                   ifelse(Total_Eng$Month== "03", paste("Q1"),
                                          ifelse(Total_Eng$Month== "04", paste("Q2"),
                                                 ifelse(Total_Eng$Month== "05", paste("Q2"),
                                                        ifelse(Total_Eng$Month== "06", paste("Q2"),
                                                               ifelse(Total_Eng$Month=="07", paste("Q3"),
                                                                      ifelse(Total_Eng$Month=="08", paste("Q3"),
                                                                             ifelse(Total_Eng$Month=="09", paste("Q3"),
                                                                                    ifelse(Total_Eng$Month=="10", paste("Q4"),
                                                                                           ifelse(Total_Eng$Month=="11", paste("Q4"), paste("Q4"))))))))))))



Total_Fra$Quarter <- ifelse(Total_Fra$Month == "01", paste("Q1"),
                            ifelse(Total_Fra$Month== "02", paste("Q1"),
                                   ifelse(Total_Fra$Month== "03", paste("Q1"),
                                          ifelse(Total_Fra$Month== "04", paste("Q2"),
                                                 ifelse(Total_Fra$Month== "05", paste("Q2"),
                                                        ifelse(Total_Fra$Month== "06", paste("Q2"),
                                                               ifelse(Total_Fra$Month=="07", paste("Q3"),
                                                                      ifelse(Total_Fra$Month=="08", paste("Q3"),
                                                                             ifelse(Total_Fra$Month=="09", paste("Q3"),
                                                                                    ifelse(Total_Fra$Month=="10", paste("Q4"),
                                                                                           ifelse(Total_Fra$Month=="11", paste("Q4"), paste("Q4"))))))))))))


Total_Ger$Quarter <- ifelse(Total_Ger$Month == "01", paste("Q1"),
                            ifelse(Total_Ger$Month== "02", paste("Q1"),
                                   ifelse(Total_Ger$Month== "03", paste("Q1"),
                                          ifelse(Total_Ger$Month== "04", paste("Q2"),
                                                 ifelse(Total_Ger$Month== "05", paste("Q2"),
                                                        ifelse(Total_Ger$Month== "06", paste("Q2"),
                                                               ifelse(Total_Ger$Month=="07", paste("Q3"),
                                                                      ifelse(Total_Ger$Month=="08", paste("Q3"),
                                                                             ifelse(Total_Ger$Month=="09", paste("Q3"),
                                                                                    ifelse(Total_Ger$Month=="10", paste("Q4"),
                                                                                           ifelse(Total_Ger$Month=="11", paste("Q4"), paste("Q4"))))))))))))


Total_Eng$Quarter_2 <- paste0(substr(Total_Eng$Date,0,4),"-",Total_Eng$Quarter)
Total_Ger$Quarter_2 <- paste0(substr(Total_Ger$Date,0,4),"-",Total_Ger$Quarter)
Total_Fra$Quarter_2 <- paste0(substr(Total_Fra$Date,0,4),"-",Total_Fra$Quarter)

Total_Eng$Language <- paste("English")
Total_Fra$Language <- paste("French")
Total_Ger$Language <- paste("German")


Master$Match <- match(as.Date(Master$Date), as.Date(Total_Eng$Date))
Master$Speech_ID <- Total_Eng[Master$Match,]$Speech_ID
Master$Tone_Insiders <- Total_Eng[Master$Match,]$Tone_Insiders
Master$Tone_Super_Insiders <- Total_Eng[Master$Match,]$Tone_Super_Insiders
Master$Tone_Outsiders <- Total_Eng[Master$Match,]$Tone_Outsiders
Master$Tone_Trust <- Total_Eng[Master$Match,]$Tone_Trust
Master$Language <- Total_Eng[Master$Match,]$Language

Master_Eng <- Master


Master$Match <- match(as.Date(Master$Date), as.Date(Total_Fra$Date))
Master$Speech_ID <- Total_Fra[Master$Match,]$Speech_ID
Master$Tone_Insiders <- Total_Fra[Master$Match,]$Tone_Insiders
Master$Tone_Super_Insiders <- Total_Fra[Master$Match,]$Tone_Super_Insiders
Master$Tone_Outsiders <- Total_Fra[Master$Match,]$Tone_Outsiders
Master$Tone_Trust <- Total_Fra[Master$Match,]$Tone_Trust
Master$Language <- Total_Fra[Master$Match,]$Language

Master_Fra <- Master


Master$Match <- match(as.Date(Master$Date), as.Date(Total_Ger$Date))
Master$Speech_ID <- Total_Ger[Master$Match,]$Speech_ID
Master$Tone_Insiders <- Total_Ger[Master$Match,]$Tone_Insiders
Master$Tone_Super_Insiders <- Total_Ger[Master$Match,]$Tone_Super_Insiders
Master$Tone_Outsiders <- Total_Ger[Master$Match,]$Tone_Outsiders
Master$Tone_Trust <- Total_Ger[Master$Match,]$Tone_Trust
Master$Language <- Total_Ger[Master$Match,]$Language

Master_Ger <- Master

Master_2 <- rbind(Master_Eng, Master_Fra, Master_Ger)

Master_2 <- Master_2[order(Master_2$Date, decreasing = FALSE),]

rm(Master_Eng, Master_Fra, Master_Ger, Total_Eng, Total_Fra, Total_Ger)


Master_2$Speakers <- substr(Master_2$Speech_ID,12,50)

table(Master_2$Speakers)

##
## Merging Macro Data 
##

table(CPI_Forecast$INDICATOR)

##
## Subsetting relevant geography
##

colnames(Macro_Data)[1]<- c("Location")

Macro_Data <- subset(Macro_Data, Macro_Data$Location == "FRA" |
                       Macro_Data$Location == "DEU"|
                       Macro_Data$Location == "EA17"|
                       Macro_Data$Location == "EA19")

Macro_Data <- subset(Macro_Data, Macro_Data$FREQUENCY== "Q")
Macro_Data$Location_Indicator <- paste0(Macro_Data$Location, Macro_Data$INDICATOR, Macro_Data$MEASURE, Macro_Data$SUBJECT)
table(Macro_Data$Location_Indicator)

table(Macro_Data$Location_Indicator)

Inflation <- subset(Macro_Data, Macro_Data$Location_Indicator== "DEUCPIAGRWTHTOT")
For_Inflation <- subset(Macro_Data, Macro_Data$Location_Indicator== "DEUCPIFORECASTAGRWTHTOT")
GDP <- subset(Macro_Data, Macro_Data$Location_Indicator== "DEUQGDPPC_CHGPPTOT")
GDP_Fore <- subset(Macro_Data, Macro_Data$Location_Indicator== "DEUREALGDPFORECASTAGRWTHTOT")
Unemp <- subset(Macro_Data, Macro_Data$Location_Indicator== "DEUHURPC_LFTOT")
Unemp_Fore <- subset(Macro_Data, Macro_Data$Location_Indicator== "DEUUNEMPFORECASTPC_LFTOT")
Master_2$Match <- match(Master_2$Quarter_2, Inflation$TIME)
Master_2$DEUCPI <- Inflation[Master_2$Match,]$Value
Master_2$Match <- match(Master_2$Quarter_2, For_Inflation$TIME)
Master_2$DEUCPIFORECAST <- For_Inflation[Master_2$Match,]$Value
Master_2$Match <- match(Master_2$Quarter_2, GDP$TIME)
Master_2$DEUQGDP <- GDP[Master_2$Match,]$Value
Master_2$Match <- match(Master_2$Quarter_2, GDP_Fore$TIME)
Master_2$DEUREALGDPFORECAST <- GDP_Fore[Master_2$Match,]$Value
Master_2$Match <- match(Master_2$Quarter_2, Unemp$TIME)
Master_2$DEUHUR <- Unemp[Master_2$Match,]$Value
Master_2$Match <- match(Master_2$Quarter_2, Unemp_Fore$TIME)
Master_2$DEUUNEMPFORECAST <- Unemp_Fore[Master_2$Match,]$Value



Inflation <- subset(Macro_Data, Macro_Data$Location_Indicator== "FRACPIAGRWTHTOT")
For_Inflation <- subset(Macro_Data, Macro_Data$Location_Indicator== "FRACPIFORECASTAGRWTHTOT")
GDP <- subset(Macro_Data, Macro_Data$Location_Indicator== "FRAQGDPPC_CHGPPTOT")
GDP_Fore <- subset(Macro_Data, Macro_Data$Location_Indicator== "FRAREALGDPFORECASTAGRWTHTOT")
Unemp <- subset(Macro_Data, Macro_Data$Location_Indicator== "FRAHURPC_LFTOT")
Unemp_Fore <- subset(Macro_Data, Macro_Data$Location_Indicator== "FRAUNEMPFORECASTPC_LFTOT")
Master_2$Match <- match(Master_2$Quarter_2, Inflation$TIME)
Master_2$FRACPI <- Inflation[Master_2$Match,]$Value
Master_2$Match <- match(Master_2$Quarter_2, For_Inflation$TIME)
Master_2$FRACPIFORECAST <- For_Inflation[Master_2$Match,]$Value
Master_2$Match <- match(Master_2$Quarter_2, GDP$TIME)
Master_2$FRAQGDP <- GDP[Master_2$Match,]$Value
Master_2$Match <- match(Master_2$Quarter_2, GDP_Fore$TIME)
Master_2$FRAREALGDPFORECAST <- GDP_Fore[Master_2$Match,]$Value
Master_2$Match <- match(Master_2$Quarter_2, Unemp$TIME)
Master_2$FRAHUR <- Unemp[Master_2$Match,]$Value
Master_2$Match <- match(Master_2$Quarter_2, Unemp_Fore$TIME)
Master_2$FRAUNEMPFORECAST <- Unemp_Fore[Master_2$Match,]$Value


table(Macro_Data$Location_Indicator)

Inflation <- subset(Macro_Data, Macro_Data$Location_Indicator== "EA17CPI")
For_Inflation <- subset(Macro_Data, Macro_Data$Location_Indicator== "EA17CPIFORECASTAGRWTHTOT")
GDP <- subset(Macro_Data, Macro_Data$Location_Indicator== "EA17QGDPTOT")
GDP_Fore <- subset(Macro_Data, Macro_Data$Location_Indicator== "EA17REALGDPFORECASTAGRWTHTOT")
Unemp <- subset(Macro_Data, Macro_Data$Location_Indicator== "EA17HURTOT")
Unemp_Fore <- subset(Macro_Data, Macro_Data$Location_Indicator== "EA17UNEMPFORECASTPC_LFTOT")
Master_2$Match <- match(Master_2$Quarter_2, Inflation$TIME)
Master_2$EA17CPI <- Inflation[Master_2$Match,]$Value
Master_2$Match <- match(Master_2$Quarter_2, For_Inflation$TIME)
Master_2$EA17CPIFORECAST <- For_Inflation[Master_2$Match,]$Value
Master_2$Match <- match(Master_2$Quarter_2, GDP$TIME)
Master_2$EA17QGDP <- GDP[Master_2$Match,]$Value
Master_2$Match <- match(Master_2$Quarter_2, GDP_Fore$TIME)
Master_2$EA17REALGDPFORECAST <- GDP_Fore[Master_2$Match,]$Value
Master_2$Match <- match(Master_2$Quarter_2, Unemp$TIME)
Master_2$EA17HUR <- Unemp[Master_2$Match,]$Value
Master_2$Match <- match(Master_2$Quarter_2, Unemp_Fore$TIME)
Master_2$EA17UNEMPFORECAST <- Unemp_Fore[Master_2$Match,]$Value



Inflation <- subset(Macro_Data, Macro_Data$Location_Indicator== "EA19CPIAGRWTHTOT")
For_Inflation <- subset(Macro_Data, Macro_Data$Location_Indicator== "EA17CPIFORECASTAGRWTHTOT")
GDP <- subset(Macro_Data, Macro_Data$Location_Indicator== "EA19QGDPPC_CHGPPTOT")
GDP_Fore <- subset(Macro_Data, Macro_Data$Location_Indicator== "EA17REALGDPFORECASTAGRWTTOT")
Unemp <- subset(Macro_Data, Macro_Data$Location_Indicator== "EA19HURPC_LFTOT")
Unemp_Fore <- subset(Macro_Data, Macro_Data$Location_Indicator== "EA17UNEMPFORECASTPC_LFTOT")
Master_2$Match <- match(Master_2$Quarter_2, Inflation$TIME)
Master_2$EA19CPI <- Inflation[Master_2$Match,]$Value
Master_2$Match <- match(Master_2$Quarter_2, For_Inflation$TIME)
Master_2$EA19CPIFORECAST <- For_Inflation[Master_2$Match,]$Value
Master_2$Match <- match(Master_2$Quarter_2, GDP$TIME)
Master_2$EA19QGDP <- GDP[Master_2$Match,]$Value
Master_2$Match <- match(Master_2$Quarter_2, GDP_Fore$TIME)
Master_2$EA19REALGDPFORECAST <- GDP_Fore[Master_2$Match,]$Value
Master_2$Match <- match(Master_2$Quarter_2, Unemp$TIME)
Master_2$EA19HUR <- Unemp[Master_2$Match,]$Value
Master_2$Match <- match(Master_2$Quarter_2, Unemp_Fore$TIME)
Master_2$EA19UNEMPFORECAST <- Unemp_Fore[Master_2$Match,]$Value


table(Master_3$Speakers)

Master_3 <- subset(Master_2, is.na(Master_2$Speech_ID)==FALSE)

Master_3 <- subset(Master_3, Master_3$Speakers!= "SIRKKA H?M?L?INEN")
Master_3 <- subset(Master_3, Master_3$Speakers!= "J?RG ASMUSSEN, BENO?T COUR?")
Master_3$Nchar <- nchar(Master_3$Speakers)
Master_3 <- subset(Master_3, Master_3$Nchar>1)

Master_3$Helper <- paste(1)

rm(CPI_Forecast, CPI_Realized, For_Inflation, GDP,
   GDP_Fore, GDP_Forecast, Inflation, Realized_GDP, Unemp, Unemp_Fore, Unemployment_Forecast, Unemployment_Realized)


table(Master_3$EA17REALGDPFORECAST)
summary(Master_3$EA19REALGDPFORECAST)


###
### Trust Rating Variable
###

Master_3$Match <- match(substr(Master_3$Date,0,4), Trust$TIME)
Master_3$Trust_Rate_Ger <- Trust[Master_3$Match,]$Germany
Master_3$Trust_Rate_Fra <- Trust[Master_3$Match,]$France
Master_3$Trust_Rate_EA <- Trust[Master_3$Match,]$European_Union

###
### Bringing in Source Data
###

Master_3$Match <- match(Master_3$Speech_ID, Source_Data$Speech_ID)
Master_3$Source <- Source_Data[Master_3$Match,]$SOURCE

table(Master_3$Source)

Master_3$Source <- ifelse(Master_3$Source == "Reden_BB", paste("Speech"), 
                          ifelse(Master_3$Source== "Discourse_BF", paste("Speech"),
                                 ifelse(Master_3$Source=="ECB_Website", paste("Speech"),
                                        ifelse(Master_3$Source=="Autres_Interventions", paste("Speech"), paste("Interview")))))

table(Master_3$Source)

###
### Output, Inflation, and Unemployment Gap Variables
###

table(Master_3$Quarter_2)
Master_3$Quarter_End <- paste0(substr(Master_3$Date,0,4),"-", ifelse(Master_3$Quarter=="Q1", "03-30", ifelse(Master_3$Quarter=="Q2","06-30", ifelse(Master_3$Quarter=="Q3", "09-30","12-30"))))
Master_3$Quarter_Beging <- paste0(substr(Master_3$Date,0,4),"-", ifelse(Master_3$Quarter=="Q1", "01-01", ifelse(Master_3$Quarter=="Q2","04-01", ifelse(Master_3$Quarter=="Q3", "07-01","10-01"))))

Master_3$Days_Left <- Vectorize(abs(as.Date(Master_3$Date)-as.Date(Master_3$Quarter_End))/365)
Master_3$Days_Elapsed <- Vectorize(abs(as.Date(Master_3$Date)- as.Date(Master_3$Quarter_Beging))/365)

summary(as.numeric(Master_3$Days_Left))
summary(as.numeric(Master_3$Days_Elapsed))

#Master_3$GDP_Gap_Ger <- Vectorize(as.numeric(Master_3$DEUQGDP)-((as.numeric(Master_3$DEUREALGDPFORECAST)*as.numeric(Master_3$Days_Elapsed))+(as.numeric(Master_3$DEUREALGDPFORECAST)*as.numeric(Master_3$Days_Left))))

Master_3$GDP_Gap_Ger <- Vectorize(as.numeric(Master_3$DEUQGDP)-as.numeric(Master_3$DEUREALGDPFORECAST))
Master_3$CPI_Gap_Ger <- Vectorize(as.numeric(Master_3$DEUCPI)-as.numeric(Master_3$DEUCPIFORECAST))
Master_3$HUR_Gap_Ger <- Vectorize(as.numeric(Master_3$DEUHUR)-as.numeric(Master_3$DEUUNEMPFORECAST))

Master_3$GDP_Gap_Fra <- Vectorize(as.numeric(Master_3$FRAQGDP)-as.numeric(Master_3$FRAREALGDPFORECAST))
Master_3$CPI_Gap_Fra <- Vectorize(as.numeric(Master_3$FRACPI)-as.numeric(Master_3$FRACPIFORECAST))
Master_3$HUR_Gap_Fra <- Vectorize(as.numeric(Master_3$FRAHUR)-as.numeric(Master_3$FRAUNEMPFORECAST))

Master_3$GDP_Gap_EA <- Vectorize(as.numeric(Master_3$EA19QGDP)-as.numeric(Master_3$EA17REALGDPFORECAST))
Master_3$CPI_Gap_EA <- Vectorize(as.numeric(Master_3$EA19CPI)-as.numeric(Master_3$EA19CPIFORECAST))
Master_3$HUR_Gap_EA <- Vectorize(as.numeric(Master_3$EA19HUR)-as.numeric(Master_3$EA19UNEMPFORECAST))



Master_3$GDP_Geo_Gap_Ger <- Vectorize(as.numeric(Master_3$GDP_Gap_Ger)-as.numeric(Master_3$GDP_Gap_EA))
Master_3$GDP_Geo_Gap_Fra <- Vectorize(as.numeric(Master_3$GDP_Gap_Fra)-as.numeric(Master_3$GDP_Gap_EA))

Master_3$CPI_Geo_Gap_Ger <- Vectorize(as.numeric(Master_3$CPI_Gap_Ger)-as.numeric(Master_3$CPI_Gap_EA))
Master_3$CPI_Geo_Gap_Fra <- Vectorize(as.numeric(Master_3$CPI_Gap_Fra)-as.numeric(Master_3$CPI_Gap_EA))

Master_3$HUR_Geo_Gap_Ger <- Vectorize(as.numeric(Master_3$HUR_Gap_Ger)-as.numeric(Master_3$HUR_Gap_EA))
Master_3$HUR_Geo_Gap_Fra <- Vectorize(as.numeric(Master_3$HUR_Gap_Fra)-as.numeric(Master_3$HUR_Gap_EA))

Master_3$Trust_Gap_Ger <- Vectorize(as.numeric(Master_3$Trust_Rate_Ger)-as.numeric(Master_3$Trust_Rate_EA))
Master_3$Trust_Gap_Fra <- Vectorize(as.numeric(Master_3$Trust_Rate_Fra)-as.numeric(Master_3$Trust_Rate_EA))


head(Master_3,4)


###
### Bringing position and nationality
###


Speaker_1 <- read.csv("~/Modeling/Speakers_09222021.csv", encoding = "utf-8")

Speaker_1$Name_Post <- paste0(Speaker_1$Speaker,"_",Speaker_1$NCB_EB_NBM)
Master_3$Match <- match(Master_3$Speakers, Speaker_1$Speaker)

Master_3$Speakers_2 <- Speaker_1[Master_3$Match,]$Speaker

Master_3$Speakers_2 <- ifelse(Master_3$Speakers_2 == "CHRISTIAN NOYER" & as.Date(Master_3$Date) > "2002-05-29", paste("CHRISTIAN NOYER_NCB"),Master_3$Speakers_2)
Master_3$Speakers <- ifelse(Master_3$Speakers_2 == "CHRISTIAN NOYER" & as.Date(Master_3$Date) > "2002-05-29", paste("CHRISTIAN NOYER_NCB"),Master_3$Speakers_2)

Master_3$Speakers_2 <- ifelse(Master_3$Speakers_2 == "JEAN-CLAUDE TRICHET" & as.Date(Master_3$Date) < "2003-10-01", paste("JEAN-CLAUDE TRICHET_NCB"),Master_3$Speakers_2)
Master_3$Speakers <- ifelse(Master_3$Speakers_2 == "JEAN-CLAUDE TRICHET" & as.Date(Master_3$Date) < "2003-10-01", paste("JEAN-CLAUDE TRICHET_NCB"),Master_3$Speakers_2)

Master_3$Speakers_2 <- ifelse(Master_3$Speakers_2 == "J?RGEN STARK" & as.Date(Master_3$Date) < "2006-05-31", paste("J?RGEN STARK_NBM"),Master_3$Speakers_2)
Master_3$Speakers <- ifelse(Master_3$Speakers_2 == "J?RGEN STARK" & as.Date(Master_3$Date) < "2006-05-31", paste("J?RGEN STARK_NBM"),Master_3$Speakers_2)

Master_3$Speakers_2 <- ifelse(Master_3$Speakers_2 == "SABINE LAUTENSCHL?GER" & as.Date(Master_3$Date) < "2014-01-26", paste("SABINE LAUTENSCHL?GER_NBM"),Master_3$Speakers_2)
Master_3$Speakers <- ifelse(Master_3$Speakers_2 == "SABINE LAUTENSCHL?GER" & as.Date(Master_3$Date) < "2014-01-26", paste("SABINE LAUTENSCHL?GER_NBM"),Master_3$Speakers_2)




Master_3$Position <- Speaker_1[Master_3$Match,]$NCB_EB_NBM 
Master_3$Nationality <- Speaker_1[Master_3$Match,]$Nationality


Master_3$Position <- ifelse(Master_3$Speakers_2== "CHRISTIAN NOYER_NCB", paste("NCB"), Master_3$Position)
Master_3$Position <- ifelse(Master_3$Speakers_2== "JEAN-CLAUDE TRICHET_NCB", paste("NCB"), Master_3$Position)
Master_3$Position <- ifelse(Master_3$Speakers_2== "J?RGEN STARK_NBM", paste("NBM"), Master_3$Position)
Master_3$Position <- ifelse(Master_3$Speakers_2== "SABINE LAUTENSCHL?GER", paste("EB"), Master_3$Position)


Check_1  <- Master_3[,c( "Speech_ID","Speakers_2", "Speakers","Position","Nationality")]






rm(Check_1, Speaker_1, Speakers_2)

###
### Matching trust survey to speaker nationality
###

Master_3$Nat_Trust <- ifelse(Master_3$Nationality== "FR", Master_3$Trust_Rate_Fra, Master_3$Trust_Rate_Ger)


###
### Home-Abroad difference
###
table(Master_3$Language)
table(Master_3$Nationality)

Master_3$In_Audience <- ifelse(Master_3$Language == "German" & Master_3$Nationality == "DEU", "Germany", 
                               ifelse(Master_3$Language== "French" & Master_3$Nationality== "FR", "France", "Euro_Area"))

table(Master_3$In_Audience)








#############################
###
### Descriptive Statistics 
###
###########################


MRR$Date <- as.Date(MRR$Obs..date, origin= "1899-12-30")

MRR$Year_Month <- substr(MRR$Date,0,4)



MRR_Monthly <- aggregate(as.numeric(MRR$Obs..value)~MRR$Year_Month, FUN = mean)

Monthly_Tone <- aggregate(as.numeric(Master_3$Tone_Overall)~substr(Master_3$Year_Month,0,4), FUN = mean)


Monthly_Tone$Match <- match(Monthly_Tone$`substr(Master_3$Year_Month, 0, 4)`, MRR_Monthly$`MRR$Year_Month`)

Monthly_Tone$MRR <- MRR_Monthly[Monthly_Tone$Match,]$`as.numeric(MRR$Obs..value)`

Monthly_Tone$Tone_2 <- 100*(Monthly_Tone$`as.numeric(Master_3$Tone_Overall)`^2)


Monthly_Tone_2 <- subset(Monthly_Tone, is.na(Monthly_Tone$Match)!=TRUE)

plot(Monthly_Tone_2$`as.numeric(Master_3$Tone_Overall)`, type = "l", col= "red")
lines(Monthly_Tone_2$MRR, type = "l")

plot(MRR_Monthly$`as.numeric(MRR$Obs..value)`, type = "l")
#write.csv(Monthly_Tone_2, file = "Monthly_2.csv")
rm(Check_1, Macro_Data,Master, Master_2, MRR, MRR_Monthly, Source_Data, Speaker_1, Speakers_2, Test_1, Trust, Monthly_Tone, Monthly_Tone_2, Descriptive_Master)


###
### Matching Macro Data to Speaker Nationality
###

table(Master_3$Nationality)
Master_3$Nat_GDP_Gap <- ifelse(Master_3$Nationality== "DEU", Master_3$GDP_Gap_Ger, Master_3$GDP_Gap_Fra)
Master_3$Nat_CPI_Gap <- ifelse(Master_3$Nationality== "DEU", Master_3$CPI_Gap_Ger, Master_3$CPI_Gap_Fra)
Master_3$Nat_HUR_Gap <- ifelse(Master_3$Nationality== "DEU", Master_3$HUR_Gap_Ger, Master_3$HUR_Gap_Fra)
Master_3$Geo_GDP_Gap <- ifelse(Master_3$Nationality== "DEU", Master_3$GDP_Geo_Gap_Ger, Master_3$GDP_Geo_Gap_Fra)
Master_3$Geo_CPI_Gap <- ifelse(Master_3$Nationality== "DEU", Master_3$CPI_Geo_Gap_Ger, Master_3$CPI_Geo_Gap_Fra)
Master_3$Geo_HUR_Gap <- ifelse(Master_3$Nationality== "DEU", Master_3$HUR_Geo_Gap_Ger, Master_3$HUR_Geo_Gap_Fra)


#####
##### Bringing and Matching Stock / Volatility Data
#####

Vstoxx_EA$Date <- as.Date(Vstoxx_EA$Date, origin= "1899-12-30")
Vstoxx_Fra$Date <- as.Date(Vstoxx_Fra$Date, origin= "1899-12-30")
Vstoxx_Ger$Date <- as.Date(Vstoxx_Ger$Date, origin= "1899-12-30")

Master_3$Match <- match(as.Date(Master_3$Date),as.Date(Vstoxx_EA$Date))
Master_3$Vstoxx_EA <- Vstoxx_EA[Master_3$Match,]$VSTOXXI

Master_3$Match <- match(as.Date(Master_3$Date),as.Date(Vstoxx_Ger$Date))
Master_3$Vstoxx_Ger <- Vstoxx_Ger[Master_3$Match,]$VDAXNEW

Master_3$Match <- match(as.Date(Master_3$Date),as.Date(Vstoxx_Fra$Date))
Master_3$Vstoxx_Fra <- Vstoxx_Fra[Master_3$Match,]$CACVOLI

Master_3$Nat_Vstoxx <- ifelse(Master_3$Nationality== "FR", Master_3$Vstoxx_Fra, Master_3$Vstoxx_Ger)

table(Master_3$Nationality)
head(Master_3,20)

Check_1 <- Master_3[,c("Speech_ID","Date", "Vstoxx_EA", "Vstoxx_Fra", "Vstoxx_Ger", "Nat_Vstoxx")]

summary(Check_1$Vstoxx_EA)
summary(Check_1$Vstoxx_Fra)
summary(Check_1$Vstoxx_Ger)

#####
##### Bringing Savings Data
#####

colnames(Master_3)
table(Save_Forecast$?..LOCATION)
table(Save_Forecast$FREQUENCY)

Save_Forecast_EA <- subset(Save_Forecast, Save_Forecast$?..LOCATION == "EA17")
Master_3$Match <- match(substr(Master_3$Quarter_2,0,4), Save_Forecast_EA$TIME)
Master_3$Save_Forecast_EA <- Save_Forecast_EA[Master_3$Match,]$Value

Check_1 <- Master_3[,c("Speech_ID", "Save_Forecast_EA")]

table(Save_Forecast$?..LOCATION)

Save_Forecast_Fra <- subset(Save_Forecast, Save_Forecast$?..LOCATION == "FRA")
Save_Forecast_Fra <- subset(Save_Forecast_Fra, Save_Forecast_Fra$FREQUENCY== "A")
Master_3$Match <- match(substr(Master_3$Quarter_2,0,4), Save_Forecast_Fra$TIME)
Master_3$Save_Forecast_Fra <- Save_Forecast_Fra[Master_3$Match,]$Value

Save_Forecast_Ger <- subset(Save_Forecast, Save_Forecast$?..LOCATION == "DEU")
Save_Forecast_Ger <- subset(Save_Forecast_Ger, Save_Forecast_Ger$FREQUENCY== "A")
Master_3$Match <- match(substr(Master_3$Quarter_2,0,4), Save_Forecast_Ger$TIME)
Master_3$Save_Forecast_Ger <- Save_Forecast_Ger[Master_3$Match,]$Value

Check_1 <- Master_3[,c("Speech_ID", "Save_Forecast_EA", "Save_Forecast_Fra","Save_Forecast_Ger")]

table(Save_Realized$?..LOCATION)

# Realized_Ger <- subset(Save_Realized, Save_Realized$?..LOCATION == "DEU")
# Master_3$Match <- match(substr(Master_3$Quarter_2,0,4),Realized_Ger$TIME)
# Master_3$Save_Ger <- Realized_Ger[Master_3$Match,]$Value
# 
# Realized_EA <- subset(Save_Realized, Save_Realized$?..LOCATION == "EA")
# Master_3$Match <- match(substr(Master_3$Quarter_2,0,4),Realized_EA$TIME)
# Master_3$Save_EA <- Realized_EA[Master_3$Match,]$Value
# 
# Realized_Fra <- subset(Save_Realized, Save_Realized$?..LOCATION == "FRA")
# Master_3$Match <- match(substr(Master_3$Quarter_2,0,4),Realized_Fra$TIME)
# Master_3$Save_Fra <- Realized_Fra[Master_3$Match,]$Value



Save_Fra$Quarter <- paste0(substr(as.Date(Save_Fra$Date, origin= "1899-12-30"),1,4),"-",quarters(as.Date(Save_Fra$Date, origin= "1899-12-30")))
Master_3$Match <- match(Master_3$Quarter_2,Save_Fra$Quarter)
Master_3$Save_Fra <- Save_Fra[Master_3$Match,]$FRES07VHQ

Check_1 <- Master_3[,c("Speech_ID", "Save_Forecast_EA", "Save_Fra")]

Save_Ger$Quarter <- paste0(substr(as.Date(Save_Ger$Date, origin= "1899-12-30"),1,4),"-",quarters(as.Date(Save_Ger$Date, origin= "1899-12-30")))
Master_3$Match <- match(Master_3$Quarter_2,Save_Ger$Quarter)
Master_3$Save_Ger <- Save_Ger[Master_3$Match,]$BDES07VHQ

Check_1 <- Master_3[,c("Speech_ID", "Save_Forecast_EA", "Save_Fra", "Save_Ger")]


Save_EA$Quarter <- paste0(substr(as.Date(Save_EA$Date, origin= "1899-12-30"),1,4),"-",quarters(as.Date(Save_EA$Date, origin= "1899-12-30")))
Master_3$Match <- match(Master_3$Quarter_2,Save_EA$Quarter)
Master_3$Save_EA <- Save_EA[Master_3$Match,]$EKESHSAVQ

Master_3$Nat_Save <- ifelse(Master_3$Nationality== "FR", Master_3$Save_Fra, Master_3$Save_Ger)


Check_1 <- Master_3[,c("Speech_ID", 
                       "Save_Forecast_EA",
                       "Save_EA", 
                       "Save_Forecast_Fra",
                       "Save_Fra", 
                       "Save_Forecast_Ger",
                       "Save_Ger",
                       "Nat_Save",
                       "Vstoxx_EA", 
                       "Vstoxx_Fra", 
                       "Vstoxx_Ger",
                       "Nat_Vstoxx")]



rm(Check_1, Save_EA, Save_Forecast, Save_Forecast_EA, Save_Forecast_Fra, Save_Forecast_Ger, Save_Fra, Save_Ger, Save_Realized, Vstoxx_EA, Vstoxx_Fra, Vstoxx_Ger)


###
### Share Prices
###

Shares_P_EA <- subset(Shares_P, Shares_P$?..LOCATION == "EA19")
Shares_P_EA <- subset(Shares_P_EA, Shares_P_EA$FREQUENCY== "Q")

Shares_P_Ger <- subset(Shares_P, Shares_P$?..LOCATION == "DEU")
Shares_P_Ger <- subset(Shares_P_Ger, Shares_P_Ger$FREQUENCY== "Q")

Shares_P_Fra <- subset(Shares_P, Shares_P$?..LOCATION == "FRA")
Shares_P_Fra <- subset(Shares_P_Fra, Shares_P_Fra$FREQUENCY== "Q")


table(Shares_P_Fra$FREQUENCY)


Master_3$Match <- match(Master_3$Quarter_2, Shares_P_EA$TIME)
Master_3$Share_P_EA <- Shares_P_EA[Master_3$Match,]$Value

Master_3$Match <- match(Master_3$Quarter_2, Shares_P_Ger$TIME)
Master_3$Share_P_Ger <- Shares_P_Ger[Master_3$Match,]$Value

Master_3$Match <- match(Master_3$Quarter_2, Shares_P_Fra$TIME)
Master_3$Share_P_Fra <- Shares_P_Fra[Master_3$Match,]$Value

Master_3$Nat_Share_P <- ifelse(Master_3$Nationality == "FR", Master_3$Share_P_Fra, Master_3$Share_P_Ger)

Check_1 <- Master_3[,c("Speech_ID", "Date","Quarter_2", "Share_P_EA", "Share_P_Fra", "Share_P_Ger", "Nat_Share_P")]

table(Master_3$Nationality)




rm(Shares_P, Shares_P_EA, Shares_P_Fra, Shares_P_Ger)

###
### Declearing factor
###


table(Master_3$Position)
str(Master_3$In_Audience)
Master_3$Nationality <- as.factor(Master_3$Nationality)
Master_3$Source <- as.factor(Master_3$Source)
Master_3$Period <- as.factor(ifelse(as.Date(Master_3$Date)< "2014-06-05", "Before", "After"))
Master_3$Position <- as.factor(Master_3$Position)
Master_3$In_Audience <- as.factor(Master_3$In_Audience)


rm(Germans, EB,Check_1, Model_EB, Model)

#####
##### Calculating Quarterly Average Tone for Speakers
#####

Master_3$Speaker_Quater <- paste0(Master_3$Speakers_2,"_", Master_3$Quarter_2)

Aveg_Insiders <- aggregate(as.numeric(Master_3$Tone_Insiders)~Master_3$Speaker_Quater, FUN = mean)
Aveg_Outsiders <- aggregate(as.numeric(Master_3$Tone_Outsiders)~Master_3$Speaker_Quater, FUN = mean)
Aveg_Super <- aggregate(as.numeric(Master_3$Tone_Super_Insiders)~Master_3$Speaker_Quater, FUN = mean)
Aveg_Trust <- aggregate(as.numeric(Master_3$Tone_Trust)~Master_3$Speaker_Quater, FUN = mean)


Master_3$Match <- match(Master_3$Speaker_Quater, Aveg_Super$`Master_3$Speaker_Quater`)
Master_3$Aveg_Super <- Aveg_Super[Master_3$Match,]$`as.numeric(Master_3$Tone_Super_Insiders)`

Master_3$Match <- match(Master_3$Speaker_Quater, Aveg_Outsiders$`Master_3$Speaker_Quater`)
Master_3$Aveg_Outsiders <- Aveg_Outsiders[Master_3$Match,]$`as.numeric(Master_3$Tone_Outsiders)`

Master_3$Match <- match(Master_3$Speaker_Quater, Aveg_Insiders$`Master_3$Speaker_Quater`)
Master_3$Aveg_Insiders <- Aveg_Insiders[Master_3$Match,]$`as.numeric(Master_3$Tone_Insiders)`

Master_3$Match <- match(Master_3$Speaker_Quater, Aveg_Trust$`Master_3$Speaker_Quater`)
Master_3$Aveg_Trust <- Aveg_Trust[Master_3$Match,]$`as.numeric(Master_3$Tone_Trust)`

###
### Basic Model "Model_0"
###

Multi <- Master_3[, c("Tone_Insiders",
                      "Tone_Super_Insiders",
                      "Tone_Outsiders",
                      "Tone_Trust",
                      "Nat_CPI_Gap", 
                      "Nat_HUR_Gap", 
                      "Nat_GDP_Gap",
                      "Nat_Save",
                      "Nat_Trust",
                      "Nat_Share_P",
                      "Nationality", 
                      "Position",
                      "Source",
                      "Period",
                      "In_Audience",
                      "Speech_ID", 
                      "Quarter_2",
                      "Aveg_Super",
                      "Aveg_Outsiders",
                      "Aveg_Trust",
                      "Aveg_Insiders",
                      "Geo_GDP_Gap",
                      "Geo_CPI_Gap",
                      "Geo_HUR_Gap")]

lapply(Multi, summary)


Little_Guys <- subset(Multi, Multi$Position == "NBM")
colnames(Little_Guys)
Big_Guys <- subset(Multi, Multi$Position != "NBM")

Little_Guys$OverAll <- rowMeans(Little_Guys[,1:4], na.rm = TRUE)

Little_Tone <- aggregate(as.numeric(Little_Guys$OverAll)~Little_Guys$Quarter_2+Little_Guys$Nationality, FUN = mean)

Little_Tone$Nation_Quarter <- paste0(Little_Tone$`Little_Guys$Nationality`,"_", Little_Tone$`Little_Guys$Quarter_2`)
Big_Guys$Nation_Quarter <- paste0(Big_Guys$Nationality,"_", Big_Guys$Quarter_2)

Big_Guys$Match <- match(Big_Guys$Nation_Quarter, Little_Tone$Nation_Quarter)

Big_Guys$Little_Tone <- Little_Tone[Big_Guys$Match,]$`as.numeric(Little_Guys$OverAll)`





Model_Final <- lm(cbind(Aveg_Super,Aveg_Insiders, Aveg_Outsiders, Aveg_Trust)~
                    
               In_Audience*Nat_CPI_Gap+
                  In_Audience*Nat_GDP_Gap+
                  In_Audience*Nat_Trust+
                In_Audience*Nat_Share_P+
                In_Audience*Little_Tone,
              data = Big_Guys)

stats::BIC(Model_Final_HUR, Model_Final)
summary(Model_Final)
Anova(Model_Final)


Final_Data <- as.data.frame(Model_Final$model)
Final_Data_Dep <- as.data.frame(Model_Final$model$`cbind(Aveg_Super, Aveg_Insiders, Aveg_Outsiders, Aveg_Trust)`)

Final_Data <- cbind(Final_Data, Final_Data_Dep)

Residuals <- as.data.frame(Model_Final$residuals)


lapply(Residuals, kurtosis)
lapply(Residuals,skewness)
lapply(Residuals, hist)
lapply(Residuals, mean)


hist(Residuals$Aveg_Super)
hist(Residuals$Aveg_Insiders)
hist(Residuals$Aveg_Outsiders)
hist(Residuals$Aveg_Trust)


Pillais <- Anova(Model_Final)

Pillais
colnames(Final_Data)


Model_Cov <- Final_Data[, c("In_Audience","Nat_CPI_Gap", "Nat_GDP_Gap", "Nat_Trust", "Nat_Share_P", "Aveg_Super", "Aveg_Insiders", "Aveg_Outsiders", "Aveg_Trust" )]

stats::vcov(Model_Final)

##########
########## Correlation among tone overall
##########


Big_Guys$OverAll <- rowMeans(Big_Guys[,c("Tone_Insiders", "Tone_Outsiders", "Tone_Super_Insiders", "Tone_Trust")], na.rm = TRUE)

Avg_Tone_Big <- aggregate(as.numeric(Big_Guys$OverAll)~Big_Guys$Quarter_2, FUN = mean)

Avg_Tone <- aggregate(as.numeric(Little_Guys$OverAll)~Little_Guys$Quarter_2, FUN= mean)

Avg_Tone_Big$Match <- match(Avg_Tone_Big$`Big_Guys$Quarter_2`, Avg_Tone$`Little_Guys$Quarter_2`)

Avg_Tone_Big$Little_Aveg <- Avg_Tone[Avg_Tone_Big$Match,]$`as.numeric(Little_Guys$OverAll)`

Avg_Tone_Big <- subset(Avg_Tone_Big, is.na(Avg_Tone_Big$Match)==FALSE)

plot(Avg_Tone_Big$`as.numeric(Big_Guys$OverAll)`, Avg_Tone_Big$Little_Aveg)
cor(Avg_Tone_Big$`as.numeric(Big_Guys$OverAll)`, Avg_Tone_Big$Little_Aveg)


##
## Separate model for stargazer
##


Model_1 <- lm(Aveg_Super~
                In_Audience*Nat_CPI_Gap+
                In_Audience*Nat_GDP_Gap+
                In_Audience*Nat_Trust+
                In_Audience*Nat_Share_P+
                In_Audience*Little_Tone,
              data = Final_Data)

summary(Model_1)



Model_2 <- lm(Aveg_Insiders~
                
                In_Audience*Nat_CPI_Gap+
                In_Audience*Nat_GDP_Gap+
                In_Audience*Nat_Trust+
                In_Audience*Nat_Share_P+
                In_Audience*Little_Tone,
              data = Final_Data)


Model_3 <- lm(Aveg_Outsiders~
                
                In_Audience*Nat_CPI_Gap+
                In_Audience*Nat_GDP_Gap+
                In_Audience*Nat_Trust+
                In_Audience*Nat_Share_P+
                In_Audience*Little_Tone,
              data = Final_Data)


Model_4 <- lm(Aveg_Trust~
                
                In_Audience*Nat_CPI_Gap+
                In_Audience*Nat_GDP_Gap+
                In_Audience*Nat_Trust+
                In_Audience*Nat_Share_P+
                In_Audience*Little_Tone,
              data = Final_Data)

summary(Model_Final)
#stargazer(Model_1, Model_2, Model_3, Model_4, type = "text", out = "Model_Period_without_Intercept.txt")


Anova(Model_Final)
###################################################
###
### End of code
### Real end of code
###
############################################

###
### Alluvial Chart
###

For_Alluvial <- Final_Data[,2:11]

For_Alluvial <- For_Alluvial[,c("In_Audience","Nat_CPI_Gap", "Nat_GDP_Gap", "Nat_Trust", "Nat_Share_P", "Little_Tone",  "Aveg_Trust")]

For_Alluvial_2 <- For_Alluvial[,c("In_Audience","Nat_CPI_Gap", "Nat_GDP_Gap", "Nat_Trust", "Nat_Share_P", "Little_Tone",  "Aveg_Trust")]

#For_Alluvial$Inflation <- paste(For_Alluvial$Nat_CPI_Gap)
#For_Alluvial$Growth <- paste(For_Alluvial$Nat_GDP_Gap)
#For_Alluvial_2$Inflation <- paste(For_Alluvial_2$Nat_CPI_Gap)
#For_Alluvial_2$Growth <- paste(For_Alluvial_2$Nat_GDP_Gap)



For_Alluvial_2$Nat_CPI_Gap <- paste(For_Alluvial_2$Nat_GDP_Gap)

For_Alluvial$Nat_GDP_Gap <- NULL
For_Alluvial_2$Nat_GDP_Gap <- NULL


For_Alluvial$CPI <- paste("CPI")
For_Alluvial_2$GDP <- paste("GDP")
colnames(For_Alluvial)[7]<- c("GDP")


For_Alluvial <- rbind(For_Alluvial, For_Alluvial_2)

For_Alluvial <- unique(For_Alluvial)

colnames(For_Alluvial)[2]<- c("Macro_Indicator")

For_Alluvial$Macro_Indicator <- ifelse(For_Alluvial$Macro_Indicator>0 & For_Alluvial$GDP== "CPI","Positive CPI",
                                       ifelse(For_Alluvial$Macro_Indicator<0 & For_Alluvial$GDP== "CPI", "Negative CPI",
                                             ifelse(For_Alluvial$Macro_Indicator>0 & For_Alluvial$GDP== "GDP", "Positive GDP", "Negative GDP")))
#For_Alluvial$Nat_GDP_Gap <- ifelse(For_Alluvial$Nat_GDP_Gap>0, "Positive GDP", "Negative GDP")
For_Alluvial$Little_Tone <- ifelse(For_Alluvial$Little_Tone>0, "Positive NBM Tone", "Negative NBM Tone")
For_Alluvial$Average_Tone <- ifelse(For_Alluvial$Aveg_Trust>0, "Positive Tone", "Negative Tone")


For_Alluvial <- as.data.frame(table(For_Alluvial$In_Audience, 
                                    For_Alluvial$Macro_Indicator, 
                                    
                                    For_Alluvial$Little_Tone, 
                                    For_Alluvial$Average_Tone))


colnames(For_Alluvial)[1]<- c("In Audience")
colnames(For_Alluvial)[2]<- c("CPI and GDP Indicator")
colnames(For_Alluvial)[3]<- c("NBM Collegues Indicator")
colnames(For_Alluvial)[4]<- c("Tone Trust")

For_Alluvial <- For_Alluvial[order(For_Alluvial$Freq, decreasing = TRUE),]

alluvial(For_Alluvial[,1:4], freq = For_Alluvial$Freq,cex = 2,col = ifelse(For_Alluvial$`In Audience`== "Germany", "cadetblue",
                                                                    ifelse(For_Alluvial$`In Audience`=="France", "blue4", "grey")))

alluvial(Abb_2[,1:4], freq = Abb_2$Freq, col = ifelse(Abb_2$Medium=="referral","orange", ifelse(Abb_2$Medium== "organic", "blue","green")))

?alluvial

######
###### Final Alluvial
######

For_Alluvial <- Final_Data[,2:11]

T_Super <- For_Alluvial[,c( "Aveg_Super","Nat_CPI_Gap", "Nat_GDP_Gap", "Little_Tone","In_Audience")]
colnames(T_Super)[1]<- c("Tone")
T_Super$Tone <- ifelse(T_Super$Tone>0,"Positive Tone", "Negative Tone")
T_Super$Class_Tone <- paste("Super Insiders")

T_Insiders <- For_Alluvial[,c("Aveg_Insiders","Nat_CPI_Gap", "Nat_GDP_Gap", "Little_Tone","In_Audience")]
colnames(T_Insiders)[1]<- c("Tone")
T_Insiders$Tone <- ifelse(T_Insiders$Tone>0,"Positive Tone", "Negative Tone")
T_Insiders$Class_Tone <- paste("Insiders")


T_Outsiders <- For_Alluvial[,c("Aveg_Outsiders","Nat_CPI_Gap", "Nat_GDP_Gap", "Little_Tone","In_Audience")]
colnames(T_Outsiders)[1]<- c("Tone")
T_Outsiders$Tone <- ifelse(T_Outsiders$Tone>0,"Positive Tone", "Negative Tone")
T_Outsiders$Class_Tone <- paste("Outsiders")

T_Trust <- For_Alluvial[,c("Aveg_Trust","Nat_CPI_Gap", "Nat_GDP_Gap", "Little_Tone","In_Audience")]
colnames(T_Trust)[1]<- c("Tone")
T_Trust$Tone <- ifelse(T_Trust$Tone>0,"Positive Tone", "Negative Tone")
T_Trust$Class_Tone <- paste("Trust")


For_Alluvial <- rbind(T_Super, T_Insiders, T_Outsiders, T_Trust)

For_Alluvial_2 <- For_Alluvial

For_Alluvial_2$Nat_CPI_Gap <- paste(For_Alluvial_2$Nat_GDP_Gap)

For_Alluvial$Macro_Metric <- paste("CPI")

For_Alluvial_2$Macro_Metric <- paste("GDP")


For_Alluvial <- rbind(For_Alluvial, For_Alluvial_2)

For_Alluvial$Macro_Indicator <- paste(For_Alluvial$Nat_CPI_Gap)

For_Alluvial$Macro_Indicator_2 <- ifelse(For_Alluvial$Macro_Indicator>0 & For_Alluvial$Macro_Metric== "CPI","Positive CPI",
                                         ifelse(For_Alluvial$Macro_Indicator<0 & For_Alluvial$Macro_Metric== "CPI", "Negative CPI",
                                                ifelse(For_Alluvial$Macro_Indicator>0 & For_Alluvial$Macro_Metric== "GDP", "Positive GDP", "Negative GDP")))


For_Alluvial$Little_Tone <- ifelse(For_Alluvial$Little_Tone>0, "Positive NBM Tone", "Negative NBM Tone")
#For_Alluvial$Tone <- ifelse(For_Alluvial$Tone>0, "Positive Tone", "Negative Tone")


For_Alluvial <- as.data.frame(table(For_Alluvial$Class_Tone, 
                                    For_Alluvial$In_Audience,
                                    For_Alluvial$Macro_Indicator_2, 
                                    
                                    For_Alluvial$Tone))

colnames(For_Alluvial)[1]<- c("Class_Tone")
colnames(For_Alluvial)[2]<- c("In_Audience")
colnames(For_Alluvial)[3]<- c("Macro Indicator")
colnames(For_Alluvial)[4]<- c("Tone")

For_Alluvial <- For_Alluvial[,c("In_Audience","Class_Tone","Macro Indicator", "Tone", "Freq")]

table(For_Alluvial$Tone)
For_Alluvial$In_Audience <- ifelse(For_Alluvial$In_Audience == "Euro_Area", "Euro Area", paste(For_Alluvial$In_Audience))





For_Alluvial <- For_Alluvial[order(For_Alluvial$Class_Tone, decreasing = FALSE),]
rownames(For_Alluvial)<- NULL

alluvial(For_Alluvial[,1:4], freq = For_Alluvial$Freq, col = ifelse(For_Alluvial$Class_Tone== "Super Insiders", "cadetblue",
                                                                    ifelse(For_Alluvial$Class_Tone=="Insiders", "blue4",
                                                                           ifelse(For_Alluvial$Class_Tone== "Outsiders", "skyblue", "mediumseagreen"))))
alluvial(For_Alluvial[1:96,1:4], freq = For_Alluvial$Freq,border = 0,axis_labels = NULL,
         
         
         ordering = list(order(For_Alluvial$Class_Tone, decreasing = TRUE),
                         order(For_Alluvial$In_Audience, decreasing = TRUE),
                         order(For_Alluvial$`Macro Indicator`, decreasing = FALSE),
                         order(For_Alluvial$Tone, decreasing = FALSE)
                         
                         ),
         
         blocks = TRUE, layer = For_Alluvial$Class_Tone== "Trust", cex = 2,col = ifelse(For_Alluvial$Class_Tone== "Super Insiders", "cadetblue",
                                                                                                          ifelse(For_Alluvial$Class_Tone=="Insiders", "blue4",
                                                                                                                 ifelse(For_Alluvial$Class_Tone== "Outsiders", "skyblue", "mediumseagreen"))))





#######
#######
#######



For_Alluvial <- Final_Data[,2:11]

T_Super <- For_Alluvial[,c( "Aveg_Super","Nat_CPI_Gap", "Nat_GDP_Gap", "Little_Tone","In_Audience")]
colnames(T_Super)[1]<- c("Tone")
T_Super$Tone <- ifelse(T_Super$Tone>0,"Positive Tone", "Negative Tone")
T_Super$Class_Tone <- paste("Super Insiders")

T_Insiders <- For_Alluvial[,c("Aveg_Insiders","Nat_CPI_Gap", "Nat_GDP_Gap", "Little_Tone","In_Audience")]
colnames(T_Insiders)[1]<- c("Tone")
T_Insiders$Tone <- ifelse(T_Insiders$Tone>0,"Positive Tone", "Negative Tone")
T_Insiders$Class_Tone <- paste("Insiders")


T_Outsiders <- For_Alluvial[,c("Aveg_Outsiders","Nat_CPI_Gap", "Nat_GDP_Gap", "Little_Tone","In_Audience")]
colnames(T_Outsiders)[1]<- c("Tone")
T_Outsiders$Tone <- ifelse(T_Outsiders$Tone>0,"Positive Tone", "Negative Tone")
T_Outsiders$Class_Tone <- paste("Outsiders")

T_Trust <- For_Alluvial[,c("Aveg_Trust","Nat_CPI_Gap", "Nat_GDP_Gap", "Little_Tone","In_Audience")]
colnames(T_Trust)[1]<- c("Tone")
T_Trust$Tone <- ifelse(T_Trust$Tone>0,"Positive Tone", "Negative Tone")
T_Trust$Class_Tone <- paste("Trust")


For_Alluvial <- rbind(T_Super, T_Insiders, T_Outsiders, T_Trust)



For_Alluvial$Nat_CPI_Gap <- ifelse(For_Alluvial$Nat_CPI_Gap>0,"Positive CPI", "Negative CPI")
For_Alluvial$Nat_GDP_Gap <- ifelse(For_Alluvial$Nat_GDP_Gap>0, "Positive GDP", "Negative GDP")
For_Alluvial$Little_Tone <- ifelse(For_Alluvial$Little_Tone>0, "Positive NBM Tone", "Negative NBM Tone")
#For_Alluvial$Tone <- ifelse(For_Alluvial$Tone>0, "Positive Tone", "Negative Tone")


For_Alluvial <- as.data.frame(table(For_Alluvial$Class_Tone, 
                                    For_Alluvial$In_Audience,
                                    For_Alluvial$Nat_CPI_Gap, 
                                    For_Alluvial$Nat_GDP_Gap, 
                                    For_Alluvial$Little_Tone, 
                                    For_Alluvial$Tone))

colnames(For_Alluvial)[1]<- c("Class_Tone")
colnames(For_Alluvial)[2]<- c("In_Audience")
colnames(For_Alluvial)[3]<- c("CPI Indicator")
colnames(For_Alluvial)[4]<- c("GDP Indicator")
colnames(For_Alluvial)[5]<- c("NBM Collegues Indicator")
colnames(For_Alluvial)[6]<- c("Tone")


table(For_Alluvial$Tone)

For_Alluvial$In_Audience <- ifelse(For_Alluvial$In_Audience == "Euro_Area","Euro Area", paste(For_Alluvial$In_Audience))


For_Alluvial <- For_Alluvial[order(For_Alluvial$Class_Tone, decreasing = FALSE),]

alluvial(For_Alluvial[,1:6], freq = For_Alluvial$Freq,border = 0,axis_labels = NULL, cex = 2,col = ifelse(For_Alluvial$Class_Tone== "Super Insiders", "cadetblue",
                                                                            ifelse(For_Alluvial$Class_Tone=="Insiders", "blue4",
                                                                                   ifelse(For_Alluvial$Class_Tone== "Outsiders", "skyblue", "mediumseagreen"))))




###
### Raw R squared calculation
###


Super_R <- Final_Data[,c( "Aveg_Trust", "Nat_CPI_Gap", "Nat_GDP_Gap","Little_Tone")]

colnames(Super_R)[1]<- c("Aveg_Super")

Super_R$Aveg_Super <- Super_R$Aveg_Super - mean(Super_R$Aveg_Super)
Super_R$Nat_CPI_Gap <- Super_R$Nat_CPI_Gap- mean(Super_R$Nat_CPI_Gap)
Super_R$Nat_GDP_Gap <- Super_R$Nat_GDP_Gap- mean(Super_R$Nat_GDP_Gap)
Super_R$Nat_Trust <- Super_R$Nat_Trust- mean(Super_R$Nat_Trust)
Super_R$Nat_Share_P <- Super_R$Nat_Share_P- mean(Super_R$Nat_Share_P)
Super_R$Little_Tone <- Super_R$Little_Tone- mean(Super_R$Little_Tone)


Super_R$Aveg_Super <- Super_R$Aveg_Super^2
Super_R$Nat_CPI_Gap <- Super_R$Nat_CPI_Gap^2
Super_R$Nat_GDP_Gap <- Super_R$Nat_GDP_Gap^2
Super_R$Nat_Trust <- Super_R$Nat_Trust^2
Super_R$Nat_Share_P <- Super_R$Nat_Share_P^2
Super_R$Little_Tone <- Super_R$Little_Tone^2



Super_R <- as.data.frame(crossprod(as.matrix(Super_R)))

sum(Super_R[1,2:6])/(sum(Super_R$Aveg_Trust)
              +sum(Super_R$Nat_CPI_Gap)
              +sum(Super_R$Nat_GDP_Gap)+
                sum(Super_R$Nat_Trust)
              +sum(Super_R$Nat_Share_P)
              +sum(Super_R$Little_Tone))

write.csv(Final_Data, file = "Final_Data.csv")



Model_10 <- lm(Aveg_Super~
                 In_Audience*Nat_CPI_Gap+
                 In_Audience*Nat_GDP_Gap+
                 In_Audience*Nat_Trust+
                 In_Audience*Nat_Share_P+
                 In_Audience*Little_Tone,
               data = Final_Data)

summary(Model_10)

anova(Model_10)


library(subselect)




sum(Model_10$residuals^2)
sum(Model_10$residuals^2)
sum(Model_10$model$Little_Tone^2)



Final_Data$CPI_2 <- Vectorize(Final_Data$Aveg_Super - mean(Final_Data$Aveg_Super))
sum(Final_Data$CPI_2^2)

summary(Model_1)

1-(sum(Model_1$residuals)^2/sum(mean(Final_Data$Aveg_Super) - Final_Data$Aveg_Super)^2)

sum((Final_Data$Aveg_Super)-mean(Final_Data$Aveg_Super)^2)
sum((Model_10$residuals)-mean(Model_10$residuals)^2)

###
### Ad-hoc tasks, speaker table 
###

Final_Data$Row_Name <- row.names(Final_Data)
Big_Guys$Row_Names <- row.names(Big_Guys)
Big_Guys$Match <- match(Big_Guys$Row_Names, Final_Data$Row_Name)

Master_3$Row_Names <- row.names(Master_3)
Master_3$Match <- match(Master_3$Row_Names, Final_Data$Row_Name)
Master_3$Model_CPI <- Final_Data[Master_3$Match,]$Nat_CPI_Gap
Master_3$Model_GDP <- Final_Data[Master_3$Match,]$Nat_GDP_Gap

Author_Table <- Master_3[,c("Speech_ID",
                            "Speakers_2",
                            "Quarter_2", 
                            "Match",
                            "Row_Names", 
                            "Model_CPI", 
                            "Nat_CPI_Gap",
                            "Model_GDP", 
                            "Nat_GDP_Gap", 
                            "Position", 
                            "Nationality", 
                            "Source")]
Author_Table <- subset(Author_Table, is.na(Author_Table$Match)== FALSE)

Author_Table <- cbind(Author_Table, Final_Data_Dep, Final_Data)

table(Author_Table$Position)

EB_Speakers <- subset(Author_Table, Author_Table$Position== "EB")
NCB_Speakers <- subset(Author_Table, Author_Table$Position== "NCB")

EB_Speakers <- EB_Speakers[,c("Aveg_Super", "Aveg_Insiders", "Aveg_Outsiders", "Aveg_Trust", "Aveg_Overall")]
EB_Speakers_2 <- as.data.frame(unclass(EnvStats::summaryFull(EB_Speakers)))

#write.csv(EB_Speakers_2, file = "Descriptive_EB_Speakers.csv")

NCB_Speakers <- NCB_Speakers[,c("Aveg_Super", "Aveg_Insiders", "Aveg_Outsiders", "Aveg_Trust", "Aveg_Overall")]
NCB_Speakers_2 <- as.data.frame(unclass(EnvStats::summaryFull(NCB_Speakers)))

write.csv(NCB_Speakers_2, file = "Descriptive_NCB_Speakers.csv")

Little_Guys_2 <- Little_Guys[,c("Aveg_Super", "Aveg_Insiders", "Aveg_Outsiders", "Aveg_Trust")]
Little_Guys_2$Overall <- rowMeans(Little_Guys_2)

Little_Guys_3 <- as.data.frame(unclass(EnvStats::summaryFull(Little_Guys_2)))

write.csv(Little_Guys_3, file = "Descriptive_LittleGuys.csv")


table(Master_3$Helper, Master_3$Source)

table(Big_Guys$Source)
table(Little_Guys$Nationality, Little_Guys$Source)




Master_3$Year <- substr(Master_3$Year_Month,0,4)
table(Master_3$Year)
table(Master_3$Nationality,Master_3$Year,Master_3$Position)


EB_NBM <- as.data.frame.matrix(table(Master_3$Position, Master_3$Year))
EB_NBM <- as.data.frame((EB_NBM))
EB_NBM$Row_Total <- rowSums(EB_NBM)
#write.csv(EB_NBM, file = "EB_NBM.csv")

Non_EB <- subset(Master_3, Master_3$Position != "EB")

Nat_Speeches <- as.data.frame.matrix(table(Non_EB$Nationality, Non_EB$Year))
#write.csv(Nat_Speeches, "Nat_Speeches.csv")


Speakers <- aggregate(as.numeric(Master_3$Helper)~Master_3$Speakers_2+Master_3$Year, FUN = sum)


Speakers_2 <- as.data.frame.matrix(table(Master_3$Speakers_2,Master_3$Year))
#write.csv(Speakers_2, file = "Speeches_by_Year.csv")



Final_Data_Dep$Aveg_Overall <- rowMeans(Final_Data_Dep)






Descr_0 <- as.data.frame(unclass(EnvStats::summaryFull(Final_Data_Dep$Aveg_Super)))
Descr_1 <- as.data.frame(unclass(EnvStats::summaryFull(Final_Data_Dep$Aveg_Insiders)))
Descr_2 <- as.data.frame(unclass(EnvStats::summaryFull(Final_Data_Dep$Aveg_Outsiders)))
Descr_3 <- as.data.frame(unclass(EnvStats::summaryFull(Final_Data_Dep$Aveg_Trust)))
Descr_4 <- as.data.frame(unclass(EnvStats::summaryFull(Final_Data_Dep$Aveg_Overall)))

Descr <- cbind(Descr_0, Descr_1, Descr_2, Descr_3, Descr_4)

write.csv(Descr,"Descriptive.csv")
Descr <- as.data.frame(unclass(lapply(Final_Data_Dep, summaryFull)))


Germany <- subset(Final_Data, Final_Data$In_Audience== "France")

Germany <- Germany[,c("Aveg_Super", "Aveg_Insiders", "Aveg_Outsiders", "Aveg_Trust")]

Ger_1 <- as.data.frame(unclass(EnvStats::summaryFull(Germany$Aveg_Insiders)))
Ger_2 <- as.data.frame(unclass(EnvStats::summaryFull(Germany$Aveg_Outsiders)))
Ger_3 <- as.data.frame(unclass(EnvStats::summaryFull(Germany$Aveg_Trust)))
Ger_4 <- as.data.frame(unclass(EnvStats::summaryFull(Germany$Aveg_Super)))


Ger_1 <- cbind(Ger_1, Ger_2, Ger_3, Ger_4)

#write.csv(Ger_1, file = "Tones_France.csv")


table(Author_Table$Source)
Sources <- subset(Author_Table, Author_Table$Source=="Interview")
Sources <- Sources[,c("Aveg_Super", "Aveg_Insiders", "Aveg_Outsiders", "Aveg_Trust", "Aveg_Overall")]

Sor_1 <- as.data.frame(unclass(EnvStats::summaryFull(Sources$Aveg_Insiders)))
Sor_2 <- as.data.frame(unclass(EnvStats::summaryFull(Sources$Aveg_Outsiders)))
Sor_3 <- as.data.frame(unclass(EnvStats::summaryFull(Sources$Aveg_Trust)))
Sor_4 <- as.data.frame(unclass(EnvStats::summaryFull(Sources$Aveg_Super)))

Sor_1 <- cbind(Sor_1, Sor_2, Sor_3, Sor_4)

mean(Sources$Aveg_Insiders)

write.csv(Sor_1, file = "Tones_Speeches.csv")


Tone_OverAll <- as.data.frame(unclass(EnvStats::summaryFull(Final_Data_Dep$Aveg_Overall)))

Avg_OverAll_Tone <- aggregate(as.numeric(Author_Table$Aveg_Overall)~substr(Author_Table$Quarter_2,0,4), FUN = mean)


write.csv(Avg_OverAll_Tone, "Avg_OverAll_Tone.csv")


Gaps_by_Year <- Author_Table[,c("Nat_CPI_Gap", "Nat_GDP_Gap", "Nat_Share_P", "Nat_Trust", "Nationality", "Quarter_2", "Aveg_Overall")]

Gaps_by_Year <- subset(Gaps_by_Year, Gaps_by_Year$Nationality== "DEU")

Tone_France <- aggregate(as.numeric(Gaps_by_Year$Aveg_Overall)~substr(Gaps_by_Year$Quarter_2,0,4), FUN = mean)
write.csv(Tone_France, "Tone_Germany.csv")


Gaps_Ger_GDP <- aggregate(as.numeric(Gaps_by_Year$Nat_GDP_Gap)~substr(Gaps_by_Year$Quarter_2,0,4), FUN = mean)
Gaps_Ger_CPI <- aggregate(as.numeric(Gaps_by_Year$Nat_CPI_Gap)~substr(Gaps_by_Year$Quarter_2,0,4), FUN = mean)
Gaps_Ger_Share <- aggregate(as.numeric(Gaps_by_Year$Nat_Share_P)~substr(Gaps_by_Year$Quarter_2,0,4), FUN = mean)
Gaps_Ger_Trust <- aggregate(as.numeric(Gaps_by_Year$Nat_Trust)~substr(Gaps_by_Year$Quarter_2,0,4), FUN = mean)

Gaps_Ger_GDP <- cbind(Gaps_Ger_CPI,Gaps_Ger_GDP, Gaps_Ger_Share,Gaps_Ger_Trust)

write.csv(Gaps_Ger_GDP, file = "Gap_Series.csv")

French_Data <- subset(Big_Guys, Big_Guys$Nationality == "FR")
French_Data <- French_Data[,c("Quarter_2", 
                              "Tone_Insiders", 
                              "Tone_Super_Insiders", 
                              "Tone_Trust", 
                              "Nat_Trust", 
                              "Nat_GDP_Gap", 
                              "Nat_CPI_Gap",
                              "Nat_Share_P",
                              "In_Audience",
                              "Little_Tone")]


Products <- read.csv("Products.csv")
Products$Xs <- Products$Xs^2
Products$Ys <- Products$Ys^2



Products$Zs <- Products$Zs^2
Products <- as.matrix(Products)
crossprod(Products^2)
crossprod(Products$Xs, Products$Ys)
crossprod(Products[,c("Xs", "Ys")])
+crossprod(Products[,2:3])+crossprod(Products[,1:3])

crossprod(Products$Xs^2, Products$Ys^2)
crossprod(Products$Squared_X, Products$Squared_Y)
sum(Products$Xs^2+Products$Ys^2)


Ger_Cross <- subset(Final_Data, Final_Data$In_Audience== "Germany")

?crossprod()
colnames(Final_Data)

crossprod(Final_2)



crossprod(Final_Data$Aveg_Super^2, 
          Final_Data$Nat_CPI_Gap^2, 
          Final_Data$Nat_GDP_Gap^2,


          Final_Data$Nat_Trust^2,
          Final_Data$Nat_Share_P^2,
          Final_Data$Little_Tone^2)




