
#########################################################
##
## Data Import Script
## Tone Analysis on Central Bankers
##
#############################################################

setwd("~/Interviews_BF")
library(jsonlite)
library(rjson)
library(dplyr)
#
# Importing Reported Json files
#


interviews_1999_01_11.json<- as.data.frame(t(unlist(read_json("interviews_1999_01_11.json"))))
interviews_1999_02_20.json<- as.data.frame(t(unlist(read_json("interviews_1999_02_20.json"))))
interviews_1999_03_18.json<- as.data.frame(t(unlist(read_json("interviews_1999_03_18.json"))))
interviews_1999_03_24.json<- as.data.frame(t(unlist(read_json("interviews_1999_03_24.json"))))
interviews_1999_04_11.json<- as.data.frame(t(unlist(read_json("interviews_1999_04_11.json"))))
interviews_1999_05_20.json<- as.data.frame(t(unlist(read_json("interviews_1999_05_20.json"))))
interviews_1999_05_21.json<- as.data.frame(t(unlist(read_json("interviews_1999_05_21.json"))))
interviews_1999_06_04.json<- as.data.frame(t(unlist(read_json("interviews_1999_06_04.json"))))
interviews_1999_06_24.json<- as.data.frame(t(unlist(read_json("interviews_1999_06_24.json"))))
interviews_1999_09_01.json<- as.data.frame(t(unlist(read_json("interviews_1999_09_01.json"))))
interviews_1999_09_20.json<- as.data.frame(t(unlist(read_json("interviews_1999_09_20.json"))))
interviews_1999_10_22.json<- as.data.frame(t(unlist(read_json("interviews_1999_10_22.json"))))
interviews_1999_10_28.json<- as.data.frame(t(unlist(read_json("interviews_1999_10_28.json"))))
interviews_1999_11_01.json<- as.data.frame(t(unlist(read_json("interviews_1999_11_01.json"))))
interviews_1999_12_17.json<- as.data.frame(t(unlist(read_json("interviews_1999_12_17.json"))))
interviews_2000_01_03.json<- as.data.frame(t(unlist(read_json("interviews_2000_01_03.json"))))
interviews_2000_01_06.json<- as.data.frame(t(unlist(read_json("interviews_2000_01_06.json"))))
interviews_2000_01_12.json<- as.data.frame(t(unlist(read_json("interviews_2000_01_12.json"))))
interviews_2000_01_17.json<- as.data.frame(t(unlist(read_json("interviews_2000_01_17.json"))))
interviews_2000_01_19.json<- as.data.frame(t(unlist(read_json("interviews_2000_01_19.json"))))
interviews_2000_03_15.json<- as.data.frame(t(unlist(read_json("interviews_2000_03_15.json"))))
interviews_2000_05_01.json<- as.data.frame(t(unlist(read_json("interviews_2000_05_01.json"))))
interviews_2000_06_07.json<- as.data.frame(t(unlist(read_json("interviews_2000_06_07.json"))))
interviews_2000_06_16_1.json<- as.data.frame(t(unlist(read_json("interviews_2000_06_16_1.json"))))
interviews_2000_06_30.json<- as.data.frame(t(unlist(read_json("interviews_2000_06_30.json"))))
interviews_2000_10_01.json<- as.data.frame(t(unlist(read_json("interviews_2000_10_01.json"))))
interviews_2000_11_20.json<- as.data.frame(t(unlist(read_json("interviews_2000_11_20.json"))))
interviews_2000_11_21.json<- as.data.frame(t(unlist(read_json("interviews_2000_11_21.json"))))
interviews_2000_12_04.json<- as.data.frame(t(unlist(read_json("interviews_2000_12_04.json"))))
interviews_2000_12_22.json<- as.data.frame(t(unlist(read_json("interviews_2000_12_22.json"))))
interviews_2001_01_09.json<- as.data.frame(t(unlist(read_json("interviews_2001_01_09.json"))))
interviews_2001_01_12.json<- as.data.frame(t(unlist(read_json("interviews_2001_01_12.json"))))
interviews_2001_03_09.json<- as.data.frame(t(unlist(read_json("interviews_2001_03_09.json"))))
interviews_2001_06_10.json<- as.data.frame(t(unlist(read_json("interviews_2001_06_10.json"))))
interviews_2001_07_10.json<- as.data.frame(t(unlist(read_json("interviews_2001_07_10.json"))))
interviews_2001_07_12.json<- as.data.frame(t(unlist(read_json("interviews_2001_07_12.json"))))
interviews_2001_09_28.json<- as.data.frame(t(unlist(read_json("interviews_2001_09_28.json"))))
interviews_2001_10_07.json<- as.data.frame(t(unlist(read_json("interviews_2001_10_07.json"))))
interviews_2001_11_19.json<- as.data.frame(t(unlist(read_json("interviews_2001_11_19.json"))))
interviews_2001_11_23.json<- as.data.frame(t(unlist(read_json("interviews_2001_11_23.json"))))
interviews_2001_11_24.json<- as.data.frame(t(unlist(read_json("interviews_2001_11_24.json"))))
interviews_2001_12_14.json<- as.data.frame(t(unlist(read_json("interviews_2001_12_14.json"))))
interviews_2003_03_11.json<- as.data.frame(t(unlist(read_json("interviews_2003_03_11.json"))))
interviews_2003_11_09.json<- as.data.frame(t(unlist(read_json("interviews_2003_11_09.json"))))
interviews_2004_01_02.json<- as.data.frame(t(unlist(read_json("interviews_2004_01_02.json"))))
interviews_2004_01_16.json<- as.data.frame(t(unlist(read_json("interviews_2004_01_16.json"))))
interviews_2004_03_02.json<- as.data.frame(t(unlist(read_json("interviews_2004_03_02.json"))))
interviews_2004_03_03.json<- as.data.frame(t(unlist(read_json("interviews_2004_03_03.json"))))
interviews_2004_09_27.json<- as.data.frame(t(unlist(read_json("interviews_2004_09_27.json"))))
interviews_2004_10_09.json<- as.data.frame(t(unlist(read_json("interviews_2004_10_09.json"))))
interviews_2004_11_16.json<- as.data.frame(t(unlist(read_json("interviews_2004_11_16.json"))))
interviews_2004_12_10.json<- as.data.frame(t(unlist(read_json("interviews_2004_12_10.json"))))
interviews_2005_03_01.json<- as.data.frame(t(unlist(read_json("interviews_2005_03_01.json"))))
interviews_2005_03_30.json<- as.data.frame(t(unlist(read_json("interviews_2005_03_30.json"))))
interviews_2005_11_15.json<- as.data.frame(t(unlist(read_json("interviews_2005_11_15.json"))))
interviews_2006_01_10.json<- as.data.frame(t(unlist(read_json("interviews_2006_01_10.json"))))
interviews_2006_01_31.json<- as.data.frame(t(unlist(read_json("interviews_2006_01_31.json"))))
interviews_2006_05_24.json<- as.data.frame(t(unlist(read_json("interviews_2006_05_24.json"))))
interviews_2006_07_19.json<- as.data.frame(t(unlist(read_json("interviews_2006_07_19.json"))))
interviews_2006_08_03.json<- as.data.frame(t(unlist(read_json("interviews_2006_08_03.json"))))
interviews_2006_09_25.json<- as.data.frame(t(unlist(read_json("interviews_2006_09_25.json"))))
interviews_2006_10_10.json<- as.data.frame(t(unlist(read_json("interviews_2006_10_10.json"))))
interviews_2007_01_22.json<- as.data.frame(t(unlist(read_json("interviews_2007_01_22.json"))))
interviews_2007_02_02.json<- as.data.frame(t(unlist(read_json("interviews_2007_02_02.json"))))
interviews_2007_12_18.json<- as.data.frame(t(unlist(read_json("interviews_2007_12_18.json"))))
interviews_2008_02_17.json<- as.data.frame(t(unlist(read_json("interviews_2008_02_17.json"))))
interviews_2008_12_10.json<- as.data.frame(t(unlist(read_json("interviews_2008_12_10.json"))))
interviews_2009_03_12.json<- as.data.frame(t(unlist(read_json("interviews_2009_03_12.json"))))
interviews_2009_04_08.json<- as.data.frame(t(unlist(read_json("interviews_2009_04_08.json"))))
interviews_2009_04_21.json<- as.data.frame(t(unlist(read_json("interviews_2009_04_21.json"))))
interviews_2009_09_09.json<- as.data.frame(t(unlist(read_json("interviews_2009_09_09.json"))))
interviews_2009_09_24.json<- as.data.frame(t(unlist(read_json("interviews_2009_09_24.json"))))
interviews_2009_10_23.json<- as.data.frame(t(unlist(read_json("interviews_2009_10_23.json"))))
interviews_2009_10_29.json<- as.data.frame(t(unlist(read_json("interviews_2009_10_29.json"))))
interviews_2010_01_06.json<- as.data.frame(t(unlist(read_json("interviews_2010_01_06.json"))))
interviews_2010_01_22.json<- as.data.frame(t(unlist(read_json("interviews_2010_01_22.json"))))
interviews_2010_02_09.json<- as.data.frame(t(unlist(read_json("interviews_2010_02_09.json"))))
interviews_2010_03_11.json<- as.data.frame(t(unlist(read_json("interviews_2010_03_11.json"))))
interviews_2010_03_17.json<- as.data.frame(t(unlist(read_json("interviews_2010_03_17.json"))))
interviews_2010_04_17.json<- as.data.frame(t(unlist(read_json("interviews_2010_04_17.json"))))
interviews_2010_05_12.json<- as.data.frame(t(unlist(read_json("interviews_2010_05_12.json"))))
interviews_2010_05_27.json<- as.data.frame(t(unlist(read_json("interviews_2010_05_27.json"))))
interviews_2010_06_14.json<- as.data.frame(t(unlist(read_json("interviews_2010_06_14.json"))))
interviews_2010_06_29.json<- as.data.frame(t(unlist(read_json("interviews_2010_06_29.json"))))
interviews_2010_10_14.json<- as.data.frame(t(unlist(read_json("interviews_2010_10_14.json"))))
interviews_2010_11_11.json<- as.data.frame(t(unlist(read_json("interviews_2010_11_11.json"))))
interviews_2011_01_17.json<- as.data.frame(t(unlist(read_json("interviews_2011_01_17.json"))))
interviews_2011_02_10.json<- as.data.frame(t(unlist(read_json("interviews_2011_02_10.json"))))
interviews_2011_02_11.json<- as.data.frame(t(unlist(read_json("interviews_2011_02_11.json"))))
interviews_2011_02_18.json<- as.data.frame(t(unlist(read_json("interviews_2011_02_18.json"))))
interviews_2011_03_07.json<- as.data.frame(t(unlist(read_json("interviews_2011_03_07.json"))))
interviews_2011_05_26.json<- as.data.frame(t(unlist(read_json("interviews_2011_05_26.json"))))
interviews_2011_06_24.json<- as.data.frame(t(unlist(read_json("interviews_2011_06_24.json"))))
interviews_2011_07_02.json<- as.data.frame(t(unlist(read_json("interviews_2011_07_02.json"))))
interviews_2011_07_03.json<- as.data.frame(t(unlist(read_json("interviews_2011_07_03.json"))))
interviews_2011_09_14.json<- as.data.frame(t(unlist(read_json("interviews_2011_09_14.json"))))
interviews_2011_09_25.json<- as.data.frame(t(unlist(read_json("interviews_2011_09_25.json"))))
interviews_2011_10_16.json<- as.data.frame(t(unlist(read_json("interviews_2011_10_16.json"))))
interviews_2011_10_24.json<- as.data.frame(t(unlist(read_json("interviews_2011_10_24.json"))))
interviews_2011_11_04.json<- as.data.frame(t(unlist(read_json("interviews_2011_11_04.json"))))
interviews_2011_12_15.json<- as.data.frame(t(unlist(read_json("interviews_2011_12_15.json"))))
interviews_2012_01_06.json<- as.data.frame(t(unlist(read_json("interviews_2012_01_06.json"))))
interviews_2012_06_18.json<- as.data.frame(t(unlist(read_json("interviews_2012_06_18.json"))))
interviews_2012_06_29.json<- as.data.frame(t(unlist(read_json("interviews_2012_06_29.json"))))
interviews_2012_06_29_1.json<- as.data.frame(t(unlist(read_json("interviews_2012_06_29_1.json"))))
interviews_2012_07_18.json<- as.data.frame(t(unlist(read_json("interviews_2012_07_18.json"))))
interviews_2012_08_16.json<- as.data.frame(t(unlist(read_json("interviews_2012_08_16.json"))))
interviews_2012_09_17.json<- as.data.frame(t(unlist(read_json("interviews_2012_09_17.json"))))
interviews_2012_10_02.json<- as.data.frame(t(unlist(read_json("interviews_2012_10_02.json"))))
interviews_2012_10_24.json<- as.data.frame(t(unlist(read_json("interviews_2012_10_24.json"))))
interviews_2012_11_09.json<- as.data.frame(t(unlist(read_json("interviews_2012_11_09.json"))))
interviews_2012_11_09_1.json<- as.data.frame(t(unlist(read_json("interviews_2012_11_09_1.json"))))
interviews_2012_12_18.json<- as.data.frame(t(unlist(read_json("interviews_2012_12_18.json"))))
interviews_2013_02_25.json<- as.data.frame(t(unlist(read_json("interviews_2013_02_25.json"))))
interviews_2013_03_24.json<- as.data.frame(t(unlist(read_json("interviews_2013_03_24.json"))))
interviews_2013_04_10.json<- as.data.frame(t(unlist(read_json("interviews_2013_04_10.json"))))
interviews_2013_04_23.json<- as.data.frame(t(unlist(read_json("interviews_2013_04_23.json"))))
interviews_2013_05_29.json<- as.data.frame(t(unlist(read_json("interviews_2013_05_29.json"))))
interviews_2013_06_07.json<- as.data.frame(t(unlist(read_json("interviews_2013_06_07.json"))))
interviews_2013_06_21.json<- as.data.frame(t(unlist(read_json("interviews_2013_06_21.json"))))
interviews_2013_08_07.json<- as.data.frame(t(unlist(read_json("interviews_2013_08_07.json"))))
interviews_2013_09_12.json<- as.data.frame(t(unlist(read_json("interviews_2013_09_12.json"))))
interviews_2013_09_23.json<- as.data.frame(t(unlist(read_json("interviews_2013_09_23.json"))))
interviews_2013_10_03.json<- as.data.frame(t(unlist(read_json("interviews_2013_10_03.json"))))
interviews_2013_10_03_1.json<- as.data.frame(t(unlist(read_json("interviews_2013_10_03_1.json"))))
interviews_2013_10_13.json<- as.data.frame(t(unlist(read_json("interviews_2013_10_13.json"))))
interviews_2013_10_14.json<- as.data.frame(t(unlist(read_json("interviews_2013_10_14.json"))))
interviews_2013_11_18.json<- as.data.frame(t(unlist(read_json("interviews_2013_11_18.json"))))
interviews_2014_01_16.json<- as.data.frame(t(unlist(read_json("interviews_2014_01_16.json"))))
interviews_2014_01_29.json<- as.data.frame(t(unlist(read_json("interviews_2014_01_29.json"))))
interviews_2014_02_07.json<- as.data.frame(t(unlist(read_json("interviews_2014_02_07.json"))))
interviews_2014_02_12.json<- as.data.frame(t(unlist(read_json("interviews_2014_02_12.json"))))
interviews_2014_03_10_1.json<- as.data.frame(t(unlist(read_json("interviews_2014_03_10_1.json"))))
interviews_2014_04_08.json<- as.data.frame(t(unlist(read_json("interviews_2014_04_08.json"))))
interviews_2014_04_14.json<- as.data.frame(t(unlist(read_json("interviews_2014_04_14.json"))))
interviews_2014_04_30.json<- as.data.frame(t(unlist(read_json("interviews_2014_04_30.json"))))
interviews_2014_06_11.json<- as.data.frame(t(unlist(read_json("interviews_2014_06_11.json"))))
interviews_2014_07_04.json<- as.data.frame(t(unlist(read_json("interviews_2014_07_04.json"))))
interviews_2014_10_13.json<- as.data.frame(t(unlist(read_json("interviews_2014_10_13.json"))))
interviews_2014_10_24.json<- as.data.frame(t(unlist(read_json("interviews_2014_10_24.json"))))
interviews_2014_10_29.json<- as.data.frame(t(unlist(read_json("interviews_2014_10_29.json"))))
interviews_2014_11_09.json<- as.data.frame(t(unlist(read_json("interviews_2014_11_09.json"))))
interviews_2014_11_14.json<- as.data.frame(t(unlist(read_json("interviews_2014_11_14.json"))))
interviews_2015_01_13.json<- as.data.frame(t(unlist(read_json("interviews_2015_01_13.json"))))
interviews_2015_01_15.json<- as.data.frame(t(unlist(read_json("interviews_2015_01_15.json"))))
interviews_2015_01_20.json<- as.data.frame(t(unlist(read_json("interviews_2015_01_20.json"))))
interviews_2015_02_02.json<- as.data.frame(t(unlist(read_json("interviews_2015_02_02.json"))))
interviews_2015_02_12.json<- as.data.frame(t(unlist(read_json("interviews_2015_02_12.json"))))
interviews_2015_04_20.json<- as.data.frame(t(unlist(read_json("interviews_2015_04_20.json"))))
interviews_2015_04_28.json<- as.data.frame(t(unlist(read_json("interviews_2015_04_28.json"))))
interviews_2015_05_19.json<- as.data.frame(t(unlist(read_json("interviews_2015_05_19.json"))))
interviews_2015_06_08.json<- as.data.frame(t(unlist(read_json("interviews_2015_06_08.json"))))
interviews_2015_07_08.json<- as.data.frame(t(unlist(read_json("interviews_2015_07_08.json"))))
interviews_2015_07_08_1.json<- as.data.frame(t(unlist(read_json("interviews_2015_07_08_1.json"))))
interviews_2015_07_24.json<- as.data.frame(t(unlist(read_json("interviews_2015_07_24.json"))))
interviews_2015_09_14.json<- as.data.frame(t(unlist(read_json("interviews_2015_09_14.json"))))
interviews_2015_10_19.json<- as.data.frame(t(unlist(read_json("interviews_2015_10_19.json"))))
interviews_2015_10_23.json<- as.data.frame(t(unlist(read_json("interviews_2015_10_23.json"))))
interviews_2015_10_29.json<- as.data.frame(t(unlist(read_json("interviews_2015_10_29.json"))))
interviews_2015_11_02.json<- as.data.frame(t(unlist(read_json("interviews_2015_11_02.json"))))
interviews_2015_11_09.json<- as.data.frame(t(unlist(read_json("interviews_2015_11_09.json"))))
interviews_2015_11_26.json<- as.data.frame(t(unlist(read_json("interviews_2015_11_26.json"))))
interviews_2016_01_13.json<- as.data.frame(t(unlist(read_json("interviews_2016_01_13.json"))))
interviews_2016_01_27.json<- as.data.frame(t(unlist(read_json("interviews_2016_01_27.json"))))
interviews_2016_02_05.json<- as.data.frame(t(unlist(read_json("interviews_2016_02_05.json"))))
interviews_2016_02_10.json<- as.data.frame(t(unlist(read_json("interviews_2016_02_10.json"))))
interviews_2016_02_10_1.json<- as.data.frame(t(unlist(read_json("interviews_2016_02_10_1.json"))))
interviews_2016_02_25.json<- as.data.frame(t(unlist(read_json("interviews_2016_02_25.json"))))
interviews_2016_02_27.json<- as.data.frame(t(unlist(read_json("interviews_2016_02_27.json"))))
interviews_2016_03_15.json<- as.data.frame(t(unlist(read_json("interviews_2016_03_15.json"))))
interviews_2016_03_29.json<- as.data.frame(t(unlist(read_json("interviews_2016_03_29.json"))))
interviews_2016_03_30.json<- as.data.frame(t(unlist(read_json("interviews_2016_03_30.json"))))
interviews_2016_04_09.json<- as.data.frame(t(unlist(read_json("interviews_2016_04_09.json"))))
interviews_2016_04_12.json<- as.data.frame(t(unlist(read_json("interviews_2016_04_12.json"))))
interviews_2016_04_18_1.json<- as.data.frame(t(unlist(read_json("interviews_2016_04_18_1.json"))))
interviews_2016_05_10.json<- as.data.frame(t(unlist(read_json("interviews_2016_05_10.json"))))
interviews_2016_05_18.json<- as.data.frame(t(unlist(read_json("interviews_2016_05_18.json"))))
interviews_2016_05_19.json<- as.data.frame(t(unlist(read_json("interviews_2016_05_19.json"))))
interviews_2016_05_25.json<- as.data.frame(t(unlist(read_json("interviews_2016_05_25.json"))))
interviews_2016_06_07.json<- as.data.frame(t(unlist(read_json("interviews_2016_06_07.json"))))
interviews_2016_06_25.json<- as.data.frame(t(unlist(read_json("interviews_2016_06_25.json"))))
interviews_2016_07_11.json<- as.data.frame(t(unlist(read_json("interviews_2016_07_11.json"))))
interviews_2016_07_12.json<- as.data.frame(t(unlist(read_json("interviews_2016_07_12.json"))))
interviews_2016_07_28.json<- as.data.frame(t(unlist(read_json("interviews_2016_07_28.json"))))
interviews_2016_09_16_1.json<- as.data.frame(t(unlist(read_json("interviews_2016_09_16_1.json"))))
interviews_2016_09_20.json<- as.data.frame(t(unlist(read_json("interviews_2016_09_20.json"))))
interviews_2016_09_28_1.json<- as.data.frame(t(unlist(read_json("interviews_2016_09_28_1.json"))))
interviews_2016_09_29.json<- as.data.frame(t(unlist(read_json("interviews_2016_09_29.json"))))
interviews_2016_10_10.json<- as.data.frame(t(unlist(read_json("interviews_2016_10_10.json"))))
interviews_2016_10_14.json<- as.data.frame(t(unlist(read_json("interviews_2016_10_14.json"))))
interviews_2016_11_10.json<- as.data.frame(t(unlist(read_json("interviews_2016_11_10.json"))))
interviews_2016_11_12.json<- as.data.frame(t(unlist(read_json("interviews_2016_11_12.json"))))
interviews_2016_11_14.json<- as.data.frame(t(unlist(read_json("interviews_2016_11_14.json"))))
interviews_2016_11_24.json<- as.data.frame(t(unlist(read_json("interviews_2016_11_24.json"))))
interviews_2016_11_30.json<- as.data.frame(t(unlist(read_json("interviews_2016_11_30.json"))))
interviews_2016_12_09.json<- as.data.frame(t(unlist(read_json("interviews_2016_12_09.json"))))
interviews_2016_12_11.json<- as.data.frame(t(unlist(read_json("interviews_2016_12_11.json"))))
interviews_2016_12_14.json<- as.data.frame(t(unlist(read_json("interviews_2016_12_14.json"))))
interviews_2017_01_20.json<- as.data.frame(t(unlist(read_json("interviews_2017_01_20.json"))))
interviews_2017_01_20_1.json<- as.data.frame(t(unlist(read_json("interviews_2017_01_20_1.json"))))
interviews_2017_01_20_2.json<- as.data.frame(t(unlist(read_json("interviews_2017_01_20_2.json"))))
interviews_2017_02_07_1.json<- as.data.frame(t(unlist(read_json("interviews_2017_02_07_1.json"))))
interviews_2017_02_08.json<- as.data.frame(t(unlist(read_json("interviews_2017_02_08.json"))))
interviews_2017_02_10.json<- as.data.frame(t(unlist(read_json("interviews_2017_02_10.json"))))
interviews_2017_02_13.json<- as.data.frame(t(unlist(read_json("interviews_2017_02_13.json"))))
interviews_2017_02_23.json<- as.data.frame(t(unlist(read_json("interviews_2017_02_23.json"))))
interviews_2017_03_25.json<- as.data.frame(t(unlist(read_json("interviews_2017_03_25.json"))))
interviews_2017_06_09.json<- as.data.frame(t(unlist(read_json("interviews_2017_06_09.json"))))
interviews_2017_07_06.json<- as.data.frame(t(unlist(read_json("interviews_2017_07_06.json"))))
interviews_2017_07_06_1.json<- as.data.frame(t(unlist(read_json("interviews_2017_07_06_1.json"))))
interviews_2017_07_06_2.json<- as.data.frame(t(unlist(read_json("interviews_2017_07_06_2.json"))))
interviews_2017_11_21.json<- as.data.frame(t(unlist(read_json("interviews_2017_11_21.json"))))
interviews_2018_01_26.json<- as.data.frame(t(unlist(read_json("interviews_2018_01_26.json"))))
interviews_2018_04_23.json<- as.data.frame(t(unlist(read_json("interviews_2018_04_23.json"))))
interviews_2018_06_20.json<- as.data.frame(t(unlist(read_json("interviews_2018_06_20.json"))))
interviews_2018_06_21_1.json<- as.data.frame(t(unlist(read_json("interviews_2018_06_21_1.json"))))
interviews_2018_10_14_1.json<- as.data.frame(t(unlist(read_json("interviews_2018_10_14_1.json"))))
interviews_2018_10_31.json<- as.data.frame(t(unlist(read_json("interviews_2018_10_31.json"))))
interviews_2018_11_08.json<- as.data.frame(t(unlist(read_json("interviews_2018_11_08.json"))))
interviews_2018_11_09.json<- as.data.frame(t(unlist(read_json("interviews_2018_11_09.json"))))
interviews_2018_12_14.json<- as.data.frame(t(unlist(read_json("interviews_2018_12_14.json"))))
interviews_2018_12_17.json<- as.data.frame(t(unlist(read_json("interviews_2018_12_17.json"))))
interviews_2019_04_02.json<- as.data.frame(t(unlist(read_json("interviews_2019_04_02.json"))))
interviews_2019_04_15.json<- as.data.frame(t(unlist(read_json("interviews_2019_04_15.json"))))
interviews_2019_06_12.json<- as.data.frame(t(unlist(read_json("interviews_2019_06_12.json"))))
interviews_2019_06_25.json<- as.data.frame(t(unlist(read_json("interviews_2019_06_25.json"))))
interviews_2019_09_03.json<- as.data.frame(t(unlist(read_json("interviews_2019_09_03.json"))))
interviews_2019_09_03_1.json<- as.data.frame(t(unlist(read_json("interviews_2019_09_03_1.json"))))
interviews_2019_09_18.json<- as.data.frame(t(unlist(read_json("interviews_2019_09_18.json"))))
interviews_2019_09_24.json<- as.data.frame(t(unlist(read_json("interviews_2019_09_24.json"))))
interviews_2019_10_01.json<- as.data.frame(t(unlist(read_json("interviews_2019_10_01.json"))))
interviews_2019_10_21.json<- as.data.frame(t(unlist(read_json("interviews_2019_10_21.json"))))
interviews_2019_10_26.json<- as.data.frame(t(unlist(read_json("interviews_2019_10_26.json"))))
interviews_2019_11_04.json<- as.data.frame(t(unlist(read_json("interviews_2019_11_04.json"))))
interviews_2019_11_12.json<- as.data.frame(t(unlist(read_json("interviews_2019_11_12.json"))))
interviews_2019_11_24.json<- as.data.frame(t(unlist(read_json("interviews_2019_11_24.json"))))
interviews_2019_11_26.json<- as.data.frame(t(unlist(read_json("interviews_2019_11_26.json"))))
interviews_2019_11_29.json<- as.data.frame(t(unlist(read_json("interviews_2019_11_29.json"))))
interviews_2019_11_29_1.json<- as.data.frame(t(unlist(read_json("interviews_2019_11_29_1.json"))))
interviews_2019_12_16.json<- as.data.frame(t(unlist(read_json("interviews_2019_12_16.json"))))
interviews_2020_01_25.json<- as.data.frame(t(unlist(read_json("interviews_2020_01_25.json"))))
interviews_2020_01_29.json<- as.data.frame(t(unlist(read_json("interviews_2020_01_29.json"))))
interviews_2020_02_07.json<- as.data.frame(t(unlist(read_json("interviews_2020_02_07.json"))))
interviews_2020_02_14.json<- as.data.frame(t(unlist(read_json("interviews_2020_02_14.json"))))
interviews_2020_03_02.json<- as.data.frame(t(unlist(read_json("interviews_2020_03_02.json"))))
interviews_2020_03_13.json<- as.data.frame(t(unlist(read_json("interviews_2020_03_13.json"))))
interviews_2020_03_19.json<- as.data.frame(t(unlist(read_json("interviews_2020_03_19.json"))))
interviews_2020_03_23.json<- as.data.frame(t(unlist(read_json("interviews_2020_03_23.json"))))
interviews_2020_03_23_1.json<- as.data.frame(t(unlist(read_json("interviews_2020_03_23_1.json"))))
interviews_2020_03_24.json<- as.data.frame(t(unlist(read_json("interviews_2020_03_24.json"))))
interviews_2020_03_25.json<- as.data.frame(t(unlist(read_json("interviews_2020_03_25.json"))))
interviews_2020_04_01.json<- as.data.frame(t(unlist(read_json("interviews_2020_04_01.json"))))
interviews_2020_04_08.json<- as.data.frame(t(unlist(read_json("interviews_2020_04_08.json"))))
interviews_2020_04_17.json<- as.data.frame(t(unlist(read_json("interviews_2020_04_17.json"))))
interviews_2020_04_20.json<- as.data.frame(t(unlist(read_json("interviews_2020_04_20.json"))))
interviews_2020_04_24.json<- as.data.frame(t(unlist(read_json("interviews_2020_04_24.json"))))
interviews_2020_05_12.json<- as.data.frame(t(unlist(read_json("interviews_2020_05_12.json"))))
interviews_2020_05_15.json<- as.data.frame(t(unlist(read_json("interviews_2020_05_15.json"))))





Master <- bind_rows(interviews_1999_01_11.json,
                    interviews_1999_02_20.json,
                    interviews_1999_03_18.json,
                    interviews_1999_03_24.json,
                    interviews_1999_04_11.json,
                    interviews_1999_05_20.json,
                    interviews_1999_05_21.json,
                    interviews_1999_06_04.json,
                    interviews_1999_06_24.json,
                    interviews_1999_09_01.json,
                    interviews_1999_09_20.json,
                    interviews_1999_10_22.json,
                    interviews_1999_10_28.json,
                    interviews_1999_11_01.json,
                    interviews_1999_12_17.json,
                    interviews_2000_01_03.json,
                    interviews_2000_01_06.json,
                    interviews_2000_01_12.json,
                    interviews_2000_01_17.json,
                    interviews_2000_01_19.json,
                    interviews_2000_03_15.json,
                    interviews_2000_05_01.json,
                    interviews_2000_06_07.json,
                    interviews_2000_06_16_1.json,
                    interviews_2000_06_30.json,
                    interviews_2000_10_01.json,
                    interviews_2000_11_20.json,
                    interviews_2000_11_21.json,
                    interviews_2000_12_04.json,
                    interviews_2000_12_22.json,
                    interviews_2001_01_09.json,
                    interviews_2001_01_12.json,
                    interviews_2001_03_09.json,
                    interviews_2001_06_10.json,
                    interviews_2001_07_10.json,
                    interviews_2001_07_12.json,
                    interviews_2001_09_28.json,
                    interviews_2001_10_07.json,
                    interviews_2001_11_19.json,
                    interviews_2001_11_23.json,
                    interviews_2001_11_24.json,
                    interviews_2001_12_14.json,
                    interviews_2003_03_11.json,
                    interviews_2003_11_09.json,
                    interviews_2004_01_02.json,
                    interviews_2004_01_16.json,
                    interviews_2004_03_02.json,
                    interviews_2004_03_03.json,
                    interviews_2004_09_27.json,
                    interviews_2004_10_09.json,
                    interviews_2004_11_16.json,
                    interviews_2004_12_10.json,
                    interviews_2005_03_01.json,
                    interviews_2005_03_30.json,
                    interviews_2005_11_15.json,
                    interviews_2006_01_10.json,
                    interviews_2006_01_31.json,
                    interviews_2006_05_24.json,
                    interviews_2006_07_19.json,
                    interviews_2006_08_03.json,
                    interviews_2006_09_25.json,
                    interviews_2006_10_10.json,
                    interviews_2007_01_22.json,
                    interviews_2007_02_02.json,
                    interviews_2007_12_18.json,
                    interviews_2008_02_17.json,
                    interviews_2008_12_10.json,
                    interviews_2009_03_12.json,
                    interviews_2009_04_08.json,
                    interviews_2009_04_21.json,
                    interviews_2009_09_09.json,
                    interviews_2009_09_24.json,
                    interviews_2009_10_23.json,
                    interviews_2009_10_29.json,
                    interviews_2010_01_06.json,
                    interviews_2010_01_22.json,
                    interviews_2010_02_09.json,
                    interviews_2010_03_11.json,
                    interviews_2010_03_17.json,
                    interviews_2010_04_17.json,
                    interviews_2010_05_12.json,
                    interviews_2010_05_27.json,
                    interviews_2010_06_14.json,
                    interviews_2010_06_29.json,
                    interviews_2010_10_14.json,
                    interviews_2010_11_11.json,
                    interviews_2011_01_17.json,
                    interviews_2011_02_10.json,
                    interviews_2011_02_11.json,
                    interviews_2011_02_18.json,
                    interviews_2011_03_07.json,
                    interviews_2011_05_26.json,
                    interviews_2011_06_24.json,
                    interviews_2011_07_02.json,
                    interviews_2011_07_03.json,
                    interviews_2011_09_14.json,
                    interviews_2011_09_25.json,
                    interviews_2011_10_16.json,
                    interviews_2011_10_24.json,
                    interviews_2011_11_04.json,
                    interviews_2011_12_15.json,
                    interviews_2012_01_06.json,
                    interviews_2012_06_18.json,
                    interviews_2012_06_29.json,
                    interviews_2012_06_29_1.json,
                    interviews_2012_07_18.json,
                    interviews_2012_08_16.json,
                    interviews_2012_09_17.json,
                    interviews_2012_10_02.json,
                    interviews_2012_10_24.json,
                    interviews_2012_11_09.json,
                    interviews_2012_11_09_1.json,
                    interviews_2012_12_18.json,
                    interviews_2013_02_25.json,
                    interviews_2013_03_24.json,
                    interviews_2013_04_10.json,
                    interviews_2013_04_23.json,
                    interviews_2013_05_29.json,
                    interviews_2013_06_07.json,
                    interviews_2013_06_21.json,
                    interviews_2013_08_07.json,
                    interviews_2013_09_12.json,
                    interviews_2013_09_23.json,
                    interviews_2013_10_03.json,
                    interviews_2013_10_03_1.json,
                    interviews_2013_10_13.json,
                    interviews_2013_10_14.json,
                    interviews_2013_11_18.json,
                    interviews_2014_01_16.json,
                    interviews_2014_01_29.json,
                    interviews_2014_02_07.json,
                    interviews_2014_02_12.json,
                    interviews_2014_03_10_1.json,
                    interviews_2014_04_08.json,
                    interviews_2014_04_14.json,
                    interviews_2014_04_30.json,
                    interviews_2014_06_11.json,
                    interviews_2014_07_04.json,
                    interviews_2014_10_13.json,
                    interviews_2014_10_24.json,
                    interviews_2014_10_29.json,
                    interviews_2014_11_09.json,
                    interviews_2014_11_14.json,
                    interviews_2015_01_13.json,
                    interviews_2015_01_15.json,
                    interviews_2015_01_20.json,
                    interviews_2015_02_02.json,
                    interviews_2015_02_12.json,
                    interviews_2015_04_20.json,
                    interviews_2015_04_28.json,
                    interviews_2015_05_19.json,
                    interviews_2015_06_08.json,
                    interviews_2015_07_08.json,
                    interviews_2015_07_08_1.json,
                    interviews_2015_07_24.json,
                    interviews_2015_09_14.json,
                    interviews_2015_10_19.json,
                    interviews_2015_10_23.json,
                    interviews_2015_10_29.json,
                    interviews_2015_11_02.json,
                    interviews_2015_11_09.json,
                    interviews_2015_11_26.json,
                    interviews_2016_01_13.json,
                    interviews_2016_01_27.json,
                    interviews_2016_02_05.json,
                    interviews_2016_02_10.json,
                    interviews_2016_02_10_1.json,
                    interviews_2016_02_25.json,
                    interviews_2016_02_27.json,
                    interviews_2016_03_15.json,
                    interviews_2016_03_29.json,
                    interviews_2016_03_30.json,
                    interviews_2016_04_09.json,
                    interviews_2016_04_12.json,
                    interviews_2016_04_18_1.json,
                    interviews_2016_05_10.json,
                    interviews_2016_05_18.json,
                    interviews_2016_05_19.json,
                    interviews_2016_05_25.json,
                    interviews_2016_06_07.json,
                    interviews_2016_06_25.json,
                    interviews_2016_07_11.json,
                    interviews_2016_07_12.json,
                    interviews_2016_07_28.json,
                    interviews_2016_09_16_1.json,
                    interviews_2016_09_20.json,
                    interviews_2016_09_28_1.json,
                    interviews_2016_09_29.json,
                    interviews_2016_10_10.json,
                    interviews_2016_10_14.json,
                    interviews_2016_11_10.json,
                    interviews_2016_11_12.json,
                    interviews_2016_11_14.json,
                    interviews_2016_11_24.json,
                    interviews_2016_11_30.json,
                    interviews_2016_12_09.json,
                    interviews_2016_12_11.json,
                    interviews_2016_12_14.json,
                    interviews_2017_01_20.json,
                    interviews_2017_01_20_1.json,
                    interviews_2017_01_20_2.json,
                    interviews_2017_02_07_1.json,
                    interviews_2017_02_08.json,
                    interviews_2017_02_10.json,
                    interviews_2017_02_13.json,
                    interviews_2017_02_23.json,
                    interviews_2017_03_25.json,
                    interviews_2017_06_09.json,
                    interviews_2017_07_06.json,
                    interviews_2017_07_06_1.json,
                    interviews_2017_07_06_2.json,
                    interviews_2017_11_21.json,
                    interviews_2018_01_26.json,
                    interviews_2018_04_23.json,
                    interviews_2018_06_20.json,
                    interviews_2018_06_21_1.json,
                    interviews_2018_10_14_1.json,
                    interviews_2018_10_31.json,
                    interviews_2018_11_08.json,
                    interviews_2018_11_09.json,
                    interviews_2018_12_14.json,
                    interviews_2018_12_17.json,
                    interviews_2019_04_02.json,
                    interviews_2019_04_15.json,
                    interviews_2019_06_12.json,
                    interviews_2019_06_25.json,
                    interviews_2019_09_03.json,
                    interviews_2019_09_03_1.json,
                    interviews_2019_09_18.json,
                    interviews_2019_09_24.json,
                    interviews_2019_10_01.json,
                    interviews_2019_10_21.json,
                    interviews_2019_10_26.json,
                    interviews_2019_11_04.json,
                    interviews_2019_11_12.json,
                    interviews_2019_11_24.json,
                    interviews_2019_11_26.json,
                    interviews_2019_11_29.json,
                    interviews_2019_11_29_1.json,
                    interviews_2019_12_16.json,
                    interviews_2020_01_25.json,
                    interviews_2020_01_29.json,
                    interviews_2020_02_07.json,
                    interviews_2020_02_14.json,
                    interviews_2020_03_02.json,
                    interviews_2020_03_13.json,
                    interviews_2020_03_19.json,
                    interviews_2020_03_23.json,
                    interviews_2020_03_23_1.json,
                    interviews_2020_03_24.json,
                    interviews_2020_03_25.json,
                    interviews_2020_04_01.json,
                    interviews_2020_04_08.json,
                    interviews_2020_04_17.json,
                    interviews_2020_04_20.json,
                    interviews_2020_04_24.json,
                    interviews_2020_05_12.json,
                    interviews_2020_05_15.json)

colnames(Master)

Master$DATE <- ifelse(is.na(Master$DATE)==TRUE, paste(Master$date), paste(Master$DATE))
Master$TEXT <- ifelse(is.na(Master$TEXT)== TRUE, paste(Master$content), paste(Master$TEXT))
Master <- Master[,c("DATE","TEXT", "AUTHOR", "TITLE")]
write.csv(Master, "Master_Interventions_08262021.csv")
