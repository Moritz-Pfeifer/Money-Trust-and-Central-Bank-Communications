

#########################################################
##
## Data Import Script
## Sentiment Analysis on Central Bankers
## Client: Moritz Pfiffer
## 8/16/2021
##
#############################################################

setwd("C:\\Users\\salaz\\Desktop\\Moritz\\Autres_interventions_BF")
library(rjson)
library(dplyr)
#
# Importing Reported Json files
#


interventions_1999_04_10.json<- as.data.frame(fromJSON(paste(readLines("interventions_1999_04_10.json"))), encoding= "UTF-8",asText=TRUE)


interventions_1999_08_06.json<- as.data.frame(fromJSON(paste(readLines("interventions_1999_08_06.json"))), encoding= "UTF-8",asText=TRUE)
interventions_1999_09_09.json<- as.data.frame(fromJSON(paste(readLines("interventions_1999_09_09.json"))), encoding= "UTF-8",asText=TRUE)
interventions_1999_09_11.json<- as.data.frame(fromJSON(paste(readLines("interventions_1999_09_11.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2000_09_22.json<- as.data.frame(fromJSON(paste(readLines("interventions_2000_09_22.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2001_01_30.json<- as.data.frame(fromJSON(paste(readLines("interventions_2001_01_30.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2001_03_27.json<- as.data.frame(fromJSON(paste(readLines("interventions_2001_03_27.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2001_06_19.json<- as.data.frame(fromJSON(paste(readLines("interventions_2001_06_19.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2001_06_25.json<- as.data.frame(fromJSON(paste(readLines("interventions_2001_06_25.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2001_09_03.json<- as.data.frame(fromJSON(paste(readLines("interventions_2001_09_03.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2001_10_07.json<- as.data.frame(fromJSON(paste(readLines("interventions_2001_10_07.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2002_01_01.json<- as.data.frame(fromJSON(paste(readLines("interventions_2002_01_01.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2002_04_23.json<- as.data.frame(fromJSON(paste(readLines("interventions_2002_04_23.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2002_06_26.json<- as.data.frame(fromJSON(paste(readLines("interventions_2002_06_26.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2003_05_03.json<- as.data.frame(fromJSON(paste(readLines("interventions_2003_05_03.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2003_06_18.json<- as.data.frame(fromJSON(paste(readLines("interventions_2003_06_18.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2003_06_24.json<- as.data.frame(fromJSON(paste(readLines("interventions_2003_06_24.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2003_10_16.json<- as.data.frame(fromJSON(paste(readLines("interventions_2003_10_16.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2004_01_21.json<- as.data.frame(fromJSON(paste(readLines("interventions_2004_01_21.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2004_03_05.json<- as.data.frame(fromJSON(paste(readLines("interventions_2004_03_05.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2004_05_27.json<- as.data.frame(fromJSON(paste(readLines("interventions_2004_05_27.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2004_06_01.json<- as.data.frame(fromJSON(paste(readLines("interventions_2004_06_01.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2004_06_22.json<- as.data.frame(fromJSON(paste(readLines("interventions_2004_06_22.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2004_06_22_1.json<- as.data.frame(fromJSON(paste(readLines("interventions_2004_06_22_1.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2004_09_22.json<- as.data.frame(fromJSON(paste(readLines("interventions_2004_09_22.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2005_06_22.json<- as.data.frame(fromJSON(paste(readLines("interventions_2005_06_22.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2005_06_28.json<- as.data.frame(fromJSON(paste(readLines("interventions_2005_06_28.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2005_09_02.json<- as.data.frame(fromJSON(paste(readLines("interventions_2005_09_02.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2005_10_10.json<- as.data.frame(fromJSON(paste(readLines("interventions_2005_10_10.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2005_11_04.json<- as.data.frame(fromJSON(paste(readLines("interventions_2005_11_04.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2006_02_14.json<- as.data.frame(fromJSON(paste(readLines("interventions_2006_02_14.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2006_06_09.json<- as.data.frame(fromJSON(paste(readLines("interventions_2006_06_09.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2006_06_27.json<- as.data.frame(fromJSON(paste(readLines("interventions_2006_06_27.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2006_06_28.json<- as.data.frame(fromJSON(paste(readLines("interventions_2006_06_28.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2006_07_08.json<- as.data.frame(fromJSON(paste(readLines("interventions_2006_07_08.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2007_03_21.json<- as.data.frame(fromJSON(paste(readLines("interventions_2007_03_21.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2007_03_29.json<- as.data.frame(fromJSON(paste(readLines("interventions_2007_03_29.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2007_04_15.json<- as.data.frame(fromJSON(paste(readLines("interventions_2007_04_15.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2007_04_16.json<- as.data.frame(fromJSON(paste(readLines("interventions_2007_04_16.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2007_05_16.json<- as.data.frame(fromJSON(paste(readLines("interventions_2007_05_16.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2007_05_16_1.json<- as.data.frame(fromJSON(paste(readLines("interventions_2007_05_16_1.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2007_06_29.json<- as.data.frame(fromJSON(paste(readLines("interventions_2007_06_29.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2007_07_06.json<- as.data.frame(fromJSON(paste(readLines("interventions_2007_07_06.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2007_07_10.json<- as.data.frame(fromJSON(paste(readLines("interventions_2007_07_10.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2007_09_11.json<- as.data.frame(fromJSON(paste(readLines("interventions_2007_09_11.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2007_09_12.json<- as.data.frame(fromJSON(paste(readLines("interventions_2007_09_12.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2007_09_18.json<- as.data.frame(fromJSON(paste(readLines("interventions_2007_09_18.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2007_10_08.json<- as.data.frame(fromJSON(paste(readLines("interventions_2007_10_08.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2007_10_10.json<- as.data.frame(fromJSON(paste(readLines("interventions_2007_10_10.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2007_10_22.json<- as.data.frame(fromJSON(paste(readLines("interventions_2007_10_22.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2007_11_27.json<- as.data.frame(fromJSON(paste(readLines("interventions_2007_11_27.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2007_12_04.json<- as.data.frame(fromJSON(paste(readLines("interventions_2007_12_04.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2007_12_18.json<- as.data.frame(fromJSON(paste(readLines("interventions_2007_12_18.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2008_01_01.json<- as.data.frame(fromJSON(paste(readLines("interventions_2008_01_01.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2008_01_17.json<- as.data.frame(fromJSON(paste(readLines("interventions_2008_01_17.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2008_01_29.json<- as.data.frame(fromJSON(paste(readLines("interventions_2008_01_29.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2008_02_19.json<- as.data.frame(fromJSON(paste(readLines("interventions_2008_02_19.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2008_03_19.json<- as.data.frame(fromJSON(paste(readLines("interventions_2008_03_19.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2008_04_10.json<- as.data.frame(fromJSON(paste(readLines("interventions_2008_04_10.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2008_06_09.json<- as.data.frame(fromJSON(paste(readLines("interventions_2008_06_09.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2008_06_25.json<- as.data.frame(fromJSON(paste(readLines("interventions_2008_06_25.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2008_06_26.json<- as.data.frame(fromJSON(paste(readLines("interventions_2008_06_26.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2008_09_03.json<- as.data.frame(fromJSON(paste(readLines("interventions_2008_09_03.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2008_09_30.json<- as.data.frame(fromJSON(paste(readLines("interventions_2008_09_30.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2008_10_07.json<- as.data.frame(fromJSON(paste(readLines("interventions_2008_10_07.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2008_10_10.json<- as.data.frame(fromJSON(paste(readLines("interventions_2008_10_10.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2008_10_21.json<- as.data.frame(fromJSON(paste(readLines("interventions_2008_10_21.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2008_10_27.json<- as.data.frame(fromJSON(paste(readLines("interventions_2008_10_27.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2008_11_17.json<- as.data.frame(fromJSON(paste(readLines("interventions_2008_11_17.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2008_12_11.json<- as.data.frame(fromJSON(paste(readLines("interventions_2008_12_11.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2008_12_11_1.json<- as.data.frame(fromJSON(paste(readLines("interventions_2008_12_11_1.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2008_12_17.json<- as.data.frame(fromJSON(paste(readLines("interventions_2008_12_17.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2009_01_01.json<- as.data.frame(fromJSON(paste(readLines("interventions_2009_01_01.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2009_01_23.json<- as.data.frame(fromJSON(paste(readLines("interventions_2009_01_23.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2009_01_28.json<- as.data.frame(fromJSON(paste(readLines("interventions_2009_01_28.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2009_02_07.json<- as.data.frame(fromJSON(paste(readLines("interventions_2009_02_07.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2009_02_10.json<- as.data.frame(fromJSON(paste(readLines("interventions_2009_02_10.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2009_04_04.json<- as.data.frame(fromJSON(paste(readLines("interventions_2009_04_04.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2009_05_18.json<- as.data.frame(fromJSON(paste(readLines("interventions_2009_05_18.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2009_06_09.json<- as.data.frame(fromJSON(paste(readLines("interventions_2009_06_09.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2009_06_11.json<- as.data.frame(fromJSON(paste(readLines("interventions_2009_06_11.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2009_07_03.json<- as.data.frame(fromJSON(paste(readLines("interventions_2009_07_03.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2009_09_04.json<- as.data.frame(fromJSON(paste(readLines("interventions_2009_09_04.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2009_09_30.json<- as.data.frame(fromJSON(paste(readLines("interventions_2009_09_30.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2009_10_20.json<- as.data.frame(fromJSON(paste(readLines("interventions_2009_10_20.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2009_10_26.json<- as.data.frame(fromJSON(paste(readLines("interventions_2009_10_26.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2009_11_16.json<- as.data.frame(fromJSON(paste(readLines("interventions_2009_11_16.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2010_03_22.json<- as.data.frame(fromJSON(paste(readLines("interventions_2010_03_22.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2010_04_25.json<- as.data.frame(fromJSON(paste(readLines("interventions_2010_04_25.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2010_04_26.json<- as.data.frame(fromJSON(paste(readLines("interventions_2010_04_26.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2010_06_02.json<- as.data.frame(fromJSON(paste(readLines("interventions_2010_06_02.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2010_06_13.json<- as.data.frame(fromJSON(paste(readLines("interventions_2010_06_13.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2010_06_21.json<- as.data.frame(fromJSON(paste(readLines("interventions_2010_06_21.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2010_06_21_1.json<- as.data.frame(fromJSON(paste(readLines("interventions_2010_06_21_1.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2010_07_06.json<- as.data.frame(fromJSON(paste(readLines("interventions_2010_07_06.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2010_09_03.json<- as.data.frame(fromJSON(paste(readLines("interventions_2010_09_03.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2010_09_23.json<- as.data.frame(fromJSON(paste(readLines("interventions_2010_09_23.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2010_10_14.json<- as.data.frame(fromJSON(paste(readLines("interventions_2010_10_14.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2010_10_21.json<- as.data.frame(fromJSON(paste(readLines("interventions_2010_10_21.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2010_11_11.json<- as.data.frame(fromJSON(paste(readLines("interventions_2010_11_11.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2010_11_16.json<- as.data.frame(fromJSON(paste(readLines("interventions_2010_11_16.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2010_12_08 2.json<- as.data.frame(fromJSON(paste(readLines("interventions_2010_12_08 2.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2010_12_08.json<- as.data.frame(fromJSON(paste(readLines("interventions_2010_12_08.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2011_01_17.json<- as.data.frame(fromJSON(paste(readLines("interventions_2011_01_17.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2011_01_17_1.json<- as.data.frame(fromJSON(paste(readLines("interventions_2011_01_17_1.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2011_03_25.json<- as.data.frame(fromJSON(paste(readLines("interventions_2011_03_25.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2011_03_29.json<- as.data.frame(fromJSON(paste(readLines("interventions_2011_03_29.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2011_04_18.json<- as.data.frame(fromJSON(paste(readLines("interventions_2011_04_18.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2011_04_27.json<- as.data.frame(fromJSON(paste(readLines("interventions_2011_04_27.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2011_07_18.json<- as.data.frame(fromJSON(paste(readLines("interventions_2011_07_18.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2011_08_30 2.json<- as.data.frame(fromJSON(paste(readLines("interventions_2011_08_30 2.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2011_08_30.json<- as.data.frame(fromJSON(paste(readLines("interventions_2011_08_30.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2011_09_14.json<- as.data.frame(fromJSON(paste(readLines("interventions_2011_09_14.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2011_09_16.json<- as.data.frame(fromJSON(paste(readLines("interventions_2011_09_16.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2011_10_05.json<- as.data.frame(fromJSON(paste(readLines("interventions_2011_10_05.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2011_10_11.json<- as.data.frame(fromJSON(paste(readLines("interventions_2011_10_11.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2011_10_16.json<- as.data.frame(fromJSON(paste(readLines("interventions_2011_10_16.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2011_11_06.json<- as.data.frame(fromJSON(paste(readLines("interventions_2011_11_06.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2011_12_09.json<- as.data.frame(fromJSON(paste(readLines("interventions_2011_12_09.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2012_01_01.json<- as.data.frame(fromJSON(paste(readLines("interventions_2012_01_01.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2012_01_16.json<- as.data.frame(fromJSON(paste(readLines("interventions_2012_01_16.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2012_02_10.json<- as.data.frame(fromJSON(paste(readLines("interventions_2012_02_10.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2012_03_27.json<- as.data.frame(fromJSON(paste(readLines("interventions_2012_03_27.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2012_04_23.json<- as.data.frame(fromJSON(paste(readLines("interventions_2012_04_23.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2012_05_11.json<- as.data.frame(fromJSON(paste(readLines("interventions_2012_05_11.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2012_05_14.json<- as.data.frame(fromJSON(paste(readLines("interventions_2012_05_14.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2012_06_11.json<- as.data.frame(fromJSON(paste(readLines("interventions_2012_06_11.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2012_06_12.json<- as.data.frame(fromJSON(paste(readLines("interventions_2012_06_12.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2012_07_03.json<- as.data.frame(fromJSON(paste(readLines("interventions_2012_07_03.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2012_07_06.json<- as.data.frame(fromJSON(paste(readLines("interventions_2012_07_06.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2012_07_17.json<- as.data.frame(fromJSON(paste(readLines("interventions_2012_07_17.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2012_11_23.json<- as.data.frame(fromJSON(paste(readLines("interventions_2012_11_23.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2013_06_26.json<- as.data.frame(fromJSON(paste(readLines("interventions_2013_06_26.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2013_07_02.json<- as.data.frame(fromJSON(paste(readLines("interventions_2013_07_02.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2013_11_21.json<- as.data.frame(fromJSON(paste(readLines("interventions_2013_11_21.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2014_02_12.json<- as.data.frame(fromJSON(paste(readLines("interventions_2014_02_12.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2014_04_08.json<- as.data.frame(fromJSON(paste(readLines("interventions_2014_04_08.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2014_07_05.json<- as.data.frame(fromJSON(paste(readLines("interventions_2014_07_05.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2014_11_21.json<- as.data.frame(fromJSON(paste(readLines("interventions_2014_11_21.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2014_11_24.json<- as.data.frame(fromJSON(paste(readLines("interventions_2014_11_24.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2015_04_08.json<- as.data.frame(fromJSON(paste(readLines("interventions_2015_04_08.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2015_05_19.json<- as.data.frame(fromJSON(paste(readLines("interventions_2015_05_19.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2015_06_08.json<- as.data.frame(fromJSON(paste(readLines("interventions_2015_06_08.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2015_06_16.json<- as.data.frame(fromJSON(paste(readLines("interventions_2015_06_16.json"))), encoding= "UTF-8",asText=TRUE)
Interventions_2016_02_08.json<- as.data.frame(fromJSON(paste(readLines("Interventions_2016_02_08.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2016_03_30.json<- as.data.frame(fromJSON(paste(readLines("interventions_2016_03_30.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2016_03_31.json<- as.data.frame(fromJSON(paste(readLines("interventions_2016_03_31.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2016_06_08_1.json<- as.data.frame(fromJSON(paste(readLines("interventions_2016_06_08_1.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2016_06_26.json<- as.data.frame(fromJSON(paste(readLines("interventions_2016_06_26.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2016_07_03.json<- as.data.frame(fromJSON(paste(readLines("interventions_2016_07_03.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2016_07_06.json<- as.data.frame(fromJSON(paste(readLines("interventions_2016_07_06.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2016_07_18.json<- as.data.frame(fromJSON(paste(readLines("interventions_2016_07_18.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2016_10_03.json<- as.data.frame(fromJSON(paste(readLines("interventions_2016_10_03.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2016_12_21.json<- as.data.frame(fromJSON(paste(readLines("interventions_2016_12_21.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2017_02_07.json<- as.data.frame(fromJSON(paste(readLines("interventions_2017_02_07.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2017_07_10.json<- as.data.frame(fromJSON(paste(readLines("interventions_2017_07_10.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2017_07_19.json<- as.data.frame(fromJSON(paste(readLines("interventions_2017_07_19.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2017_10_12.json<- as.data.frame(fromJSON(paste(readLines("interventions_2017_10_12.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2018_06_20_1.json<- as.data.frame(fromJSON(paste(readLines("interventions_2018_06_20_1.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2018_07_18.json<- as.data.frame(fromJSON(paste(readLines("interventions_2018_07_18.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2018_09_19.json<- as.data.frame(fromJSON(paste(readLines("interventions_2018_09_19.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2018_10_10.json<- as.data.frame(fromJSON(paste(readLines("interventions_2018_10_10.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2018_12_04.json<- as.data.frame(fromJSON(paste(readLines("interventions_2018_12_04.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2019_01_16_1.json<- as.data.frame(fromJSON(paste(readLines("interventions_2019_01_16_1.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2019_01_25.json<- as.data.frame(fromJSON(paste(readLines("interventions_2019_01_25.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2019_02_28.json<- as.data.frame(fromJSON(paste(readLines("interventions_2019_02_28.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2019_03_26.json<- as.data.frame(fromJSON(paste(readLines("interventions_2019_03_26.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2019_03_27.json<- as.data.frame(fromJSON(paste(readLines("interventions_2019_03_27.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2019_04_04.json<- as.data.frame(fromJSON(paste(readLines("interventions_2019_04_04.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2019_04_05.json<- as.data.frame(fromJSON(paste(readLines("interventions_2019_04_05.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2019_05_16.json<- as.data.frame(fromJSON(paste(readLines("interventions_2019_05_16.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2019_05_28.json<- as.data.frame(fromJSON(paste(readLines("interventions_2019_05_28.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2019_05_28_1.json<- as.data.frame(fromJSON(paste(readLines("interventions_2019_05_28_1.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2019_06_21.json<- as.data.frame(fromJSON(paste(readLines("interventions_2019_06_21.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2019_07_05.json<- as.data.frame(fromJSON(paste(readLines("interventions_2019_07_05.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2019_07_16.json<- as.data.frame(fromJSON(paste(readLines("interventions_2019_07_16.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2019_09_17.json<- as.data.frame(fromJSON(paste(readLines("interventions_2019_09_17.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2019_09_18.json<- as.data.frame(fromJSON(paste(readLines("interventions_2019_09_18.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2019_09_19.json<- as.data.frame(fromJSON(paste(readLines("interventions_2019_09_19.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2019_09_24.json<- as.data.frame(fromJSON(paste(readLines("interventions_2019_09_24.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2019_09_26.json<- as.data.frame(fromJSON(paste(readLines("interventions_2019_09_26.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2019_10_11.json<- as.data.frame(fromJSON(paste(readLines("interventions_2019_10_11.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2019_10_16.json<- as.data.frame(fromJSON(paste(readLines("interventions_2019_10_16.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2019_10_17.json<- as.data.frame(fromJSON(paste(readLines("interventions_2019_10_17.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2019_10_18.json<- as.data.frame(fromJSON(paste(readLines("interventions_2019_10_18.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2019_10_25.json<- as.data.frame(fromJSON(paste(readLines("interventions_2019_10_25.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2019_11_07.json<- as.data.frame(fromJSON(paste(readLines("interventions_2019_11_07.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2019_11_14.json<- as.data.frame(fromJSON(paste(readLines("interventions_2019_11_14.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2019_11_24.json<- as.data.frame(fromJSON(paste(readLines("interventions_2019_11_24.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2019_11_27.json<- as.data.frame(fromJSON(paste(readLines("interventions_2019_11_27.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2019_11_28.json<- as.data.frame(fromJSON(paste(readLines("interventions_2019_11_28.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2019_11_28_1.json<- as.data.frame(fromJSON(paste(readLines("interventions_2019_11_28_1.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2019_12_04.json<- as.data.frame(fromJSON(paste(readLines("interventions_2019_12_04.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2020_01_09.json<- as.data.frame(fromJSON(paste(readLines("interventions_2020_01_09.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2020_01_14.json<- as.data.frame(fromJSON(paste(readLines("interventions_2020_01_14.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2020_01_15.json<- as.data.frame(fromJSON(paste(readLines("interventions_2020_01_15.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2020_01_15_1.json<- as.data.frame(fromJSON(paste(readLines("interventions_2020_01_15_1.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2020_01_28.json<- as.data.frame(fromJSON(paste(readLines("interventions_2020_01_28.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2020_02_06.json<- as.data.frame(fromJSON(paste(readLines("interventions_2020_02_06.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2020_03_03.json<- as.data.frame(fromJSON(paste(readLines("interventions_2020_03_03.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2020_03_09.json<- as.data.frame(fromJSON(paste(readLines("interventions_2020_03_09.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2020_03_09_1.json<- as.data.frame(fromJSON(paste(readLines("interventions_2020_03_09_1.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2020_04_08.json<- as.data.frame(fromJSON(paste(readLines("interventions_2020_04_08.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2020_04_08_1.json<- as.data.frame(fromJSON(paste(readLines("interventions_2020_04_08_1.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2020_04_15.json<- as.data.frame(fromJSON(paste(readLines("interventions_2020_04_15.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2020_04_24.json<- as.data.frame(fromJSON(paste(readLines("interventions_2020_04_24.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2020_05_05.json<- as.data.frame(fromJSON(paste(readLines("interventions_2020_05_05.json"))), encoding= "UTF-8",asText=TRUE)
interventions_2020_05_06.json<- as.data.frame(fromJSON(paste(readLines("interventions_2020_05_06.json"))), encoding= "UTF-8",asText=TRUE)

##
## Select files by number of columns
##



ifelse(ncol(interventions_1999_04_10.json)==5,rm(interventions_1999_04_10.json),"")
ifelse(ncol(interventions_1999_08_06.json)==5,rm(interventions_1999_08_06.json),"")
ifelse(ncol(interventions_1999_09_09.json)==5,rm(interventions_1999_09_09.json),"")
ifelse(ncol(interventions_1999_09_11.json)==5,rm(interventions_1999_09_11.json),"")
ifelse(ncol(interventions_2000_09_22.json)==5,rm(interventions_2000_09_22.json),"")
ifelse(ncol(interventions_2001_01_30.json)==5,rm(interventions_2001_01_30.json),"")
ifelse(ncol(interventions_2001_03_27.json)==5,rm(interventions_2001_03_27.json),"")
ifelse(ncol(interventions_2001_06_19.json)==5,rm(interventions_2001_06_19.json),"")
ifelse(ncol(interventions_2001_06_25.json)==5,rm(interventions_2001_06_25.json),"")
ifelse(ncol(interventions_2001_09_03.json)==5,rm(interventions_2001_09_03.json),"")
ifelse(ncol(interventions_2001_10_07.json)==5,rm(interventions_2001_10_07.json),"")
ifelse(ncol(interventions_2002_01_01.json)==5,rm(interventions_2002_01_01.json),"")
ifelse(ncol(interventions_2002_04_23.json)==5,rm(interventions_2002_04_23.json),"")
ifelse(ncol(interventions_2002_06_26.json)==5,rm(interventions_2002_06_26.json),"")
ifelse(ncol(interventions_2003_05_03.json)==5,rm(interventions_2003_05_03.json),"")
ifelse(ncol(interventions_2003_06_18.json)==5,rm(interventions_2003_06_18.json),"")
ifelse(ncol(interventions_2003_06_24.json)==5,rm(interventions_2003_06_24.json),"")
ifelse(ncol(interventions_2003_10_16.json)==5,rm(interventions_2003_10_16.json),"")
ifelse(ncol(interventions_2004_01_21.json)==5,rm(interventions_2004_01_21.json),"")
ifelse(ncol(interventions_2004_03_05.json)==5,rm(interventions_2004_03_05.json),"")
ifelse(ncol(interventions_2004_05_27.json)==5,rm(interventions_2004_05_27.json),"")
ifelse(ncol(interventions_2004_06_01.json)==5,rm(interventions_2004_06_01.json),"")
ifelse(ncol(interventions_2004_06_22.json)==5,rm(interventions_2004_06_22.json),"")
ifelse(ncol(interventions_2004_06_22_1.json)==5,rm(interventions_2004_06_22_1.json),"")
ifelse(ncol(interventions_2004_09_22.json)==5,rm(interventions_2004_09_22.json),"")
ifelse(ncol(interventions_2005_06_22.json)==5,rm(interventions_2005_06_22.json),"")
ifelse(ncol(interventions_2005_06_28.json)==5,rm(interventions_2005_06_28.json),"")
ifelse(ncol(interventions_2005_09_02.json)==5,rm(interventions_2005_09_02.json),"")
ifelse(ncol(interventions_2005_10_10.json)==5,rm(interventions_2005_10_10.json),"")
ifelse(ncol(interventions_2005_11_04.json)==5,rm(interventions_2005_11_04.json),"")
ifelse(ncol(interventions_2006_02_14.json)==5,rm(interventions_2006_02_14.json),"")
ifelse(ncol(interventions_2006_06_09.json)==5,rm(interventions_2006_06_09.json),"")
ifelse(ncol(interventions_2006_06_27.json)==5,rm(interventions_2006_06_27.json),"")
ifelse(ncol(interventions_2006_06_28.json)==5,rm(interventions_2006_06_28.json),"")
ifelse(ncol(interventions_2006_07_08.json)==5,rm(interventions_2006_07_08.json),"")
ifelse(ncol(interventions_2007_03_21.json)==5,rm(interventions_2007_03_21.json),"")
ifelse(ncol(interventions_2007_03_29.json)==5,rm(interventions_2007_03_29.json),"")
ifelse(ncol(interventions_2007_04_15.json)==5,rm(interventions_2007_04_15.json),"")
ifelse(ncol(interventions_2007_04_16.json)==5,rm(interventions_2007_04_16.json),"")
ifelse(ncol(interventions_2007_05_16.json)==5,rm(interventions_2007_05_16.json),"")
ifelse(ncol(interventions_2007_05_16_1.json)==5,rm(interventions_2007_05_16_1.json),"")
ifelse(ncol(interventions_2007_06_29.json)==5,rm(interventions_2007_06_29.json),"")
ifelse(ncol(interventions_2007_07_06.json)==5,rm(interventions_2007_07_06.json),"")
ifelse(ncol(interventions_2007_07_10.json)==5,rm(interventions_2007_07_10.json),"")
ifelse(ncol(interventions_2007_09_11.json)==5,rm(interventions_2007_09_11.json),"")
ifelse(ncol(interventions_2007_09_12.json)==5,rm(interventions_2007_09_12.json),"")
ifelse(ncol(interventions_2007_09_18.json)==5,rm(interventions_2007_09_18.json),"")
ifelse(ncol(interventions_2007_10_08.json)==5,rm(interventions_2007_10_08.json),"")
ifelse(ncol(interventions_2007_10_10.json)==5,rm(interventions_2007_10_10.json),"")
ifelse(ncol(interventions_2007_10_22.json)==5,rm(interventions_2007_10_22.json),"")
ifelse(ncol(interventions_2007_11_27.json)==5,rm(interventions_2007_11_27.json),"")
ifelse(ncol(interventions_2007_12_04.json)==5,rm(interventions_2007_12_04.json),"")
ifelse(ncol(interventions_2007_12_18.json)==5,rm(interventions_2007_12_18.json),"")
ifelse(ncol(interventions_2008_01_01.json)==5,rm(interventions_2008_01_01.json),"")
ifelse(ncol(interventions_2008_01_17.json)==5,rm(interventions_2008_01_17.json),"")
ifelse(ncol(interventions_2008_01_29.json)==5,rm(interventions_2008_01_29.json),"")
ifelse(ncol(interventions_2008_02_19.json)==5,rm(interventions_2008_02_19.json),"")
ifelse(ncol(interventions_2008_03_19.json)==5,rm(interventions_2008_03_19.json),"")
ifelse(ncol(interventions_2008_04_10.json)==5,rm(interventions_2008_04_10.json),"")
ifelse(ncol(interventions_2008_06_09.json)==5,rm(interventions_2008_06_09.json),"")
ifelse(ncol(interventions_2008_06_25.json)==5,rm(interventions_2008_06_25.json),"")
ifelse(ncol(interventions_2008_06_26.json)==5,rm(interventions_2008_06_26.json),"")
ifelse(ncol(interventions_2008_09_03.json)==5,rm(interventions_2008_09_03.json),"")
ifelse(ncol(interventions_2008_09_30.json)==5,rm(interventions_2008_09_30.json),"")
ifelse(ncol(interventions_2008_10_07.json)==5,rm(interventions_2008_10_07.json),"")
ifelse(ncol(interventions_2008_10_10.json)==5,rm(interventions_2008_10_10.json),"")
ifelse(ncol(interventions_2008_10_21.json)==5,rm(interventions_2008_10_21.json),"")
ifelse(ncol(interventions_2008_10_27.json)==5,rm(interventions_2008_10_27.json),"")
ifelse(ncol(interventions_2008_11_17.json)==5,rm(interventions_2008_11_17.json),"")
ifelse(ncol(interventions_2008_12_11.json)==5,rm(interventions_2008_12_11.json),"")
ifelse(ncol(interventions_2008_12_11_1.json)==5,rm(interventions_2008_12_11_1.json),"")
ifelse(ncol(interventions_2008_12_17.json)==5,rm(interventions_2008_12_17.json),"")
ifelse(ncol(interventions_2009_01_01.json)==5,rm(interventions_2009_01_01.json),"")
ifelse(ncol(interventions_2009_01_23.json)==5,rm(interventions_2009_01_23.json),"")
ifelse(ncol(interventions_2009_01_28.json)==5,rm(interventions_2009_01_28.json),"")
ifelse(ncol(interventions_2009_02_07.json)==5,rm(interventions_2009_02_07.json),"")
ifelse(ncol(interventions_2009_02_10.json)==5,rm(interventions_2009_02_10.json),"")
ifelse(ncol(interventions_2009_04_04.json)==5,rm(interventions_2009_04_04.json),"")
ifelse(ncol(interventions_2009_05_18.json)==5,rm(interventions_2009_05_18.json),"")
ifelse(ncol(interventions_2009_06_09.json)==5,rm(interventions_2009_06_09.json),"")
ifelse(ncol(interventions_2009_06_11.json)==5,rm(interventions_2009_06_11.json),"")
ifelse(ncol(interventions_2009_07_03.json)==5,rm(interventions_2009_07_03.json),"")
ifelse(ncol(interventions_2009_09_04.json)==5,rm(interventions_2009_09_04.json),"")
ifelse(ncol(interventions_2009_09_30.json)==5,rm(interventions_2009_09_30.json),"")
ifelse(ncol(interventions_2009_10_20.json)==5,rm(interventions_2009_10_20.json),"")
ifelse(ncol(interventions_2009_10_26.json)==5,rm(interventions_2009_10_26.json),"")
ifelse(ncol(interventions_2009_11_16.json)==5,rm(interventions_2009_11_16.json),"")
ifelse(ncol(interventions_2010_03_22.json)==5,rm(interventions_2010_03_22.json),"")
ifelse(ncol(interventions_2010_04_25.json)==5,rm(interventions_2010_04_25.json),"")
ifelse(ncol(interventions_2010_04_26.json)==5,rm(interventions_2010_04_26.json),"")
ifelse(ncol(interventions_2010_06_02.json)==5,rm(interventions_2010_06_02.json),"")
ifelse(ncol(interventions_2010_06_13.json)==5,rm(interventions_2010_06_13.json),"")
ifelse(ncol(interventions_2010_06_21.json)==5,rm(interventions_2010_06_21.json),"")
ifelse(ncol(interventions_2010_06_21_1.json)==5,rm(interventions_2010_06_21_1.json),"")
ifelse(ncol(interventions_2010_07_06.json)==5,rm(interventions_2010_07_06.json),"")
ifelse(ncol(interventions_2010_09_03.json)==5,rm(interventions_2010_09_03.json),"")
ifelse(ncol(interventions_2010_09_23.json)==5,rm(interventions_2010_09_23.json),"")
ifelse(ncol(interventions_2010_10_14.json)==5,rm(interventions_2010_10_14.json),"")
ifelse(ncol(interventions_2010_10_21.json)==5,rm(interventions_2010_10_21.json),"")
ifelse(ncol(interventions_2010_11_11.json)==5,rm(interventions_2010_11_11.json),"")
ifelse(ncol(interventions_2010_11_16.json)==5,rm(interventions_2010_11_16.json),"")
ifelse(ncol(interventions_2010_12_08 2.json)==5,rm(interventions_2010_12_08 2.json),"")
ifelse(ncol(interventions_2010_12_08.json)==5,rm(interventions_2010_12_08.json),"")
ifelse(ncol(interventions_2011_01_17.json)==5,rm(interventions_2011_01_17.json),"")
ifelse(ncol(interventions_2011_01_17_1.json)==5,rm(interventions_2011_01_17_1.json),"")
ifelse(ncol(interventions_2011_03_25.json)==5,rm(interventions_2011_03_25.json),"")
ifelse(ncol(interventions_2011_03_29.json)==5,rm(interventions_2011_03_29.json),"")
ifelse(ncol(interventions_2011_04_18.json)==5,rm(interventions_2011_04_18.json),"")
ifelse(ncol(interventions_2011_04_27.json)==5,rm(interventions_2011_04_27.json),"")
ifelse(ncol(interventions_2011_07_18.json)==5,rm(interventions_2011_07_18.json),"")
ifelse(ncol(interventions_2011_08_30 2.json)==5,rm(interventions_2011_08_30 2.json),"")
ifelse(ncol(interventions_2011_08_30.json)==5,rm(interventions_2011_08_30.json),"")
ifelse(ncol(interventions_2011_09_14.json)==5,rm(interventions_2011_09_14.json),"")
ifelse(ncol(interventions_2011_09_16.json)==5,rm(interventions_2011_09_16.json),"")
ifelse(ncol(interventions_2011_10_05.json)==5,rm(interventions_2011_10_05.json),"")
ifelse(ncol(interventions_2011_10_11.json)==5,rm(interventions_2011_10_11.json),"")
ifelse(ncol(interventions_2011_10_16.json)==5,rm(interventions_2011_10_16.json),"")
ifelse(ncol(interventions_2011_11_06.json)==5,rm(interventions_2011_11_06.json),"")
ifelse(ncol(interventions_2011_12_09.json)==5,rm(interventions_2011_12_09.json),"")
ifelse(ncol(interventions_2012_01_01.json)==5,rm(interventions_2012_01_01.json),"")
ifelse(ncol(interventions_2012_01_16.json)==5,rm(interventions_2012_01_16.json),"")
ifelse(ncol(interventions_2012_02_10.json)==5,rm(interventions_2012_02_10.json),"")
ifelse(ncol(interventions_2012_03_27.json)==5,rm(interventions_2012_03_27.json),"")
ifelse(ncol(interventions_2012_04_23.json)==5,rm(interventions_2012_04_23.json),"")
ifelse(ncol(interventions_2012_05_11.json)==5,rm(interventions_2012_05_11.json),"")
ifelse(ncol(interventions_2012_05_14.json)==5,rm(interventions_2012_05_14.json),"")
ifelse(ncol(interventions_2012_06_11.json)==5,rm(interventions_2012_06_11.json),"")
ifelse(ncol(interventions_2012_06_12.json)==5,rm(interventions_2012_06_12.json),"")
ifelse(ncol(interventions_2012_07_03.json)==5,rm(interventions_2012_07_03.json),"")
ifelse(ncol(interventions_2012_07_06.json)==5,rm(interventions_2012_07_06.json),"")
ifelse(ncol(interventions_2012_07_17.json)==5,rm(interventions_2012_07_17.json),"")
ifelse(ncol(interventions_2012_11_23.json)==5,rm(interventions_2012_11_23.json),"")
ifelse(ncol(interventions_2013_06_26.json)==5,rm(interventions_2013_06_26.json),"")
ifelse(ncol(interventions_2013_07_02.json)==5,rm(interventions_2013_07_02.json),"")
ifelse(ncol(interventions_2013_11_21.json)==5,rm(interventions_2013_11_21.json),"")
ifelse(ncol(interventions_2014_02_12.json)==5,rm(interventions_2014_02_12.json),"")
ifelse(ncol(interventions_2014_04_08.json)==5,rm(interventions_2014_04_08.json),"")
ifelse(ncol(interventions_2014_07_05.json)==5,rm(interventions_2014_07_05.json),"")
ifelse(ncol(interventions_2014_11_21.json)==5,rm(interventions_2014_11_21.json),"")
ifelse(ncol(interventions_2014_11_24.json)==5,rm(interventions_2014_11_24.json),"")
ifelse(ncol(interventions_2015_04_08.json)==5,rm(interventions_2015_04_08.json),"")
ifelse(ncol(interventions_2015_05_19.json)==5,rm(interventions_2015_05_19.json),"")
ifelse(ncol(interventions_2015_06_08.json)==5,rm(interventions_2015_06_08.json),"")
ifelse(ncol(interventions_2015_06_16.json)==5,rm(interventions_2015_06_16.json),"")
ifelse(ncol(Interventions_2016_02_08.json)==5,rm(Interventions_2016_02_08.json),"")
ifelse(ncol(interventions_2016_03_30.json)==5,rm(interventions_2016_03_30.json),"")
ifelse(ncol(interventions_2016_03_31.json)==5,rm(interventions_2016_03_31.json),"")
ifelse(ncol(interventions_2016_06_08_1.json)==5,rm(interventions_2016_06_08_1.json),"")
ifelse(ncol(interventions_2016_06_26.json)==5,rm(interventions_2016_06_26.json),"")
ifelse(ncol(interventions_2016_07_03.json)==5,rm(interventions_2016_07_03.json),"")
ifelse(ncol(interventions_2016_07_06.json)==5,rm(interventions_2016_07_06.json),"")
ifelse(ncol(interventions_2016_07_18.json)==5,rm(interventions_2016_07_18.json),"")
ifelse(ncol(interventions_2016_10_03.json)==5,rm(interventions_2016_10_03.json),"")
ifelse(ncol(interventions_2016_12_21.json)==5,rm(interventions_2016_12_21.json),"")
ifelse(ncol(interventions_2017_02_07.json)==5,rm(interventions_2017_02_07.json),"")
ifelse(ncol(interventions_2017_07_10.json)==5,rm(interventions_2017_07_10.json),"")
ifelse(ncol(interventions_2017_07_19.json)==5,rm(interventions_2017_07_19.json),"")
ifelse(ncol(interventions_2017_10_12.json)==5,rm(interventions_2017_10_12.json),"")
ifelse(ncol(interventions_2018_06_20_1.json)==5,rm(interventions_2018_06_20_1.json),"")
ifelse(ncol(interventions_2018_07_18.json)==5,rm(interventions_2018_07_18.json),"")
ifelse(ncol(interventions_2018_09_19.json)==5,rm(interventions_2018_09_19.json),"")
ifelse(ncol(interventions_2018_10_10.json)==5,rm(interventions_2018_10_10.json),"")
ifelse(ncol(interventions_2018_12_04.json)==5,rm(interventions_2018_12_04.json),"")
ifelse(ncol(interventions_2019_01_16_1.json)==5,rm(interventions_2019_01_16_1.json),"")
ifelse(ncol(interventions_2019_01_25.json)==5,rm(interventions_2019_01_25.json),"")
ifelse(ncol(interventions_2019_02_28.json)==5,rm(interventions_2019_02_28.json),"")
ifelse(ncol(interventions_2019_03_26.json)==5,rm(interventions_2019_03_26.json),"")
ifelse(ncol(interventions_2019_03_27.json)==5,rm(interventions_2019_03_27.json),"")
ifelse(ncol(interventions_2019_04_04.json)==5,rm(interventions_2019_04_04.json),"")
ifelse(ncol(interventions_2019_04_05.json)==5,rm(interventions_2019_04_05.json),"")
ifelse(ncol(interventions_2019_05_16.json)==5,rm(interventions_2019_05_16.json),"")
ifelse(ncol(interventions_2019_05_28.json)==5,rm(interventions_2019_05_28.json),"")
ifelse(ncol(interventions_2019_05_28_1.json)==5,rm(interventions_2019_05_28_1.json),"")
ifelse(ncol(interventions_2019_06_21.json)==5,rm(interventions_2019_06_21.json),"")
ifelse(ncol(interventions_2019_07_05.json)==5,rm(interventions_2019_07_05.json),"")
ifelse(ncol(interventions_2019_07_16.json)==5,rm(interventions_2019_07_16.json),"")
ifelse(ncol(interventions_2019_09_17.json)==5,rm(interventions_2019_09_17.json),"")
ifelse(ncol(interventions_2019_09_18.json)==5,rm(interventions_2019_09_18.json),"")
ifelse(ncol(interventions_2019_09_19.json)==5,rm(interventions_2019_09_19.json),"")
ifelse(ncol(interventions_2019_09_24.json)==5,rm(interventions_2019_09_24.json),"")
ifelse(ncol(interventions_2019_09_26.json)==5,rm(interventions_2019_09_26.json),"")
ifelse(ncol(interventions_2019_10_11.json)==5,rm(interventions_2019_10_11.json),"")
ifelse(ncol(interventions_2019_10_16.json)==5,rm(interventions_2019_10_16.json),"")
ifelse(ncol(interventions_2019_10_17.json)==5,rm(interventions_2019_10_17.json),"")
ifelse(ncol(interventions_2019_10_18.json)==5,rm(interventions_2019_10_18.json),"")
ifelse(ncol(interventions_2019_10_25.json)==5,rm(interventions_2019_10_25.json),"")
ifelse(ncol(interventions_2019_11_07.json)==5,rm(interventions_2019_11_07.json),"")
ifelse(ncol(interventions_2019_11_14.json)==5,rm(interventions_2019_11_14.json),"")
ifelse(ncol(interventions_2019_11_24.json)==5,rm(interventions_2019_11_24.json),"")
ifelse(ncol(interventions_2019_11_27.json)==5,rm(interventions_2019_11_27.json),"")
ifelse(ncol(interventions_2019_11_28.json)==5,rm(interventions_2019_11_28.json),"")
ifelse(ncol(interventions_2019_11_28_1.json)==5,rm(interventions_2019_11_28_1.json),"")
ifelse(ncol(interventions_2019_12_04.json)==5,rm(interventions_2019_12_04.json),"")
ifelse(ncol(interventions_2020_01_09.json)==5,rm(interventions_2020_01_09.json),"")
ifelse(ncol(interventions_2020_01_14.json)==5,rm(interventions_2020_01_14.json),"")
ifelse(ncol(interventions_2020_01_15.json)==5,rm(interventions_2020_01_15.json),"")
ifelse(ncol(interventions_2020_01_15_1.json)==5,rm(interventions_2020_01_15_1.json),"")
ifelse(ncol(interventions_2020_01_28.json)==5,rm(interventions_2020_01_28.json),"")
ifelse(ncol(interventions_2020_02_06.json)==5,rm(interventions_2020_02_06.json),"")
ifelse(ncol(interventions_2020_03_03.json)==5,rm(interventions_2020_03_03.json),"")
ifelse(ncol(interventions_2020_03_09.json)==5,rm(interventions_2020_03_09.json),"")
ifelse(ncol(interventions_2020_03_09_1.json)==5,rm(interventions_2020_03_09_1.json),"")
ifelse(ncol(interventions_2020_04_08.json)==5,rm(interventions_2020_04_08.json),"")
ifelse(ncol(interventions_2020_04_08_1.json)==5,rm(interventions_2020_04_08_1.json),"")
ifelse(ncol(interventions_2020_04_15.json)==5,rm(interventions_2020_04_15.json),"")
ifelse(ncol(interventions_2020_04_24.json)==5,rm(interventions_2020_04_24.json),"")
ifelse(ncol(interventions_2020_05_05.json)==5,rm(interventions_2020_05_05.json),"")
ifelse(ncol(interventions_2020_05_06.json)==5,rm(interventions_2020_05_06.json),"")



Master_4 <- do.call(rbind, mget(ls(pattern = "json")))

Master_5 <- do.call(rbind, mget(ls(pattern = ".json")))

Master_6 <- do.call(rbind,mget(ls(pattern = ".json")))


colnames(Master_4)
colnames(Master_5)
colnames(Master_6)


colnames(Master_4)[4]<- c("AUTHOR")
colnames(Master_4)[3]<- c("TEXT")
colnames(Master_4)[2]<- c("DATE")

Master_4 <- Master_4[,c("AUTHOR","DATE","TEXT")]
Master_4$TITLE <- paste("")

Master_5 <- Master_5[,c("TITLE","DATE","TEXT")]
Master_5$AUTHOR <- paste("")

Master_6 <- Master_6[,c("AUTHOR","TITLE","DATE","TEXT")]


Master_Interventions <- rbind(Master_4, Master_5, Master_6)
Intervent <- Master_Interventions
sapply(Intervent,str_trim)

Master_Interventions$AUTHOR <- str_trim(Master_Interventions$AUTHOR)
Master_Interventions$TEXT <- str_trim(Master_Interventions$TEXT)
Master_Interventions$TITLE <- str_trim(Master_Interventions$TITLE)

write.csv(Master_Interventions, file = "Master_Interventions_08202021.csv")



colnames(interventions_1999_04_10.json)
colnames(interventions_1999_08_06.json)
colnames(interventions_1999_09_09.json)
colnames(interventions_1999_09_11.json)
colnames(interventions_2000_09_22.json)
colnames(interventions_2001_01_30.json)
colnames(interventions_2001_03_27.json)
colnames(interventions_2001_06_19.json)
colnames(interventions_2001_06_25.json)
colnames(interventions_2001_09_03.json)
colnames(interventions_2001_10_07.json)
colnames(interventions_2002_01_01.json)
colnames(interventions_2002_04_23.json)
colnames(interventions_2002_06_26.json)
colnames(interventions_2003_05_03.json)
colnames(interventions_2003_06_18.json)
colnames(interventions_2003_06_24.json)
colnames(interventions_2003_10_16.json)
colnames(interventions_2004_01_21.json)
colnames(interventions_2004_03_05.json)
colnames(interventions_2004_05_27.json)
colnames(interventions_2004_06_01.json)
colnames(interventions_2004_06_22.json)
colnames(interventions_2004_06_22_1.json)
colnames(interventions_2004_09_22.json)
colnames(interventions_2005_06_22.json)
colnames(interventions_2005_06_28.json)
colnames(interventions_2005_09_02.json)
colnames(interventions_2005_10_10.json)
colnames(interventions_2005_11_04.json)
colnames(interventions_2006_02_14.json)
colnames(interventions_2006_06_09.json)
colnames(interventions_2006_06_27.json)
colnames(interventions_2006_06_28.json)
colnames(interventions_2006_07_08.json)
colnames(interventions_2007_03_21.json)
colnames(interventions_2007_03_29.json)
colnames(interventions_2007_04_15.json)
colnames(interventions_2007_04_16.json)
colnames(interventions_2007_05_16.json)
colnames(interventions_2007_05_16_1.json)
colnames(interventions_2007_06_29.json)
colnames(interventions_2007_07_06.json)
colnames(interventions_2007_07_10.json)
colnames(interventions_2007_09_11.json)
colnames(interventions_2007_09_12.json)
colnames(interventions_2007_09_18.json)
colnames(interventions_2007_10_08.json)
colnames(interventions_2007_10_10.json)
colnames(interventions_2007_10_22.json)
colnames(interventions_2007_11_27.json)
colnames(interventions_2007_12_04.json)
colnames(interventions_2007_12_18.json)
colnames(interventions_2008_01_01.json)
colnames(interventions_2008_01_17.json)
colnames(interventions_2008_01_29.json)
colnames(interventions_2008_02_19.json)
colnames(interventions_2008_03_19.json)
colnames(interventions_2008_04_10.json)
colnames(interventions_2008_06_09.json)
colnames(interventions_2008_06_25.json)
colnames(interventions_2008_06_26.json)
colnames(interventions_2008_09_03.json)
colnames(interventions_2008_09_30.json)
colnames(interventions_2008_10_07.json)
colnames(interventions_2008_10_10.json)
colnames(interventions_2008_10_21.json)
colnames(interventions_2008_10_27.json)
colnames(interventions_2008_11_17.json)
colnames(interventions_2008_12_11.json)
colnames(interventions_2008_12_11_1.json)
colnames(interventions_2008_12_17.json)
colnames(interventions_2009_01_01.json)
colnames(interventions_2009_01_23.json)
colnames(interventions_2009_01_28.json)
colnames(interventions_2009_02_07.json)
colnames(interventions_2009_02_10.json)
colnames(interventions_2009_04_04.json)
colnames(interventions_2009_05_18.json)
colnames(interventions_2009_06_09.json)
colnames(interventions_2009_06_11.json)
colnames(interventions_2009_07_03.json)
colnames(interventions_2009_09_04.json)
colnames(interventions_2009_09_30.json)
colnames(interventions_2009_10_20.json)
colnames(interventions_2009_10_26.json)
colnames(interventions_2009_11_16.json)
colnames(interventions_2010_03_22.json)
colnames(interventions_2010_04_25.json)
colnames(interventions_2010_04_26.json)
colnames(interventions_2010_06_02.json)
colnames(interventions_2010_06_13.json)
colnames(interventions_2010_06_21.json)
colnames(interventions_2010_06_21_1.json)
colnames(interventions_2010_07_06.json)
colnames(interventions_2010_09_03.json)
colnames(interventions_2010_09_23.json)
colnames(interventions_2010_10_14.json)
colnames(interventions_2010_10_21.json)
colnames(interventions_2010_11_11.json)
colnames(interventions_2010_11_16.json)
colnames(interventions_2010_12_08 2.json)
colnames(interventions_2010_12_08.json)
colnames(interventions_2011_01_17.json)
colnames(interventions_2011_01_17_1.json)
colnames(interventions_2011_03_25.json)
colnames(interventions_2011_03_29.json)
colnames(interventions_2011_04_18.json)
colnames(interventions_2011_04_27.json)
colnames(interventions_2011_07_18.json)
colnames(interventions_2011_08_30 2.json)
colnames(interventions_2011_08_30.json)
colnames(interventions_2011_09_14.json)
colnames(interventions_2011_09_16.json)
colnames(interventions_2011_10_05.json)
colnames(interventions_2011_10_11.json)
colnames(interventions_2011_10_16.json)
colnames(interventions_2011_11_06.json)
colnames(interventions_2011_12_09.json)
colnames(interventions_2012_01_01.json)
colnames(interventions_2012_01_16.json)
colnames(interventions_2012_02_10.json)
colnames(interventions_2012_03_27.json)
colnames(interventions_2012_04_23.json)
colnames(interventions_2012_05_11.json)
colnames(interventions_2012_05_14.json)
colnames(interventions_2012_06_11.json)
colnames(interventions_2012_06_12.json)
colnames(interventions_2012_07_03.json)
colnames(interventions_2012_07_06.json)
colnames(interventions_2012_07_17.json)
colnames(interventions_2012_11_23.json)
colnames(interventions_2013_06_26.json)
colnames(interventions_2013_07_02.json)
colnames(interventions_2013_11_21.json)
colnames(interventions_2014_02_12.json)
colnames(interventions_2014_04_08.json)
colnames(interventions_2014_07_05.json)
colnames(interventions_2014_11_21.json)
colnames(interventions_2014_11_24.json)
colnames(interventions_2015_04_08.json)
colnames(interventions_2015_05_19.json)
colnames(interventions_2015_06_08.json)
colnames(interventions_2015_06_16.json)
colnames(Interventions_2016_02_08.json)
colnames(interventions_2016_03_30.json)
colnames(interventions_2016_03_31.json)
colnames(interventions_2016_06_08_1.json)
colnames(interventions_2016_06_26.json)
colnames(interventions_2016_07_03.json)
colnames(interventions_2016_07_06.json)
colnames(interventions_2016_07_18.json)
colnames(interventions_2016_10_03.json)
colnames(interventions_2016_12_21.json)
colnames(interventions_2017_02_07.json)
colnames(interventions_2017_07_10.json)
colnames(interventions_2017_07_19.json)
colnames(interventions_2017_10_12.json)
colnames(interventions_2018_06_20_1.json)
colnames(interventions_2018_07_18.json)
colnames(interventions_2018_09_19.json)
colnames(interventions_2018_10_10.json)
colnames(interventions_2018_12_04.json)
colnames(interventions_2019_01_16_1.json)
colnames(interventions_2019_01_25.json)
colnames(interventions_2019_02_28.json)
colnames(interventions_2019_03_26.json)
colnames(interventions_2019_03_27.json)
colnames(interventions_2019_04_04.json)
colnames(interventions_2019_04_05.json)
colnames(interventions_2019_05_16.json)
colnames(interventions_2019_05_28.json)
colnames(interventions_2019_05_28_1.json)
colnames(interventions_2019_06_21.json)
colnames(interventions_2019_07_05.json)
colnames(interventions_2019_07_16.json)
colnames(interventions_2019_09_17.json)
colnames(interventions_2019_09_18.json)
colnames(interventions_2019_09_19.json)
colnames(interventions_2019_09_24.json)
colnames(interventions_2019_09_26.json)
colnames(interventions_2019_10_11.json)
colnames(interventions_2019_10_16.json)
colnames(interventions_2019_10_17.json)
colnames(interventions_2019_10_18.json)
colnames(interventions_2019_10_25.json)
colnames(interventions_2019_11_07.json)
colnames(interventions_2019_11_14.json)
colnames(interventions_2019_11_24.json)
colnames(interventions_2019_11_27.json)
colnames(interventions_2019_11_28.json)
colnames(interventions_2019_11_28_1.json)
colnames(interventions_2019_12_04.json)
colnames(interventions_2020_01_09.json)
colnames(interventions_2020_01_14.json)
colnames(interventions_2020_01_15.json)
colnames(interventions_2020_01_15_1.json)
colnames(interventions_2020_01_28.json)
colnames(interventions_2020_02_06.json)
colnames(interventions_2020_03_03.json)
colnames(interventions_2020_03_09.json)
colnames(interventions_2020_03_09_1.json)
colnames(interventions_2020_04_08.json)
colnames(interventions_2020_04_08_1.json)
colnames(interventions_2020_04_15.json)
colnames(interventions_2020_04_24.json)
colnames(interventions_2020_05_05.json)
colnames(interventions_2020_05_06.json)



rm(interventions_1999_04_10.json,
interventions_1999_08_06.json,
interventions_1999_09_09.json,
interventions_1999_09_11.json,
interventions_2000_09_22.json,
interventions_2001_01_30.json,
interventions_2001_03_27.json,
interventions_2001_06_19.json,
interventions_2001_06_25.json,
interventions_2001_09_03.json,
interventions_2001_10_07.json,
interventions_2002_01_01.json,
interventions_2002_04_23.json,
interventions_2002_06_26.json,
#interventions_2003_05_03.json,
interventions_2003_06_18.json,
interventions_2003_06_24.json,
interventions_2003_10_16.json,
#interventions_2004_01_21.json,
interventions_2004_03_05.json,
interventions_2004_05_27.json,
interventions_2004_06_01.json,
interventions_2004_06_22.json,
interventions_2004_06_22_1.json,
#interventions_2004_09_22.json,
interventions_2005_06_22.json,
interventions_2005_06_28.json,
interventions_2005_09_02.json,
interventions_2005_10_10.json,
interventions_2005_11_04.json,
interventions_2006_02_14.json,
interventions_2006_06_09.json,
interventions_2006_06_27.json,
interventions_2006_06_28.json,
interventions_2006_07_08.json,
interventions_2007_03_21.json,
interventions_2007_03_29.json,
interventions_2007_04_15.json,
interventions_2007_04_16.json,
interventions_2007_05_16.json,
interventions_2007_05_16_1.json,
interventions_2007_06_29.json,
interventions_2007_07_06.json,
interventions_2007_07_10.json,
interventions_2007_09_11.json,
interventions_2007_09_12.json,
interventions_2007_09_18.json,
interventions_2007_10_08.json,
interventions_2007_10_10.json,
interventions_2007_10_22.json,
interventions_2007_11_27.json,
interventions_2007_12_04.json,
interventions_2007_12_18.json,
interventions_2008_01_01.json,
interventions_2008_01_17.json,
interventions_2008_01_29.json,
interventions_2008_02_19.json,
interventions_2008_03_19.json,
interventions_2008_04_10.json,
interventions_2008_06_09.json,
interventions_2008_06_25.json,
interventions_2008_06_26.json,
interventions_2008_09_03.json,
interventions_2008_09_30.json,
interventions_2008_10_07.json,
interventions_2008_10_10.json,
interventions_2008_10_21.json,
interventions_2008_10_27.json,
interventions_2008_11_17.json,
interventions_2008_12_11.json,
interventions_2008_12_11_1.json,
interventions_2008_12_17.json,
interventions_2009_01_01.json,
interventions_2009_01_23.json,
interventions_2009_01_28.json,
interventions_2009_02_07.json,
interventions_2009_02_10.json,
interventions_2009_04_04.json,
interventions_2009_05_18.json,
interventions_2009_06_09.json,
interventions_2009_06_11.json,
interventions_2009_07_03.json,
interventions_2009_09_04.json,
interventions_2009_09_30.json,
interventions_2009_10_20.json,
interventions_2009_10_26.json,
interventions_2009_11_16.json,
interventions_2010_03_22.json,
interventions_2010_04_25.json,
interventions_2010_04_26.json,
interventions_2010_06_02.json,
interventions_2010_06_13.json,
interventions_2010_06_21.json,
interventions_2010_06_21_1.json,
interventions_2010_07_06.json,
interventions_2010_09_03.json,
interventions_2010_09_23.json,
interventions_2010_10_14.json,
interventions_2010_10_21.json,
interventions_2010_11_11.json,
interventions_2010_11_16.json,
#interventions_2010_12_08 2.json,
interventions_2010_12_08.json,
interventions_2011_01_17.json,
interventions_2011_01_17_1.json,
interventions_2011_03_25.json,
interventions_2011_03_29.json,
interventions_2011_04_18.json,
interventions_2011_04_27.json,
interventions_2011_07_18.json,
#interventions_2011_08_30 2.json,
interventions_2011_08_30.json,
interventions_2011_09_14.json,
interventions_2011_09_16.json,
interventions_2011_10_05.json,
interventions_2011_10_11.json,
interventions_2011_10_16.json,
interventions_2011_11_06.json,
interventions_2011_12_09.json,
interventions_2012_01_01.json,
interventions_2012_01_16.json,
interventions_2012_02_10.json,
interventions_2012_03_27.json,
interventions_2012_04_23.json,
interventions_2012_05_11.json,
interventions_2012_05_14.json,
interventions_2012_06_11.json,
interventions_2012_06_12.json,
interventions_2012_07_03.json,
interventions_2012_07_06.json,
interventions_2012_07_17.json,
interventions_2012_11_23.json,
interventions_2013_06_26.json,
interventions_2013_07_02.json,
interventions_2013_11_21.json,
interventions_2014_02_12.json,
interventions_2014_04_08.json,
interventions_2014_07_05.json,
interventions_2014_11_21.json,
interventions_2014_11_24.json,
interventions_2015_04_08.json,
interventions_2015_05_19.json,
interventions_2015_06_08.json,
interventions_2015_06_16.json,
Interventions_2016_02_08.json,
interventions_2016_03_30.json,
interventions_2016_03_31.json,
interventions_2016_06_08_1.json,
interventions_2016_06_26.json,
interventions_2016_07_03.json,
interventions_2016_07_06.json,
interventions_2016_07_18.json,
interventions_2016_10_03.json,
interventions_2016_12_21.json,
interventions_2017_02_07.json,
interventions_2017_07_10.json,
interventions_2017_07_19.json,
interventions_2017_10_12.json,
interventions_2018_06_20_1.json,
interventions_2018_07_18.json,
interventions_2018_09_19.json,
interventions_2018_10_10.json,
interventions_2018_12_04.json,
interventions_2019_01_16_1.json,
interventions_2019_01_25.json,
interventions_2019_02_28.json,
interventions_2019_03_26.json,
interventions_2019_03_27.json,
interventions_2019_04_04.json,
interventions_2019_04_05.json,
interventions_2019_05_16.json,
interventions_2019_05_28.json,
interventions_2019_05_28_1.json,
interventions_2019_06_21.json,
interventions_2019_07_05.json,
interventions_2019_07_16.json,
interventions_2019_09_17.json,
interventions_2019_09_18.json,
interventions_2019_09_19.json,
interventions_2019_09_24.json,
interventions_2019_09_26.json,
interventions_2019_10_11.json,
interventions_2019_10_16.json,
interventions_2019_10_17.json,
interventions_2019_10_18.json,
interventions_2019_10_25.json,
interventions_2019_11_07.json,
interventions_2019_11_14.json,
interventions_2019_11_24.json,
interventions_2019_11_27.json,
interventions_2019_11_28.json,
interventions_2019_11_28_1.json,
interventions_2019_12_04.json,
interventions_2020_01_09.json,
interventions_2020_01_14.json,
interventions_2020_01_15.json,
interventions_2020_01_15_1.json,
interventions_2020_01_28.json,
interventions_2020_02_06.json,
interventions_2020_03_03.json,
interventions_2020_03_09.json,
interventions_2020_03_09_1.json,
interventions_2020_04_08.json,
interventions_2020_04_08_1.json,
interventions_2020_04_15.json,
interventions_2020_04_24.json,
interventions_2020_05_05.json,
interventions_2020_05_06.json)


rm(#interventions_1999_04_10.json,
  #interventions_1999_08_06.json,
  #interventions_1999_09_09.json,
  interventions_1999_09_11.json,
  #interventions_2000_09_22.json,
  interventions_2001_01_30.json,
  interventions_2001_03_27.json,
  interventions_2001_06_19.json,
  interventions_2001_06_25.json,
  interventions_2001_09_03.json,
  interventions_2001_10_07.json,
  interventions_2002_01_01.json,
  interventions_2002_04_23.json,
  interventions_2002_06_26.json,
  #interventions_2003_05_03.json,
  interventions_2003_06_18.json,
  interventions_2003_06_24.json,
  interventions_2003_10_16.json,
  #interventions_2004_01_21.json,
  interventions_2004_03_05.json,
  interventions_2004_05_27.json,
  interventions_2004_06_01.json,
  interventions_2004_06_22.json,
  interventions_2004_06_22_1.json,
  #interventions_2004_09_22.json,
  interventions_2005_06_22.json,
  interventions_2005_06_28.json,
  interventions_2005_09_02.json,
  interventions_2005_10_10.json,
  interventions_2005_11_04.json,
  interventions_2006_02_14.json,
  interventions_2006_06_09.json,
  interventions_2006_06_27.json,
  interventions_2006_06_28.json,
  interventions_2006_07_08.json,
  interventions_2007_03_21.json,
  interventions_2007_03_29.json,
  interventions_2007_04_15.json,
  interventions_2007_04_16.json,
  interventions_2007_05_16.json,
  interventions_2007_05_16_1.json,
  interventions_2007_06_29.json,
  interventions_2007_07_06.json,
  interventions_2007_07_10.json,
  interventions_2007_09_11.json,
  interventions_2007_09_12.json,
  interventions_2007_09_18.json,
  interventions_2007_10_08.json,
  interventions_2007_10_10.json,
  interventions_2007_10_22.json,
  interventions_2007_11_27.json,
  interventions_2007_12_04.json,
  interventions_2007_12_18.json,
  interventions_2008_01_01.json,
  interventions_2008_01_17.json,
  interventions_2008_01_29.json,
  interventions_2008_02_19.json,
  interventions_2008_03_19.json,
  interventions_2008_04_10.json,
  interventions_2008_06_09.json,
  interventions_2008_06_25.json,
  interventions_2008_06_26.json,
  interventions_2008_09_03.json,
  interventions_2008_09_30.json,
  interventions_2008_10_07.json,
  interventions_2008_10_10.json,
  interventions_2008_10_21.json,
  interventions_2008_10_27.json,
  interventions_2008_11_17.json,
  interventions_2008_12_11.json,
  interventions_2008_12_11_1.json,
  interventions_2008_12_17.json,
  interventions_2009_01_01.json,
  interventions_2009_01_23.json,
  interventions_2009_01_28.json,
  interventions_2009_02_07.json,
  interventions_2009_02_10.json,
  interventions_2009_04_04.json,
  interventions_2009_05_18.json,
  interventions_2009_06_09.json,
  interventions_2009_06_11.json,
  interventions_2009_07_03.json,
  interventions_2009_09_04.json,
  interventions_2009_09_30.json,
  interventions_2009_10_20.json,
  interventions_2009_10_26.json,
  interventions_2009_11_16.json,
  interventions_2010_03_22.json,
  interventions_2010_04_25.json,
  interventions_2010_04_26.json,
  interventions_2010_06_02.json,
  interventions_2010_06_13.json,
  interventions_2010_06_21.json,
  interventions_2010_06_21_1.json,
  interventions_2010_07_06.json,
  interventions_2010_09_03.json,
  interventions_2010_09_23.json,
  interventions_2010_10_14.json,
  interventions_2010_10_21.json,
  interventions_2010_11_11.json,
  interventions_2010_11_16.json,
  #interventions_2010_12_08 2.json,
  interventions_2010_12_08.json,
  interventions_2011_01_17.json,
  interventions_2011_01_17_1.json,
  interventions_2011_03_25.json,
  interventions_2011_03_29.json,
  interventions_2011_04_18.json,
  interventions_2011_04_27.json,
  interventions_2011_07_18.json,
  #interventions_2011_08_30 2.json,
  interventions_2011_08_30.json,
  interventions_2011_09_14.json,
  interventions_2011_09_16.json,
  interventions_2011_10_05.json,
  interventions_2011_10_11.json,
  interventions_2011_10_16.json,
  interventions_2011_11_06.json,
  interventions_2011_12_09.json,
  interventions_2012_01_01.json,
  interventions_2012_01_16.json,
  interventions_2012_02_10.json,
  interventions_2012_03_27.json,
  interventions_2012_04_23.json,
  interventions_2012_05_11.json,
  interventions_2012_05_14.json,
  interventions_2012_06_11.json,
  interventions_2012_06_12.json,
  interventions_2012_07_03.json,
  interventions_2012_07_06.json,
  interventions_2012_07_17.json,
  interventions_2012_11_23.json,
  interventions_2013_06_26.json,
  interventions_2013_07_02.json,
  interventions_2013_11_21.json,
  interventions_2014_02_12.json,
  interventions_2014_04_08.json,
  interventions_2014_07_05.json,
  interventions_2014_11_21.json,
  interventions_2014_11_24.json,
  interventions_2015_04_08.json,
  interventions_2015_05_19.json,
  interventions_2015_06_08.json,
  interventions_2015_06_16.json,
  Interventions_2016_02_08.json,
  interventions_2016_03_30.json,
  interventions_2016_03_31.json,
  interventions_2016_06_08_1.json,
  interventions_2016_06_26.json,
  interventions_2016_07_03.json,
  interventions_2016_07_06.json,
  interventions_2016_07_18.json,
  interventions_2016_10_03.json,
  interventions_2016_12_21.json,
  interventions_2017_02_07.json,
  interventions_2017_07_10.json,
  interventions_2017_07_19.json,
  interventions_2017_10_12.json,
  interventions_2018_06_20_1.json,
  interventions_2018_07_18.json,
  interventions_2018_09_19.json,
  interventions_2018_10_10.json,
  interventions_2018_12_04.json,
  interventions_2019_01_16_1.json,
  interventions_2019_01_25.json,
  interventions_2019_02_28.json,
  interventions_2019_03_26.json,
  interventions_2019_03_27.json,
  interventions_2019_04_04.json,
  interventions_2019_04_05.json,
  interventions_2019_05_16.json,
  interventions_2019_05_28.json,
  interventions_2019_05_28_1.json,
  interventions_2019_06_21.json,
  interventions_2019_07_05.json,
  interventions_2019_07_16.json,
  interventions_2019_09_17.json,
  interventions_2019_09_18.json,
  interventions_2019_09_19.json,
  interventions_2019_09_24.json,
  interventions_2019_09_26.json,
  interventions_2019_10_11.json,
  interventions_2019_10_16.json,
  interventions_2019_10_17.json,
  interventions_2019_10_18.json,
  interventions_2019_10_25.json,
  interventions_2019_11_07.json,
  interventions_2019_11_14.json,
  interventions_2019_11_24.json,
  interventions_2019_11_27.json,
  interventions_2019_11_28.json,
  interventions_2019_11_28_1.json,
  interventions_2019_12_04.json,
  interventions_2020_01_09.json,
  interventions_2020_01_14.json,
  interventions_2020_01_15.json,
  interventions_2020_01_15_1.json,
  interventions_2020_01_28.json,
  interventions_2020_02_06.json,
  interventions_2020_03_03.json,
  interventions_2020_03_09.json,
  interventions_2020_03_09_1.json,
  interventions_2020_04_08.json,
  interventions_2020_04_08_1.json,
  interventions_2020_04_15.json,
  interventions_2020_04_24.json,
  interventions_2020_05_05.json,
  interventions_2020_05_06.json)


write.csv(Master, file = "Master_Autres_Interviews.csv")

