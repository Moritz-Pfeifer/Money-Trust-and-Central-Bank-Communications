
#########################################################
##
## Data Import Script
## Sentiment Analysis on Central Bankers
##
#############################################################

setwd("~/Interviews_Press_Databases_ECB")
library(rjson)
library(dplyr)
#
# Importing Reported Json files
#

interview_1999_01_01.json<- as.data.frame(t(unlist(read_json("interview_1999_01_01.json"))))
interview_1999_01_02.json<- as.data.frame(t(unlist(read_json("interview_1999_01_02.json"))))
interview_1999_04_10.json<- as.data.frame(t(unlist(read_json("interview_1999_04_10.json"))))
interview_1999_04_12.json<- as.data.frame(t(unlist(read_json("interview_1999_04_12.json"))))
interview_1999_05_13.json<- as.data.frame(t(unlist(read_json("interview_1999_05_13.json"))))
interview_1999_05_27.json<- as.data.frame(t(unlist(read_json("interview_1999_05_27.json"))))
interview_1999_07_26.json<- as.data.frame(t(unlist(read_json("interview_1999_07_26.json"))))
interview_1999_09_02.json<- as.data.frame(t(unlist(read_json("interview_1999_09_02.json"))))
interview_1999_11_11.json<- as.data.frame(t(unlist(read_json("interview_1999_11_11.json"))))
interview_1999_12_21.json<- as.data.frame(t(unlist(read_json("interview_1999_12_21.json"))))
interview_2000_02_11.json<- as.data.frame(t(unlist(read_json("interview_2000_02_11.json"))))
interview_2000_04_19.json<- as.data.frame(t(unlist(read_json("interview_2000_04_19.json"))))
interview_2000_06_29.json<- as.data.frame(t(unlist(read_json("interview_2000_06_29.json"))))
interview_2000_08_07.json<- as.data.frame(t(unlist(read_json("interview_2000_08_07.json"))))
interview_2000_08_08.json<- as.data.frame(t(unlist(read_json("interview_2000_08_08.json"))))
interview_2000_08_24.json<- as.data.frame(t(unlist(read_json("interview_2000_08_24.json"))))
interview_2000_10_26.json<- as.data.frame(t(unlist(read_json("interview_2000_10_26.json"))))
interview_2000_10_27.json<- as.data.frame(t(unlist(read_json("interview_2000_10_27.json"))))
interview_2001_10_26.json<- as.data.frame(t(unlist(read_json("interview_2001_10_26.json"))))
interview_2001_12_13.json<- as.data.frame(t(unlist(read_json("interview_2001_12_13.json"))))
interview_2002_01_11.json<- as.data.frame(t(unlist(read_json("interview_2002_01_11.json"))))
interview_2002_02_08.json<- as.data.frame(t(unlist(read_json("interview_2002_02_08.json"))))
interview_2002_05_08.json<- as.data.frame(t(unlist(read_json("interview_2002_05_08.json"))))
interview_2002_06_10.json<- as.data.frame(t(unlist(read_json("interview_2002_06_10.json"))))
interview_2002_06_20.json<- as.data.frame(t(unlist(read_json("interview_2002_06_20.json"))))
interview_2002_09_24.json<- as.data.frame(t(unlist(read_json("interview_2002_09_24.json"))))
interview_2002_11_21.json<- as.data.frame(t(unlist(read_json("interview_2002_11_21.json"))))
interview_2002_12_20.json<- as.data.frame(t(unlist(read_json("interview_2002_12_20.json"))))
interview_2003_05_17.json<- as.data.frame(t(unlist(read_json("interview_2003_05_17.json"))))
interview_2003_06_16.json<- as.data.frame(t(unlist(read_json("interview_2003_06_16.json"))))
interview_2003_09_11.json<- as.data.frame(t(unlist(read_json("interview_2003_09_11.json"))))
interview_2003_09_15.json<- as.data.frame(t(unlist(read_json("interview_2003_09_15.json"))))
interview_2003_09_22.json<- as.data.frame(t(unlist(read_json("interview_2003_09_22.json"))))
interview_2003_10_23.json<- as.data.frame(t(unlist(read_json("interview_2003_10_23.json"))))
interview_2003_12_11.json<- as.data.frame(t(unlist(read_json("interview_2003_12_11.json"))))
interview_2003_12_23.json<- as.data.frame(t(unlist(read_json("interview_2003_12_23.json"))))
interview_2004_02_10.json<- as.data.frame(t(unlist(read_json("interview_2004_02_10.json"))))
interview_2004_04_27.json<- as.data.frame(t(unlist(read_json("interview_2004_04_27.json"))))
interview_2004_04_29.json<- as.data.frame(t(unlist(read_json("interview_2004_04_29.json"))))
interview_2004_04_30.json<- as.data.frame(t(unlist(read_json("interview_2004_04_30.json"))))
interview_2004_10_07.json<- as.data.frame(t(unlist(read_json("interview_2004_10_07.json"))))
interview_2004_10_12.json<- as.data.frame(t(unlist(read_json("interview_2004_10_12.json"))))
interview_2004_11_10.json<- as.data.frame(t(unlist(read_json("interview_2004_11_10.json"))))
interview_2005_01_21.json<- as.data.frame(t(unlist(read_json("interview_2005_01_21.json"))))
interview_2005_03_11.json<- as.data.frame(t(unlist(read_json("interview_2005_03_11.json"))))
interview_2005_05_25.json<- as.data.frame(t(unlist(read_json("interview_2005_05_25.json"))))
interview_2005_09_05.json<- as.data.frame(t(unlist(read_json("interview_2005_09_05.json"))))
interview_2005_09_15.json<- as.data.frame(t(unlist(read_json("interview_2005_09_15.json"))))
interview_2005_09_21.json<- as.data.frame(t(unlist(read_json("interview_2005_09_21.json"))))
interview_2005_11_10.json<- as.data.frame(t(unlist(read_json("interview_2005_11_10.json"))))
interview_2005_11_15.json<- as.data.frame(t(unlist(read_json("interview_2005_11_15.json"))))
interview_2005_12_23.json<- as.data.frame(t(unlist(read_json("interview_2005_12_23.json"))))
interview_2006_02_09.json<- as.data.frame(t(unlist(read_json("interview_2006_02_09.json"))))
interview_2006_03_15.json<- as.data.frame(t(unlist(read_json("interview_2006_03_15.json"))))
interview_2006_03_30.json<- as.data.frame(t(unlist(read_json("interview_2006_03_30.json"))))
interview_2006_05_20.json<- as.data.frame(t(unlist(read_json("interview_2006_05_20.json"))))
interview_2006_05_20_1.json<- as.data.frame(t(unlist(read_json("interview_2006_05_20_1.json"))))
interview_2006_05_29.json<- as.data.frame(t(unlist(read_json("interview_2006_05_29.json"))))
interview_2006_09_11.json<- as.data.frame(t(unlist(read_json("interview_2006_09_11.json"))))
interview_2006_12_18.json<- as.data.frame(t(unlist(read_json("interview_2006_12_18.json"))))
interview_2007_02_26.json<- as.data.frame(t(unlist(read_json("interview_2007_02_26.json"))))
interview_2007_02_28.json<- as.data.frame(t(unlist(read_json("interview_2007_02_28.json"))))
interview_2007_07_24.json<- as.data.frame(t(unlist(read_json("interview_2007_07_24.json"))))
interview_2007_07_26.json<- as.data.frame(t(unlist(read_json("interview_2007_07_26.json"))))
interview_2007_11_25.json<- as.data.frame(t(unlist(read_json("interview_2007_11_25.json"))))
interview_2007_12_29.json<- as.data.frame(t(unlist(read_json("interview_2007_12_29.json"))))
interview_2008_01_24.json<- as.data.frame(t(unlist(read_json("interview_2008_01_24.json"))))
interview_2008_02_25.json<- as.data.frame(t(unlist(read_json("interview_2008_02_25.json"))))
interview_2008_05_30.json<- as.data.frame(t(unlist(read_json("interview_2008_05_30.json"))))
interview_2008_06_23.json<- as.data.frame(t(unlist(read_json("interview_2008_06_23.json"))))
interview_2008_07_01.json<- as.data.frame(t(unlist(read_json("interview_2008_07_01.json"))))
interview_2008_07_18.json<- as.data.frame(t(unlist(read_json("interview_2008_07_18.json"))))
interview_2008_08_27.json<- as.data.frame(t(unlist(read_json("interview_2008_08_27.json"))))
interview_2008_09_18.json<- as.data.frame(t(unlist(read_json("interview_2008_09_18.json"))))
interview_2008_10_10.json<- as.data.frame(t(unlist(read_json("interview_2008_10_10.json"))))
interview_2008_10_10_1.json<- as.data.frame(t(unlist(read_json("interview_2008_10_10_1.json"))))
interview_2008_11_09.json<- as.data.frame(t(unlist(read_json("interview_2008_11_09.json"))))
interview_2008_12_11.json<- as.data.frame(t(unlist(read_json("interview_2008_12_11.json"))))
interview_2008_12_24.json<- as.data.frame(t(unlist(read_json("interview_2008_12_24.json"))))
interview_2009_01_05.json<- as.data.frame(t(unlist(read_json("interview_2009_01_05.json"))))
interview_2009_03_17.json<- as.data.frame(t(unlist(read_json("interview_2009_03_17.json"))))
interview_2009_04_29.json<- as.data.frame(t(unlist(read_json("interview_2009_04_29.json"))))
interview_2009_05_20.json<- as.data.frame(t(unlist(read_json("interview_2009_05_20.json"))))
interview_2009_07_29.json<- as.data.frame(t(unlist(read_json("interview_2009_07_29.json"))))
interview_2010_01_24.json<- as.data.frame(t(unlist(read_json("interview_2010_01_24.json"))))
interview_2010_01_25.json<- as.data.frame(t(unlist(read_json("interview_2010_01_25.json"))))
interview_2010_02_13.json<- as.data.frame(t(unlist(read_json("interview_2010_02_13.json"))))
interview_2010_04_17.json<- as.data.frame(t(unlist(read_json("interview_2010_04_17.json"))))
interview_2010_05_01.json<- as.data.frame(t(unlist(read_json("interview_2010_05_01.json"))))
interview_2010_05_14.json<- as.data.frame(t(unlist(read_json("interview_2010_05_14.json"))))
interview_2010_05_16.json<- as.data.frame(t(unlist(read_json("interview_2010_05_16.json"))))
interview_2010_05_17.json<- as.data.frame(t(unlist(read_json("interview_2010_05_17.json"))))
interview_2010_05_31.json<- as.data.frame(t(unlist(read_json("interview_2010_05_31.json"))))
interview_2010_06_17.json<- as.data.frame(t(unlist(read_json("interview_2010_06_17.json"))))
interview_2010_10_15.json<- as.data.frame(t(unlist(read_json("interview_2010_10_15.json"))))
interview_2010_10_20.json<- as.data.frame(t(unlist(read_json("interview_2010_10_20.json"))))
interview_2010_12_07.json<- as.data.frame(t(unlist(read_json("interview_2010_12_07.json"))))
interview_2010_12_21.json<- as.data.frame(t(unlist(read_json("interview_2010_12_21.json"))))
interview_2010_12_24.json<- as.data.frame(t(unlist(read_json("interview_2010_12_24.json"))))
interview_2011_02_17.json<- as.data.frame(t(unlist(read_json("interview_2011_02_17.json"))))
interview_2011_03_30.json<- as.data.frame(t(unlist(read_json("interview_2011_03_30.json"))))
interview_2011_04_15.json<- as.data.frame(t(unlist(read_json("interview_2011_04_15.json"))))
interview_2011_05_16.json<- as.data.frame(t(unlist(read_json("interview_2011_05_16.json"))))
interview_2011_05_24.json<- as.data.frame(t(unlist(read_json("interview_2011_05_24.json"))))
interview_2011_05_29.json<- as.data.frame(t(unlist(read_json("interview_2011_05_29.json"))))
interview_2011_06_04.json<- as.data.frame(t(unlist(read_json("interview_2011_06_04.json"))))
interview_2011_06_25.json<- as.data.frame(t(unlist(read_json("interview_2011_06_25.json"))))
interview_2011_06_28.json<- as.data.frame(t(unlist(read_json("interview_2011_06_28.json"))))
interview_2011_06_30.json<- as.data.frame(t(unlist(read_json("interview_2011_06_30.json"))))
interview_2011_07_18.json<- as.data.frame(t(unlist(read_json("interview_2011_07_18.json"))))
interview_2011_07_21.json<- as.data.frame(t(unlist(read_json("interview_2011_07_21.json"))))
interview_2011_07_23.json<- as.data.frame(t(unlist(read_json("interview_2011_07_23.json"))))
interview_2011_08_19.json<- as.data.frame(t(unlist(read_json("interview_2011_08_19.json"))))
interview_2011_10_12.json<- as.data.frame(t(unlist(read_json("interview_2011_10_12.json"))))
interview_2011_10_19.json<- as.data.frame(t(unlist(read_json("interview_2011_10_19.json"))))
interview_2011_10_21.json<- as.data.frame(t(unlist(read_json("interview_2011_10_21.json"))))
interview_2011_10_30.json<- as.data.frame(t(unlist(read_json("interview_2011_10_30.json"))))
interview_2011_11_12.json<- as.data.frame(t(unlist(read_json("interview_2011_11_12.json"))))
interview_2011_11_27.json<- as.data.frame(t(unlist(read_json("interview_2011_11_27.json"))))
interview_2011_12_12.json<- as.data.frame(t(unlist(read_json("interview_2011_12_12.json"))))
interview_2011_12_19.json<- as.data.frame(t(unlist(read_json("interview_2011_12_19.json"))))
interview_2011_12_23.json<- as.data.frame(t(unlist(read_json("interview_2011_12_23.json"))))
interview_2012_01_25.json<- as.data.frame(t(unlist(read_json("interview_2012_01_25.json"))))
interview_2012_02_20.json<- as.data.frame(t(unlist(read_json("interview_2012_02_20.json"))))
interview_2012_03_22.json<- as.data.frame(t(unlist(read_json("interview_2012_03_22.json"))))
interview_2012_05_09.json<- as.data.frame(t(unlist(read_json("interview_2012_05_09.json"))))
interview_2012_06_18.json<- as.data.frame(t(unlist(read_json("interview_2012_06_18.json"))))
interview_2012_06_28.json<- as.data.frame(t(unlist(read_json("interview_2012_06_28.json"))))
interview_2012_07_19.json<- as.data.frame(t(unlist(read_json("interview_2012_07_19.json"))))
interview_2012_08_20.json<- as.data.frame(t(unlist(read_json("interview_2012_08_20.json"))))
interview_2012_10_07.json<- as.data.frame(t(unlist(read_json("interview_2012_10_07.json"))))
interview_2012_10_12.json<- as.data.frame(t(unlist(read_json("interview_2012_10_12.json"))))
interview_2012_10_31.json<- as.data.frame(t(unlist(read_json("interview_2012_10_31.json"))))
interview_2012_12_10.json<- as.data.frame(t(unlist(read_json("interview_2012_12_10.json"))))
interview_2012_12_31.json<- as.data.frame(t(unlist(read_json("interview_2012_12_31.json"))))
interview_2013_01_20.json<- as.data.frame(t(unlist(read_json("interview_2013_01_20.json"))))
interview_2013_02_11.json<- as.data.frame(t(unlist(read_json("interview_2013_02_11.json"))))
interview_2013_03_15.json<- as.data.frame(t(unlist(read_json("interview_2013_03_15.json"))))
interview_2013_03_21.json<- as.data.frame(t(unlist(read_json("interview_2013_03_21.json"))))
interview_2013_06_10.json<- as.data.frame(t(unlist(read_json("interview_2013_06_10.json"))))
interview_2013_07_12.json<- as.data.frame(t(unlist(read_json("interview_2013_07_12.json"))))
interview_2013_07_29.json<- as.data.frame(t(unlist(read_json("interview_2013_07_29.json"))))
interview_2013_09_12.json<- as.data.frame(t(unlist(read_json("interview_2013_09_12.json"))))
interview_2013_10_22.json<- as.data.frame(t(unlist(read_json("interview_2013_10_22.json"))))
interview_2013_11_08.json<- as.data.frame(t(unlist(read_json("interview_2013_11_08.json"))))
interview_2013_11_16.json<- as.data.frame(t(unlist(read_json("interview_2013_11_16.json"))))
interview_2013_12_12.json<- as.data.frame(t(unlist(read_json("interview_2013_12_12.json"))))
interview_2013_12_17.json<- as.data.frame(t(unlist(read_json("interview_2013_12_17.json"))))
interview_2013_12_30.json<- as.data.frame(t(unlist(read_json("interview_2013_12_30.json"))))
interview_2014_01_02.json<- as.data.frame(t(unlist(read_json("interview_2014_01_02.json"))))
interview_2014_01_24.json<- as.data.frame(t(unlist(read_json("interview_2014_01_24.json"))))
interview_2014_05_15.json<- as.data.frame(t(unlist(read_json("interview_2014_05_15.json"))))
interview_2014_07_06.json<- as.data.frame(t(unlist(read_json("interview_2014_07_06.json"))))
interview_2014_12_31.json<- as.data.frame(t(unlist(read_json("interview_2014_12_31.json"))))
interview_2015_01_02.json<- as.data.frame(t(unlist(read_json("interview_2015_01_02.json"))))
interview_2015_01_13.json<- as.data.frame(t(unlist(read_json("interview_2015_01_13.json"))))
interview_2015_01_31.json<- as.data.frame(t(unlist(read_json("interview_2015_01_31.json"))))
interview_2015_04_04.json<- as.data.frame(t(unlist(read_json("interview_2015_04_04.json"))))
interview_2015_08_15.json<- as.data.frame(t(unlist(read_json("interview_2015_08_15.json"))))
interview_2015_10_29.json<- as.data.frame(t(unlist(read_json("interview_2015_10_29.json"))))
interview_2015_12_11.json<- as.data.frame(t(unlist(read_json("interview_2015_12_11.json"))))
interview_2016_04_28.json<- as.data.frame(t(unlist(read_json("interview_2016_04_28.json"))))
interview_2016_09_27.json<- as.data.frame(t(unlist(read_json("interview_2016_09_27.json"))))
interview_2016_11_02.json<- as.data.frame(t(unlist(read_json("interview_2016_11_02.json"))))
interview_2016_12_15.json<- as.data.frame(t(unlist(read_json("interview_2016_12_15.json"))))
interview_2017_03_24.json<- as.data.frame(t(unlist(read_json("interview_2017_03_24.json"))))
interview_2017_07_31.json<- as.data.frame(t(unlist(read_json("interview_2017_07_31.json"))))
interview_2018_05_24.json<- as.data.frame(t(unlist(read_json("interview_2018_05_24.json"))))
interview_2018_08_05.json<- as.data.frame(t(unlist(read_json("interview_2018_08_05.json"))))
interview_2018_10_01.json<- as.data.frame(t(unlist(read_json("interview_2018_10_01.json"))))
interview_2018_11_23.json<- as.data.frame(t(unlist(read_json("interview_2018_11_23.json"))))
interview_2019_02_19.json<- as.data.frame(t(unlist(read_json("interview_2019_02_19.json"))))
interview_2019_04_23.json<- as.data.frame(t(unlist(read_json("interview_2019_04_23.json"))))
interview_2019_09_27.json<- as.data.frame(t(unlist(read_json("interview_2019_09_27.json"))))
interview_2019_11_13.json<- as.data.frame(t(unlist(read_json("interview_2019_11_13.json"))))
interview_2020_05_19.json<- as.data.frame(t(unlist(read_json("interview_2020_05_19.json"))))
interviews_1999_01_05.json<- as.data.frame(t(unlist(read_json("interviews_1999_01_05.json"))))
interviews_1999_11_08_1.json<- as.data.frame(t(unlist(read_json("interviews_1999_11_08_1.json"))))
interviews_2000_01_23.json<- as.data.frame(t(unlist(read_json("interviews_2000_01_23.json"))))
interviews_2000_03_13.json<- as.data.frame(t(unlist(read_json("interviews_2000_03_13.json"))))
interviews_2000_05_20.json<- as.data.frame(t(unlist(read_json("interviews_2000_05_20.json"))))
interviews_2000_06_16.json<- as.data.frame(t(unlist(read_json("interviews_2000_06_16.json"))))
interviews_2000_09_18.json<- as.data.frame(t(unlist(read_json("interviews_2000_09_18.json"))))
interviews_2000_03_13_6.json<- as.data.frame(t(unlist(read_json("interviews_2000-03-13_6.json"))))
interviews_2000_06_17_4.json<- as.data.frame(t(unlist(read_json("interviews_2000-06-17_4.json"))))
interviews_2000_07_07_11.json<- as.data.frame(t(unlist(read_json("interviews_2000-07-07_11.json"))))
interviews_2000_08_07_1.json<- as.data.frame(t(unlist(read_json("interviews_2000-08-07_1.json"))))
interviews_2000_09_18_1.json<- as.data.frame(t(unlist(read_json("interviews_2000-09-18_1.json"))))
interviews_2000_10_09_12.json<- as.data.frame(t(unlist(read_json("interviews_2000-10-09_12.json"))))
interviews_2000_12_09_26.json<- as.data.frame(t(unlist(read_json("interviews_2000-12-09_26.json"))))
interviews_2001_05_31.json<- as.data.frame(t(unlist(read_json("interviews_2001_05_31.json"))))
interviews_2001_10_06.json<- as.data.frame(t(unlist(read_json("interviews_2001_10_06.json"))))
interviews_2001_12_01.json<- as.data.frame(t(unlist(read_json("interviews_2001_12_01.json"))))
interviews_2001_12_14.json<- as.data.frame(t(unlist(read_json("interviews_2001_12_14.json"))))
interviews_2001_11_24_4.json<- as.data.frame(t(unlist(read_json("interviews_2001-11-24_4.json"))))
interviews_2001_12_01_0.json<- as.data.frame(t(unlist(read_json("interviews_2001-12-01_0.json"))))
interviews_2002_03_12.json<- as.data.frame(t(unlist(read_json("interviews_2002_03_12.json"))))
interviews_2002_01_11_8.json<- as.data.frame(t(unlist(read_json("interviews_2002-01-11_8.json"))))
interviews_2002_01_22_0.json<- as.data.frame(t(unlist(read_json("interviews_2002-01-22_0.json"))))
interviews_2002_02_01_89.json<- as.data.frame(t(unlist(read_json("interviews_2002-02-01_89.json"))))
interviews_2002_02_08_44.json<- as.data.frame(t(unlist(read_json("interviews_2002-02-08_44.json"))))
interviews_2002_02_08_66.json<- as.data.frame(t(unlist(read_json("interviews_2002-02-08_66.json"))))
interviews_2002_03_12_7.json<- as.data.frame(t(unlist(read_json("interviews_2002-03-12_7.json"))))
interviews_2002_04_25_0.json<- as.data.frame(t(unlist(read_json("interviews_2002-04-25_0.json"))))
interviews_2002_05_12_17.json<- as.data.frame(t(unlist(read_json("interviews_2002-05-12_17.json"))))
interviews_2002_06_03_32.json<- as.data.frame(t(unlist(read_json("interviews_2002-06-03_32.json"))))
interviews_2002_06_10_8.json<- as.data.frame(t(unlist(read_json("interviews_2002-06-10_8.json"))))
interviews_2002_06_16_45.json<- as.data.frame(t(unlist(read_json("interviews_2002-06-16_45.json"))))
interviews_2002_07_19_1.json<- as.data.frame(t(unlist(read_json("interviews_2002-07-19_1.json"))))
interviews_2002_07_19_6.json<- as.data.frame(t(unlist(read_json("interviews_2002-07-19_6.json"))))
interviews_2002_11_21_0.json<- as.data.frame(t(unlist(read_json("interviews_2002-11-21_0.json"))))
interviews_2002_12_20_9.json<- as.data.frame(t(unlist(read_json("interviews_2002-12-20_9.json"))))
interviews_2003_04_11.json<- as.data.frame(t(unlist(read_json("interviews_2003_04_11.json"))))
interviews_2003_10_17.json<- as.data.frame(t(unlist(read_json("interviews_2003_10_17.json"))))
interviews_2003_02_07_2.json<- as.data.frame(t(unlist(read_json("interviews_2003-02-07_2.json"))))
interviews_2003_05_17_4.json<- as.data.frame(t(unlist(read_json("interviews_2003-05-17_4.json"))))
interviews_2003_06_16_6.json<- as.data.frame(t(unlist(read_json("interviews_2003-06-16_6.json"))))
interviews_2003_07_22_5.json<- as.data.frame(t(unlist(read_json("interviews_2003-07-22_5.json"))))
interviews_2003_09_15_37.json<- as.data.frame(t(unlist(read_json("interviews_2003-09-15_37.json"))))
interviews_2003_10_17_33.json<- as.data.frame(t(unlist(read_json("interviews_2003-10-17_33.json"))))
interviews_2003_11_17_5.json<- as.data.frame(t(unlist(read_json("interviews_2003-11-17_5.json"))))
interviews_2004_03_08.json<- as.data.frame(t(unlist(read_json("interviews_2004_03_08.json"))))
interviews_2004_03_09.json<- as.data.frame(t(unlist(read_json("interviews_2004_03_09.json"))))
interviews_2004_03_09_1.json<- as.data.frame(t(unlist(read_json("interviews_2004_03_09_1.json"))))
interviews_2004_03_09_2.json<- as.data.frame(t(unlist(read_json("interviews_2004_03_09_2.json"))))
interviews_2004_03_17.json<- as.data.frame(t(unlist(read_json("interviews_2004_03_17.json"))))
interviews_2004_04_01.json<- as.data.frame(t(unlist(read_json("interviews_2004_04_01.json"))))
interviews_2004_04_06.json<- as.data.frame(t(unlist(read_json("interviews_2004_04_06.json"))))
interviews_2004_04_22.json<- as.data.frame(t(unlist(read_json("interviews_2004_04_22.json"))))
interviews_2004_12_07_1.json<- as.data.frame(t(unlist(read_json("interviews_2004_12_07_1.json"))))
interviews_2005_01_24.json<- as.data.frame(t(unlist(read_json("interviews_2005_01_24.json"))))
interviews_2005_09_15.json<- as.data.frame(t(unlist(read_json("interviews_2005_09_15.json"))))
interviews_2005_09_21.json<- as.data.frame(t(unlist(read_json("interviews_2005_09_21.json"))))
interviews_2005_12_18.json<- as.data.frame(t(unlist(read_json("interviews_2005_12_18.json"))))
interviews_2005_12_23.json<- as.data.frame(t(unlist(read_json("interviews_2005_12_23.json"))))
interviews_2006_03_28.json<- as.data.frame(t(unlist(read_json("interviews_2006_03_28.json"))))
interviews_2006_03_30.json<- as.data.frame(t(unlist(read_json("interviews_2006_03_30.json"))))
interviews_2006_05_19.json<- as.data.frame(t(unlist(read_json("interviews_2006_05_19.json"))))
interviews_2007_02_22.json<- as.data.frame(t(unlist(read_json("interviews_2007_02_22.json"))))
interviews_2007_05_17.json<- as.data.frame(t(unlist(read_json("interviews_2007_05_17.json"))))
interviews_2008_12_15.json<- as.data.frame(t(unlist(read_json("interviews_2008_12_15.json"))))
interviews_2009_01_28.json<- as.data.frame(t(unlist(read_json("interviews_2009_01_28.json"))))
interviews_2009_01_30.json<- as.data.frame(t(unlist(read_json("interviews_2009_01_30.json"))))
interviews_2009_02_15.json<- as.data.frame(t(unlist(read_json("interviews_2009_02_15.json"))))
interviews_2009_03_23.json<- as.data.frame(t(unlist(read_json("interviews_2009_03_23.json"))))
interviews_2009_09_27.json<- as.data.frame(t(unlist(read_json("interviews_2009_09_27.json"))))
interviews_2009_09_28.json<- as.data.frame(t(unlist(read_json("interviews_2009_09_28.json"))))
interviews_2009_11_18.json<- as.data.frame(t(unlist(read_json("interviews_2009_11_18.json"))))
interviews_2010_01_27.json<- as.data.frame(t(unlist(read_json("interviews_2010_01_27.json"))))
interviews_2010_01_28.json<- as.data.frame(t(unlist(read_json("interviews_2010_01_28.json"))))
interviews_2010_02_05.json<- as.data.frame(t(unlist(read_json("interviews_2010_02_05.json"))))
interviews_2010_02_16.json<- as.data.frame(t(unlist(read_json("interviews_2010_02_16.json"))))
interviews_2010_03_12.json<- as.data.frame(t(unlist(read_json("interviews_2010_03_12.json"))))
interviews_2010_05_11.json<- as.data.frame(t(unlist(read_json("interviews_2010_05_11.json"))))
interviews_2010_05_15.json<- as.data.frame(t(unlist(read_json("interviews_2010_05_15.json"))))
interviews_2010_06_01.json<- as.data.frame(t(unlist(read_json("interviews_2010_06_01.json"))))
interviews_2010_07_14.json<- as.data.frame(t(unlist(read_json("interviews_2010_07_14.json"))))
interviews_2010_09_04.json<- as.data.frame(t(unlist(read_json("interviews_2010_09_04.json"))))
interviews_2010_09_10.json<- as.data.frame(t(unlist(read_json("interviews_2010_09_10.json"))))
interviews_2010_12_02.json<- as.data.frame(t(unlist(read_json("interviews_2010_12_02.json"))))
interviews_2011_01_27.json<- as.data.frame(t(unlist(read_json("interviews_2011_01_27.json"))))
interviews_2011_02_15.json<- as.data.frame(t(unlist(read_json("interviews_2011_02_15.json"))))
interviews_2011_03_24.json<- as.data.frame(t(unlist(read_json("interviews_2011_03_24.json"))))
interviews_2011_04_07.json<- as.data.frame(t(unlist(read_json("interviews_2011_04_07.json"))))
interviews_2011_06_13_1.json<- as.data.frame(t(unlist(read_json("interviews_2011_06_13_1.json"))))
interviews_2011_06_13_2.json<- as.data.frame(t(unlist(read_json("interviews_2011_06_13_2.json"))))
interviews_2011_07_26.json<- as.data.frame(t(unlist(read_json("interviews_2011_07_26.json"))))
interviews_2011_10_13_2.json<- as.data.frame(t(unlist(read_json("interviews_2011_10_13_2.json"))))
interviews_2011_10_31.json<- as.data.frame(t(unlist(read_json("interviews_2011_10_31.json"))))
interviews_2011_11_01_1.json<- as.data.frame(t(unlist(read_json("interviews_2011_11_01_1.json"))))
interviews_2011_11_01_2.json<- as.data.frame(t(unlist(read_json("interviews_2011_11_01_2.json"))))
interviews_2011_12_15.json<- as.data.frame(t(unlist(read_json("interviews_2011_12_15.json"))))
interviews_2011_12_18.json<- as.data.frame(t(unlist(read_json("interviews_2011_12_18.json"))))
interviews_2012_03_19.json<- as.data.frame(t(unlist(read_json("interviews_2012_03_19.json"))))
interviews_2012_04_15.json<- as.data.frame(t(unlist(read_json("interviews_2012_04_15.json"))))
interviews_2012_06_20.json<- as.data.frame(t(unlist(read_json("interviews_2012_06_20.json"))))
interviews_2012_07_23_1.json<- as.data.frame(t(unlist(read_json("interviews_2012_07_23_1.json"))))
interviews_2012_07_23_2.json<- as.data.frame(t(unlist(read_json("interviews_2012_07_23_2.json"))))
interviews_2012_07_26_1.json<- as.data.frame(t(unlist(read_json("interviews_2012_07_26_1.json"))))
interviews_2012_08_03.json<- as.data.frame(t(unlist(read_json("interviews_2012_08_03.json"))))
interviews_2012_12_13.json<- as.data.frame(t(unlist(read_json("interviews_2012_12_13.json"))))
interviews_2013_06_29.json<- as.data.frame(t(unlist(read_json("interviews_2013_06_29.json"))))
interviews_2013_07_11.json<- as.data.frame(t(unlist(read_json("interviews_2013_07_11.json"))))
interviews_2013_07_18.json<- as.data.frame(t(unlist(read_json("interviews_2013_07_18.json"))))
interviews_2013_09_16.json<- as.data.frame(t(unlist(read_json("interviews_2013_09_16.json"))))
interviews_2013_09_18.json<- as.data.frame(t(unlist(read_json("interviews_2013_09_18.json"))))
interviews_2013_10_05.json<- as.data.frame(t(unlist(read_json("interviews_2013_10_05.json"))))
interviews_2013_10_23.json<- as.data.frame(t(unlist(read_json("interviews_2013_10_23.json"))))
interviews_2013_10_24.json<- as.data.frame(t(unlist(read_json("interviews_2013_10_24.json"))))
interviews_2013_10_25.json<- as.data.frame(t(unlist(read_json("interviews_2013_10_25.json"))))
interviews_2013_11_02.json<- as.data.frame(t(unlist(read_json("interviews_2013_11_02.json"))))
interviews_2013_12_11.json<- as.data.frame(t(unlist(read_json("interviews_2013_12_11.json"))))
interviews_2013_12_21.json<- as.data.frame(t(unlist(read_json("interviews_2013_12_21.json"))))
interviews_2013_12_23.json<- as.data.frame(t(unlist(read_json("interviews_2013_12_23.json"))))
interviews_2013_12_31.json<- as.data.frame(t(unlist(read_json("interviews_2013_12_31.json"))))
interviews_2014_01_17.json<- as.data.frame(t(unlist(read_json("interviews_2014_01_17.json"))))
interviews_2014_01_23.json<- as.data.frame(t(unlist(read_json("interviews_2014_01_23.json"))))
interviews_2014_02_12.json<- as.data.frame(t(unlist(read_json("interviews_2014_02_12.json"))))
interviews_2014_02_17.json<- as.data.frame(t(unlist(read_json("interviews_2014_02_17.json"))))
interviews_2014_02_22.json<- as.data.frame(t(unlist(read_json("interviews_2014_02_22.json"))))
interviews_2014_03_06.json<- as.data.frame(t(unlist(read_json("interviews_2014_03_06.json"))))
interviews_2014_04_22.json<- as.data.frame(t(unlist(read_json("interviews_2014_04_22.json"))))
interviews_2014_05_15.json<- as.data.frame(t(unlist(read_json("interviews_2014_05_15.json"))))
interviews_2014_05_24.json<- as.data.frame(t(unlist(read_json("interviews_2014_05_24.json"))))
interviews_2014_06_22.json<- as.data.frame(t(unlist(read_json("interviews_2014_06_22.json"))))
interviews_2014_06_29.json<- as.data.frame(t(unlist(read_json("interviews_2014_06_29.json"))))
interviews_2014_07_09.json<- as.data.frame(t(unlist(read_json("interviews_2014_07_09.json"))))
interviews_2014_07_09_1.json<- as.data.frame(t(unlist(read_json("interviews_2014_07_09_1.json"))))
interviews_2014_07_14.json<- as.data.frame(t(unlist(read_json("interviews_2014_07_14.json"))))
interviews_2014_07_15.json<- as.data.frame(t(unlist(read_json("interviews_2014_07_15.json"))))
interviews_2014_07_17.json<- as.data.frame(t(unlist(read_json("interviews_2014_07_17.json"))))
interviews_2014_07_17_1.json<- as.data.frame(t(unlist(read_json("interviews_2014_07_17_1.json"))))
interviews_2014_07_18.json<- as.data.frame(t(unlist(read_json("interviews_2014_07_18.json"))))
interviews_2014_07_18_1.json<- as.data.frame(t(unlist(read_json("interviews_2014_07_18_1.json"))))
interviews_2014_09_06.json<- as.data.frame(t(unlist(read_json("interviews_2014_09_06.json"))))
interviews_2014_09_08.json<- as.data.frame(t(unlist(read_json("interviews_2014_09_08.json"))))
interviews_2014_09_08_1.json<- as.data.frame(t(unlist(read_json("interviews_2014_09_08_1.json"))))
interviews_2014_09_08_2.json<- as.data.frame(t(unlist(read_json("interviews_2014_09_08_2.json"))))
interviews_2014_09_25.json<- as.data.frame(t(unlist(read_json("interviews_2014_09_25.json"))))
interviews_2014_10_09.json<- as.data.frame(t(unlist(read_json("interviews_2014_10_09.json"))))
interviews_2014_10_28.json<- as.data.frame(t(unlist(read_json("interviews_2014_10_28.json"))))
interviews_2014_10_28_1.json<- as.data.frame(t(unlist(read_json("interviews_2014_10_28_1.json"))))
interviews_2014_11_03.json<- as.data.frame(t(unlist(read_json("interviews_2014_11_03.json"))))
interviews_2014_11_09.json<- as.data.frame(t(unlist(read_json("interviews_2014_11_09.json"))))
interviews_2014_11_25.json<- as.data.frame(t(unlist(read_json("interviews_2014_11_25.json"))))
interviews_2014_12_17.json<- as.data.frame(t(unlist(read_json("interviews_2014_12_17.json"))))
interviews_2014_12_31.json<- as.data.frame(t(unlist(read_json("interviews_2014_12_31.json"))))
interviews_2015_01_01.json<- as.data.frame(t(unlist(read_json("interviews_2015_01_01.json"))))
interviews_2015_01_09.json<- as.data.frame(t(unlist(read_json("interviews_2015_01_09.json"))))
interviews_2015_01_10_1.json<- as.data.frame(t(unlist(read_json("interviews_2015_01_10_1.json"))))
interviews_2015_01_13.json<- as.data.frame(t(unlist(read_json("interviews_2015_01_13.json"))))
interviews_2015_01_15.json<- as.data.frame(t(unlist(read_json("interviews_2015_01_15.json"))))
interviews_2015_01_16.json<- as.data.frame(t(unlist(read_json("interviews_2015_01_16.json"))))
interviews_2015_01_17_1.json<- as.data.frame(t(unlist(read_json("interviews_2015_01_17_1.json"))))
interviews_2015_01_21.json<- as.data.frame(t(unlist(read_json("interviews_2015_01_21.json"))))
interviews_2015_01_29.json<- as.data.frame(t(unlist(read_json("interviews_2015_01_29.json"))))
interviews_2015_02_02.json<- as.data.frame(t(unlist(read_json("interviews_2015_02_02.json"))))
interviews_2015_02_05_2.json<- as.data.frame(t(unlist(read_json("interviews_2015_02_05_2.json"))))
interviews_2015_02_16.json<- as.data.frame(t(unlist(read_json("interviews_2015_02_16.json"))))
interviews_2015_03_09.json<- as.data.frame(t(unlist(read_json("interviews_2015_03_09.json"))))
interviews_2015_03_25.json<- as.data.frame(t(unlist(read_json("interviews_2015_03_25.json"))))
interviews_2015_04_02.json<- as.data.frame(t(unlist(read_json("interviews_2015_04_02.json"))))
interviews_2015_04_08.json<- as.data.frame(t(unlist(read_json("interviews_2015_04_08.json"))))
interviews_2015_04_27.json<- as.data.frame(t(unlist(read_json("interviews_2015_04_27.json"))))
interviews_2015_05_12.json<- as.data.frame(t(unlist(read_json("interviews_2015_05_12.json"))))
interviews_2015_05_19.json<- as.data.frame(t(unlist(read_json("interviews_2015_05_19.json"))))
interviews_2015_06_10.json<- as.data.frame(t(unlist(read_json("interviews_2015_06_10.json"))))
interviews_2015_06_13.json<- as.data.frame(t(unlist(read_json("interviews_2015_06_13.json"))))
interviews_2015_06_29.json<- as.data.frame(t(unlist(read_json("interviews_2015_06_29.json"))))
interviews_2015_07_14.json<- as.data.frame(t(unlist(read_json("interviews_2015_07_14.json"))))
interviews_2015_07_29.json<- as.data.frame(t(unlist(read_json("interviews_2015_07_29.json"))))
interviews_2015_08_14.json<- as.data.frame(t(unlist(read_json("interviews_2015_08_14.json"))))
interviews_2015_09_21.json<- as.data.frame(t(unlist(read_json("interviews_2015_09_21.json"))))
interviews_2015_09_21_1.json<- as.data.frame(t(unlist(read_json("interviews_2015_09_21_1.json"))))
interviews_2015_10_06.json<- as.data.frame(t(unlist(read_json("interviews_2015_10_06.json"))))
interviews_2015_10_11.json<- as.data.frame(t(unlist(read_json("interviews_2015_10_11.json"))))
interviews_2015_10_12_1.json<- as.data.frame(t(unlist(read_json("interviews_2015_10_12_1.json"))))
interviews_2015_10_13.json<- as.data.frame(t(unlist(read_json("interviews_2015_10_13.json"))))
interviews_2015_10_29.json<- as.data.frame(t(unlist(read_json("interviews_2015_10_29.json"))))
interviews_2015_10_31.json<- as.data.frame(t(unlist(read_json("interviews_2015_10_31.json"))))
interviews_2015_11_16.json<- as.data.frame(t(unlist(read_json("interviews_2015_11_16.json"))))
interviews_2015_11_17.json<- as.data.frame(t(unlist(read_json("interviews_2015_11_17.json"))))
interviews_2015_12_24.json<- as.data.frame(t(unlist(read_json("interviews_2015_12_24.json"))))
interviews_2015_12_28.json<- as.data.frame(t(unlist(read_json("interviews_2015_12_28.json"))))
interviews_2016_01_06.json<- as.data.frame(t(unlist(read_json("interviews_2016_01_06.json"))))
interviews_2016_01_30.json<- as.data.frame(t(unlist(read_json("interviews_2016_01_30.json"))))
interviews_2016_02_03.json<- as.data.frame(t(unlist(read_json("interviews_2016_02_03.json"))))
interviews_2016_02_11.json<- as.data.frame(t(unlist(read_json("interviews_2016_02_11.json"))))
interviews_2016_03_15.json<- as.data.frame(t(unlist(read_json("interviews_2016_03_15.json"))))
interviews_2016_04_01.json<- as.data.frame(t(unlist(read_json("interviews_2016_04_01.json"))))
interviews_2016_04_28.json<- as.data.frame(t(unlist(read_json("interviews_2016_04_28.json"))))
interviews_2016_05_20.json<- as.data.frame(t(unlist(read_json("interviews_2016_05_20.json"))))
interviews_2016_06_10.json<- as.data.frame(t(unlist(read_json("interviews_2016_06_10.json"))))
interviews_2016_07_01.json<- as.data.frame(t(unlist(read_json("interviews_2016_07_01.json"))))
interviews_2016_07_05.json<- as.data.frame(t(unlist(read_json("interviews_2016_07_05.json"))))
interviews_2016_07_18.json<- as.data.frame(t(unlist(read_json("interviews_2016_07_18.json"))))
interviews_2016_09_20.json<- as.data.frame(t(unlist(read_json("interviews_2016_09_20.json"))))
interviews_2016_09_29.json<- as.data.frame(t(unlist(read_json("interviews_2016_09_29.json"))))
interviews_2016_09_30.json<- as.data.frame(t(unlist(read_json("interviews_2016_09_30.json"))))
interviews_2016_09_30_1.json<- as.data.frame(t(unlist(read_json("interviews_2016_09_30_1.json"))))
interviews_2016_11_02.json<- as.data.frame(t(unlist(read_json("interviews_2016_11_02.json"))))
interviews_2016_11_11.json<- as.data.frame(t(unlist(read_json("interviews_2016_11_11.json"))))
interviews_2016_11_26.json<- as.data.frame(t(unlist(read_json("interviews_2016_11_26.json"))))
interviews_2016_11_30.json<- as.data.frame(t(unlist(read_json("interviews_2016_11_30.json"))))
interviews_2016_12_09.json<- as.data.frame(t(unlist(read_json("interviews_2016_12_09.json"))))
interviews_2016_12_15.json<- as.data.frame(t(unlist(read_json("interviews_2016_12_15.json"))))
interviews_2016_12_16.json<- as.data.frame(t(unlist(read_json("interviews_2016_12_16.json"))))
interviews_2016_12_20.json<- as.data.frame(t(unlist(read_json("interviews_2016_12_20.json"))))
interviews_2017_01_20.json<- as.data.frame(t(unlist(read_json("interviews_2017_01_20.json"))))
interviews_2017_02_07.json<- as.data.frame(t(unlist(read_json("interviews_2017_02_07.json"))))
interviews_2017_03_24.json<- as.data.frame(t(unlist(read_json("interviews_2017_03_24.json"))))
interviews_2017_04_02.json<- as.data.frame(t(unlist(read_json("interviews_2017_04_02.json"))))
interviews_2017_04_27.json<- as.data.frame(t(unlist(read_json("interviews_2017_04_27.json"))))
interviews_2017_05_11_1.json<- as.data.frame(t(unlist(read_json("interviews_2017_05_11_1.json"))))
interviews_2017_05_18.json<- as.data.frame(t(unlist(read_json("interviews_2017_05_18.json"))))
interviews_2017_05_23.json<- as.data.frame(t(unlist(read_json("interviews_2017_05_23.json"))))
interviews_2017_06_12.json<- as.data.frame(t(unlist(read_json("interviews_2017_06_12.json"))))
interviews_2017_07_04.json<- as.data.frame(t(unlist(read_json("interviews_2017_07_04.json"))))
interviews_2017_07_07.json<- as.data.frame(t(unlist(read_json("interviews_2017_07_07.json"))))
interviews_2017_07_08.json<- as.data.frame(t(unlist(read_json("interviews_2017_07_08.json"))))
interviews_2017_07_31.json<- as.data.frame(t(unlist(read_json("interviews_2017_07_31.json"))))
interviews_2017_09_01.json<- as.data.frame(t(unlist(read_json("interviews_2017_09_01.json"))))
interviews_2017_09_16.json<- as.data.frame(t(unlist(read_json("interviews_2017_09_16.json"))))
interviews_2017_09_28.json<- as.data.frame(t(unlist(read_json("interviews_2017_09_28.json"))))
interviews_2017_09_29.json<- as.data.frame(t(unlist(read_json("interviews_2017_09_29.json"))))
interviews_2017_10_29.json<- as.data.frame(t(unlist(read_json("interviews_2017_10_29.json"))))
interviews_2017_11_15.json<- as.data.frame(t(unlist(read_json("interviews_2017_11_15.json"))))
interviews_2017_11_21.json<- as.data.frame(t(unlist(read_json("interviews_2017_11_21.json"))))
interviews_2017_11_30.json<- as.data.frame(t(unlist(read_json("interviews_2017_11_30.json"))))
interviews_2017_12_29.json<- as.data.frame(t(unlist(read_json("interviews_2017_12_29.json"))))
interviews_2018_02_07_1.json<- as.data.frame(t(unlist(read_json("interviews_2018_02_07_1.json"))))
interviews_2018_03_13.json<- as.data.frame(t(unlist(read_json("interviews_2018_03_13.json"))))
interviews_2018_03_16_1.json<- as.data.frame(t(unlist(read_json("interviews_2018_03_16_1.json"))))
interviews_2018_06_13.json<- as.data.frame(t(unlist(read_json("interviews_2018_06_13.json"))))
interviews_2018_06_15.json<- as.data.frame(t(unlist(read_json("interviews_2018_06_15.json"))))
interviews_2018_06_20.json<- as.data.frame(t(unlist(read_json("interviews_2018_06_20.json"))))
interviews_2018_06_22.json<- as.data.frame(t(unlist(read_json("interviews_2018_06_22.json"))))
interviews_2018_06_25.json<- as.data.frame(t(unlist(read_json("interviews_2018_06_25.json"))))
interviews_2018_07_05.json<- as.data.frame(t(unlist(read_json("interviews_2018_07_05.json"))))
interviews_2018_08_05.json<- as.data.frame(t(unlist(read_json("interviews_2018_08_05.json"))))
interviews_2018_11_02.json<- as.data.frame(t(unlist(read_json("interviews_2018_11_02.json"))))
interviews_2018_11_26.json<- as.data.frame(t(unlist(read_json("interviews_2018_11_26.json"))))
interviews_2018_11_29.json<- as.data.frame(t(unlist(read_json("interviews_2018_11_29.json"))))
interviews_2019_01_08.json<- as.data.frame(t(unlist(read_json("interviews_2019_01_08.json"))))
interviews_2019_01_11.json<- as.data.frame(t(unlist(read_json("interviews_2019_01_11.json"))))
interviews_2019_01_16.json<- as.data.frame(t(unlist(read_json("interviews_2019_01_16.json"))))
interviews_2019_01_17.json<- as.data.frame(t(unlist(read_json("interviews_2019_01_17.json"))))
interviews_2019_01_26.json<- as.data.frame(t(unlist(read_json("interviews_2019_01_26.json"))))
interviews_2019_01_26_1.json<- as.data.frame(t(unlist(read_json("interviews_2019_01_26_1.json"))))
interviews_2019_02_02.json<- as.data.frame(t(unlist(read_json("interviews_2019_02_02.json"))))
interviews_2019_02_08.json<- as.data.frame(t(unlist(read_json("interviews_2019_02_08.json"))))
interviews_2019_02_19.json<- as.data.frame(t(unlist(read_json("interviews_2019_02_19.json"))))
interviews_2019_02_20_2.json<- as.data.frame(t(unlist(read_json("interviews_2019_02_20_2.json"))))
interviews_2019_03_29.json<- as.data.frame(t(unlist(read_json("interviews_2019_03_29.json"))))
interviews_2019_04_01.json<- as.data.frame(t(unlist(read_json("interviews_2019_04_01.json"))))
interviews_2019_04_23.json<- as.data.frame(t(unlist(read_json("interviews_2019_04_23.json"))))
interviews_2019_05_09_1.json<- as.data.frame(t(unlist(read_json("interviews_2019_05_09_1.json"))))
interviews_2019_07_03.json<- as.data.frame(t(unlist(read_json("interviews_2019_07_03.json"))))
interviews_2019_09_20.json<- as.data.frame(t(unlist(read_json("interviews_2019_09_20.json"))))
interviews_2019_09_30_1.json<- as.data.frame(t(unlist(read_json("interviews_2019_09_30_1.json"))))
interviews_2019_10_03.json<- as.data.frame(t(unlist(read_json("interviews_2019_10_03.json"))))
interviews_2019_10_03_1.json<- as.data.frame(t(unlist(read_json("interviews_2019_10_03_1.json"))))
interviews_2019_10_09_1.json<- as.data.frame(t(unlist(read_json("interviews_2019_10_09_1.json"))))
interviews_2019_10_10.json<- as.data.frame(t(unlist(read_json("interviews_2019_10_10.json"))))
interviews_2019_10_28.json<- as.data.frame(t(unlist(read_json("interviews_2019_10_28.json"))))
interviews_2019_11_26.json<- as.data.frame(t(unlist(read_json("interviews_2019_11_26.json"))))
interviews_2019_12_03.json<- as.data.frame(t(unlist(read_json("interviews_2019_12_03.json"))))
interviews_2019_12_18.json<- as.data.frame(t(unlist(read_json("interviews_2019_12_18.json"))))



Master_1 <- bind_rows(interview_1999_01_01.json,
                      interview_1999_01_02.json,
                      interview_1999_04_10.json,
                      interview_1999_04_12.json,
                      interview_1999_05_13.json,
                      interview_1999_05_27.json,
                      interview_1999_07_26.json,
                      interview_1999_09_02.json,
                      interview_1999_11_11.json,
                      interview_1999_12_21.json,
                      interview_2000_02_11.json,
                      interview_2000_04_19.json,
                      interview_2000_06_29.json,
                      interview_2000_08_07.json,
                      interview_2000_08_08.json,
                      interview_2000_08_24.json,
                      interview_2000_10_26.json,
                      interview_2000_10_27.json,
                      interview_2001_10_26.json,
                      interview_2001_12_13.json,
                      interview_2002_01_11.json,
                      interview_2002_02_08.json,
                      interview_2002_05_08.json,
                      interview_2002_06_10.json,
                      interview_2002_06_20.json,
                      interview_2002_09_24.json,
                      interview_2002_11_21.json,
                      interview_2002_12_20.json,
                      interview_2003_05_17.json,
                      interview_2003_06_16.json,
                      interview_2003_09_11.json,
                      interview_2003_09_15.json,
                      interview_2003_09_22.json,
                      interview_2003_10_23.json,
                      interview_2003_12_11.json,
                      interview_2003_12_23.json,
                      interview_2004_02_10.json,
                      interview_2004_04_27.json,
                      interview_2004_04_29.json,
                      interview_2004_04_30.json,
                      interview_2004_10_07.json,
                      interview_2004_10_12.json,
                      interview_2004_11_10.json,
                      interview_2005_01_21.json,
                      interview_2005_03_11.json,
                      interview_2005_05_25.json,
                      interview_2005_09_05.json,
                      interview_2005_09_15.json,
                      interview_2005_09_21.json,
                      interview_2005_11_10.json,
                      interview_2005_11_15.json,
                      interview_2005_12_23.json,
                      interview_2006_02_09.json,
                      interview_2006_03_15.json,
                      interview_2006_03_30.json,
                      interview_2006_05_20.json,
                      interview_2006_05_20_1.json,
                      interview_2006_05_29.json,
                      interview_2006_09_11.json,
                      interview_2006_12_18.json,
                      interview_2007_02_26.json,
                      interview_2007_02_28.json,
                      interview_2007_07_24.json,
                      interview_2007_07_26.json,
                      interview_2007_11_25.json,
                      interview_2007_12_29.json,
                      interview_2008_01_24.json,
                      interview_2008_02_25.json,
                      interview_2008_05_30.json,
                      interview_2008_06_23.json,
                      interview_2008_07_01.json,
                      interview_2008_07_18.json,
                      interview_2008_08_27.json,
                      interview_2008_09_18.json,
                      interview_2008_10_10.json,
                      interview_2008_10_10_1.json,
                      interview_2008_11_09.json,
                      interview_2008_12_11.json,
                      interview_2008_12_24.json,
                      interview_2009_01_05.json,
                      interview_2009_03_17.json,
                      interview_2009_04_29.json,
                      interview_2009_05_20.json,
                      interview_2009_07_29.json,
                      interview_2010_01_24.json,
                      interview_2010_01_25.json,
                      interview_2010_02_13.json,
                      interview_2010_04_17.json,
                      interview_2010_05_01.json,
                      interview_2010_05_14.json,
                      interview_2010_05_16.json,
                      interview_2010_05_17.json,
                      interview_2010_05_31.json,
                      interview_2010_06_17.json,
                      interview_2010_10_15.json,
                      interview_2010_10_20.json,
                      interview_2010_12_07.json,
                      interview_2010_12_21.json,
                      interview_2010_12_24.json,
                      interview_2011_02_17.json,
                      interview_2011_03_30.json,
                      interview_2011_04_15.json,
                      interview_2011_05_16.json,
                      interview_2011_05_24.json,
                      interview_2011_05_29.json,
                      interview_2011_06_04.json,
                      interview_2011_06_25.json,
                      interview_2011_06_28.json,
                      interview_2011_06_30.json,
                      interview_2011_07_18.json,
                      interview_2011_07_21.json,
                      interview_2011_07_23.json,
                      interview_2011_08_19.json,
                      interview_2011_10_12.json,
                      interview_2011_10_19.json,
                      interview_2011_10_21.json,
                      interview_2011_10_30.json,
                      interview_2011_11_12.json,
                      interview_2011_11_27.json,
                      interview_2011_12_12.json,
                      interview_2011_12_19.json,
                      interview_2011_12_23.json,
                      interview_2012_01_25.json,
                      interview_2012_02_20.json,
                      interview_2012_03_22.json,
                      interview_2012_05_09.json,
                      interview_2012_06_18.json,
                      interview_2012_06_28.json,
                      interview_2012_07_19.json,
                      interview_2012_08_20.json,
                      interview_2012_10_07.json,
                      interview_2012_10_12.json,
                      interview_2012_10_31.json,
                      interview_2012_12_10.json,
                      interview_2012_12_31.json,
                      interview_2013_01_20.json,
                      interview_2013_02_11.json,
                      interview_2013_03_15.json,
                      interview_2013_03_21.json,
                      interview_2013_06_10.json,
                      interview_2013_07_12.json,
                      interview_2013_07_29.json,
                      interview_2013_09_12.json,
                      interview_2013_10_22.json,
                      interview_2013_11_08.json,
                      interview_2013_11_16.json,
                      interview_2013_12_12.json,
                      interview_2013_12_17.json,
                      interview_2013_12_30.json,
                      interview_2014_01_02.json,
                      interview_2014_01_24.json,
                      interview_2014_05_15.json,
                      interview_2014_07_06.json,
                      interview_2014_12_31.json,
                      interview_2015_01_02.json,
                      interview_2015_01_13.json,
                      interview_2015_01_31.json,
                      interview_2015_04_04.json,
                      interview_2015_08_15.json,
                      interview_2015_10_29.json,
                      interview_2015_12_11.json,
                      interview_2016_04_28.json,
                      interview_2016_09_27.json,
                      interview_2016_11_02.json,
                      interview_2016_12_15.json,
                      interview_2017_03_24.json,
                      interview_2017_07_31.json,
                      interview_2018_05_24.json,
                      interview_2018_08_05.json,
                      interview_2018_10_01.json,
                      interview_2018_11_23.json,
                      interview_2019_02_19.json,
                      interview_2019_04_23.json,
                      interview_2019_09_27.json,
                      interview_2019_11_13.json,
                      interview_2020_05_19.json,
                      interviews_1999_01_05.json,
                      interviews_1999_11_08_1.json,
                      interviews_2000_01_23.json,
                      interviews_2000_03_13.json,
                      interviews_2000_05_20.json,
                      interviews_2000_06_16.json,
                      interviews_2000_09_18.json,
                      interviews_2000_03_13_6.json,
                      interviews_2000_06_17_4.json,
                      interviews_2000_07_07_11.json,
                      interviews_2000_08_07_1.json,
                      interviews_2000_09_18_1.json,
                      interviews_2000_10_09_12.json,
                      interviews_2000_12_09_26.json,
                      interviews_2001_05_31.json,
                      interviews_2001_10_06.json,
                      interviews_2001_12_01.json,
                      interviews_2001_12_14.json,
                      interviews_2001_11_24_4.json,
                      interviews_2001_12_01_0.json,
                      interviews_2002_03_12.json,
                      interviews_2002_01_11_8.json,
                      interviews_2002_01_22_0.json,
                      interviews_2002_02_01_89.json,
                      interviews_2002_02_08_44.json,
                      interviews_2002_02_08_66.json,
                      interviews_2002_03_12_7.json,
                      interviews_2002_04_25_0.json,
                      interviews_2002_05_12_17.json,
                      interviews_2002_06_03_32.json,
                      interviews_2002_06_10_8.json,
                      interviews_2002_06_16_45.json,
                      interviews_2002_07_19_1.json,
                      interviews_2002_07_19_6.json,
                      interviews_2002_11_21_0.json,
                      interviews_2002_12_20_9.json,
                      interviews_2003_04_11.json,
                      interviews_2003_10_17.json,
                      interviews_2003_02_07_2.json,
                      interviews_2003_05_17_4.json,
                      interviews_2003_06_16_6.json,
                      interviews_2003_07_22_5.json,
                      interviews_2003_09_15_37.json,
                      interviews_2003_10_17_33.json,
                      interviews_2003_11_17_5.json,
                      interviews_2004_03_08.json,
                      interviews_2004_03_09.json,
                      interviews_2004_03_09_1.json,
                      interviews_2004_03_09_2.json,
                      interviews_2004_03_17.json,
                      interviews_2004_04_01.json,
                      interviews_2004_04_06.json,
                      interviews_2004_04_22.json,
                      interviews_2004_12_07_1.json,
                      interviews_2005_01_24.json,
                      interviews_2005_09_15.json,
                      interviews_2005_09_21.json,
                      interviews_2005_12_18.json,
                      interviews_2005_12_23.json,
                      interviews_2006_03_28.json,
                      interviews_2006_03_30.json,
                      interviews_2006_05_19.json,
                      interviews_2007_02_22.json,
                      interviews_2007_05_17.json,
                      interviews_2008_12_15.json,
                      interviews_2009_01_28.json,
                      interviews_2009_01_30.json,
                      interviews_2009_02_15.json,
                      interviews_2009_03_23.json,
                      interviews_2009_09_27.json,
                      interviews_2009_09_28.json,
                      interviews_2009_11_18.json,
                      interviews_2010_01_27.json,
                      interviews_2010_01_28.json,
                      interviews_2010_02_05.json,
                      interviews_2010_02_16.json,
                      interviews_2010_03_12.json,
                      interviews_2010_05_11.json,
                      interviews_2010_05_15.json,
                      interviews_2010_06_01.json,
                      interviews_2010_07_14.json,
                      interviews_2010_09_04.json,
                      interviews_2010_09_10.json,
                      interviews_2010_12_02.json,
                      interviews_2011_01_27.json,
                      interviews_2011_02_15.json,
                      interviews_2011_03_24.json,
                      interviews_2011_04_07.json,
                      interviews_2011_06_13_1.json,
                      interviews_2011_06_13_2.json,
                      interviews_2011_07_26.json,
                      interviews_2011_10_13_2.json,
                      interviews_2011_10_31.json,
                      interviews_2011_11_01_1.json,
                      interviews_2011_11_01_2.json,
                      interviews_2011_12_15.json,
                      interviews_2011_12_18.json,
                      interviews_2012_03_19.json,
                      interviews_2012_04_15.json,
                      interviews_2012_06_20.json,
                      interviews_2012_07_23_1.json,
                      interviews_2012_07_23_2.json,
                      interviews_2012_07_26_1.json,
                      interviews_2012_08_03.json,
                      interviews_2012_12_13.json,
                      interviews_2013_06_29.json,
                      interviews_2013_07_11.json,
                      interviews_2013_07_18.json,
                      interviews_2013_09_16.json,
                      interviews_2013_09_18.json,
                      interviews_2013_10_05.json,
                      interviews_2013_10_23.json,
                      interviews_2013_10_24.json,
                      interviews_2013_10_25.json,
                      interviews_2013_11_02.json,
                      interviews_2013_12_11.json,
                      interviews_2013_12_21.json,
                      interviews_2013_12_23.json,
                      interviews_2013_12_31.json,
                      interviews_2014_01_17.json,
                      interviews_2014_01_23.json,
                      interviews_2014_02_12.json,
                      interviews_2014_02_17.json,
                      interviews_2014_02_22.json,
                      interviews_2014_03_06.json,
                      interviews_2014_04_22.json,
                      interviews_2014_05_15.json,
                      interviews_2014_05_24.json,
                      interviews_2014_06_22.json,
                      interviews_2014_06_29.json,
                      interviews_2014_07_09.json,
                      interviews_2014_07_09_1.json,
                      interviews_2014_07_14.json,
                      interviews_2014_07_15.json,
                      interviews_2014_07_17.json,
                      interviews_2014_07_17_1.json,
                      interviews_2014_07_18.json,
                      interviews_2014_07_18_1.json,
                      interviews_2014_09_06.json,
                      interviews_2014_09_08.json,
                      interviews_2014_09_08_1.json,
                      interviews_2014_09_08_2.json,
                      interviews_2014_09_25.json,
                      interviews_2014_10_09.json,
                      interviews_2014_10_28.json,
                      interviews_2014_10_28_1.json,
                      interviews_2014_11_03.json,
                      interviews_2014_11_09.json,
                      interviews_2014_11_25.json,
                      interviews_2014_12_17.json,
                      interviews_2014_12_31.json,
                      interviews_2015_01_01.json,
                      interviews_2015_01_09.json,
                      interviews_2015_01_10_1.json,
                      interviews_2015_01_13.json,
                      interviews_2015_01_15.json,
                      interviews_2015_01_16.json,
                      interviews_2015_01_17_1.json,
                      interviews_2015_01_21.json,
                      interviews_2015_01_29.json,
                      interviews_2015_02_02.json,
                      interviews_2015_02_05_2.json,
                      interviews_2015_02_16.json,
                      interviews_2015_03_09.json,
                      interviews_2015_03_25.json,
                      interviews_2015_04_02.json,
                      interviews_2015_04_08.json,
                      interviews_2015_04_27.json,
                      interviews_2015_05_12.json,
                      interviews_2015_05_19.json,
                      interviews_2015_06_10.json,
                      interviews_2015_06_13.json,
                      interviews_2015_06_29.json,
                      interviews_2015_07_14.json,
                      interviews_2015_07_29.json,
                      interviews_2015_08_14.json,
                      interviews_2015_09_21.json,
                      interviews_2015_09_21_1.json,
                      interviews_2015_10_06.json,
                      interviews_2015_10_11.json,
                      interviews_2015_10_12_1.json,
                      interviews_2015_10_13.json,
                      interviews_2015_10_29.json,
                      interviews_2015_10_31.json,
                      interviews_2015_11_16.json,
                      interviews_2015_11_17.json,
                      interviews_2015_12_24.json,
                      interviews_2015_12_28.json,
                      interviews_2016_01_06.json,
                      interviews_2016_01_30.json,
                      interviews_2016_02_03.json,
                      interviews_2016_02_11.json,
                      interviews_2016_03_15.json,
                      interviews_2016_04_01.json,
                      interviews_2016_04_28.json,
                      interviews_2016_05_20.json,
                      interviews_2016_06_10.json,
                      interviews_2016_07_01.json,
                      interviews_2016_07_05.json,
                      interviews_2016_07_18.json,
                      interviews_2016_09_20.json,
                      interviews_2016_09_29.json,
                      interviews_2016_09_30.json,
                      interviews_2016_09_30_1.json,
                      interviews_2016_11_02.json,
                      interviews_2016_11_11.json,
                      interviews_2016_11_26.json,
                      interviews_2016_11_30.json,
                      interviews_2016_12_09.json,
                      interviews_2016_12_15.json,
                      interviews_2016_12_16.json,
                      interviews_2016_12_20.json,
                      interviews_2017_01_20.json,
                      interviews_2017_02_07.json,
                      interviews_2017_03_24.json,
                      interviews_2017_04_02.json,
                      interviews_2017_04_27.json,
                      interviews_2017_05_11_1.json,
                      interviews_2017_05_18.json,
                      interviews_2017_05_23.json,
                      interviews_2017_06_12.json,
                      interviews_2017_07_04.json,
                      interviews_2017_07_07.json,
                      interviews_2017_07_08.json,
                      interviews_2017_07_31.json,
                      interviews_2017_09_01.json,
                      interviews_2017_09_16.json,
                      interviews_2017_09_28.json,
                      interviews_2017_09_29.json,
                      interviews_2017_10_29.json,
                      interviews_2017_11_15.json,
                      interviews_2017_11_21.json,
                      interviews_2017_11_30.json,
                      interviews_2017_12_29.json,
                      interviews_2018_02_07_1.json,
                      interviews_2018_03_13.json,
                      interviews_2018_03_16_1.json,
                      interviews_2018_06_13.json,
                      interviews_2018_06_15.json,
                      interviews_2018_06_20.json,
                      interviews_2018_06_22.json,
                      interviews_2018_06_25.json,
                      interviews_2018_07_05.json,
                      interviews_2018_08_05.json,
                      interviews_2018_11_02.json,
                      interviews_2018_11_26.json,
                      interviews_2018_11_29.json,
                      interviews_2019_01_08.json,
                      interviews_2019_01_11.json,
                      interviews_2019_01_16.json,
                      interviews_2019_01_17.json,
                      interviews_2019_01_26.json,
                      interviews_2019_01_26_1.json,
                      interviews_2019_02_02.json,
                      interviews_2019_02_08.json,
                      interviews_2019_02_19.json,
                      interviews_2019_02_20_2.json,
                      interviews_2019_03_29.json,
                      interviews_2019_04_01.json,
                      interviews_2019_04_23.json,
                      interviews_2019_05_09_1.json,
                      interviews_2019_07_03.json,
                      interviews_2019_09_20.json,
                      interviews_2019_09_30_1.json,
                      interviews_2019_10_03.json,
                      interviews_2019_10_03_1.json,
                      interviews_2019_10_09_1.json,
                      interviews_2019_10_10.json,
                      interviews_2019_10_28.json,
                      interviews_2019_11_26.json,
                      interviews_2019_12_03.json,
                      interviews_2019_12_18.json)
colnames(Master_1)

Master_1 <- Master_1[,c("AUTHOR","TITLE", "DATE", "TEXT")]
write.csv(Master_1, file = "Master_Press_ECB_08282021.csv")




rm(interview_1999_01_01.json,
                      interview_1999_01_02.json,
                      interview_1999_04_10.json,
                      interview_1999_04_12.json,
                      interview_1999_05_13.json,
                      interview_1999_05_27.json,
                      interview_1999_07_26.json,
                      interview_1999_09_02.json,
                      interview_1999_11_11.json,
                      interview_1999_12_21.json,
                      interview_2000_02_11.json,
                      interview_2000_04_19.json,
                      interview_2000_06_29.json,
                      interview_2000_08_07.json,
                      interview_2000_08_08.json,
                      interview_2000_08_24.json,
                      interview_2000_10_26.json,
                      interview_2000_10_27.json,
                      interview_2001_10_26.json,
                      interview_2001_12_13.json,
                      interview_2002_01_11.json,
                      interview_2002_02_08.json,
                      interview_2002_05_08.json,
                      interview_2002_06_10.json,
                      interview_2002_06_20.json,
                      interview_2002_09_24.json,
                      interview_2002_11_21.json,
                      interview_2002_12_20.json,
                      interview_2003_05_17.json,
                      interview_2003_06_16.json,
                      interview_2003_09_11.json,
                      interview_2003_09_15.json,
                      interview_2003_09_22.json,
                      interview_2003_10_23.json,
                      interview_2003_12_11.json,
                      interview_2003_12_23.json,
                      interview_2004_02_10.json,
                      interview_2004_04_27.json,
                      interview_2004_04_29.json,
                      interview_2004_04_30.json,
                      interview_2004_10_07.json,
                      interview_2004_10_12.json,
                      interview_2004_11_10.json,
                      interview_2005_01_21.json,
                      interview_2005_03_11.json,
                      interview_2005_05_25.json,
                      interview_2005_09_05.json,
                      interview_2005_09_15.json,
                      interview_2005_09_21.json,
                      interview_2005_11_10.json,
                      interview_2005_11_15.json,
                      interview_2005_12_23.json,
                      interview_2006_02_09.json,
                      interview_2006_03_15.json,
                      interview_2006_03_30.json,
                      interview_2006_05_20.json,
                      interview_2006_05_20_1.json,
                      interview_2006_05_29.json,
                      interview_2006_09_11.json,
                      interview_2006_12_18.json,
                      interview_2007_02_26.json,
                      interview_2007_02_28.json,
                      interview_2007_07_24.json,
                      interview_2007_07_26.json,
                      interview_2007_11_25.json,
                      interview_2007_12_29.json,
                      interview_2008_01_24.json,
                      interview_2008_02_25.json,
                      interview_2008_05_30.json,
                      interview_2008_06_23.json,
                      interview_2008_07_01.json,
                      interview_2008_07_18.json,
                      interview_2008_08_27.json,
                      interview_2008_09_18.json,
                      interview_2008_10_10.json,
                      interview_2008_10_10_1.json,
                      interview_2008_11_09.json,
                      interview_2008_12_11.json,
                      interview_2008_12_24.json,
                      interview_2009_01_05.json,
                      interview_2009_03_17.json,
                      interview_2009_04_29.json,
                      interview_2009_05_20.json,
                      interview_2009_07_29.json,
                      interview_2010_01_24.json,
                      interview_2010_01_25.json,
                      interview_2010_02_13.json,
                      interview_2010_04_17.json,
                      interview_2010_05_01.json,
                      interview_2010_05_14.json,
                      interview_2010_05_16.json,
                      interview_2010_05_17.json,
                      interview_2010_05_31.json,
                      interview_2010_06_17.json,
                      interview_2010_10_15.json,
                      interview_2010_10_20.json,
                      interview_2010_12_07.json,
                      interview_2010_12_21.json,
                      interview_2010_12_24.json,
                      interview_2011_02_17.json,
                      interview_2011_03_30.json,
                      interview_2011_04_15.json,
                      interview_2011_05_16.json,
                      interview_2011_05_24.json,
                      interview_2011_05_29.json,
                      interview_2011_06_04.json,
                      interview_2011_06_25.json,
                      interview_2011_06_28.json,
                      interview_2011_06_30.json,
                      interview_2011_07_18.json,
                      interview_2011_07_21.json,
                      interview_2011_07_23.json,
                      interview_2011_08_19.json,
                      interview_2011_10_12.json,
                      interview_2011_10_19.json,
                      interview_2011_10_21.json,
                      interview_2011_10_30.json,
                      interview_2011_11_12.json,
                      interview_2011_11_27.json,
                      interview_2011_12_12.json,
                      interview_2011_12_19.json,
                      interview_2011_12_23.json,
                      interview_2012_01_25.json,
                      interview_2012_02_20.json,
                      interview_2012_03_22.json,
                      interview_2012_05_09.json,
                      interview_2012_06_18.json,
                      interview_2012_06_28.json,
                      interview_2012_07_19.json,
                      interview_2012_08_20.json,
                      interview_2012_10_07.json,
                      interview_2012_10_12.json,
                      interview_2012_10_31.json,
                      interview_2012_12_10.json,
                      interview_2012_12_31.json,
                      interview_2013_01_20.json,
                      interview_2013_02_11.json,
                      interview_2013_03_15.json,
                      interview_2013_03_21.json,
                      interview_2013_06_10.json,
                      interview_2013_07_12.json,
                      interview_2013_07_29.json,
                      interview_2013_09_12.json,
                      interview_2013_10_22.json,
                      interview_2013_11_08.json,
                      interview_2013_11_16.json,
                      interview_2013_12_12.json,
                      interview_2013_12_17.json,
                      interview_2013_12_30.json,
                      interview_2014_01_02.json,
                      interview_2014_01_24.json,
                      interview_2014_05_15.json,
                      interview_2014_07_06.json,
                      interview_2014_12_31.json,
                      interview_2015_01_02.json,
                      interview_2015_01_13.json,
                      interview_2015_01_31.json,
                      interview_2015_04_04.json,
                      interview_2015_08_15.json,
                      interview_2015_10_29.json,
                      interview_2015_12_11.json,
                      interview_2016_04_28.json,
                      interview_2016_09_27.json,
                      interview_2016_11_02.json,
                      interview_2016_12_15.json,
                      interview_2017_03_24.json,
                      interview_2017_07_31.json,
                      interview_2018_05_24.json,
                      interview_2018_08_05.json,
                      interview_2018_10_01.json,
                      interview_2018_11_23.json,
                      interview_2019_02_19.json,
                      interview_2019_04_23.json,
                      interview_2019_09_27.json,
                      interview_2019_11_13.json,
                      interview_2020_05_19.json,
                      interviews_1999_01_05.json,
                      interviews_1999_11_08_1.json,
                      interviews_2000_01_23.json,
                      interviews_2000_03_13.json,
                      interviews_2000_05_20.json,
                      interviews_2000_06_16.json,
                      interviews_2000_09_18.json,
                      interviews_2000_03_13_6.json,
                      interviews_2000_06_17_4.json,
                      interviews_2000_07_07_11.json,
                      interviews_2000_08_07_1.json,
                      interviews_2000_09_18_1.json,
                      interviews_2000_10_09_12.json,
                      interviews_2000_12_09_26.json,
                      interviews_2001_05_31.json,
                      interviews_2001_10_06.json,
                      interviews_2001_12_01.json,
                      interviews_2001_12_14.json,
                      interviews_2001_11_24_4.json,
                      interviews_2001_12_01_0.json,
                      interviews_2002_03_12.json,
                      interviews_2002_01_11_8.json,
                      interviews_2002_01_22_0.json,
                      interviews_2002_02_01_89.json,
                      interviews_2002_02_08_44.json,
                      interviews_2002_02_08_66.json,
                      interviews_2002_03_12_7.json,
                      interviews_2002_04_25_0.json,
                      interviews_2002_05_12_17.json,
                      interviews_2002_06_03_32.json,
                      interviews_2002_06_10_8.json,
                      interviews_2002_06_16_45.json,
                      interviews_2002_07_19_1.json,
                      interviews_2002_07_19_6.json,
                      interviews_2002_11_21_0.json,
                      interviews_2002_12_20_9.json,
                      interviews_2003_04_11.json,
                      interviews_2003_10_17.json,
                      interviews_2003_02_07_2.json,
                      interviews_2003_05_17_4.json,
                      interviews_2003_06_16_6.json,
                      interviews_2003_07_22_5.json,
                      interviews_2003_09_15_37.json,
                      interviews_2003_10_17_33.json,
                      interviews_2003_11_17_5.json,
                      interviews_2004_03_08.json,
                      interviews_2004_03_09.json,
                      interviews_2004_03_09_1.json,
                      interviews_2004_03_09_2.json,
                      interviews_2004_03_17.json,
                      interviews_2004_04_01.json,
                      interviews_2004_04_06.json,
                      interviews_2004_04_22.json,
                      interviews_2004_12_07_1.json,
                      interviews_2005_01_24.json,
                      interviews_2005_09_15.json,
                      interviews_2005_09_21.json,
                      interviews_2005_12_18.json,
                      interviews_2005_12_23.json,
                      interviews_2006_03_28.json,
                      interviews_2006_03_30.json,
                      interviews_2006_05_19.json,
                      interviews_2007_02_22.json,
                      interviews_2007_05_17.json,
                      interviews_2008_12_15.json,
                      interviews_2009_01_28.json,
                      interviews_2009_01_30.json,
                      interviews_2009_02_15.json,
                      interviews_2009_03_23.json,
                      interviews_2009_09_27.json,
                      interviews_2009_09_28.json,
                      interviews_2009_11_18.json,
                      interviews_2010_01_27.json,
                      interviews_2010_01_28.json,
                      interviews_2010_02_05.json,
                      interviews_2010_02_16.json,
                      interviews_2010_03_12.json,
                      interviews_2010_05_11.json,
                      interviews_2010_05_15.json,
                      interviews_2010_06_01.json,
                      interviews_2010_07_14.json,
                      interviews_2010_09_04.json,
                      interviews_2010_09_10.json,
                      interviews_2010_12_02.json,
                      interviews_2011_01_27.json,
                      interviews_2011_02_15.json,
                      interviews_2011_03_24.json,
                      interviews_2011_04_07.json,
                      interviews_2011_06_13_1.json,
                      interviews_2011_06_13_2.json,
                      interviews_2011_07_26.json,
                      interviews_2011_10_13_2.json,
                      interviews_2011_10_31.json,
                      interviews_2011_11_01_1.json,
                      interviews_2011_11_01_2.json,
                      interviews_2011_12_15.json,
                      interviews_2011_12_18.json,
                      interviews_2012_03_19.json,
                      interviews_2012_04_15.json,
                      interviews_2012_06_20.json,
                      interviews_2012_07_23_1.json,
                      interviews_2012_07_23_2.json,
                      interviews_2012_07_26_1.json,
                      interviews_2012_08_03.json,
                      interviews_2012_12_13.json,
                      interviews_2013_06_29.json,
                      interviews_2013_07_11.json,
                      interviews_2013_07_18.json,
                      interviews_2013_09_16.json,
                      interviews_2013_09_18.json,
                      interviews_2013_10_05.json,
                      interviews_2013_10_23.json,
                      interviews_2013_10_24.json,
                      interviews_2013_10_25.json,
                      interviews_2013_11_02.json,
                      interviews_2013_12_11.json,
                      interviews_2013_12_21.json,
                      interviews_2013_12_23.json,
                      interviews_2013_12_31.json,
                      interviews_2014_01_17.json,
                      interviews_2014_01_23.json,
                      interviews_2014_02_12.json,
                      interviews_2014_02_17.json,
                      interviews_2014_02_22.json,
                      interviews_2014_03_06.json,
                      interviews_2014_04_22.json,
                      interviews_2014_05_15.json,
                      interviews_2014_05_24.json,
                      interviews_2014_06_22.json,
                      interviews_2014_06_29.json,
                      interviews_2014_07_09.json,
                      interviews_2014_07_09_1.json,
                      interviews_2014_07_14.json,
                      interviews_2014_07_15.json,
                      interviews_2014_07_17.json,
                      interviews_2014_07_17_1.json,
                      interviews_2014_07_18.json,
                      interviews_2014_07_18_1.json,
                      interviews_2014_09_06.json,
                      interviews_2014_09_08.json,
                      interviews_2014_09_08_1.json,
                      interviews_2014_09_08_2.json,
                      interviews_2014_09_25.json,
                      interviews_2014_10_09.json,
                      interviews_2014_10_28.json,
                      interviews_2014_10_28_1.json,
                      interviews_2014_11_03.json,
                      interviews_2014_11_09.json,
                      interviews_2014_11_25.json,
                      interviews_2014_12_17.json,
                      interviews_2014_12_31.json,
                      interviews_2015_01_01.json,
                      interviews_2015_01_09.json,
                      interviews_2015_01_10_1.json,
                      interviews_2015_01_13.json,
                      interviews_2015_01_15.json,
                      interviews_2015_01_16.json,
                      interviews_2015_01_17_1.json,
                      interviews_2015_01_21.json,
                      interviews_2015_01_29.json,
                      interviews_2015_02_02.json,
                      interviews_2015_02_05_2.json,
                      interviews_2015_02_16.json,
                      interviews_2015_03_09.json,
                      interviews_2015_03_25.json,
                      interviews_2015_04_02.json,
                      interviews_2015_04_08.json,
                      interviews_2015_04_27.json,
                      interviews_2015_05_12.json,
                      interviews_2015_05_19.json,
                      interviews_2015_06_10.json,
                      interviews_2015_06_13.json,
                      interviews_2015_06_29.json,
                      interviews_2015_07_14.json,
                      interviews_2015_07_29.json,
                      interviews_2015_08_14.json,
                      interviews_2015_09_21.json,
                      interviews_2015_09_21_1.json,
                      interviews_2015_10_06.json,
                      interviews_2015_10_11.json,
                      interviews_2015_10_12_1.json,
                      interviews_2015_10_13.json,
                      interviews_2015_10_29.json,
                      interviews_2015_10_31.json,
                      interviews_2015_11_16.json,
                      interviews_2015_11_17.json,
                      interviews_2015_12_24.json,
                      interviews_2015_12_28.json,
                      interviews_2016_01_06.json,
                      interviews_2016_01_30.json,
                      interviews_2016_02_03.json,
                      interviews_2016_02_11.json,
                      interviews_2016_03_15.json,
                      interviews_2016_04_01.json,
                      interviews_2016_04_28.json,
                      interviews_2016_05_20.json,
                      interviews_2016_06_10.json,
                      interviews_2016_07_01.json,
                      interviews_2016_07_05.json,
                      interviews_2016_07_18.json,
                      interviews_2016_09_20.json,
                      interviews_2016_09_29.json,
                      interviews_2016_09_30.json,
                      interviews_2016_09_30_1.json,
                      interviews_2016_11_02.json,
                      interviews_2016_11_11.json,
                      interviews_2016_11_26.json,
                      interviews_2016_11_30.json,
                      interviews_2016_12_09.json,
                      interviews_2016_12_15.json,
                      interviews_2016_12_16.json,
                      interviews_2016_12_20.json,
                      interviews_2017_01_20.json,
                      interviews_2017_02_07.json,
                      interviews_2017_03_24.json,
                      interviews_2017_04_02.json,
                      interviews_2017_04_27.json,
                      interviews_2017_05_11_1.json,
                      interviews_2017_05_18.json,
                      interviews_2017_05_23.json,
                      interviews_2017_06_12.json,
                      interviews_2017_07_04.json,
                      interviews_2017_07_07.json,
                      interviews_2017_07_08.json,
                      interviews_2017_07_31.json,
                      interviews_2017_09_01.json,
                      interviews_2017_09_16.json,
                      interviews_2017_09_28.json,
                      interviews_2017_09_29.json,
                      interviews_2017_10_29.json,
                      interviews_2017_11_15.json,
                      interviews_2017_11_21.json,
                      interviews_2017_11_30.json,
                      interviews_2017_12_29.json,
                      interviews_2018_02_07_1.json,
                      interviews_2018_03_13.json,
                      interviews_2018_03_16_1.json,
                      interviews_2018_06_13.json,
                      interviews_2018_06_15.json,
                      interviews_2018_06_20.json,
                      interviews_2018_06_22.json,
                      interviews_2018_06_25.json,
                      interviews_2018_07_05.json,
                      interviews_2018_08_05.json,
                      interviews_2018_11_02.json,
                      interviews_2018_11_26.json,
                      interviews_2018_11_29.json,
                      interviews_2019_01_08.json,
                      interviews_2019_01_11.json,
                      interviews_2019_01_16.json,
                      interviews_2019_01_17.json,
                      interviews_2019_01_26.json,
                      interviews_2019_01_26_1.json,
                      interviews_2019_02_02.json,
                      interviews_2019_02_08.json,
                      interviews_2019_02_19.json,
                      interviews_2019_02_20_2.json,
                      interviews_2019_03_29.json,
                      interviews_2019_04_01.json,
                      interviews_2019_04_23.json,
                      interviews_2019_05_09_1.json,
                      interviews_2019_07_03.json,
                      interviews_2019_09_20.json,
                      interviews_2019_09_30_1.json,
                      interviews_2019_10_03.json,
                      interviews_2019_10_03_1.json,
                      interviews_2019_10_09_1.json,
                      interviews_2019_10_10.json,
                      interviews_2019_10_28.json,
                      interviews_2019_11_26.json,
                      interviews_2019_12_03.json,
                      interviews_2019_12_18.json)


