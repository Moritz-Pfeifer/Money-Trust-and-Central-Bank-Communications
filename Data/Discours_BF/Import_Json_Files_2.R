



#########################################################
##
## Data Import Script
## Sentiment Analysis on Central Bankers
## Client: Moritz Pfiffer
## 8/16/2021
##
#############################################################
setwd("C:\\Users\\salaz\\Desktop\\Moritz\\Discours_BF")
library(stringr)
library(rjson)
library(dplyr)
#
# Importing Reported Json files
#


discours_1999_01_02.json<- as.data.frame(fromJSON(paste(readLines("discours_1999_01_02.json"))))
discours_1999_02_22.json<- as.data.frame(fromJSON(paste(readLines("discours_1999_02_22.json"))))
discours_1999_03_16.json<- as.data.frame(fromJSON(paste(readLines("discours_1999_03_16.json"))))
discours_1999_03_30.json<- as.data.frame(fromJSON(paste(readLines("discours_1999_03_30.json"))))
discours_1999_04_28.json<- as.data.frame(fromJSON(paste(readLines("discours_1999_04_28.json"))))
discours_1999_09_28.json<- as.data.frame(fromJSON(paste(readLines("discours_1999_09_28.json"))))
discours_1999_10_29.json<- as.data.frame(fromJSON(paste(readLines("discours_1999_10_29.json"))))
discours_2000_02_28.json<- as.data.frame(fromJSON(paste(readLines("discours_2000_02_28.json"))))
discours_2000_04_05.json<- as.data.frame(fromJSON(paste(readLines("discours_2000_04_05.json"))))
discours_2000_06_04.json<- as.data.frame(fromJSON(paste(readLines("discours_2000_06_04.json"))))
discours_2000_06_15.json<- as.data.frame(fromJSON(paste(readLines("discours_2000_06_15.json"))))
discours_2000_09_28.json<- as.data.frame(fromJSON(paste(readLines("discours_2000_09_28.json"))))
discours_2000_10_10.json<- as.data.frame(fromJSON(paste(readLines("discours_2000_10_10.json"))))
discours_2000_11_28.json<- as.data.frame(fromJSON(paste(readLines("discours_2000_11_28.json"))))
discours_2000_12_20.json<- as.data.frame(fromJSON(paste(readLines("discours_2000_12_20.json"))))
discours_2001_01_06.json<- as.data.frame(fromJSON(paste(readLines("discours_2001_01_06.json"))))
discours_2001_02_21.json<- as.data.frame(fromJSON(paste(readLines("discours_2001_02_21.json"))))
discours_2001_04_17.json<- as.data.frame(fromJSON(paste(readLines("discours_2001_04_17.json"))))
discours_2001_04_30.json<- as.data.frame(fromJSON(paste(readLines("discours_2001_04_30.json"))))
discours_2001_05_11.json<- as.data.frame(fromJSON(paste(readLines("discours_2001_05_11.json"))))
discours_2001_05_16.json<- as.data.frame(fromJSON(paste(readLines("discours_2001_05_16.json"))))
discours_2001_05_30.json<- as.data.frame(fromJSON(paste(readLines("discours_2001_05_30.json"))))
discours_2001_06_04.json<- as.data.frame(fromJSON(paste(readLines("discours_2001_06_04.json"))))
discours_2001_06_15.json<- as.data.frame(fromJSON(paste(readLines("discours_2001_06_15.json"))))
discours_2001_07_02.json<- as.data.frame(fromJSON(paste(readLines("discours_2001_07_02.json"))))
discours_2001_10_17.json<- as.data.frame(fromJSON(paste(readLines("discours_2001_10_17.json"))))
discours_2001_11_09.json<- as.data.frame(fromJSON(paste(readLines("discours_2001_11_09.json"))))
discours_2002_02_12.json<- as.data.frame(fromJSON(paste(readLines("discours_2002_02_12.json"))))
discours_2002_04_23.json<- as.data.frame(fromJSON(paste(readLines("discours_2002_04_23.json"))))
discours_2002_06_14.json<- as.data.frame(fromJSON(paste(readLines("discours_2002_06_14.json"))))
discours_2002_08_06.json<- as.data.frame(fromJSON(paste(readLines("discours_2002_08_06.json"))))
discours_2003_02_25.json<- as.data.frame(fromJSON(paste(readLines("discours_2003_02_25.json"))))
discours_2003_03_20.json<- as.data.frame(fromJSON(paste(readLines("discours_2003_03_20.json"))))
discours_2004_05_25.json<- as.data.frame(fromJSON(paste(readLines("discours_2004_05_25.json"))))
discours_2005_03_21.json<- as.data.frame(fromJSON(paste(readLines("discours_2005_03_21.json"))))
discours_2005_03_31.json<- as.data.frame(fromJSON(paste(readLines("discours_2005_03_31.json"))))
discours_2005_06_23.json<- as.data.frame(fromJSON(paste(readLines("discours_2005_06_23.json"))))
discours_2005_12_08.json<- as.data.frame(fromJSON(paste(readLines("discours_2005_12_08.json"))))
discours_2006_06_05.json<- as.data.frame(fromJSON(paste(readLines("discours_2006_06_05.json"))))
discours_2006_07_06.json<- as.data.frame(fromJSON(paste(readLines("discours_2006_07_06.json"))))
discours_2006_09_21.json<- as.data.frame(fromJSON(paste(readLines("discours_2006_09_21.json"))))
discours_2006_11_10.json<- as.data.frame(fromJSON(paste(readLines("discours_2006_11_10.json"))))
discours_2006_11_29.json<- as.data.frame(fromJSON(paste(readLines("discours_2006_11_29.json"))))
discours_2007_04_28.json<- as.data.frame(fromJSON(paste(readLines("discours_2007_04_28.json"))))
discours_2007_05_14.json<- as.data.frame(fromJSON(paste(readLines("discours_2007_05_14.json"))))
discours_2007_10_01.json<- as.data.frame(fromJSON(paste(readLines("discours_2007_10_01.json"))))
discours_2007_12_16.json<- as.data.frame(fromJSON(paste(readLines("discours_2007_12_16.json"))))
discours_2008_04_01.json<- as.data.frame(fromJSON(paste(readLines("discours_2008_04_01.json"))))
discours_2008_05_13.json<- as.data.frame(fromJSON(paste(readLines("discours_2008_05_13.json"))))
discours_2009_04_11.json<- as.data.frame(fromJSON(paste(readLines("discours_2009_04_11.json"))))
discours_2009_09_01.json<- as.data.frame(fromJSON(paste(readLines("discours_2009_09_01.json"))))
discours_2009_11_23.json<- as.data.frame(fromJSON(paste(readLines("discours_2009_11_23.json"))))
discours_2010_06_12.json<- as.data.frame(fromJSON(paste(readLines("discours_2010_06_12.json"))))
discours_2010_06_17.json<- as.data.frame(fromJSON(paste(readLines("discours_2010_06_17.json"))))
discours_2010_09_29.json<- as.data.frame(fromJSON(paste(readLines("discours_2010_09_29.json"))))
discours_2010_09_30.json<- as.data.frame(fromJSON(paste(readLines("discours_2010_09_30.json"))))
discours_2010_10_12.json<- as.data.frame(fromJSON(paste(readLines("discours_2010_10_12.json"))))
discours_2010_11_25.json<- as.data.frame(fromJSON(paste(readLines("discours_2010_11_25.json"))))
discours_2010_11_29.json<- as.data.frame(fromJSON(paste(readLines("discours_2010_11_29.json"))))
discours_2011_01_19.json<- as.data.frame(fromJSON(paste(readLines("discours_2011_01_19.json"))))
discours_2011_03_04.json<- as.data.frame(fromJSON(paste(readLines("discours_2011_03_04.json"))))
discours_2011_03_10.json<- as.data.frame(fromJSON(paste(readLines("discours_2011_03_10.json"))))
discours_2011_04_18.json<- as.data.frame(fromJSON(paste(readLines("discours_2011_04_18.json"))))
discours_2011_05_16.json<- as.data.frame(fromJSON(paste(readLines("discours_2011_05_16.json"))))
discours_2011_05_30.json<- as.data.frame(fromJSON(paste(readLines("discours_2011_05_30.json"))))
discours_2011_06_06.json<- as.data.frame(fromJSON(paste(readLines("discours_2011_06_06.json"))))
discours_2011_07_05.json<- as.data.frame(fromJSON(paste(readLines("discours_2011_07_05.json"))))
discours_2011_10_03.json<- as.data.frame(fromJSON(paste(readLines("discours_2011_10_03.json"))))
discours_2011_11_14.json<- as.data.frame(fromJSON(paste(readLines("discours_2011_11_14.json"))))
discours_2011_11_30.json<- as.data.frame(fromJSON(paste(readLines("discours_2011_11_30.json"))))
discours_2012_03_26.json<- as.data.frame(fromJSON(paste(readLines("discours_2012_03_26.json"))))
discours_2012_06_11.json<- as.data.frame(fromJSON(paste(readLines("discours_2012_06_11.json"))))
discours_2012_06_13.json<- as.data.frame(fromJSON(paste(readLines("discours_2012_06_13.json"))))
discours_2012_06_27.json<- as.data.frame(fromJSON(paste(readLines("discours_2012_06_27.json"))))
discours_2012_10_05.json<- as.data.frame(fromJSON(paste(readLines("discours_2012_10_05.json"))))
discours_2012_10_10.json<- as.data.frame(fromJSON(paste(readLines("discours_2012_10_10.json"))))
discours_2012_10_19.json<- as.data.frame(fromJSON(paste(readLines("discours_2012_10_19.json"))))
discours_2012_12_01.json<- as.data.frame(fromJSON(paste(readLines("discours_2012_12_01.json"))))
discours_2012_12_03.json<- as.data.frame(fromJSON(paste(readLines("discours_2012_12_03.json"))))
discours_2012_12_06.json<- as.data.frame(fromJSON(paste(readLines("discours_2012_12_06.json"))))
discours_2012_12_12.json<- as.data.frame(fromJSON(paste(readLines("discours_2012_12_12.json"))))
discours_2013_01_21.json<- as.data.frame(fromJSON(paste(readLines("discours_2013_01_21.json"))))
discours_2013_02_28.json<- as.data.frame(fromJSON(paste(readLines("discours_2013_02_28.json"))))
discours_2013_04_22.json<- as.data.frame(fromJSON(paste(readLines("discours_2013_04_22.json"))))
discours_2013_04_22_1.json<- as.data.frame(fromJSON(paste(readLines("discours_2013_04_22_1.json"))))
discours_2013_06_18.json<- as.data.frame(fromJSON(paste(readLines("discours_2013_06_18.json"))))
discours_2013_07_06.json<- as.data.frame(fromJSON(paste(readLines("discours_2013_07_06.json"))))
discours_2013_09_23.json<- as.data.frame(fromJSON(paste(readLines("discours_2013_09_23.json"))))
discours_2013_11_26.json<- as.data.frame(fromJSON(paste(readLines("discours_2013_11_26.json"))))
discours_2013_12_17.json<- as.data.frame(fromJSON(paste(readLines("discours_2013_12_17.json"))))
discours_2014_01_15.json<- as.data.frame(fromJSON(paste(readLines("discours_2014_01_15.json"))))
discours_2014_01_16.json<- as.data.frame(fromJSON(paste(readLines("discours_2014_01_16.json"))))
discours_2014_01_29.json<- as.data.frame(fromJSON(paste(readLines("discours_2014_01_29.json"))))
discours_2014_01_31.json<- as.data.frame(fromJSON(paste(readLines("discours_2014_01_31.json"))))
discours_2014_03_10.json<- as.data.frame(fromJSON(paste(readLines("discours_2014_03_10.json"))))
discours_2014_04_11.json<- as.data.frame(fromJSON(paste(readLines("discours_2014_04_11.json"))))
discours_2014_05_23.json<- as.data.frame(fromJSON(paste(readLines("discours_2014_05_23.json"))))
discours_2014_06_09.json<- as.data.frame(fromJSON(paste(readLines("discours_2014_06_09.json"))))
discours_2014_06_17.json<- as.data.frame(fromJSON(paste(readLines("discours_2014_06_17.json"))))
discours_2014_06_24.json<- as.data.frame(fromJSON(paste(readLines("discours_2014_06_24.json"))))
discours_2014_07_08.json<- as.data.frame(fromJSON(paste(readLines("discours_2014_07_08.json"))))
discours_2014_10_22.json<- as.data.frame(fromJSON(paste(readLines("discours_2014_10_22.json"))))
discours_2014_11_25.json<- as.data.frame(fromJSON(paste(readLines("discours_2014_11_25.json"))))
discours_2015_01_20.json<- as.data.frame(fromJSON(paste(readLines("discours_2015_01_20.json"))))
discours_2015_03_13.json<- as.data.frame(fromJSON(paste(readLines("discours_2015_03_13.json"))))
discours_2015_03_23.json<- as.data.frame(fromJSON(paste(readLines("discours_2015_03_23.json"))))
discours_2015_04_20_1.json<- as.data.frame(fromJSON(paste(readLines("discours_2015_04_20_1.json"))))
discours_2015_05_26.json<- as.data.frame(fromJSON(paste(readLines("discours_2015_05_26.json"))))
discours_2015_07_07.json<- as.data.frame(fromJSON(paste(readLines("discours_2015_07_07.json"))))
discours_2015_09_14.json<- as.data.frame(fromJSON(paste(readLines("discours_2015_09_14.json"))))
discours_2015_09_22.json<- as.data.frame(fromJSON(paste(readLines("discours_2015_09_22.json"))))
discours_2015_09_28.json<- as.data.frame(fromJSON(paste(readLines("discours_2015_09_28.json"))))
discours_2015_11_30.json<- as.data.frame(fromJSON(paste(readLines("discours_2015_11_30.json"))))
discours_2015_12_16.json<- as.data.frame(fromJSON(paste(readLines("discours_2015_12_16.json"))))
discours_2016_01_12.json<- as.data.frame(fromJSON(paste(readLines("discours_2016_01_12.json"))))
discours_2016_01_15.json<- as.data.frame(fromJSON(paste(readLines("discours_2016_01_15.json"))))
discours_2016_01_18.json<- as.data.frame(fromJSON(paste(readLines("discours_2016_01_18.json"))))
discours_2016_01_18_1.json<- as.data.frame(fromJSON(paste(readLines("discours_2016_01_18_1.json"))))
discours_2016_01_19.json<- as.data.frame(fromJSON(paste(readLines("discours_2016_01_19.json"))))
discours_2016_02_02.json<- as.data.frame(fromJSON(paste(readLines("discours_2016_02_02.json"))))
discours_2016_03_14.json<- as.data.frame(fromJSON(paste(readLines("discours_2016_03_14.json"))))
discours_2016_03_21.json<- as.data.frame(fromJSON(paste(readLines("discours_2016_03_21.json"))))
discours_2016_03_22.json<- as.data.frame(fromJSON(paste(readLines("discours_2016_03_22.json"))))
discours_2016_04_11.json<- as.data.frame(fromJSON(paste(readLines("discours_2016_04_11.json"))))
discours_2016_04_18.json<- as.data.frame(fromJSON(paste(readLines("discours_2016_04_18.json"))))
discours_2016_04_28.json<- as.data.frame(fromJSON(paste(readLines("discours_2016_04_28.json"))))
discours_2016_05_23.json<- as.data.frame(fromJSON(paste(readLines("discours_2016_05_23.json"))))
discours_2016_05_23_1.json<- as.data.frame(fromJSON(paste(readLines("discours_2016_05_23_1.json"))))
discours_2016_05_26.json<- as.data.frame(fromJSON(paste(readLines("discours_2016_05_26.json"))))
discours_2016_05_30.json<- as.data.frame(fromJSON(paste(readLines("discours_2016_05_30.json"))))
discours_2016_06_07.json<- as.data.frame(fromJSON(paste(readLines("discours_2016_06_07.json"))))
discours_2016_06_08.json<- as.data.frame(fromJSON(paste(readLines("discours_2016_06_08.json"))))
discours_2016_06_16.json<- as.data.frame(fromJSON(paste(readLines("discours_2016_06_16.json"))))
discours_2016_06_20.json<- as.data.frame(fromJSON(paste(readLines("discours_2016_06_20.json"))))
discours_2016_06_24.json<- as.data.frame(fromJSON(paste(readLines("discours_2016_06_24.json"))))
discours_2016_08_31.json<- as.data.frame(fromJSON(paste(readLines("discours_2016_08_31.json"))))
discours_2016_09_16.json<- as.data.frame(fromJSON(paste(readLines("discours_2016_09_16.json"))))
discours_2016_09_23.json<- as.data.frame(fromJSON(paste(readLines("discours_2016_09_23.json"))))
discours_2016_09_28.json<- as.data.frame(fromJSON(paste(readLines("discours_2016_09_28.json"))))
discours_2016_10_14_1.json<- as.data.frame(fromJSON(paste(readLines("discours_2016_10_14_1.json"))))
discours_2016_11_04.json<- as.data.frame(fromJSON(paste(readLines("discours_2016_11_04.json"))))
discours_2016_11_21.json<- as.data.frame(fromJSON(paste(readLines("discours_2016_11_21.json"))))
discours_2016_11_25.json<- as.data.frame(fromJSON(paste(readLines("discours_2016_11_25.json"))))
discours_2016_11_29.json<- as.data.frame(fromJSON(paste(readLines("discours_2016_11_29.json"))))
discours_2016_12_05.json<- as.data.frame(fromJSON(paste(readLines("discours_2016_12_05.json"))))
discours_2016_12_06.json<- as.data.frame(fromJSON(paste(readLines("discours_2016_12_06.json"))))
discours_2017_01_06.json<- as.data.frame(fromJSON(paste(readLines("discours_2017_01_06.json"))))
discours_2017_01_13.json<- as.data.frame(fromJSON(paste(readLines("discours_2017_01_13.json"))))
discours_2017_01_16.json<- as.data.frame(fromJSON(paste(readLines("discours_2017_01_16.json"))))
discours_2017_01_24.json<- as.data.frame(fromJSON(paste(readLines("discours_2017_01_24.json"))))
discours_2017_01_25.json<- as.data.frame(fromJSON(paste(readLines("discours_2017_01_25.json"))))
discours_2017_01_26.json<- as.data.frame(fromJSON(paste(readLines("discours_2017_01_26.json"))))
discours_2017_01_31.json<- as.data.frame(fromJSON(paste(readLines("discours_2017_01_31.json"))))
discours_2017_02_01.json<- as.data.frame(fromJSON(paste(readLines("discours_2017_02_01.json"))))
discours_2017_02_07_2.json<- as.data.frame(fromJSON(paste(readLines("discours_2017_02_07_2.json"))))
discours_2017_03_21.json<- as.data.frame(fromJSON(paste(readLines("discours_2017_03_21.json"))))
discours_2017_03_22.json<- as.data.frame(fromJSON(paste(readLines("discours_2017_03_22.json"))))
discours_2017_04_19.json<- as.data.frame(fromJSON(paste(readLines("discours_2017_04_19.json"))))
discours_2017_05_04.json<- as.data.frame(fromJSON(paste(readLines("discours_2017_05_04.json"))))
discours_2017_05_24.json<- as.data.frame(fromJSON(paste(readLines("discours_2017_05_24.json"))))
discours_2017_05_29.json<- as.data.frame(fromJSON(paste(readLines("discours_2017_05_29.json"))))
discours_2017_06_01.json<- as.data.frame(fromJSON(paste(readLines("discours_2017_06_01.json"))))
discours_2017_06_16.json<- as.data.frame(fromJSON(paste(readLines("discours_2017_06_16.json"))))
discours_2017_06_22.json<- as.data.frame(fromJSON(paste(readLines("discours_2017_06_22.json"))))
discours_2017_07_09.json<- as.data.frame(fromJSON(paste(readLines("discours_2017_07_09.json"))))
discours_2017_10_06.json<- as.data.frame(fromJSON(paste(readLines("discours_2017_10_06.json"))))
discours_2017_10_20.json<- as.data.frame(fromJSON(paste(readLines("discours_2017_10_20.json"))))
discours_2017_11_06.json<- as.data.frame(fromJSON(paste(readLines("discours_2017_11_06.json"))))
discours_2017_11_09.json<- as.data.frame(fromJSON(paste(readLines("discours_2017_11_09.json"))))
discours_2017_11_16.json<- as.data.frame(fromJSON(paste(readLines("discours_2017_11_16.json"))))
discours_2017_11_22.json<- as.data.frame(fromJSON(paste(readLines("discours_2017_11_22.json"))))
discours_2017_11_23.json<- as.data.frame(fromJSON(paste(readLines("discours_2017_11_23.json"))))
discours_2017_11_23_1.json<- as.data.frame(fromJSON(paste(readLines("discours_2017_11_23_1.json"))))
discours_2017_12_01.json<- as.data.frame(fromJSON(paste(readLines("discours_2017_12_01.json"))))
discours_2017_12_04.json<- as.data.frame(fromJSON(paste(readLines("discours_2017_12_04.json"))))
discours_2017_12_12.json<- as.data.frame(fromJSON(paste(readLines("discours_2017_12_12.json"))))
discours_2017_12_21.json<- as.data.frame(fromJSON(paste(readLines("discours_2017_12_21.json"))))
discours_2018_01_22.json<- as.data.frame(fromJSON(paste(readLines("discours_2018_01_22.json"))))
discours_2018_02_02.json<- as.data.frame(fromJSON(paste(readLines("discours_2018_02_02.json"))))
discours_2018_02_15.json<- as.data.frame(fromJSON(paste(readLines("discours_2018_02_15.json"))))
discours_2018_03_14.json<- as.data.frame(fromJSON(paste(readLines("discours_2018_03_14.json"))))
discours_2018_04_06.json<- as.data.frame(fromJSON(paste(readLines("discours_2018_04_06.json"))))
discours_2018_04_18.json<- as.data.frame(fromJSON(paste(readLines("discours_2018_04_18.json"))))
discours_2018_04_24.json<- as.data.frame(fromJSON(paste(readLines("discours_2018_04_24.json"))))
discours_2018_05_28.json<- as.data.frame(fromJSON(paste(readLines("discours_2018_05_28.json"))))
discours_2018_06_08.json<- as.data.frame(fromJSON(paste(readLines("discours_2018_06_08.json"))))
discours_2018_06_21.json<- as.data.frame(fromJSON(paste(readLines("discours_2018_06_21.json"))))
discours_2018_07_11.json<- as.data.frame(fromJSON(paste(readLines("discours_2018_07_11.json"))))
discours_2018_09_18.json<- as.data.frame(fromJSON(paste(readLines("discours_2018_09_18.json"))))
discours_2018_10_14.json<- as.data.frame(fromJSON(paste(readLines("discours_2018_10_14.json"))))
discours_2018_10_25.json<- as.data.frame(fromJSON(paste(readLines("discours_2018_10_25.json"))))
discours_2018_10_26.json<- as.data.frame(fromJSON(paste(readLines("discours_2018_10_26.json"))))
discours_2018_11_02.json<- as.data.frame(fromJSON(paste(readLines("discours_2018_11_02.json"))))
discours_2018_11_14.json<- as.data.frame(fromJSON(paste(readLines("discours_2018_11_14.json"))))
discours_2018_11_19.json<- as.data.frame(fromJSON(paste(readLines("discours_2018_11_19.json"))))
discours_2018_11_23.json<- as.data.frame(fromJSON(paste(readLines("discours_2018_11_23.json"))))
discours_2018_11_28.json<- as.data.frame(fromJSON(paste(readLines("discours_2018_11_28.json"))))
discours_2018_11_29.json<- as.data.frame(fromJSON(paste(readLines("discours_2018_11_29.json"))))
discours_2018_12_04.json<- as.data.frame(fromJSON(paste(readLines("discours_2018_12_04.json"))))
discours_2019_01_16.json<- as.data.frame(fromJSON(paste(readLines("discours_2019_01_16.json"))))
discours_2019_01_25_1.json<- as.data.frame(fromJSON(paste(readLines("discours_2019_01_25_1.json"))))
discours_2019_02_22.json<- as.data.frame(fromJSON(paste(readLines("discours_2019_02_22.json"))))
discours_2019_02_28.json<- as.data.frame(fromJSON(paste(readLines("discours_2019_02_28.json"))))
discours_2019_03_26.json<- as.data.frame(fromJSON(paste(readLines("discours_2019_03_26.json"))))
discours_2019_03_28.json<- as.data.frame(fromJSON(paste(readLines("discours_2019_03_28.json"))))
discours_2019_04_05.json<- as.data.frame(fromJSON(paste(readLines("discours_2019_04_05.json"))))
discours_2019_04_17.json<- as.data.frame(fromJSON(paste(readLines("discours_2019_04_17.json"))))
discours_2019_05_16.json<- as.data.frame(fromJSON(paste(readLines("discours_2019_05_16.json"))))
discours_2019_05_28.json<- as.data.frame(fromJSON(paste(readLines("discours_2019_05_28.json"))))
discours_2019_05_28_1.json<- as.data.frame(fromJSON(paste(readLines("discours_2019_05_28_1.json"))))
discours_2019_06_21.json<- as.data.frame(fromJSON(paste(readLines("discours_2019_06_21.json"))))
discours_2019_07_16.json<- as.data.frame(fromJSON(paste(readLines("discours_2019_07_16.json"))))
discours_2019_09_17.json<- as.data.frame(fromJSON(paste(readLines("discours_2019_09_17.json"))))
discours_2019_09_18.json<- as.data.frame(fromJSON(paste(readLines("discours_2019_09_18.json"))))
discours_2019_09_24.json<- as.data.frame(fromJSON(paste(readLines("discours_2019_09_24.json"))))
discours_2019_09_24_1.json<- as.data.frame(fromJSON(paste(readLines("discours_2019_09_24_1.json"))))
discours_2019_09_26.json<- as.data.frame(fromJSON(paste(readLines("discours_2019_09_26.json"))))
discours_2019_10_11.json<- as.data.frame(fromJSON(paste(readLines("discours_2019_10_11.json"))))
discours_2019_10_16.json<- as.data.frame(fromJSON(paste(readLines("discours_2019_10_16.json"))))
discours_2019_10_17.json<- as.data.frame(fromJSON(paste(readLines("discours_2019_10_17.json"))))
discours_2019_10_18.json<- as.data.frame(fromJSON(paste(readLines("discours_2019_10_18.json"))))
discours_2019_10_25.json<- as.data.frame(fromJSON(paste(readLines("discours_2019_10_25.json"))))
discours_2019_11_14.json<- as.data.frame(fromJSON(paste(readLines("discours_2019_11_14.json"))))
discours_2019_11_27.json<- as.data.frame(fromJSON(paste(readLines("discours_2019_11_27.json"))))
discours_2019_11_28.json<- as.data.frame(fromJSON(paste(readLines("discours_2019_11_28.json"))))
discours_2019_11_28_1.json<- as.data.frame(fromJSON(paste(readLines("discours_2019_11_28_1.json"))))
discours_2019_12_04.json<- as.data.frame(fromJSON(paste(readLines("discours_2019_12_04.json"))))
discours_2020_01_09.json<- as.data.frame(fromJSON(paste(readLines("discours_2020_01_09.json"))))
discours_2020_01_14.json<- as.data.frame(fromJSON(paste(readLines("discours_2020_01_14.json"))))
discours_2020_01_15.json<- as.data.frame(fromJSON(paste(readLines("discours_2020_01_15.json"))))
discours_2020_02_06.json<- as.data.frame(fromJSON(paste(readLines("discours_2020_02_06.json"))))
discours_2020_03_03.json<- as.data.frame(fromJSON(paste(readLines("discours_2020_03_03.json"))))
discours_2020_03_09.json<- as.data.frame(fromJSON(paste(readLines("discours_2020_03_09.json"))))
discours_2020_05_15_1.json<- as.data.frame(fromJSON(paste(readLines("discours_2020_05_15_1.json"))))
discours_2020_06_16.json<- as.data.frame(fromJSON(paste(readLines("discours_2020_06_16.json"))))

##
## Files have several non-matching columns. Treatment by equal number of columns starting by all the non-five columns. 
##


ifelse(ncol(discours_1999_01_02.json)==5,rm(discours_1999_01_02.json),"")
ifelse(ncol(discours_1999_02_22.json)==5,rm(discours_1999_02_22.json),"")
ifelse(ncol(discours_1999_03_16.json)==5,rm(discours_1999_03_16.json),"")
ifelse(ncol(discours_1999_03_30.json)==5,rm(discours_1999_03_30.json),"")
ifelse(ncol(discours_1999_04_28.json)==5,rm(discours_1999_04_28.json),"")
ifelse(ncol(discours_1999_09_28.json)==5,rm(discours_1999_09_28.json),"")
ifelse(ncol(discours_1999_10_29.json)==5,rm(discours_1999_10_29.json),"")
ifelse(ncol(discours_2000_02_28.json)==5,rm(discours_2000_02_28.json),"")
ifelse(ncol(discours_2000_04_05.json)==5,rm(discours_2000_04_05.json),"")
ifelse(ncol(discours_2000_06_04.json)==5,rm(discours_2000_06_04.json),"")
ifelse(ncol(discours_2000_06_15.json)==5,rm(discours_2000_06_15.json),"")
ifelse(ncol(discours_2000_09_28.json)==5,rm(discours_2000_09_28.json),"")
ifelse(ncol(discours_2000_10_10.json)==5,rm(discours_2000_10_10.json),"")
ifelse(ncol(discours_2000_11_28.json)==5,rm(discours_2000_11_28.json),"")
ifelse(ncol(discours_2000_12_20.json)==5,rm(discours_2000_12_20.json),"")
ifelse(ncol(discours_2001_01_06.json)==5,rm(discours_2001_01_06.json),"")
ifelse(ncol(discours_2001_02_21.json)==5,rm(discours_2001_02_21.json),"")
ifelse(ncol(discours_2001_04_17.json)==5,rm(discours_2001_04_17.json),"")
ifelse(ncol(discours_2001_04_30.json)==5,rm(discours_2001_04_30.json),"")
ifelse(ncol(discours_2001_05_11.json)==5,rm(discours_2001_05_11.json),"")
ifelse(ncol(discours_2001_05_16.json)==5,rm(discours_2001_05_16.json),"")
ifelse(ncol(discours_2001_05_30.json)==5,rm(discours_2001_05_30.json),"")
ifelse(ncol(discours_2001_06_04.json)==5,rm(discours_2001_06_04.json),"")
ifelse(ncol(discours_2001_06_15.json)==5,rm(discours_2001_06_15.json),"")
ifelse(ncol(discours_2001_07_02.json)==5,rm(discours_2001_07_02.json),"")
ifelse(ncol(discours_2001_10_17.json)==5,rm(discours_2001_10_17.json),"")
ifelse(ncol(discours_2001_11_09.json)==5,rm(discours_2001_11_09.json),"")
ifelse(ncol(discours_2002_02_12.json)==5,rm(discours_2002_02_12.json),"")
ifelse(ncol(discours_2002_04_23.json)==5,rm(discours_2002_04_23.json),"")
ifelse(ncol(discours_2002_06_14.json)==5,rm(discours_2002_06_14.json),"")
ifelse(ncol(discours_2002_08_06.json)==5,rm(discours_2002_08_06.json),"")
ifelse(ncol(discours_2003_02_25.json)==5,rm(discours_2003_02_25.json),"")
ifelse(ncol(discours_2003_03_20.json)==5,rm(discours_2003_03_20.json),"")
ifelse(ncol(discours_2004_05_25.json)==5,rm(discours_2004_05_25.json),"")
ifelse(ncol(discours_2005_03_21.json)==5,rm(discours_2005_03_21.json),"")
ifelse(ncol(discours_2005_03_31.json)==5,rm(discours_2005_03_31.json),"")
ifelse(ncol(discours_2005_06_23.json)==5,rm(discours_2005_06_23.json),"")
ifelse(ncol(discours_2005_12_08.json)==5,rm(discours_2005_12_08.json),"")
ifelse(ncol(discours_2006_06_05.json)==5,rm(discours_2006_06_05.json),"")
ifelse(ncol(discours_2006_07_06.json)==5,rm(discours_2006_07_06.json),"")
ifelse(ncol(discours_2006_09_21.json)==5,rm(discours_2006_09_21.json),"")
ifelse(ncol(discours_2006_11_10.json)==5,rm(discours_2006_11_10.json),"")
ifelse(ncol(discours_2006_11_29.json)==5,rm(discours_2006_11_29.json),"")
ifelse(ncol(discours_2007_04_28.json)==5,rm(discours_2007_04_28.json),"")
ifelse(ncol(discours_2007_05_14.json)==5,rm(discours_2007_05_14.json),"")
ifelse(ncol(discours_2007_10_01.json)==5,rm(discours_2007_10_01.json),"")
ifelse(ncol(discours_2007_12_16.json)==5,rm(discours_2007_12_16.json),"")
ifelse(ncol(discours_2008_04_01.json)==5,rm(discours_2008_04_01.json),"")
ifelse(ncol(discours_2008_05_13.json)==5,rm(discours_2008_05_13.json),"")
ifelse(ncol(discours_2009_04_11.json)==5,rm(discours_2009_04_11.json),"")
ifelse(ncol(discours_2009_09_01.json)==5,rm(discours_2009_09_01.json),"")
ifelse(ncol(discours_2009_11_23.json)==5,rm(discours_2009_11_23.json),"")
ifelse(ncol(discours_2010_06_12.json)==5,rm(discours_2010_06_12.json),"")
ifelse(ncol(discours_2010_06_17.json)==5,rm(discours_2010_06_17.json),"")
ifelse(ncol(discours_2010_09_29.json)==5,rm(discours_2010_09_29.json),"")
ifelse(ncol(discours_2010_09_30.json)==5,rm(discours_2010_09_30.json),"")
ifelse(ncol(discours_2010_10_12.json)==5,rm(discours_2010_10_12.json),"")
ifelse(ncol(discours_2010_11_25.json)==5,rm(discours_2010_11_25.json),"")
ifelse(ncol(discours_2010_11_29.json)==5,rm(discours_2010_11_29.json),"")
ifelse(ncol(discours_2011_01_19.json)==5,rm(discours_2011_01_19.json),"")
ifelse(ncol(discours_2011_03_04.json)==5,rm(discours_2011_03_04.json),"")
ifelse(ncol(discours_2011_03_10.json)==5,rm(discours_2011_03_10.json),"")
ifelse(ncol(discours_2011_04_18.json)==5,rm(discours_2011_04_18.json),"")
ifelse(ncol(discours_2011_05_16.json)==5,rm(discours_2011_05_16.json),"")
ifelse(ncol(discours_2011_05_30.json)==5,rm(discours_2011_05_30.json),"")
ifelse(ncol(discours_2011_06_06.json)==5,rm(discours_2011_06_06.json),"")
ifelse(ncol(discours_2011_07_05.json)==5,rm(discours_2011_07_05.json),"")
ifelse(ncol(discours_2011_10_03.json)==5,rm(discours_2011_10_03.json),"")
ifelse(ncol(discours_2011_11_14.json)==5,rm(discours_2011_11_14.json),"")
ifelse(ncol(discours_2011_11_30.json)==5,rm(discours_2011_11_30.json),"")
ifelse(ncol(discours_2012_03_26.json)==5,rm(discours_2012_03_26.json),"")
ifelse(ncol(discours_2012_06_11.json)==5,rm(discours_2012_06_11.json),"")
ifelse(ncol(discours_2012_06_13.json)==5,rm(discours_2012_06_13.json),"")
ifelse(ncol(discours_2012_06_27.json)==5,rm(discours_2012_06_27.json),"")
ifelse(ncol(discours_2012_10_05.json)==5,rm(discours_2012_10_05.json),"")
ifelse(ncol(discours_2012_10_10.json)==5,rm(discours_2012_10_10.json),"")
ifelse(ncol(discours_2012_10_19.json)==5,rm(discours_2012_10_19.json),"")
ifelse(ncol(discours_2012_12_01.json)==5,rm(discours_2012_12_01.json),"")
ifelse(ncol(discours_2012_12_03.json)==5,rm(discours_2012_12_03.json),"")
ifelse(ncol(discours_2012_12_06.json)==5,rm(discours_2012_12_06.json),"")
ifelse(ncol(discours_2012_12_12.json)==5,rm(discours_2012_12_12.json),"")
ifelse(ncol(discours_2013_01_21.json)==5,rm(discours_2013_01_21.json),"")
ifelse(ncol(discours_2013_02_28.json)==5,rm(discours_2013_02_28.json),"")
ifelse(ncol(discours_2013_04_22.json)==5,rm(discours_2013_04_22.json),"")
ifelse(ncol(discours_2013_04_22_1.json)==5,rm(discours_2013_04_22_1.json),"")
ifelse(ncol(discours_2013_06_18.json)==5,rm(discours_2013_06_18.json),"")
ifelse(ncol(discours_2013_07_06.json)==5,rm(discours_2013_07_06.json),"")
ifelse(ncol(discours_2013_09_23.json)==5,rm(discours_2013_09_23.json),"")
ifelse(ncol(discours_2013_11_26.json)==5,rm(discours_2013_11_26.json),"")
ifelse(ncol(discours_2013_12_17.json)==5,rm(discours_2013_12_17.json),"")
ifelse(ncol(discours_2014_01_15.json)==5,rm(discours_2014_01_15.json),"")
ifelse(ncol(discours_2014_01_16.json)==5,rm(discours_2014_01_16.json),"")
ifelse(ncol(discours_2014_01_29.json)==5,rm(discours_2014_01_29.json),"")
ifelse(ncol(discours_2014_01_31.json)==5,rm(discours_2014_01_31.json),"")
ifelse(ncol(discours_2014_03_10.json)==5,rm(discours_2014_03_10.json),"")
ifelse(ncol(discours_2014_04_11.json)==5,rm(discours_2014_04_11.json),"")
ifelse(ncol(discours_2014_05_23.json)==5,rm(discours_2014_05_23.json),"")
ifelse(ncol(discours_2014_06_09.json)==5,rm(discours_2014_06_09.json),"")
ifelse(ncol(discours_2014_06_17.json)==5,rm(discours_2014_06_17.json),"")
ifelse(ncol(discours_2014_06_24.json)==5,rm(discours_2014_06_24.json),"")
ifelse(ncol(discours_2014_07_08.json)==5,rm(discours_2014_07_08.json),"")
ifelse(ncol(discours_2014_10_22.json)==5,rm(discours_2014_10_22.json),"")
ifelse(ncol(discours_2014_11_25.json)==5,rm(discours_2014_11_25.json),"")
ifelse(ncol(discours_2015_01_20.json)==5,rm(discours_2015_01_20.json),"")
ifelse(ncol(discours_2015_03_13.json)==5,rm(discours_2015_03_13.json),"")
ifelse(ncol(discours_2015_03_23.json)==5,rm(discours_2015_03_23.json),"")
ifelse(ncol(discours_2015_04_20_1.json)==5,rm(discours_2015_04_20_1.json),"")
ifelse(ncol(discours_2015_05_26.json)==5,rm(discours_2015_05_26.json),"")
ifelse(ncol(discours_2015_07_07.json)==5,rm(discours_2015_07_07.json),"")
ifelse(ncol(discours_2015_09_14.json)==5,rm(discours_2015_09_14.json),"")
ifelse(ncol(discours_2015_09_22.json)==5,rm(discours_2015_09_22.json),"")
ifelse(ncol(discours_2015_09_28.json)==5,rm(discours_2015_09_28.json),"")
ifelse(ncol(discours_2015_11_30.json)==5,rm(discours_2015_11_30.json),"")
ifelse(ncol(discours_2015_12_16.json)==5,rm(discours_2015_12_16.json),"")
ifelse(ncol(discours_2016_01_12.json)==5,rm(discours_2016_01_12.json),"")
ifelse(ncol(discours_2016_01_15.json)==5,rm(discours_2016_01_15.json),"")
ifelse(ncol(discours_2016_01_18.json)==5,rm(discours_2016_01_18.json),"")
ifelse(ncol(discours_2016_01_18_1.json)==5,rm(discours_2016_01_18_1.json),"")
ifelse(ncol(discours_2016_01_19.json)==5,rm(discours_2016_01_19.json),"")
ifelse(ncol(discours_2016_02_02.json)==5,rm(discours_2016_02_02.json),"")
ifelse(ncol(discours_2016_03_14.json)==5,rm(discours_2016_03_14.json),"")
ifelse(ncol(discours_2016_03_21.json)==5,rm(discours_2016_03_21.json),"")
ifelse(ncol(discours_2016_03_22.json)==5,rm(discours_2016_03_22.json),"")
ifelse(ncol(discours_2016_04_11.json)==5,rm(discours_2016_04_11.json),"")
ifelse(ncol(discours_2016_04_18.json)==5,rm(discours_2016_04_18.json),"")
ifelse(ncol(discours_2016_04_28.json)==5,rm(discours_2016_04_28.json),"")
ifelse(ncol(discours_2016_05_23.json)==5,rm(discours_2016_05_23.json),"")
ifelse(ncol(discours_2016_05_23_1.json)==5,rm(discours_2016_05_23_1.json),"")
ifelse(ncol(discours_2016_05_26.json)==5,rm(discours_2016_05_26.json),"")
ifelse(ncol(discours_2016_05_30.json)==5,rm(discours_2016_05_30.json),"")
ifelse(ncol(discours_2016_06_07.json)==5,rm(discours_2016_06_07.json),"")
ifelse(ncol(discours_2016_06_08.json)==5,rm(discours_2016_06_08.json),"")
ifelse(ncol(discours_2016_06_16.json)==5,rm(discours_2016_06_16.json),"")
ifelse(ncol(discours_2016_06_20.json)==5,rm(discours_2016_06_20.json),"")
ifelse(ncol(discours_2016_06_24.json)==5,rm(discours_2016_06_24.json),"")
ifelse(ncol(discours_2016_08_31.json)==5,rm(discours_2016_08_31.json),"")
ifelse(ncol(discours_2016_09_16.json)==5,rm(discours_2016_09_16.json),"")
ifelse(ncol(discours_2016_09_23.json)==5,rm(discours_2016_09_23.json),"")
ifelse(ncol(discours_2016_09_28.json)==5,rm(discours_2016_09_28.json),"")
ifelse(ncol(discours_2016_10_14_1.json)==5,rm(discours_2016_10_14_1.json),"")
ifelse(ncol(discours_2016_11_04.json)==5,rm(discours_2016_11_04.json),"")
ifelse(ncol(discours_2016_11_21.json)==5,rm(discours_2016_11_21.json),"")
ifelse(ncol(discours_2016_11_25.json)==5,rm(discours_2016_11_25.json),"")
ifelse(ncol(discours_2016_11_29.json)==5,rm(discours_2016_11_29.json),"")
ifelse(ncol(discours_2016_12_05.json)==5,rm(discours_2016_12_05.json),"")
ifelse(ncol(discours_2016_12_06.json)==5,rm(discours_2016_12_06.json),"")
ifelse(ncol(discours_2017_01_06.json)==5,rm(discours_2017_01_06.json),"")
ifelse(ncol(discours_2017_01_13.json)==5,rm(discours_2017_01_13.json),"")
ifelse(ncol(discours_2017_01_16.json)==5,rm(discours_2017_01_16.json),"")
ifelse(ncol(discours_2017_01_24.json)==5,rm(discours_2017_01_24.json),"")
ifelse(ncol(discours_2017_01_25.json)==5,rm(discours_2017_01_25.json),"")
ifelse(ncol(discours_2017_01_26.json)==5,rm(discours_2017_01_26.json),"")
ifelse(ncol(discours_2017_01_31.json)==5,rm(discours_2017_01_31.json),"")
ifelse(ncol(discours_2017_02_01.json)==5,rm(discours_2017_02_01.json),"")
ifelse(ncol(discours_2017_02_07_2.json)==5,rm(discours_2017_02_07_2.json),"")
ifelse(ncol(discours_2017_03_21.json)==5,rm(discours_2017_03_21.json),"")
ifelse(ncol(discours_2017_03_22.json)==5,rm(discours_2017_03_22.json),"")
ifelse(ncol(discours_2017_04_19.json)==5,rm(discours_2017_04_19.json),"")
ifelse(ncol(discours_2017_05_04.json)==5,rm(discours_2017_05_04.json),"")
ifelse(ncol(discours_2017_05_24.json)==5,rm(discours_2017_05_24.json),"")
ifelse(ncol(discours_2017_05_29.json)==5,rm(discours_2017_05_29.json),"")
ifelse(ncol(discours_2017_06_01.json)==5,rm(discours_2017_06_01.json),"")
ifelse(ncol(discours_2017_06_16.json)==5,rm(discours_2017_06_16.json),"")
ifelse(ncol(discours_2017_06_22.json)==5,rm(discours_2017_06_22.json),"")
ifelse(ncol(discours_2017_07_09.json)==5,rm(discours_2017_07_09.json),"")
ifelse(ncol(discours_2017_10_06.json)==5,rm(discours_2017_10_06.json),"")
ifelse(ncol(discours_2017_10_20.json)==5,rm(discours_2017_10_20.json),"")
ifelse(ncol(discours_2017_11_06.json)==5,rm(discours_2017_11_06.json),"")
ifelse(ncol(discours_2017_11_09.json)==5,rm(discours_2017_11_09.json),"")
ifelse(ncol(discours_2017_11_16.json)==5,rm(discours_2017_11_16.json),"")
ifelse(ncol(discours_2017_11_22.json)==5,rm(discours_2017_11_22.json),"")
ifelse(ncol(discours_2017_11_23.json)==5,rm(discours_2017_11_23.json),"")
ifelse(ncol(discours_2017_11_23_1.json)==5,rm(discours_2017_11_23_1.json),"")
ifelse(ncol(discours_2017_12_01.json)==5,rm(discours_2017_12_01.json),"")
ifelse(ncol(discours_2017_12_04.json)==5,rm(discours_2017_12_04.json),"")
ifelse(ncol(discours_2017_12_12.json)==5,rm(discours_2017_12_12.json),"")
ifelse(ncol(discours_2017_12_21.json)==5,rm(discours_2017_12_21.json),"")
ifelse(ncol(discours_2018_01_22.json)==5,rm(discours_2018_01_22.json),"")
ifelse(ncol(discours_2018_02_02.json)==5,rm(discours_2018_02_02.json),"")
ifelse(ncol(discours_2018_02_15.json)==5,rm(discours_2018_02_15.json),"")
ifelse(ncol(discours_2018_03_14.json)==5,rm(discours_2018_03_14.json),"")
ifelse(ncol(discours_2018_04_06.json)==5,rm(discours_2018_04_06.json),"")
ifelse(ncol(discours_2018_04_18.json)==5,rm(discours_2018_04_18.json),"")
ifelse(ncol(discours_2018_04_24.json)==5,rm(discours_2018_04_24.json),"")
ifelse(ncol(discours_2018_05_28.json)==5,rm(discours_2018_05_28.json),"")
ifelse(ncol(discours_2018_06_08.json)==5,rm(discours_2018_06_08.json),"")
ifelse(ncol(discours_2018_06_21.json)==5,rm(discours_2018_06_21.json),"")
ifelse(ncol(discours_2018_07_11.json)==5,rm(discours_2018_07_11.json),"")
ifelse(ncol(discours_2018_09_18.json)==5,rm(discours_2018_09_18.json),"")
ifelse(ncol(discours_2018_10_14.json)==5,rm(discours_2018_10_14.json),"")
ifelse(ncol(discours_2018_10_25.json)==5,rm(discours_2018_10_25.json),"")
ifelse(ncol(discours_2018_10_26.json)==5,rm(discours_2018_10_26.json),"")
ifelse(ncol(discours_2018_11_02.json)==5,rm(discours_2018_11_02.json),"")
ifelse(ncol(discours_2018_11_14.json)==5,rm(discours_2018_11_14.json),"")
ifelse(ncol(discours_2018_11_19.json)==5,rm(discours_2018_11_19.json),"")
ifelse(ncol(discours_2018_11_23.json)==5,rm(discours_2018_11_23.json),"")
ifelse(ncol(discours_2018_11_28.json)==5,rm(discours_2018_11_28.json),"")
ifelse(ncol(discours_2018_11_29.json)==5,rm(discours_2018_11_29.json),"")
ifelse(ncol(discours_2018_12_04.json)==5,rm(discours_2018_12_04.json),"")
ifelse(ncol(discours_2019_01_16.json)==5,rm(discours_2019_01_16.json),"")
ifelse(ncol(discours_2019_01_25_1.json)==5,rm(discours_2019_01_25_1.json),"")
ifelse(ncol(discours_2019_02_22.json)==5,rm(discours_2019_02_22.json),"")
ifelse(ncol(discours_2019_02_28.json)==5,rm(discours_2019_02_28.json),"")
ifelse(ncol(discours_2019_03_26.json)==5,rm(discours_2019_03_26.json),"")
ifelse(ncol(discours_2019_03_28.json)==5,rm(discours_2019_03_28.json),"")
ifelse(ncol(discours_2019_04_05.json)==5,rm(discours_2019_04_05.json),"")
ifelse(ncol(discours_2019_04_17.json)==5,rm(discours_2019_04_17.json),"")
ifelse(ncol(discours_2019_05_16.json)==5,rm(discours_2019_05_16.json),"")
ifelse(ncol(discours_2019_05_28.json)==5,rm(discours_2019_05_28.json),"")
ifelse(ncol(discours_2019_05_28_1.json)==5,rm(discours_2019_05_28_1.json),"")
ifelse(ncol(discours_2019_06_21.json)==5,rm(discours_2019_06_21.json),"")
ifelse(ncol(discours_2019_07_16.json)==5,rm(discours_2019_07_16.json),"")
ifelse(ncol(discours_2019_09_17.json)==5,rm(discours_2019_09_17.json),"")
ifelse(ncol(discours_2019_09_18.json)==5,rm(discours_2019_09_18.json),"")
ifelse(ncol(discours_2019_09_24.json)==5,rm(discours_2019_09_24.json),"")
ifelse(ncol(discours_2019_09_24_1.json)==5,rm(discours_2019_09_24_1.json),"")
ifelse(ncol(discours_2019_09_26.json)==5,rm(discours_2019_09_26.json),"")
ifelse(ncol(discours_2019_10_11.json)==5,rm(discours_2019_10_11.json),"")
ifelse(ncol(discours_2019_10_16.json)==5,rm(discours_2019_10_16.json),"")
ifelse(ncol(discours_2019_10_17.json)==5,rm(discours_2019_10_17.json),"")
ifelse(ncol(discours_2019_10_18.json)==5,rm(discours_2019_10_18.json),"")
ifelse(ncol(discours_2019_10_25.json)==5,rm(discours_2019_10_25.json),"")
ifelse(ncol(discours_2019_11_14.json)==5,rm(discours_2019_11_14.json),"")
ifelse(ncol(discours_2019_11_27.json)==5,rm(discours_2019_11_27.json),"")
ifelse(ncol(discours_2019_11_28.json)==5,rm(discours_2019_11_28.json),"")
ifelse(ncol(discours_2019_11_28_1.json)==5,rm(discours_2019_11_28_1.json),"")
ifelse(ncol(discours_2019_12_04.json)==5,rm(discours_2019_12_04.json),"")
ifelse(ncol(discours_2020_01_09.json)==5,rm(discours_2020_01_09.json),"")
ifelse(ncol(discours_2020_01_14.json)==5,rm(discours_2020_01_14.json),"")
ifelse(ncol(discours_2020_01_15.json)==5,rm(discours_2020_01_15.json),"")
ifelse(ncol(discours_2020_02_06.json)==5,rm(discours_2020_02_06.json),"")
ifelse(ncol(discours_2020_03_03.json)==5,rm(discours_2020_03_03.json),"")
ifelse(ncol(discours_2020_03_09.json)==5,rm(discours_2020_03_09.json),"")
ifelse(ncol(discours_2020_05_15_1.json)==5,rm(discours_2020_05_15_1.json),"")
ifelse(ncol(discours_2020_06_16.json)==5,rm(discours_2020_06_16.json),"")



ifelse(ncol(discours_1999_01_02.json)==4,rm(discours_1999_01_02.json),"")
ifelse(ncol(discours_1999_02_22.json)==4,rm(discours_1999_02_22.json),"")
ifelse(ncol(discours_1999_03_16.json)==4,rm(discours_1999_03_16.json),"")
ifelse(ncol(discours_1999_03_30.json)==4,rm(discours_1999_03_30.json),"")
ifelse(ncol(discours_1999_04_28.json)==4,rm(discours_1999_04_28.json),"")
ifelse(ncol(discours_1999_09_28.json)==4,rm(discours_1999_09_28.json),"")
ifelse(ncol(discours_1999_10_29.json)==4,rm(discours_1999_10_29.json),"")
ifelse(ncol(discours_2000_02_28.json)==4,rm(discours_2000_02_28.json),"")
ifelse(ncol(discours_2000_04_05.json)==4,rm(discours_2000_04_05.json),"")
ifelse(ncol(discours_2000_06_04.json)==4,rm(discours_2000_06_04.json),"")
ifelse(ncol(discours_2000_06_15.json)==4,rm(discours_2000_06_15.json),"")
ifelse(ncol(discours_2000_09_28.json)==4,rm(discours_2000_09_28.json),"")
ifelse(ncol(discours_2000_10_10.json)==4,rm(discours_2000_10_10.json),"")
ifelse(ncol(discours_2000_11_28.json)==4,rm(discours_2000_11_28.json),"")
ifelse(ncol(discours_2000_12_20.json)==4,rm(discours_2000_12_20.json),"")
ifelse(ncol(discours_2001_01_06.json)==4,rm(discours_2001_01_06.json),"")
ifelse(ncol(discours_2001_02_21.json)==4,rm(discours_2001_02_21.json),"")
ifelse(ncol(discours_2001_04_17.json)==4,rm(discours_2001_04_17.json),"")
ifelse(ncol(discours_2001_04_30.json)==4,rm(discours_2001_04_30.json),"")
ifelse(ncol(discours_2001_05_11.json)==4,rm(discours_2001_05_11.json),"")
ifelse(ncol(discours_2001_05_16.json)==4,rm(discours_2001_05_16.json),"")
ifelse(ncol(discours_2001_05_30.json)==4,rm(discours_2001_05_30.json),"")
ifelse(ncol(discours_2001_06_04.json)==4,rm(discours_2001_06_04.json),"")
ifelse(ncol(discours_2001_06_15.json)==4,rm(discours_2001_06_15.json),"")
ifelse(ncol(discours_2001_07_02.json)==4,rm(discours_2001_07_02.json),"")
ifelse(ncol(discours_2001_10_17.json)==4,rm(discours_2001_10_17.json),"")
ifelse(ncol(discours_2001_11_09.json)==4,rm(discours_2001_11_09.json),"")
ifelse(ncol(discours_2002_02_12.json)==4,rm(discours_2002_02_12.json),"")
ifelse(ncol(discours_2002_04_23.json)==4,rm(discours_2002_04_23.json),"")
ifelse(ncol(discours_2002_06_14.json)==4,rm(discours_2002_06_14.json),"")
ifelse(ncol(discours_2002_08_06.json)==4,rm(discours_2002_08_06.json),"")
ifelse(ncol(discours_2003_02_25.json)==4,rm(discours_2003_02_25.json),"")
ifelse(ncol(discours_2003_03_20.json)==4,rm(discours_2003_03_20.json),"")
ifelse(ncol(discours_2004_05_25.json)==4,rm(discours_2004_05_25.json),"")
ifelse(ncol(discours_2005_03_21.json)==4,rm(discours_2005_03_21.json),"")
ifelse(ncol(discours_2005_03_31.json)==4,rm(discours_2005_03_31.json),"")
ifelse(ncol(discours_2005_06_23.json)==4,rm(discours_2005_06_23.json),"")
ifelse(ncol(discours_2005_12_08.json)==4,rm(discours_2005_12_08.json),"")
ifelse(ncol(discours_2006_06_05.json)==4,rm(discours_2006_06_05.json),"")
ifelse(ncol(discours_2006_07_06.json)==4,rm(discours_2006_07_06.json),"")
ifelse(ncol(discours_2006_09_21.json)==4,rm(discours_2006_09_21.json),"")
ifelse(ncol(discours_2006_11_10.json)==4,rm(discours_2006_11_10.json),"")
ifelse(ncol(discours_2006_11_29.json)==4,rm(discours_2006_11_29.json),"")
ifelse(ncol(discours_2007_04_28.json)==4,rm(discours_2007_04_28.json),"")
ifelse(ncol(discours_2007_05_14.json)==4,rm(discours_2007_05_14.json),"")
ifelse(ncol(discours_2007_10_01.json)==4,rm(discours_2007_10_01.json),"")
ifelse(ncol(discours_2007_12_16.json)==4,rm(discours_2007_12_16.json),"")
ifelse(ncol(discours_2008_04_01.json)==4,rm(discours_2008_04_01.json),"")
ifelse(ncol(discours_2008_05_13.json)==4,rm(discours_2008_05_13.json),"")
ifelse(ncol(discours_2009_04_11.json)==4,rm(discours_2009_04_11.json),"")
ifelse(ncol(discours_2009_09_01.json)==4,rm(discours_2009_09_01.json),"")
ifelse(ncol(discours_2009_11_23.json)==4,rm(discours_2009_11_23.json),"")
ifelse(ncol(discours_2010_06_12.json)==4,rm(discours_2010_06_12.json),"")
ifelse(ncol(discours_2010_06_17.json)==4,rm(discours_2010_06_17.json),"")
ifelse(ncol(discours_2010_09_29.json)==4,rm(discours_2010_09_29.json),"")
ifelse(ncol(discours_2010_09_30.json)==4,rm(discours_2010_09_30.json),"")
ifelse(ncol(discours_2010_10_12.json)==4,rm(discours_2010_10_12.json),"")
ifelse(ncol(discours_2010_11_25.json)==4,rm(discours_2010_11_25.json),"")
ifelse(ncol(discours_2010_11_29.json)==4,rm(discours_2010_11_29.json),"")
ifelse(ncol(discours_2011_01_19.json)==4,rm(discours_2011_01_19.json),"")
ifelse(ncol(discours_2011_03_04.json)==4,rm(discours_2011_03_04.json),"")
ifelse(ncol(discours_2011_03_10.json)==4,rm(discours_2011_03_10.json),"")
ifelse(ncol(discours_2011_04_18.json)==4,rm(discours_2011_04_18.json),"")
ifelse(ncol(discours_2011_05_16.json)==4,rm(discours_2011_05_16.json),"")
ifelse(ncol(discours_2011_05_30.json)==4,rm(discours_2011_05_30.json),"")
ifelse(ncol(discours_2011_06_06.json)==4,rm(discours_2011_06_06.json),"")
ifelse(ncol(discours_2011_07_05.json)==4,rm(discours_2011_07_05.json),"")
ifelse(ncol(discours_2011_10_03.json)==4,rm(discours_2011_10_03.json),"")
ifelse(ncol(discours_2011_11_14.json)==4,rm(discours_2011_11_14.json),"")
ifelse(ncol(discours_2011_11_30.json)==4,rm(discours_2011_11_30.json),"")
ifelse(ncol(discours_2012_03_26.json)==4,rm(discours_2012_03_26.json),"")
ifelse(ncol(discours_2012_06_11.json)==4,rm(discours_2012_06_11.json),"")
ifelse(ncol(discours_2012_06_13.json)==4,rm(discours_2012_06_13.json),"")
ifelse(ncol(discours_2012_06_27.json)==4,rm(discours_2012_06_27.json),"")
ifelse(ncol(discours_2012_10_05.json)==4,rm(discours_2012_10_05.json),"")
ifelse(ncol(discours_2012_10_10.json)==4,rm(discours_2012_10_10.json),"")
ifelse(ncol(discours_2012_10_19.json)==4,rm(discours_2012_10_19.json),"")
ifelse(ncol(discours_2012_12_01.json)==4,rm(discours_2012_12_01.json),"")
ifelse(ncol(discours_2012_12_03.json)==4,rm(discours_2012_12_03.json),"")
ifelse(ncol(discours_2012_12_06.json)==4,rm(discours_2012_12_06.json),"")
ifelse(ncol(discours_2012_12_12.json)==4,rm(discours_2012_12_12.json),"")
ifelse(ncol(discours_2013_01_21.json)==4,rm(discours_2013_01_21.json),"")
ifelse(ncol(discours_2013_02_28.json)==4,rm(discours_2013_02_28.json),"")
ifelse(ncol(discours_2013_04_22.json)==4,rm(discours_2013_04_22.json),"")
ifelse(ncol(discours_2013_04_22_1.json)==4,rm(discours_2013_04_22_1.json),"")
ifelse(ncol(discours_2013_06_18.json)==4,rm(discours_2013_06_18.json),"")
ifelse(ncol(discours_2013_07_06.json)==4,rm(discours_2013_07_06.json),"")
ifelse(ncol(discours_2013_09_23.json)==4,rm(discours_2013_09_23.json),"")
ifelse(ncol(discours_2013_11_26.json)==4,rm(discours_2013_11_26.json),"")
ifelse(ncol(discours_2013_12_17.json)==4,rm(discours_2013_12_17.json),"")
ifelse(ncol(discours_2014_01_15.json)==4,rm(discours_2014_01_15.json),"")
ifelse(ncol(discours_2014_01_16.json)==4,rm(discours_2014_01_16.json),"")
ifelse(ncol(discours_2014_01_29.json)==4,rm(discours_2014_01_29.json),"")
ifelse(ncol(discours_2014_01_31.json)==4,rm(discours_2014_01_31.json),"")
ifelse(ncol(discours_2014_03_10.json)==4,rm(discours_2014_03_10.json),"")
ifelse(ncol(discours_2014_04_11.json)==4,rm(discours_2014_04_11.json),"")
ifelse(ncol(discours_2014_05_23.json)==4,rm(discours_2014_05_23.json),"")
ifelse(ncol(discours_2014_06_09.json)==4,rm(discours_2014_06_09.json),"")
ifelse(ncol(discours_2014_06_17.json)==4,rm(discours_2014_06_17.json),"")
ifelse(ncol(discours_2014_06_24.json)==4,rm(discours_2014_06_24.json),"")
ifelse(ncol(discours_2014_07_08.json)==4,rm(discours_2014_07_08.json),"")
ifelse(ncol(discours_2014_10_22.json)==4,rm(discours_2014_10_22.json),"")
ifelse(ncol(discours_2014_11_25.json)==4,rm(discours_2014_11_25.json),"")
ifelse(ncol(discours_2015_01_20.json)==4,rm(discours_2015_01_20.json),"")
ifelse(ncol(discours_2015_03_13.json)==4,rm(discours_2015_03_13.json),"")
ifelse(ncol(discours_2015_03_23.json)==4,rm(discours_2015_03_23.json),"")
ifelse(ncol(discours_2015_04_20_1.json)==4,rm(discours_2015_04_20_1.json),"")
ifelse(ncol(discours_2015_05_26.json)==4,rm(discours_2015_05_26.json),"")
ifelse(ncol(discours_2015_07_07.json)==4,rm(discours_2015_07_07.json),"")
ifelse(ncol(discours_2015_09_14.json)==4,rm(discours_2015_09_14.json),"")
ifelse(ncol(discours_2015_09_22.json)==4,rm(discours_2015_09_22.json),"")
ifelse(ncol(discours_2015_09_28.json)==4,rm(discours_2015_09_28.json),"")
ifelse(ncol(discours_2015_11_30.json)==4,rm(discours_2015_11_30.json),"")
ifelse(ncol(discours_2015_12_16.json)==4,rm(discours_2015_12_16.json),"")
ifelse(ncol(discours_2016_01_12.json)==4,rm(discours_2016_01_12.json),"")
ifelse(ncol(discours_2016_01_15.json)==4,rm(discours_2016_01_15.json),"")
ifelse(ncol(discours_2016_01_18.json)==4,rm(discours_2016_01_18.json),"")
ifelse(ncol(discours_2016_01_18_1.json)==4,rm(discours_2016_01_18_1.json),"")
ifelse(ncol(discours_2016_01_19.json)==4,rm(discours_2016_01_19.json),"")
ifelse(ncol(discours_2016_02_02.json)==4,rm(discours_2016_02_02.json),"")
ifelse(ncol(discours_2016_03_14.json)==4,rm(discours_2016_03_14.json),"")
ifelse(ncol(discours_2016_03_21.json)==4,rm(discours_2016_03_21.json),"")
ifelse(ncol(discours_2016_03_22.json)==4,rm(discours_2016_03_22.json),"")
ifelse(ncol(discours_2016_04_11.json)==4,rm(discours_2016_04_11.json),"")
ifelse(ncol(discours_2016_04_18.json)==4,rm(discours_2016_04_18.json),"")
ifelse(ncol(discours_2016_04_28.json)==4,rm(discours_2016_04_28.json),"")
ifelse(ncol(discours_2016_05_23.json)==4,rm(discours_2016_05_23.json),"")
ifelse(ncol(discours_2016_05_23_1.json)==4,rm(discours_2016_05_23_1.json),"")
ifelse(ncol(discours_2016_05_26.json)==4,rm(discours_2016_05_26.json),"")
ifelse(ncol(discours_2016_05_30.json)==4,rm(discours_2016_05_30.json),"")
ifelse(ncol(discours_2016_06_07.json)==4,rm(discours_2016_06_07.json),"")
ifelse(ncol(discours_2016_06_08.json)==4,rm(discours_2016_06_08.json),"")
ifelse(ncol(discours_2016_06_16.json)==4,rm(discours_2016_06_16.json),"")
ifelse(ncol(discours_2016_06_20.json)==4,rm(discours_2016_06_20.json),"")
ifelse(ncol(discours_2016_06_24.json)==4,rm(discours_2016_06_24.json),"")
ifelse(ncol(discours_2016_08_31.json)==4,rm(discours_2016_08_31.json),"")
ifelse(ncol(discours_2016_09_16.json)==4,rm(discours_2016_09_16.json),"")
ifelse(ncol(discours_2016_09_23.json)==4,rm(discours_2016_09_23.json),"")
ifelse(ncol(discours_2016_09_28.json)==4,rm(discours_2016_09_28.json),"")
ifelse(ncol(discours_2016_10_14_1.json)==4,rm(discours_2016_10_14_1.json),"")
ifelse(ncol(discours_2016_11_04.json)==4,rm(discours_2016_11_04.json),"")
ifelse(ncol(discours_2016_11_21.json)==4,rm(discours_2016_11_21.json),"")
ifelse(ncol(discours_2016_11_25.json)==4,rm(discours_2016_11_25.json),"")
ifelse(ncol(discours_2016_11_29.json)==4,rm(discours_2016_11_29.json),"")
ifelse(ncol(discours_2016_12_05.json)==4,rm(discours_2016_12_05.json),"")
ifelse(ncol(discours_2016_12_06.json)==4,rm(discours_2016_12_06.json),"")
ifelse(ncol(discours_2017_01_06.json)==4,rm(discours_2017_01_06.json),"")
ifelse(ncol(discours_2017_01_13.json)==4,rm(discours_2017_01_13.json),"")
ifelse(ncol(discours_2017_01_16.json)==4,rm(discours_2017_01_16.json),"")
ifelse(ncol(discours_2017_01_24.json)==4,rm(discours_2017_01_24.json),"")
ifelse(ncol(discours_2017_01_25.json)==4,rm(discours_2017_01_25.json),"")
ifelse(ncol(discours_2017_01_26.json)==4,rm(discours_2017_01_26.json),"")
ifelse(ncol(discours_2017_01_31.json)==4,rm(discours_2017_01_31.json),"")
ifelse(ncol(discours_2017_02_01.json)==4,rm(discours_2017_02_01.json),"")
ifelse(ncol(discours_2017_02_07_2.json)==4,rm(discours_2017_02_07_2.json),"")
ifelse(ncol(discours_2017_03_21.json)==4,rm(discours_2017_03_21.json),"")
ifelse(ncol(discours_2017_03_22.json)==4,rm(discours_2017_03_22.json),"")
ifelse(ncol(discours_2017_04_19.json)==4,rm(discours_2017_04_19.json),"")
ifelse(ncol(discours_2017_05_04.json)==4,rm(discours_2017_05_04.json),"")
ifelse(ncol(discours_2017_05_24.json)==4,rm(discours_2017_05_24.json),"")
ifelse(ncol(discours_2017_05_29.json)==4,rm(discours_2017_05_29.json),"")
ifelse(ncol(discours_2017_06_01.json)==4,rm(discours_2017_06_01.json),"")
ifelse(ncol(discours_2017_06_16.json)==4,rm(discours_2017_06_16.json),"")
ifelse(ncol(discours_2017_06_22.json)==4,rm(discours_2017_06_22.json),"")
ifelse(ncol(discours_2017_07_09.json)==4,rm(discours_2017_07_09.json),"")
ifelse(ncol(discours_2017_10_06.json)==4,rm(discours_2017_10_06.json),"")
ifelse(ncol(discours_2017_10_20.json)==4,rm(discours_2017_10_20.json),"")
ifelse(ncol(discours_2017_11_06.json)==4,rm(discours_2017_11_06.json),"")
ifelse(ncol(discours_2017_11_09.json)==4,rm(discours_2017_11_09.json),"")
ifelse(ncol(discours_2017_11_16.json)==4,rm(discours_2017_11_16.json),"")
ifelse(ncol(discours_2017_11_22.json)==4,rm(discours_2017_11_22.json),"")
ifelse(ncol(discours_2017_11_23.json)==4,rm(discours_2017_11_23.json),"")
ifelse(ncol(discours_2017_11_23_1.json)==4,rm(discours_2017_11_23_1.json),"")
ifelse(ncol(discours_2017_12_01.json)==4,rm(discours_2017_12_01.json),"")
ifelse(ncol(discours_2017_12_04.json)==4,rm(discours_2017_12_04.json),"")
ifelse(ncol(discours_2017_12_12.json)==4,rm(discours_2017_12_12.json),"")
ifelse(ncol(discours_2017_12_21.json)==4,rm(discours_2017_12_21.json),"")
ifelse(ncol(discours_2018_01_22.json)==4,rm(discours_2018_01_22.json),"")
ifelse(ncol(discours_2018_02_02.json)==4,rm(discours_2018_02_02.json),"")
ifelse(ncol(discours_2018_02_15.json)==4,rm(discours_2018_02_15.json),"")
ifelse(ncol(discours_2018_03_14.json)==4,rm(discours_2018_03_14.json),"")
ifelse(ncol(discours_2018_04_06.json)==4,rm(discours_2018_04_06.json),"")
ifelse(ncol(discours_2018_04_18.json)==4,rm(discours_2018_04_18.json),"")
ifelse(ncol(discours_2018_04_24.json)==4,rm(discours_2018_04_24.json),"")
ifelse(ncol(discours_2018_05_28.json)==4,rm(discours_2018_05_28.json),"")
ifelse(ncol(discours_2018_06_08.json)==4,rm(discours_2018_06_08.json),"")
ifelse(ncol(discours_2018_06_21.json)==4,rm(discours_2018_06_21.json),"")
ifelse(ncol(discours_2018_07_11.json)==4,rm(discours_2018_07_11.json),"")
ifelse(ncol(discours_2018_09_18.json)==4,rm(discours_2018_09_18.json),"")
ifelse(ncol(discours_2018_10_14.json)==4,rm(discours_2018_10_14.json),"")
ifelse(ncol(discours_2018_10_25.json)==4,rm(discours_2018_10_25.json),"")
ifelse(ncol(discours_2018_10_26.json)==4,rm(discours_2018_10_26.json),"")
ifelse(ncol(discours_2018_11_02.json)==4,rm(discours_2018_11_02.json),"")
ifelse(ncol(discours_2018_11_14.json)==4,rm(discours_2018_11_14.json),"")
ifelse(ncol(discours_2018_11_19.json)==4,rm(discours_2018_11_19.json),"")
ifelse(ncol(discours_2018_11_23.json)==4,rm(discours_2018_11_23.json),"")
ifelse(ncol(discours_2018_11_28.json)==4,rm(discours_2018_11_28.json),"")
ifelse(ncol(discours_2018_11_29.json)==4,rm(discours_2018_11_29.json),"")
ifelse(ncol(discours_2018_12_04.json)==4,rm(discours_2018_12_04.json),"")
ifelse(ncol(discours_2019_01_16.json)==4,rm(discours_2019_01_16.json),"")
ifelse(ncol(discours_2019_01_25_1.json)==4,rm(discours_2019_01_25_1.json),"")
ifelse(ncol(discours_2019_02_22.json)==4,rm(discours_2019_02_22.json),"")
ifelse(ncol(discours_2019_02_28.json)==4,rm(discours_2019_02_28.json),"")
ifelse(ncol(discours_2019_03_26.json)==4,rm(discours_2019_03_26.json),"")
ifelse(ncol(discours_2019_03_28.json)==4,rm(discours_2019_03_28.json),"")
ifelse(ncol(discours_2019_04_05.json)==4,rm(discours_2019_04_05.json),"")
ifelse(ncol(discours_2019_04_17.json)==4,rm(discours_2019_04_17.json),"")
ifelse(ncol(discours_2019_05_16.json)==4,rm(discours_2019_05_16.json),"")
ifelse(ncol(discours_2019_05_28.json)==4,rm(discours_2019_05_28.json),"")
ifelse(ncol(discours_2019_05_28_1.json)==4,rm(discours_2019_05_28_1.json),"")
ifelse(ncol(discours_2019_06_21.json)==4,rm(discours_2019_06_21.json),"")
ifelse(ncol(discours_2019_07_16.json)==4,rm(discours_2019_07_16.json),"")
ifelse(ncol(discours_2019_09_17.json)==4,rm(discours_2019_09_17.json),"")
ifelse(ncol(discours_2019_09_18.json)==4,rm(discours_2019_09_18.json),"")
ifelse(ncol(discours_2019_09_24.json)==4,rm(discours_2019_09_24.json),"")
ifelse(ncol(discours_2019_09_24_1.json)==4,rm(discours_2019_09_24_1.json),"")
ifelse(ncol(discours_2019_09_26.json)==4,rm(discours_2019_09_26.json),"")
ifelse(ncol(discours_2019_10_11.json)==4,rm(discours_2019_10_11.json),"")
ifelse(ncol(discours_2019_10_16.json)==4,rm(discours_2019_10_16.json),"")
ifelse(ncol(discours_2019_10_17.json)==4,rm(discours_2019_10_17.json),"")
ifelse(ncol(discours_2019_10_18.json)==4,rm(discours_2019_10_18.json),"")
ifelse(ncol(discours_2019_10_25.json)==4,rm(discours_2019_10_25.json),"")
ifelse(ncol(discours_2019_11_14.json)==4,rm(discours_2019_11_14.json),"")
ifelse(ncol(discours_2019_11_27.json)==4,rm(discours_2019_11_27.json),"")
ifelse(ncol(discours_2019_11_28.json)==4,rm(discours_2019_11_28.json),"")
ifelse(ncol(discours_2019_11_28_1.json)==4,rm(discours_2019_11_28_1.json),"")
ifelse(ncol(discours_2019_12_04.json)==4,rm(discours_2019_12_04.json),"")
ifelse(ncol(discours_2020_01_09.json)==4,rm(discours_2020_01_09.json),"")
ifelse(ncol(discours_2020_01_14.json)==4,rm(discours_2020_01_14.json),"")
ifelse(ncol(discours_2020_01_15.json)==4,rm(discours_2020_01_15.json),"")
ifelse(ncol(discours_2020_02_06.json)==4,rm(discours_2020_02_06.json),"")
ifelse(ncol(discours_2020_03_03.json)==4,rm(discours_2020_03_03.json),"")
ifelse(ncol(discours_2020_03_09.json)==4,rm(discours_2020_03_09.json),"")
ifelse(ncol(discours_2020_05_15_1.json)==4,rm(discours_2020_05_15_1.json),"")
ifelse(ncol(discours_2020_06_16.json)==4,rm(discours_2020_06_16.json),"")



Master_4 <- do.call(rbind,mget(ls(pattern = ".json")))

Master_5 <- do.call(rbind, mget(ls(pattern = ".json")))

Master_6 <- do.call(rbind,mget(ls(pattern = ".json")))



colnames(Master_4)
colnames(Master_5)
colnames(Master_6)

colnames(Master_4)[3]<- c("TEXT")
colnames(Master_4)[2]<- c("DATE")
colnames(Master_4)[4]<- c("AUTHOR")
Master_4$TITLE <- paste("")

Master_4$section <- NULL

Master_5$AUTHOR <- c("")
Master_5$URL <- NULL
Master_5$SECTION <- NULL


Master_6$URL <- NULL
Master_6$SECTION <- NULL


Master_Disourse_BF <- rbind(Master_4, Master_5, Master_6)

#write.csv(Master_Disourse_BF, file = "Master_Disourse_BF.csv")

Var_4 <- as.data.frame(ls(all.names = TRUE))

Master_4 <- rbind(discours_1999_04_28.json,
discours_1999_09_28.json, 
discours_2000_02_28.json,
discours_2000_06_04.json,
discours_2000_10_10.json,
discours_2000_11_28.json,
discours_2001_02_21.json,
discours_2001_04_17.json,
discours_2001_04_30.json,
discours_2001_05_11.json,
discours_2001_05_16.json,
discours_2001_06_04.json,
discours_2001_06_15.json,
discours_2001_07_02.json,
discours_2001_10_17.json,
discours_2002_04_23.json,
discours_2002_06_14.json,
discours_2002_08_06.json,
discours_2003_02_25.json,
discours_2003_03_20.json,
discours_2009_11_23.json,
discours_2010_06_12.json,
discours_2014_04_11.json,
discours_2014_10_22.json,
discours_2014_11_25.json) 




######
###### Start over with five columns files
######


ifelse(ncol(discours_1999_01_02.json)==4,rm(discours_1999_01_02.json),"")
ifelse(ncol(discours_1999_02_22.json)==4,rm(discours_1999_02_22.json),"")
ifelse(ncol(discours_1999_03_16.json)==4,rm(discours_1999_03_16.json),"")
ifelse(ncol(discours_1999_03_30.json)==4,rm(discours_1999_03_30.json),"")
ifelse(ncol(discours_1999_04_28.json)==4,rm(discours_1999_04_28.json),"")
ifelse(ncol(discours_1999_09_28.json)==4,rm(discours_1999_09_28.json),"")
ifelse(ncol(discours_1999_10_29.json)==4,rm(discours_1999_10_29.json),"")
ifelse(ncol(discours_2000_02_28.json)==4,rm(discours_2000_02_28.json),"")
ifelse(ncol(discours_2000_04_04.json)==4,rm(discours_2000_04_04.json),"")
ifelse(ncol(discours_2000_06_04.json)==4,rm(discours_2000_06_04.json),"")
ifelse(ncol(discours_2000_06_14.json)==4,rm(discours_2000_06_14.json),"")
ifelse(ncol(discours_2000_09_28.json)==4,rm(discours_2000_09_28.json),"")
ifelse(ncol(discours_2000_10_10.json)==4,rm(discours_2000_10_10.json),"")
ifelse(ncol(discours_2000_11_28.json)==4,rm(discours_2000_11_28.json),"")
ifelse(ncol(discours_2000_12_20.json)==4,rm(discours_2000_12_20.json),"")
ifelse(ncol(discours_2001_01_06.json)==4,rm(discours_2001_01_06.json),"")
ifelse(ncol(discours_2001_02_21.json)==4,rm(discours_2001_02_21.json),"")
ifelse(ncol(discours_2001_04_17.json)==4,rm(discours_2001_04_17.json),"")
ifelse(ncol(discours_2001_04_30.json)==4,rm(discours_2001_04_30.json),"")
ifelse(ncol(discours_2001_04_11.json)==4,rm(discours_2001_04_11.json),"")
ifelse(ncol(discours_2001_04_16.json)==4,rm(discours_2001_04_16.json),"")
ifelse(ncol(discours_2001_04_30.json)==4,rm(discours_2001_04_30.json),"")
ifelse(ncol(discours_2001_06_04.json)==4,rm(discours_2001_06_04.json),"")
ifelse(ncol(discours_2001_06_14.json)==4,rm(discours_2001_06_14.json),"")
ifelse(ncol(discours_2001_07_02.json)==4,rm(discours_2001_07_02.json),"")
ifelse(ncol(discours_2001_10_17.json)==4,rm(discours_2001_10_17.json),"")
ifelse(ncol(discours_2001_11_09.json)==4,rm(discours_2001_11_09.json),"")
ifelse(ncol(discours_2002_02_12.json)==4,rm(discours_2002_02_12.json),"")
ifelse(ncol(discours_2002_04_23.json)==4,rm(discours_2002_04_23.json),"")
ifelse(ncol(discours_2002_06_14.json)==4,rm(discours_2002_06_14.json),"")
ifelse(ncol(discours_2002_08_06.json)==4,rm(discours_2002_08_06.json),"")
ifelse(ncol(discours_2003_02_24.json)==4,rm(discours_2003_02_24.json),"")
ifelse(ncol(discours_2003_03_20.json)==4,rm(discours_2003_03_20.json),"")
ifelse(ncol(discours_2004_04_24.json)==4,rm(discours_2004_04_24.json),"")
ifelse(ncol(discours_2004_03_21.json)==4,rm(discours_2004_03_21.json),"")
ifelse(ncol(discours_2004_03_31.json)==4,rm(discours_2004_03_31.json),"")
ifelse(ncol(discours_2004_06_23.json)==4,rm(discours_2004_06_23.json),"")
ifelse(ncol(discours_2004_12_08.json)==4,rm(discours_2004_12_08.json),"")
ifelse(ncol(discours_2006_06_04.json)==4,rm(discours_2006_06_04.json),"")
ifelse(ncol(discours_2006_07_06.json)==4,rm(discours_2006_07_06.json),"")
ifelse(ncol(discours_2006_09_21.json)==4,rm(discours_2006_09_21.json),"")
ifelse(ncol(discours_2006_11_10.json)==4,rm(discours_2006_11_10.json),"")
ifelse(ncol(discours_2006_11_29.json)==4,rm(discours_2006_11_29.json),"")
ifelse(ncol(discours_2007_04_28.json)==4,rm(discours_2007_04_28.json),"")
ifelse(ncol(discours_2007_04_14.json)==4,rm(discours_2007_04_14.json),"")
ifelse(ncol(discours_2007_10_01.json)==4,rm(discours_2007_10_01.json),"")
ifelse(ncol(discours_2007_12_16.json)==4,rm(discours_2007_12_16.json),"")
ifelse(ncol(discours_2008_04_01.json)==4,rm(discours_2008_04_01.json),"")
ifelse(ncol(discours_2008_04_13.json)==4,rm(discours_2008_04_13.json),"")
ifelse(ncol(discours_2009_04_11.json)==4,rm(discours_2009_04_11.json),"")
ifelse(ncol(discours_2009_09_01.json)==4,rm(discours_2009_09_01.json),"")
ifelse(ncol(discours_2009_11_23.json)==4,rm(discours_2009_11_23.json),"")
ifelse(ncol(discours_2010_06_12.json)==4,rm(discours_2010_06_12.json),"")
ifelse(ncol(discours_2010_06_17.json)==4,rm(discours_2010_06_17.json),"")
ifelse(ncol(discours_2010_09_29.json)==4,rm(discours_2010_09_29.json),"")
ifelse(ncol(discours_2010_09_30.json)==4,rm(discours_2010_09_30.json),"")
ifelse(ncol(discours_2010_10_12.json)==4,rm(discours_2010_10_12.json),"")
ifelse(ncol(discours_2010_11_24.json)==4,rm(discours_2010_11_24.json),"")
ifelse(ncol(discours_2010_11_29.json)==4,rm(discours_2010_11_29.json),"")
ifelse(ncol(discours_2011_01_19.json)==4,rm(discours_2011_01_19.json),"")
ifelse(ncol(discours_2011_03_04.json)==4,rm(discours_2011_03_04.json),"")
ifelse(ncol(discours_2011_03_10.json)==4,rm(discours_2011_03_10.json),"")
ifelse(ncol(discours_2011_04_18.json)==4,rm(discours_2011_04_18.json),"")
ifelse(ncol(discours_2011_04_16.json)==4,rm(discours_2011_04_16.json),"")
ifelse(ncol(discours_2011_04_30.json)==4,rm(discours_2011_04_30.json),"")
ifelse(ncol(discours_2011_06_06.json)==4,rm(discours_2011_06_06.json),"")
ifelse(ncol(discours_2011_07_04.json)==4,rm(discours_2011_07_04.json),"")
ifelse(ncol(discours_2011_10_03.json)==4,rm(discours_2011_10_03.json),"")
ifelse(ncol(discours_2011_11_14.json)==4,rm(discours_2011_11_14.json),"")
ifelse(ncol(discours_2011_11_30.json)==4,rm(discours_2011_11_30.json),"")
ifelse(ncol(discours_2012_03_26.json)==4,rm(discours_2012_03_26.json),"")
ifelse(ncol(discours_2012_06_11.json)==4,rm(discours_2012_06_11.json),"")
ifelse(ncol(discours_2012_06_13.json)==4,rm(discours_2012_06_13.json),"")
ifelse(ncol(discours_2012_06_27.json)==4,rm(discours_2012_06_27.json),"")
ifelse(ncol(discours_2012_10_04.json)==4,rm(discours_2012_10_04.json),"")
ifelse(ncol(discours_2012_10_10.json)==4,rm(discours_2012_10_10.json),"")
ifelse(ncol(discours_2012_10_19.json)==4,rm(discours_2012_10_19.json),"")
ifelse(ncol(discours_2012_12_01.json)==4,rm(discours_2012_12_01.json),"")
ifelse(ncol(discours_2012_12_03.json)==4,rm(discours_2012_12_03.json),"")
ifelse(ncol(discours_2012_12_06.json)==4,rm(discours_2012_12_06.json),"")
ifelse(ncol(discours_2012_12_12.json)==4,rm(discours_2012_12_12.json),"")
ifelse(ncol(discours_2013_01_21.json)==4,rm(discours_2013_01_21.json),"")
ifelse(ncol(discours_2013_02_28.json)==4,rm(discours_2013_02_28.json),"")
ifelse(ncol(discours_2013_04_22.json)==4,rm(discours_2013_04_22.json),"")
ifelse(ncol(discours_2013_04_22_1.json)==4,rm(discours_2013_04_22_1.json),"")
ifelse(ncol(discours_2013_06_18.json)==4,rm(discours_2013_06_18.json),"")
ifelse(ncol(discours_2013_07_06.json)==4,rm(discours_2013_07_06.json),"")
ifelse(ncol(discours_2013_09_23.json)==4,rm(discours_2013_09_23.json),"")
ifelse(ncol(discours_2013_11_26.json)==4,rm(discours_2013_11_26.json),"")
ifelse(ncol(discours_2013_12_17.json)==4,rm(discours_2013_12_17.json),"")
ifelse(ncol(discours_2014_01_14.json)==4,rm(discours_2014_01_14.json),"")
ifelse(ncol(discours_2014_01_16.json)==4,rm(discours_2014_01_16.json),"")
ifelse(ncol(discours_2014_01_29.json)==4,rm(discours_2014_01_29.json),"")
ifelse(ncol(discours_2014_01_31.json)==4,rm(discours_2014_01_31.json),"")
ifelse(ncol(discours_2014_03_10.json)==4,rm(discours_2014_03_10.json),"")
ifelse(ncol(discours_2014_04_11.json)==4,rm(discours_2014_04_11.json),"")
ifelse(ncol(discours_2014_04_23.json)==4,rm(discours_2014_04_23.json),"")
ifelse(ncol(discours_2014_06_09.json)==4,rm(discours_2014_06_09.json),"")
ifelse(ncol(discours_2014_06_17.json)==4,rm(discours_2014_06_17.json),"")
ifelse(ncol(discours_2014_06_24.json)==4,rm(discours_2014_06_24.json),"")
ifelse(ncol(discours_2014_07_08.json)==4,rm(discours_2014_07_08.json),"")
ifelse(ncol(discours_2014_10_22.json)==4,rm(discours_2014_10_22.json),"")
ifelse(ncol(discours_2014_11_24.json)==4,rm(discours_2014_11_24.json),"")
ifelse(ncol(discours_2014_01_20.json)==4,rm(discours_2014_01_20.json),"")
ifelse(ncol(discours_2014_03_13.json)==4,rm(discours_2014_03_13.json),"")
ifelse(ncol(discours_2014_03_23.json)==4,rm(discours_2014_03_23.json),"")
ifelse(ncol(discours_2014_04_20_1.json)==4,rm(discours_2014_04_20_1.json),"")
ifelse(ncol(discours_2014_04_26.json)==4,rm(discours_2014_04_26.json),"")
ifelse(ncol(discours_2014_07_07.json)==4,rm(discours_2014_07_07.json),"")
ifelse(ncol(discours_2014_09_14.json)==4,rm(discours_2014_09_14.json),"")
ifelse(ncol(discours_2014_09_22.json)==4,rm(discours_2014_09_22.json),"")
ifelse(ncol(discours_2014_09_28.json)==4,rm(discours_2014_09_28.json),"")
ifelse(ncol(discours_2014_11_30.json)==4,rm(discours_2014_11_30.json),"")
ifelse(ncol(discours_2014_12_16.json)==4,rm(discours_2014_12_16.json),"")
ifelse(ncol(discours_2016_01_12.json)==4,rm(discours_2016_01_12.json),"")
ifelse(ncol(discours_2016_01_14.json)==4,rm(discours_2016_01_14.json),"")
ifelse(ncol(discours_2016_01_18.json)==4,rm(discours_2016_01_18.json),"")
ifelse(ncol(discours_2016_01_18_1.json)==4,rm(discours_2016_01_18_1.json),"")
ifelse(ncol(discours_2016_01_19.json)==4,rm(discours_2016_01_19.json),"")
ifelse(ncol(discours_2016_02_02.json)==4,rm(discours_2016_02_02.json),"")
ifelse(ncol(discours_2016_03_14.json)==4,rm(discours_2016_03_14.json),"")
ifelse(ncol(discours_2016_03_21.json)==4,rm(discours_2016_03_21.json),"")
ifelse(ncol(discours_2016_03_22.json)==4,rm(discours_2016_03_22.json),"")
ifelse(ncol(discours_2016_04_11.json)==4,rm(discours_2016_04_11.json),"")
ifelse(ncol(discours_2016_04_18.json)==4,rm(discours_2016_04_18.json),"")
ifelse(ncol(discours_2016_04_28.json)==4,rm(discours_2016_04_28.json),"")
ifelse(ncol(discours_2016_04_23.json)==4,rm(discours_2016_04_23.json),"")
ifelse(ncol(discours_2016_04_23_1.json)==4,rm(discours_2016_04_23_1.json),"")
ifelse(ncol(discours_2016_04_26.json)==4,rm(discours_2016_04_26.json),"")
ifelse(ncol(discours_2016_04_30.json)==4,rm(discours_2016_04_30.json),"")
ifelse(ncol(discours_2016_06_07.json)==4,rm(discours_2016_06_07.json),"")
ifelse(ncol(discours_2016_06_08.json)==4,rm(discours_2016_06_08.json),"")
ifelse(ncol(discours_2016_06_16.json)==4,rm(discours_2016_06_16.json),"")
ifelse(ncol(discours_2016_06_20.json)==4,rm(discours_2016_06_20.json),"")
ifelse(ncol(discours_2016_06_24.json)==4,rm(discours_2016_06_24.json),"")
ifelse(ncol(discours_2016_08_31.json)==4,rm(discours_2016_08_31.json),"")
ifelse(ncol(discours_2016_09_16.json)==4,rm(discours_2016_09_16.json),"")
ifelse(ncol(discours_2016_09_23.json)==4,rm(discours_2016_09_23.json),"")
ifelse(ncol(discours_2016_09_28.json)==4,rm(discours_2016_09_28.json),"")
ifelse(ncol(discours_2016_10_14_1.json)==4,rm(discours_2016_10_14_1.json),"")
ifelse(ncol(discours_2016_11_04.json)==4,rm(discours_2016_11_04.json),"")
ifelse(ncol(discours_2016_11_21.json)==4,rm(discours_2016_11_21.json),"")
ifelse(ncol(discours_2016_11_24.json)==4,rm(discours_2016_11_24.json),"")
ifelse(ncol(discours_2016_11_29.json)==4,rm(discours_2016_11_29.json),"")
ifelse(ncol(discours_2016_12_04.json)==4,rm(discours_2016_12_04.json),"")
ifelse(ncol(discours_2016_12_06.json)==4,rm(discours_2016_12_06.json),"")
ifelse(ncol(discours_2017_01_06.json)==4,rm(discours_2017_01_06.json),"")
ifelse(ncol(discours_2017_01_13.json)==4,rm(discours_2017_01_13.json),"")
ifelse(ncol(discours_2017_01_16.json)==4,rm(discours_2017_01_16.json),"")
ifelse(ncol(discours_2017_01_24.json)==4,rm(discours_2017_01_24.json),"")
ifelse(ncol(discours_2017_01_24.json)==4,rm(discours_2017_01_24.json),"")
ifelse(ncol(discours_2017_01_26.json)==4,rm(discours_2017_01_26.json),"")
ifelse(ncol(discours_2017_01_31.json)==4,rm(discours_2017_01_31.json),"")
ifelse(ncol(discours_2017_02_01.json)==4,rm(discours_2017_02_01.json),"")
ifelse(ncol(discours_2017_02_07_2.json)==4,rm(discours_2017_02_07_2.json),"")
ifelse(ncol(discours_2017_03_21.json)==4,rm(discours_2017_03_21.json),"")
ifelse(ncol(discours_2017_03_22.json)==4,rm(discours_2017_03_22.json),"")
ifelse(ncol(discours_2017_04_19.json)==4,rm(discours_2017_04_19.json),"")
ifelse(ncol(discours_2017_04_04.json)==4,rm(discours_2017_04_04.json),"")
ifelse(ncol(discours_2017_04_24.json)==4,rm(discours_2017_04_24.json),"")
ifelse(ncol(discours_2017_04_29.json)==4,rm(discours_2017_04_29.json),"")
ifelse(ncol(discours_2017_06_01.json)==4,rm(discours_2017_06_01.json),"")
ifelse(ncol(discours_2017_06_16.json)==4,rm(discours_2017_06_16.json),"")
ifelse(ncol(discours_2017_06_22.json)==4,rm(discours_2017_06_22.json),"")
ifelse(ncol(discours_2017_07_09.json)==4,rm(discours_2017_07_09.json),"")
ifelse(ncol(discours_2017_10_06.json)==4,rm(discours_2017_10_06.json),"")
ifelse(ncol(discours_2017_10_20.json)==4,rm(discours_2017_10_20.json),"")
ifelse(ncol(discours_2017_11_06.json)==4,rm(discours_2017_11_06.json),"")
ifelse(ncol(discours_2017_11_09.json)==4,rm(discours_2017_11_09.json),"")
ifelse(ncol(discours_2017_11_16.json)==4,rm(discours_2017_11_16.json),"")
ifelse(ncol(discours_2017_11_22.json)==4,rm(discours_2017_11_22.json),"")
ifelse(ncol(discours_2017_11_23.json)==4,rm(discours_2017_11_23.json),"")
ifelse(ncol(discours_2017_11_23_1.json)==4,rm(discours_2017_11_23_1.json),"")
ifelse(ncol(discours_2017_12_01.json)==4,rm(discours_2017_12_01.json),"")
ifelse(ncol(discours_2017_12_04.json)==4,rm(discours_2017_12_04.json),"")
ifelse(ncol(discours_2017_12_12.json)==4,rm(discours_2017_12_12.json),"")
ifelse(ncol(discours_2017_12_21.json)==4,rm(discours_2017_12_21.json),"")
ifelse(ncol(discours_2018_01_22.json)==4,rm(discours_2018_01_22.json),"")
ifelse(ncol(discours_2018_02_02.json)==4,rm(discours_2018_02_02.json),"")
ifelse(ncol(discours_2018_02_14.json)==4,rm(discours_2018_02_14.json),"")
ifelse(ncol(discours_2018_03_14.json)==4,rm(discours_2018_03_14.json),"")
ifelse(ncol(discours_2018_04_06.json)==4,rm(discours_2018_04_06.json),"")
ifelse(ncol(discours_2018_04_18.json)==4,rm(discours_2018_04_18.json),"")
ifelse(ncol(discours_2018_04_24.json)==4,rm(discours_2018_04_24.json),"")
ifelse(ncol(discours_2018_04_28.json)==4,rm(discours_2018_04_28.json),"")
ifelse(ncol(discours_2018_06_08.json)==4,rm(discours_2018_06_08.json),"")
ifelse(ncol(discours_2018_06_21.json)==4,rm(discours_2018_06_21.json),"")
ifelse(ncol(discours_2018_07_11.json)==4,rm(discours_2018_07_11.json),"")
ifelse(ncol(discours_2018_09_18.json)==4,rm(discours_2018_09_18.json),"")
ifelse(ncol(discours_2018_10_14.json)==4,rm(discours_2018_10_14.json),"")
ifelse(ncol(discours_2018_10_24.json)==4,rm(discours_2018_10_24.json),"")
ifelse(ncol(discours_2018_10_26.json)==4,rm(discours_2018_10_26.json),"")
ifelse(ncol(discours_2018_11_02.json)==4,rm(discours_2018_11_02.json),"")
ifelse(ncol(discours_2018_11_14.json)==4,rm(discours_2018_11_14.json),"")
ifelse(ncol(discours_2018_11_19.json)==4,rm(discours_2018_11_19.json),"")
ifelse(ncol(discours_2018_11_23.json)==4,rm(discours_2018_11_23.json),"")
ifelse(ncol(discours_2018_11_28.json)==4,rm(discours_2018_11_28.json),"")
ifelse(ncol(discours_2018_11_29.json)==4,rm(discours_2018_11_29.json),"")
ifelse(ncol(discours_2018_12_04.json)==4,rm(discours_2018_12_04.json),"")
ifelse(ncol(discours_2019_01_16.json)==4,rm(discours_2019_01_16.json),"")
ifelse(ncol(discours_2019_01_24_1.json)==4,rm(discours_2019_01_24_1.json),"")
ifelse(ncol(discours_2019_02_22.json)==4,rm(discours_2019_02_22.json),"")
ifelse(ncol(discours_2019_02_28.json)==4,rm(discours_2019_02_28.json),"")
ifelse(ncol(discours_2019_03_26.json)==4,rm(discours_2019_03_26.json),"")
ifelse(ncol(discours_2019_03_28.json)==4,rm(discours_2019_03_28.json),"")
ifelse(ncol(discours_2019_04_04.json)==4,rm(discours_2019_04_04.json),"")
ifelse(ncol(discours_2019_04_17.json)==4,rm(discours_2019_04_17.json),"")
ifelse(ncol(discours_2019_04_16.json)==4,rm(discours_2019_04_16.json),"")
ifelse(ncol(discours_2019_04_28.json)==4,rm(discours_2019_04_28.json),"")
ifelse(ncol(discours_2019_04_28_1.json)==4,rm(discours_2019_04_28_1.json),"")
ifelse(ncol(discours_2019_06_21.json)==4,rm(discours_2019_06_21.json),"")
ifelse(ncol(discours_2019_07_16.json)==4,rm(discours_2019_07_16.json),"")
ifelse(ncol(discours_2019_09_17.json)==4,rm(discours_2019_09_17.json),"")
ifelse(ncol(discours_2019_09_18.json)==4,rm(discours_2019_09_18.json),"")
ifelse(ncol(discours_2019_09_24.json)==4,rm(discours_2019_09_24.json),"")
ifelse(ncol(discours_2019_09_24_1.json)==4,rm(discours_2019_09_24_1.json),"")
ifelse(ncol(discours_2019_09_26.json)==4,rm(discours_2019_09_26.json),"")
ifelse(ncol(discours_2019_10_11.json)==4,rm(discours_2019_10_11.json),"")
ifelse(ncol(discours_2019_10_16.json)==4,rm(discours_2019_10_16.json),"")
ifelse(ncol(discours_2019_10_17.json)==4,rm(discours_2019_10_17.json),"")
ifelse(ncol(discours_2019_10_18.json)==4,rm(discours_2019_10_18.json),"")
ifelse(ncol(discours_2019_10_24.json)==4,rm(discours_2019_10_24.json),"")
ifelse(ncol(discours_2019_11_14.json)==4,rm(discours_2019_11_14.json),"")
ifelse(ncol(discours_2019_11_27.json)==4,rm(discours_2019_11_27.json),"")
ifelse(ncol(discours_2019_11_28.json)==4,rm(discours_2019_11_28.json),"")
ifelse(ncol(discours_2019_11_28_1.json)==4,rm(discours_2019_11_28_1.json),"")
ifelse(ncol(discours_2019_12_04.json)==4,rm(discours_2019_12_04.json),"")
ifelse(ncol(discours_2020_01_09.json)==4,rm(discours_2020_01_09.json),"")
ifelse(ncol(discours_2020_01_14.json)==4,rm(discours_2020_01_14.json),"")
ifelse(ncol(discours_2020_01_14.json)==4,rm(discours_2020_01_14.json),"")
ifelse(ncol(discours_2020_02_06.json)==4,rm(discours_2020_02_06.json),"")
ifelse(ncol(discours_2020_03_03.json)==4,rm(discours_2020_03_03.json),"")
ifelse(ncol(discours_2020_03_09.json)==4,rm(discours_2020_03_09.json),"")
ifelse(ncol(discours_2020_04_14_1.json)==4,rm(discours_2020_04_14_1.json),"")
ifelse(ncol(discours_2020_06_16.json)==4,rm(discours_2020_06_16.json),"")




























Master <- as.data.frame(Master)

rm(discours_1999_01_02.json,
discours_1999_02_22.json,
discours_1999_03_16.json,
discours_1999_03_30.json,
discours_1999_04_28.json,
discours_1999_09_28.json,
discours_1999_10_29.json,
discours_2000_02_28.json,
discours_2000_04_05.json,
discours_2000_06_04.json,
discours_2000_06_15.json,
discours_2000_09_28.json,
discours_2000_10_10.json,
discours_2000_11_28.json,
discours_2000_12_20.json,
discours_2001_01_06.json,
discours_2001_02_21.json,
discours_2001_04_17.json,
discours_2001_04_30.json,
discours_2001_05_11.json,
discours_2001_05_16.json,
discours_2001_05_30.json,
discours_2001_06_04.json,
discours_2001_06_15.json,
discours_2001_07_02.json,
discours_2001_10_17.json,
discours_2001_11_09.json,
discours_2002_02_12.json,
discours_2002_04_23.json,
discours_2002_06_14.json,
discours_2002_08_06.json,
discours_2003_02_25.json,
discours_2003_03_20.json,
discours_2004_05_25.json,
discours_2005_03_21.json,
discours_2005_03_31.json,
discours_2005_06_23.json,
discours_2005_12_08.json,
discours_2006_06_05.json,
discours_2006_07_06.json,
discours_2006_09_21.json,
discours_2006_11_10.json,
discours_2006_11_29.json,
discours_2007_04_28.json,
discours_2007_05_14.json,
discours_2007_10_01.json,
discours_2007_12_16.json,
discours_2008_04_01.json,
discours_2008_05_13.json,
discours_2009_04_11.json,
discours_2009_09_01.json,
discours_2009_11_23.json,
discours_2010_06_12.json,
discours_2010_06_17.json,
discours_2010_09_29.json,
discours_2010_09_30.json,
discours_2010_10_12.json,
discours_2010_11_25.json,
discours_2010_11_29.json,
discours_2011_01_19.json,
discours_2011_03_04.json,
discours_2011_03_10.json,
discours_2011_04_18.json,
discours_2011_05_16.json,
discours_2011_05_30.json,
discours_2011_06_06.json,
discours_2011_07_05.json,
discours_2011_10_03.json,
discours_2011_11_14.json,
discours_2011_11_30.json,
discours_2012_03_26.json,
discours_2012_06_11.json,
discours_2012_06_13.json,
discours_2012_06_27.json,
discours_2012_10_05.json,
discours_2012_10_10.json,
discours_2012_10_19.json,
discours_2012_12_01.json,
discours_2012_12_03.json,
discours_2012_12_06.json,
discours_2012_12_12.json,
discours_2013_01_21.json,
discours_2013_02_28.json,
discours_2013_04_22.json,
discours_2013_04_22_1.json,
discours_2013_06_18.json,
discours_2013_07_06.json,
discours_2013_09_23.json,
discours_2013_11_26.json,
discours_2013_12_17.json,
discours_2014_01_15.json,
discours_2014_01_16.json,
discours_2014_01_29.json,
discours_2014_01_31.json,
discours_2014_03_10.json,
discours_2014_04_11.json,
discours_2014_05_23.json,
discours_2014_06_09.json,
discours_2014_06_17.json,
discours_2014_06_24.json,
discours_2014_07_08.json,
discours_2014_10_22.json,
discours_2014_11_25.json,
discours_2015_01_20.json,
discours_2015_03_13.json,
discours_2015_03_23.json,
discours_2015_04_20_1.json,
discours_2015_05_26.json,
discours_2015_07_07.json,
discours_2015_09_14.json,
discours_2015_09_22.json,
discours_2015_09_28.json,
discours_2015_11_30.json,
discours_2015_12_16.json,
discours_2016_01_12.json,
discours_2016_01_15.json,
discours_2016_01_18.json,
discours_2016_01_18_1.json,
discours_2016_01_19.json,
discours_2016_02_02.json,
discours_2016_03_14.json,
discours_2016_03_21.json,
discours_2016_03_22.json,
discours_2016_04_11.json,
discours_2016_04_18.json,
discours_2016_04_28.json,
discours_2016_05_23.json,
discours_2016_05_23_1.json,
discours_2016_05_26.json,
discours_2016_05_30.json,
discours_2016_06_07.json,
discours_2016_06_08.json,
discours_2016_06_16.json,
discours_2016_06_20.json,
discours_2016_06_24.json,
discours_2016_08_31.json,
discours_2016_09_16.json,
discours_2016_09_23.json,
discours_2016_09_28.json,
discours_2016_10_14_1.json,
discours_2016_11_04.json,
discours_2016_11_21.json,
discours_2016_11_25.json,
discours_2016_11_29.json,
discours_2016_12_05.json,
discours_2016_12_06.json,
discours_2017_01_06.json,
discours_2017_01_13.json,
discours_2017_01_16.json,
discours_2017_01_24.json,
discours_2017_01_25.json,
discours_2017_01_26.json,
discours_2017_01_31.json,
discours_2017_02_01.json,
discours_2017_02_07_2.json,
discours_2017_03_21.json,
discours_2017_03_22.json,
discours_2017_04_19.json,
discours_2017_05_04.json,
discours_2017_05_24.json,
discours_2017_05_29.json,
discours_2017_06_01.json,
discours_2017_06_16.json,
discours_2017_06_22.json,
discours_2017_07_09.json,
discours_2017_10_06.json,
discours_2017_10_20.json,
discours_2017_11_06.json,
discours_2017_11_09.json,
discours_2017_11_16.json,
discours_2017_11_22.json,
discours_2017_11_23.json,
discours_2017_11_23_1.json,
discours_2017_12_01.json,
discours_2017_12_04.json,
discours_2017_12_12.json,
discours_2017_12_21.json,
discours_2018_01_22.json,
discours_2018_02_02.json,
discours_2018_02_15.json,
discours_2018_03_14.json,
discours_2018_04_06.json,
discours_2018_04_18.json,
discours_2018_04_24.json,
discours_2018_05_28.json,
discours_2018_06_08.json,
discours_2018_06_21.json,
discours_2018_07_11.json,
discours_2018_09_18.json,
discours_2018_10_14.json,
discours_2018_10_25.json,
discours_2018_10_26.json,
discours_2018_11_02.json,
discours_2018_11_14.json,
discours_2018_11_19.json,
discours_2018_11_23.json,
discours_2018_11_28.json,
discours_2018_11_29.json,
discours_2018_12_04.json,
discours_2019_01_16.json,
discours_2019_01_25_1.json,
discours_2019_02_22.json,
discours_2019_02_28.json,
discours_2019_03_26.json,
discours_2019_03_28.json,
discours_2019_04_05.json,
discours_2019_04_17.json,
discours_2019_05_16.json,
discours_2019_05_28.json,
discours_2019_05_28_1.json,
discours_2019_06_21.json,
discours_2019_07_16.json,
discours_2019_09_17.json,
discours_2019_09_18.json,
discours_2019_09_24.json,
discours_2019_09_24_1.json,
discours_2019_09_26.json,
discours_2019_10_11.json,
discours_2019_10_16.json,
discours_2019_10_17.json,
discours_2019_10_18.json,
discours_2019_10_25.json,
discours_2019_11_14.json,
discours_2019_11_27.json,
discours_2019_11_28.json,
discours_2019_11_28_1.json,
discours_2019_12_04.json,
discours_2020_01_09.json,
discours_2020_01_14.json,
discours_2020_01_15.json,
discours_2020_02_06.json,
discours_2020_03_03.json,
discours_2020_03_09.json,
discours_2020_05_15_1.json,
discours_2020_06_16.json)







