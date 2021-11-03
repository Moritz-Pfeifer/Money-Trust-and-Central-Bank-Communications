

#########################################################
##
## Data Import Script
## Sentiment Analysis on Central Bankers
## Client: Moritz Pfiffer
## 8/16/2021
## Note: Code requires supporting excel for editing parameters
## 
#############################################################

setwd("C:\\Users\\salaz\\Desktop\\Moritz\\Reden_BB")
library(rjson)
library(dplyr)
library(stringr)
#
# Importing Reported Json files
#

Reden_BB <- as.data.frame(fromJSON(paste(readLines("reden_01_02_2008_790.json"))),encoding = "UTF-8")


Reden_BB_2 <- as.data.frame(fromJSON(paste(readLines("reden_01_02_2008_790.json"))))



reden_01_02_2008_790.json<- as.data.frame(fromJSON(paste(readLines("reden_01_02_2008_790.json"))))
reden_01_02_2012_565.json<- as.data.frame(fromJSON(paste(readLines("reden_01_02_2012_565.json"))))
reden_01_02_2017_269.json<- as.data.frame(fromJSON(paste(readLines("reden_01_02_2017_269.json"))))
reden_01_03_2017_258.json<- as.data.frame(fromJSON(paste(readLines("reden_01_03_2017_258.json"))))
reden_01_04_2019_42.json<- as.data.frame(fromJSON(paste(readLines("reden_01_04_2019_42.json"))))
reden_01_04_2019_43.json<- as.data.frame(fromJSON(paste(readLines("reden_01_04_2019_43.json"))))
reden_01_06_2005_867.json<- as.data.frame(fromJSON(paste(readLines("reden_01_06_2005_867.json"))))
reden_01_06_2015_400.json<- as.data.frame(fromJSON(paste(readLines("reden_01_06_2015_400.json"))))
reden_01_06_2016_325.json<- as.data.frame(fromJSON(paste(readLines("reden_01_06_2016_325.json"))))
reden_01_06_2016_326.json<- as.data.frame(fromJSON(paste(readLines("reden_01_06_2016_326.json"))))
reden_01_07_2010_671.json<- as.data.frame(fromJSON(paste(readLines("reden_01_07_2010_671.json"))))
reden_01_07_2015_391.json<- as.data.frame(fromJSON(paste(readLines("reden_01_07_2015_391.json"))))
reden_01_07_2015_392.json<- as.data.frame(fromJSON(paste(readLines("reden_01_07_2015_392.json"))))
reden_01_07_2016_316.json<- as.data.frame(fromJSON(paste(readLines("reden_01_07_2016_316.json"))))
reden_01_09_2011_596.json<- as.data.frame(fromJSON(paste(readLines("reden_01_09_2011_596.json"))))
reden_01_10_2012_547.json<- as.data.frame(fromJSON(paste(readLines("reden_01_10_2012_547.json"))))
reden_01_10_2013_494.json<- as.data.frame(fromJSON(paste(readLines("reden_01_10_2013_494.json"))))
reden_01_10_2015_377.json<- as.data.frame(fromJSON(paste(readLines("reden_01_10_2015_377.json"))))
reden_01_10_2019_982.json<- as.data.frame(fromJSON(paste(readLines("reden_01_10_2019_982.json"))))
reden_01_10_2019_983.json<- as.data.frame(fromJSON(paste(readLines("reden_01_10_2019_983.json"))))
reden_01_11_2007_801.json<- as.data.frame(fromJSON(paste(readLines("reden_01_11_2007_801.json"))))
reden_01_11_2019_970.json<- as.data.frame(fromJSON(paste(readLines("reden_01_11_2019_970.json"))))
reden_01_12_2014_424.json<- as.data.frame(fromJSON(paste(readLines("reden_01_12_2014_424.json"))))
reden_01_12_2014_425.json<- as.data.frame(fromJSON(paste(readLines("reden_01_12_2014_425.json"))))
reden_02_02_2010_691.json<- as.data.frame(fromJSON(paste(readLines("reden_02_02_2010_691.json"))))
reden_02_02_2011_632.json<- as.data.frame(fromJSON(paste(readLines("reden_02_02_2011_632.json"))))
reden_02_02_2011_633.json<- as.data.frame(fromJSON(paste(readLines("reden_02_02_2011_633.json"))))
reden_02_02_2017_268.json<- as.data.frame(fromJSON(paste(readLines("reden_02_02_2017_268.json"))))
reden_02_03_2011_624.json<- as.data.frame(fromJSON(paste(readLines("reden_02_03_2011_624.json"))))
reden_02_05_2011_611.json<- as.data.frame(fromJSON(paste(readLines("reden_02_05_2011_611.json"))))
reden_02_05_2011_612.json<- as.data.frame(fromJSON(paste(readLines("reden_02_05_2011_612.json"))))
reden_02_05_2016_331.json<- as.data.frame(fromJSON(paste(readLines("reden_02_05_2016_331.json"))))
reden_02_05_2018_103.json<- as.data.frame(fromJSON(paste(readLines("reden_02_05_2018_103.json"))))
reden_02_05_2019_41.json<- as.data.frame(fromJSON(paste(readLines("reden_02_05_2019_41.json"))))
reden_02_07_2013_507.json<- as.data.frame(fromJSON(paste(readLines("reden_02_07_2013_507.json"))))
reden_02_10_2015_376.json<- as.data.frame(fromJSON(paste(readLines("reden_02_10_2015_376.json"))))
reden_02_10_2016_305.json<- as.data.frame(fromJSON(paste(readLines("reden_02_10_2016_305.json"))))
reden_02_10_2017_185.json<- as.data.frame(fromJSON(paste(readLines("reden_02_10_2017_185.json"))))
reden_02_11_2007_800.json<- as.data.frame(fromJSON(paste(readLines("reden_02_11_2007_800.json"))))
reden_02_12_2003_1.json<- as.data.frame(fromJSON(paste(readLines("reden_02_12_2003_1.json"))))
reden_02_12_2003_2.json<- as.data.frame(fromJSON(paste(readLines("reden_02_12_2003_2.json"))))
reden_02_12_2003_3.json<- as.data.frame(fromJSON(paste(readLines("reden_02_12_2003_3.json"))))
reden_02_12_2003_4.json<- as.data.frame(fromJSON(paste(readLines("reden_02_12_2003_4.json"))))
reden_02_12_2003_5.json<- as.data.frame(fromJSON(paste(readLines("reden_02_12_2003_5.json"))))
reden_02_12_2003_6.json<- as.data.frame(fromJSON(paste(readLines("reden_02_12_2003_6.json"))))
reden_02_12_2003_7.json<- as.data.frame(fromJSON(paste(readLines("reden_02_12_2003_7.json"))))
reden_02_12_2003_8.json<- as.data.frame(fromJSON(paste(readLines("reden_02_12_2003_8.json"))))
reden_02_12_2003_9.json<- as.data.frame(fromJSON(paste(readLines("reden_02_12_2003_9.json"))))
reden_02_12_2003_10.json<- as.data.frame(fromJSON(paste(readLines("reden_02_12_2003_10.json"))))
reden_02_12_2010_642.json<- as.data.frame(fromJSON(paste(readLines("reden_02_12_2010_642.json"))))
reden_02_12_2010_643.json<- as.data.frame(fromJSON(paste(readLines("reden_02_12_2010_643.json"))))
reden_02_12_2015_358.json<- as.data.frame(fromJSON(paste(readLines("reden_02_12_2015_358.json"))))
reden_03_02_2017_267.json<- as.data.frame(fromJSON(paste(readLines("reden_03_02_2017_267.json"))))
reden_03_03_2016_341.json<- as.data.frame(fromJSON(paste(readLines("reden_03_03_2016_341.json"))))
reden_03_04_2017_242.json<- as.data.frame(fromJSON(paste(readLines("reden_03_04_2017_242.json"))))
reden_03_04_2017_243.json<- as.data.frame(fromJSON(paste(readLines("reden_03_04_2017_243.json"))))
reden_03_04_2017_244.json<- as.data.frame(fromJSON(paste(readLines("reden_03_04_2017_244.json"))))
reden_03_05_2007_820.json<- as.data.frame(fromJSON(paste(readLines("reden_03_05_2007_820.json"))))
reden_03_05_2019_40.json<- as.data.frame(fromJSON(paste(readLines("reden_03_05_2019_40.json"))))
reden_03_06_2005_866.json<- as.data.frame(fromJSON(paste(readLines("reden_03_06_2005_866.json"))))
reden_03_06_2007_813.json<- as.data.frame(fromJSON(paste(readLines("reden_03_06_2007_813.json"))))
reden_03_06_2008_771.json<- as.data.frame(fromJSON(paste(readLines("reden_03_06_2008_771.json"))))
reden_03_07_2007_808.json<- as.data.frame(fromJSON(paste(readLines("reden_03_07_2007_808.json"))))
reden_03_07_2013_506.json<- as.data.frame(fromJSON(paste(readLines("reden_03_07_2013_506.json"))))
reden_03_07_2014_451.json<- as.data.frame(fromJSON(paste(readLines("reden_03_07_2014_451.json"))))
reden_03_09_2018_84.json<- as.data.frame(fromJSON(paste(readLines("reden_03_09_2018_84.json"))))
reden_03_09_2018_85.json<- as.data.frame(fromJSON(paste(readLines("reden_03_09_2018_85.json"))))
reden_03_11_2006_833.json<- as.data.frame(fromJSON(paste(readLines("reden_03_11_2006_833.json"))))
reden_03_11_2009_706.json<- as.data.frame(fromJSON(paste(readLines("reden_03_11_2009_706.json"))))
reden_03_11_2009_707.json<- as.data.frame(fromJSON(paste(readLines("reden_03_11_2009_707.json"))))
reden_03_11_2010_654.json<- as.data.frame(fromJSON(paste(readLines("reden_03_11_2010_654.json"))))
reden_03_11_2016_298.json<- as.data.frame(fromJSON(paste(readLines("reden_03_11_2016_298.json"))))
reden_03_11_2017_177.json<- as.data.frame(fromJSON(paste(readLines("reden_03_11_2017_177.json"))))
reden_03_12_1999_1.json<- as.data.frame(fromJSON(paste(readLines("reden_03_12_1999_1.json"))))
reden_03_12_1999_2.json<- as.data.frame(fromJSON(paste(readLines("reden_03_12_1999_2.json"))))
reden_03_12_1999_3.json<- as.data.frame(fromJSON(paste(readLines("reden_03_12_1999_3.json"))))
reden_03_12_1999_4.json<- as.data.frame(fromJSON(paste(readLines("reden_03_12_1999_4.json"))))
reden_03_12_2009_696.json<- as.data.frame(fromJSON(paste(readLines("reden_03_12_2009_696.json"))))
reden_03_12_2013_473.json<- as.data.frame(fromJSON(paste(readLines("reden_03_12_2013_473.json"))))
reden_03_12_2014_423.json<- as.data.frame(fromJSON(paste(readLines("reden_03_12_2014_423.json"))))
reden_03_12_2015_357.json<- as.data.frame(fromJSON(paste(readLines("reden_03_12_2015_357.json"))))
reden_03_12_2018_62.json<- as.data.frame(fromJSON(paste(readLines("reden_03_12_2018_62.json"))))
reden_04_02_2013_527.json<- as.data.frame(fromJSON(paste(readLines("reden_04_02_2013_527.json"))))
reden_04_02_2015_413.json<- as.data.frame(fromJSON(paste(readLines("reden_04_02_2015_413.json"))))
reden_04_02_2016_347.json<- as.data.frame(fromJSON(paste(readLines("reden_04_02_2016_347.json"))))
reden_04_03_2011_623.json<- as.data.frame(fromJSON(paste(readLines("reden_04_03_2011_623.json"))))
reden_04_05_2007_819.json<- as.data.frame(fromJSON(paste(readLines("reden_04_05_2007_819.json"))))
reden_04_05_2009_731.json<- as.data.frame(fromJSON(paste(readLines("reden_04_05_2009_731.json"))))
reden_04_05_2010_682.json<- as.data.frame(fromJSON(paste(readLines("reden_04_05_2010_682.json"))))
reden_04_05_2015_404.json<- as.data.frame(fromJSON(paste(readLines("reden_04_05_2015_404.json"))))
reden_04_05_2017_234.json<- as.data.frame(fromJSON(paste(readLines("reden_04_05_2017_234.json"))))
reden_04_05_2017_235.json<- as.data.frame(fromJSON(paste(readLines("reden_04_05_2017_235.json"))))
reden_04_05_2018_100.json<- as.data.frame(fromJSON(paste(readLines("reden_04_05_2018_100.json"))))
reden_04_05_2018_101.json<- as.data.frame(fromJSON(paste(readLines("reden_04_05_2018_101.json"))))
reden_04_05_2018_102.json<- as.data.frame(fromJSON(paste(readLines("reden_04_05_2018_102.json"))))
reden_04_07_2012_555.json<- as.data.frame(fromJSON(paste(readLines("reden_04_07_2012_555.json"))))
reden_04_09_2009_718.json<- as.data.frame(fromJSON(paste(readLines("reden_04_09_2009_718.json"))))
reden_04_09_2009_719.json<- as.data.frame(fromJSON(paste(readLines("reden_04_09_2009_719.json"))))
reden_04_09_2014_446.json<- as.data.frame(fromJSON(paste(readLines("reden_04_09_2014_446.json"))))
reden_04_10_2011_587.json<- as.data.frame(fromJSON(paste(readLines("reden_04_10_2011_587.json"))))
reden_04_11_2008_757.json<- as.data.frame(fromJSON(paste(readLines("reden_04_11_2008_757.json"))))
reden_04_11_2014_438.json<- as.data.frame(fromJSON(paste(readLines("reden_04_11_2014_438.json"))))
reden_04_11_2019_968.json<- as.data.frame(fromJSON(paste(readLines("reden_04_11_2019_968.json"))))
reden_04_11_2019_969.json<- as.data.frame(fromJSON(paste(readLines("reden_04_11_2019_969.json"))))
reden_04_12_2012_535.json<- as.data.frame(fromJSON(paste(readLines("reden_04_12_2012_535.json"))))
reden_04_12_2015_356.json<- as.data.frame(fromJSON(paste(readLines("reden_04_12_2015_356.json"))))
reden_04_12_2019_955.json<- as.data.frame(fromJSON(paste(readLines("reden_04_12_2019_955.json"))))
reden_04_12_2019_956.json<- as.data.frame(fromJSON(paste(readLines("reden_04_12_2019_956.json"))))
reden_05_02_2018_143.json<- as.data.frame(fromJSON(paste(readLines("reden_05_02_2018_143.json"))))
reden_05_03_2006_850.json<- as.data.frame(fromJSON(paste(readLines("reden_05_03_2006_850.json"))))
reden_05_03_2018_124.json<- as.data.frame(fromJSON(paste(readLines("reden_05_03_2018_124.json"))))
reden_05_03_2018_125.json<- as.data.frame(fromJSON(paste(readLines("reden_05_03_2018_125.json"))))
reden_05_03_2018_126.json<- as.data.frame(fromJSON(paste(readLines("reden_05_03_2018_126.json"))))
reden_05_04_2011_617.json<- as.data.frame(fromJSON(paste(readLines("reden_05_04_2011_617.json"))))
reden_05_04_2018_116.json<- as.data.frame(fromJSON(paste(readLines("reden_05_04_2018_116.json"))))
reden_05_05_2006_841.json<- as.data.frame(fromJSON(paste(readLines("reden_05_05_2006_841.json"))))
reden_05_05_2006_842.json<- as.data.frame(fromJSON(paste(readLines("reden_05_05_2006_842.json"))))
reden_05_05_2006_843.json<- as.data.frame(fromJSON(paste(readLines("reden_05_05_2006_843.json"))))
reden_05_05_2010_681.json<- as.data.frame(fromJSON(paste(readLines("reden_05_05_2010_681.json"))))
reden_05_05_2015_403.json<- as.data.frame(fromJSON(paste(readLines("reden_05_05_2015_403.json"))))
reden_05_06_2009_726.json<- as.data.frame(fromJSON(paste(readLines("reden_05_06_2009_726.json"))))
reden_05_06_2018_97.json<- as.data.frame(fromJSON(paste(readLines("reden_05_06_2018_97.json"))))
reden_05_07_2012_554.json<- as.data.frame(fromJSON(paste(readLines("reden_05_07_2012_554.json"))))
reden_05_07_2018_92.json<- as.data.frame(fromJSON(paste(readLines("reden_05_07_2018_92.json"))))
reden_05_09_2011_595.json<- as.data.frame(fromJSON(paste(readLines("reden_05_09_2011_595.json"))))
reden_05_09_2013_498.json<- as.data.frame(fromJSON(paste(readLines("reden_05_09_2013_498.json"))))
reden_05_09_2016_311.json<- as.data.frame(fromJSON(paste(readLines("reden_05_09_2016_311.json"))))
reden_05_09_2019_992.json<- as.data.frame(fromJSON(paste(readLines("reden_05_09_2019_992.json"))))
reden_05_10_2010_663.json<- as.data.frame(fromJSON(paste(readLines("reden_05_10_2010_663.json"))))
reden_05_11_2010_653.json<- as.data.frame(fromJSON(paste(readLines("reden_05_11_2010_653.json"))))
reden_05_11_2018_76.json<- as.data.frame(fromJSON(paste(readLines("reden_05_11_2018_76.json"))))
reden_05_12_2002_1.json<- as.data.frame(fromJSON(paste(readLines("reden_05_12_2002_1.json"))))
reden_05_12_2002_2.json<- as.data.frame(fromJSON(paste(readLines("reden_05_12_2002_2.json"))))
reden_05_12_2002_3.json<- as.data.frame(fromJSON(paste(readLines("reden_05_12_2002_3.json"))))
reden_05_12_2002_4.json<- as.data.frame(fromJSON(paste(readLines("reden_05_12_2002_4.json"))))
reden_05_12_2002_5.json<- as.data.frame(fromJSON(paste(readLines("reden_05_12_2002_5.json"))))
reden_05_12_2002_6.json<- as.data.frame(fromJSON(paste(readLines("reden_05_12_2002_6.json"))))
reden_05_12_2002_7.json<- as.data.frame(fromJSON(paste(readLines("reden_05_12_2002_7.json"))))
reden_05_12_2002_8.json<- as.data.frame(fromJSON(paste(readLines("reden_05_12_2002_8.json"))))
reden_05_12_2002_9.json<- as.data.frame(fromJSON(paste(readLines("reden_05_12_2002_9.json"))))
reden_05_12_2002_10.json<- as.data.frame(fromJSON(paste(readLines("reden_05_12_2002_10.json"))))
reden_05_12_2002_11.json<- as.data.frame(fromJSON(paste(readLines("reden_05_12_2002_11.json"))))
reden_05_12_2002_12.json<- as.data.frame(fromJSON(paste(readLines("reden_05_12_2002_12.json"))))
reden_05_12_2002_13.json<- as.data.frame(fromJSON(paste(readLines("reden_05_12_2002_13.json"))))
reden_05_12_2002_14.json<- as.data.frame(fromJSON(paste(readLines("reden_05_12_2002_14.json"))))
reden_05_12_2002_15.json<- as.data.frame(fromJSON(paste(readLines("reden_05_12_2002_15.json"))))
reden_05_12_2016_284.json<- as.data.frame(fromJSON(paste(readLines("reden_05_12_2016_284.json"))))
reden_05_12_2017_155.json<- as.data.frame(fromJSON(paste(readLines("reden_05_12_2017_155.json"))))
reden_05_12_2019_953.json<- as.data.frame(fromJSON(paste(readLines("reden_05_12_2019_953.json"))))
reden_05_12_2019_954.json<- as.data.frame(fromJSON(paste(readLines("reden_05_12_2019_954.json"))))
reden_06_02_2007_828.json<- as.data.frame(fromJSON(paste(readLines("reden_06_02_2007_828.json"))))
reden_06_02_2014_467.json<- as.data.frame(fromJSON(paste(readLines("reden_06_02_2014_467.json"))))
reden_06_02_2017_266.json<- as.data.frame(fromJSON(paste(readLines("reden_06_02_2017_266.json"))))
reden_06_02_2018_141.json<- as.data.frame(fromJSON(paste(readLines("reden_06_02_2018_141.json"))))
reden_06_02_2018_142.json<- as.data.frame(fromJSON(paste(readLines("reden_06_02_2018_142.json"))))
reden_06_03_2017_257.json<- as.data.frame(fromJSON(paste(readLines("reden_06_03_2017_257.json"))))
reden_06_04_2017_241.json<- as.data.frame(fromJSON(paste(readLines("reden_06_04_2017_241.json"))))
reden_06_05_2019_38.json<- as.data.frame(fromJSON(paste(readLines("reden_06_05_2019_38.json"))))
reden_06_05_2019_39.json<- as.data.frame(fromJSON(paste(readLines("reden_06_05_2019_39.json"))))
reden_06_06_2005_865.json<- as.data.frame(fromJSON(paste(readLines("reden_06_06_2005_865.json"))))
reden_06_06_2007_812.json<- as.data.frame(fromJSON(paste(readLines("reden_06_06_2007_812.json"))))
reden_06_06_2008_770.json<- as.data.frame(fromJSON(paste(readLines("reden_06_06_2008_770.json"))))
reden_06_06_2018_96.json<- as.data.frame(fromJSON(paste(readLines("reden_06_06_2018_96.json"))))
reden_06_07_2006_837.json<- as.data.frame(fromJSON(paste(readLines("reden_06_07_2006_837.json"))))
reden_06_07_2017_206.json<- as.data.frame(fromJSON(paste(readLines("reden_06_07_2017_206.json"))))
reden_06_09_2011_592.json<- as.data.frame(fromJSON(paste(readLines("reden_06_09_2011_592.json"))))
reden_06_09_2011_593.json<- as.data.frame(fromJSON(paste(readLines("reden_06_09_2011_593.json"))))
reden_06_09_2011_594.json<- as.data.frame(fromJSON(paste(readLines("reden_06_09_2011_594.json"))))
reden_06_11_2013_487.json<- as.data.frame(fromJSON(paste(readLines("reden_06_11_2013_487.json"))))
reden_06_12_2012_534.json<- as.data.frame(fromJSON(paste(readLines("reden_06_12_2012_534.json"))))
reden_07_02_2011_631.json<- as.data.frame(fromJSON(paste(readLines("reden_07_02_2011_631.json"))))
reden_07_02_2017_265.json<- as.data.frame(fromJSON(paste(readLines("reden_07_02_2017_265.json"))))
reden_07_02_2019_52.json<- as.data.frame(fromJSON(paste(readLines("reden_07_02_2019_52.json"))))
reden_07_02_2019_53.json<- as.data.frame(fromJSON(paste(readLines("reden_07_02_2019_53.json"))))
reden_07_03_2008_785.json<- as.data.frame(fromJSON(paste(readLines("reden_07_03_2008_785.json"))))
reden_07_03_2017_256.json<- as.data.frame(fromJSON(paste(readLines("reden_07_03_2017_256.json"))))
reden_07_03_2018_123.json<- as.data.frame(fromJSON(paste(readLines("reden_07_03_2018_123.json"))))
reden_07_04_2008_782.json<- as.data.frame(fromJSON(paste(readLines("reden_07_04_2008_782.json"))))
reden_07_04_2014_459.json<- as.data.frame(fromJSON(paste(readLines("reden_07_04_2014_459.json"))))
reden_07_05_2007_818.json<- as.data.frame(fromJSON(paste(readLines("reden_07_05_2007_818.json"))))
reden_07_06_2005_864.json<- as.data.frame(fromJSON(paste(readLines("reden_07_06_2005_864.json"))))
reden_07_06_2017_215.json<- as.data.frame(fromJSON(paste(readLines("reden_07_06_2017_215.json"))))
reden_07_09_2015_385.json<- as.data.frame(fromJSON(paste(readLines("reden_07_09_2015_385.json"))))
reden_07_09_2016_310.json<- as.data.frame(fromJSON(paste(readLines("reden_07_09_2016_310.json"))))
reden_07_09_2017_195.json<- as.data.frame(fromJSON(paste(readLines("reden_07_09_2017_195.json"))))
reden_07_09_2017_196.json<- as.data.frame(fromJSON(paste(readLines("reden_07_09_2017_196.json"))))
reden_07_11_2014_437.json<- as.data.frame(fromJSON(paste(readLines("reden_07_11_2014_437.json"))))
reden_07_12_2016_283.json<- as.data.frame(fromJSON(paste(readLines("reden_07_12_2016_283.json"))))
reden_07_12_2018_60.json<- as.data.frame(fromJSON(paste(readLines("reden_07_12_2018_60.json"))))
reden_07_12_2018_61.json<- as.data.frame(fromJSON(paste(readLines("reden_07_12_2018_61.json"))))
reden_08_01_2009_747.json<- as.data.frame(fromJSON(paste(readLines("reden_08_01_2009_747.json"))))
reden_08_02_2012_564.json<- as.data.frame(fromJSON(paste(readLines("reden_08_02_2012_564.json"))))
reden_08_02_2018_138.json<- as.data.frame(fromJSON(paste(readLines("reden_08_02_2018_138.json"))))
reden_08_02_2018_139.json<- as.data.frame(fromJSON(paste(readLines("reden_08_02_2018_139.json"))))
reden_08_02_2018_140.json<- as.data.frame(fromJSON(paste(readLines("reden_08_02_2018_140.json"))))
reden_08_02_2019_50.json<- as.data.frame(fromJSON(paste(readLines("reden_08_02_2019_50.json"))))
reden_08_02_2019_51.json<- as.data.frame(fromJSON(paste(readLines("reden_08_02_2019_51.json"))))
reden_08_03_2006_849.json<- as.data.frame(fromJSON(paste(readLines("reden_08_03_2006_849.json"))))
reden_08_03_2011_622.json<- as.data.frame(fromJSON(paste(readLines("reden_08_03_2011_622.json"))))
reden_08_03_2018_122.json<- as.data.frame(fromJSON(paste(readLines("reden_08_03_2018_122.json"))))
reden_08_04_2014_458.json<- as.data.frame(fromJSON(paste(readLines("reden_08_04_2014_458.json"))))
reden_08_04_2016_337.json<- as.data.frame(fromJSON(paste(readLines("reden_08_04_2016_337.json"))))
reden_08_05_2019_37.json<- as.data.frame(fromJSON(paste(readLines("reden_08_05_2019_37.json"))))
reden_08_06_2005_862.json<- as.data.frame(fromJSON(paste(readLines("reden_08_06_2005_862.json"))))
reden_08_06_2005_863.json<- as.data.frame(fromJSON(paste(readLines("reden_08_06_2005_863.json"))))
reden_08_06_2009_725.json<- as.data.frame(fromJSON(paste(readLines("reden_08_06_2009_725.json"))))
reden_08_06_2016_323.json<- as.data.frame(fromJSON(paste(readLines("reden_08_06_2016_323.json"))))
reden_08_06_2016_324.json<- as.data.frame(fromJSON(paste(readLines("reden_08_06_2016_324.json"))))
reden_08_07_2009_720.json<- as.data.frame(fromJSON(paste(readLines("reden_08_07_2009_720.json"))))
reden_08_07_2015_390.json<- as.data.frame(fromJSON(paste(readLines("reden_08_07_2015_390.json"))))
reden_08_07_2017_205.json<- as.data.frame(fromJSON(paste(readLines("reden_08_07_2017_205.json"))))
reden_08_09_2009_717.json<- as.data.frame(fromJSON(paste(readLines("reden_08_09_2009_717.json"))))
reden_08_09_2010_670.json<- as.data.frame(fromJSON(paste(readLines("reden_08_09_2010_670.json"))))
reden_08_09_2017_194.json<- as.data.frame(fromJSON(paste(readLines("reden_08_09_2017_194.json"))))
reden_08_10_2012_546.json<- as.data.frame(fromJSON(paste(readLines("reden_08_10_2012_546.json"))))
reden_08_10_2013_493.json<- as.data.frame(fromJSON(paste(readLines("reden_08_10_2013_493.json"))))
reden_08_10_2019_981.json<- as.data.frame(fromJSON(paste(readLines("reden_08_10_2019_981.json"))))
reden_08_11_2010_652.json<- as.data.frame(fromJSON(paste(readLines("reden_08_11_2010_652.json"))))
reden_08_11_2011_582.json<- as.data.frame(fromJSON(paste(readLines("reden_08_11_2011_582.json"))))
reden_08_11_2017_176.json<- as.data.frame(fromJSON(paste(readLines("reden_08_11_2017_176.json"))))
reden_08_12_2005_854.json<- as.data.frame(fromJSON(paste(readLines("reden_08_12_2005_854.json"))))
reden_08_12_2006_832.json<- as.data.frame(fromJSON(paste(readLines("reden_08_12_2006_832.json"))))
reden_09_03_2005_872.json<- as.data.frame(fromJSON(paste(readLines("reden_09_03_2005_872.json"))))
reden_09_03_2006_848.json<- as.data.frame(fromJSON(paste(readLines("reden_09_03_2006_848.json"))))
reden_09_03_2007_825.json<- as.data.frame(fromJSON(paste(readLines("reden_09_03_2007_825.json"))))
reden_09_03_2010_690.json<- as.data.frame(fromJSON(paste(readLines("reden_09_03_2010_690.json"))))
reden_09_03_2011_621.json<- as.data.frame(fromJSON(paste(readLines("reden_09_03_2011_621.json"))))
reden_09_03_2015_409.json<- as.data.frame(fromJSON(paste(readLines("reden_09_03_2015_409.json"))))
reden_09_03_2017_255.json<- as.data.frame(fromJSON(paste(readLines("reden_09_03_2017_255.json"))))
reden_09_05_2007_817.json<- as.data.frame(fromJSON(paste(readLines("reden_09_05_2007_817.json"))))
reden_09_06_2010_674.json<- as.data.frame(fromJSON(paste(readLines("reden_09_06_2010_674.json"))))
reden_09_07_2013_505.json<- as.data.frame(fromJSON(paste(readLines("reden_09_07_2013_505.json"))))
reden_09_07_2014_450.json<- as.data.frame(fromJSON(paste(readLines("reden_09_07_2014_450.json"))))
reden_09_07_2015_389.json<- as.data.frame(fromJSON(paste(readLines("reden_09_07_2015_389.json"))))
reden_09_07_2019_24.json<- as.data.frame(fromJSON(paste(readLines("reden_09_07_2019_24.json"))))
reden_09_09_2014_445.json<- as.data.frame(fromJSON(paste(readLines("reden_09_09_2014_445.json"))))
reden_09_10_2008_758.json<- as.data.frame(fromJSON(paste(readLines("reden_09_10_2008_758.json"))))
reden_09_10_2014_442.json<- as.data.frame(fromJSON(paste(readLines("reden_09_10_2014_442.json"))))
reden_09_11_2005_857.json<- as.data.frame(fromJSON(paste(readLines("reden_09_11_2005_857.json"))))
reden_09_11_2007_798.json<- as.data.frame(fromJSON(paste(readLines("reden_09_11_2007_798.json"))))
reden_09_11_2007_799.json<- as.data.frame(fromJSON(paste(readLines("reden_09_11_2007_799.json"))))
reden_09_11_2012_543.json<- as.data.frame(fromJSON(paste(readLines("reden_09_11_2012_543.json"))))
reden_09_11_2016_296.json<- as.data.frame(fromJSON(paste(readLines("reden_09_11_2016_296.json"))))
reden_09_11_2016_297.json<- as.data.frame(fromJSON(paste(readLines("reden_09_11_2016_297.json"))))
reden_09_11_2017_175.json<- as.data.frame(fromJSON(paste(readLines("reden_09_11_2017_175.json"))))
reden_09_11_2018_75.json<- as.data.frame(fromJSON(paste(readLines("reden_09_11_2018_75.json"))))
reden_09_12_2009_695.json<- as.data.frame(fromJSON(paste(readLines("reden_09_12_2009_695.json"))))
reden_10_01_2006_853.json<- as.data.frame(fromJSON(paste(readLines("reden_10_01_2006_853.json"))))
reden_10_02_2009_744.json<- as.data.frame(fromJSON(paste(readLines("reden_10_02_2009_744.json"))))
reden_10_02_2011_628.json<- as.data.frame(fromJSON(paste(readLines("reden_10_02_2011_628.json"))))
reden_10_02_2011_629.json<- as.data.frame(fromJSON(paste(readLines("reden_10_02_2011_629.json"))))
reden_10_02_2011_630.json<- as.data.frame(fromJSON(paste(readLines("reden_10_02_2011_630.json"))))
reden_10_02_2017_264.json<- as.data.frame(fromJSON(paste(readLines("reden_10_02_2017_264.json"))))
reden_10_03_2009_740.json<- as.data.frame(fromJSON(paste(readLines("reden_10_03_2009_740.json"))))
reden_10_03_2010_688.json<- as.data.frame(fromJSON(paste(readLines("reden_10_03_2010_688.json"))))
reden_10_03_2010_689.json<- as.data.frame(fromJSON(paste(readLines("reden_10_03_2010_689.json"))))
reden_10_03_2011_620.json<- as.data.frame(fromJSON(paste(readLines("reden_10_03_2011_620.json"))))
reden_10_03_2016_340.json<- as.data.frame(fromJSON(paste(readLines("reden_10_03_2016_340.json"))))
reden_10_04_2018_115.json<- as.data.frame(fromJSON(paste(readLines("reden_10_04_2018_115.json"))))
reden_10_05_2016_330.json<- as.data.frame(fromJSON(paste(readLines("reden_10_05_2016_330.json"))))
reden_10_05_2017_233.json<- as.data.frame(fromJSON(paste(readLines("reden_10_05_2017_233.json"))))
reden_10_06_2008_769.json<- as.data.frame(fromJSON(paste(readLines("reden_10_06_2008_769.json"))))
reden_10_06_2009_724.json<- as.data.frame(fromJSON(paste(readLines("reden_10_06_2009_724.json"))))
reden_10_06_2013_514.json<- as.data.frame(fromJSON(paste(readLines("reden_10_06_2013_514.json"))))
reden_10_06_2013_515.json<- as.data.frame(fromJSON(paste(readLines("reden_10_06_2013_515.json"))))
reden_10_06_2016_322.json<- as.data.frame(fromJSON(paste(readLines("reden_10_06_2016_322.json"))))
reden_10_07_2002_1.json<- as.data.frame(fromJSON(paste(readLines("reden_10_07_2002_1.json"))))
reden_10_07_2002_2.json<- as.data.frame(fromJSON(paste(readLines("reden_10_07_2002_2.json"))))
reden_10_07_2002_3.json<- as.data.frame(fromJSON(paste(readLines("reden_10_07_2002_3.json"))))
reden_10_07_2002_4.json<- as.data.frame(fromJSON(paste(readLines("reden_10_07_2002_4.json"))))
reden_10_07_2002_5.json<- as.data.frame(fromJSON(paste(readLines("reden_10_07_2002_5.json"))))
reden_10_07_2019_23.json<- as.data.frame(fromJSON(paste(readLines("reden_10_07_2019_23.json"))))
reden_10_09_2008_764.json<- as.data.frame(fromJSON(paste(readLines("reden_10_09_2008_764.json"))))
reden_10_09_2019_989.json<- as.data.frame(fromJSON(paste(readLines("reden_10_09_2019_989.json"))))
reden_10_09_2019_990.json<- as.data.frame(fromJSON(paste(readLines("reden_10_09_2019_990.json"))))
reden_10_09_2019_991.json<- as.data.frame(fromJSON(paste(readLines("reden_10_09_2019_991.json"))))
reden_10_10_2012_544.json<- as.data.frame(fromJSON(paste(readLines("reden_10_10_2012_544.json"))))
reden_10_10_2012_545.json<- as.data.frame(fromJSON(paste(readLines("reden_10_10_2012_545.json"))))
reden_10_10_2016_304.json<- as.data.frame(fromJSON(paste(readLines("reden_10_10_2016_304.json"))))
reden_10_11_2005_856.json<- as.data.frame(fromJSON(paste(readLines("reden_10_11_2005_856.json"))))
reden_10_11_2011_581.json<- as.data.frame(fromJSON(paste(readLines("reden_10_11_2011_581.json"))))
reden_10_11_2016_293.json<- as.data.frame(fromJSON(paste(readLines("reden_10_11_2016_293.json"))))
reden_10_11_2016_294.json<- as.data.frame(fromJSON(paste(readLines("reden_10_11_2016_294.json"))))
reden_10_11_2016_295.json<- as.data.frame(fromJSON(paste(readLines("reden_10_11_2016_295.json"))))
reden_10_11_2017_174.json<- as.data.frame(fromJSON(paste(readLines("reden_10_11_2017_174.json"))))
reden_10_12_2008_749.json<- as.data.frame(fromJSON(paste(readLines("reden_10_12_2008_749.json"))))
reden_11_01_2011_640.json<- as.data.frame(fromJSON(paste(readLines("reden_11_01_2011_640.json"))))
reden_11_02_2009_743.json<- as.data.frame(fromJSON(paste(readLines("reden_11_02_2009_743.json"))))
reden_11_02_2013_525.json<- as.data.frame(fromJSON(paste(readLines("reden_11_02_2013_525.json"))))
reden_11_02_2013_526.json<- as.data.frame(fromJSON(paste(readLines("reden_11_02_2013_526.json"))))
reden_11_02_2014_466.json<- as.data.frame(fromJSON(paste(readLines("reden_11_02_2014_466.json"))))
reden_11_02_2016_346.json<- as.data.frame(fromJSON(paste(readLines("reden_11_02_2016_346.json"))))
reden_11_03_2008_784.json<- as.data.frame(fromJSON(paste(readLines("reden_11_03_2008_784.json"))))
reden_11_04_2011_616.json<- as.data.frame(fromJSON(paste(readLines("reden_11_04_2011_616.json"))))
reden_11_04_2018_113.json<- as.data.frame(fromJSON(paste(readLines("reden_11_04_2018_113.json"))))
reden_11_04_2018_114.json<- as.data.frame(fromJSON(paste(readLines("reden_11_04_2018_114.json"))))
reden_11_05_2006_840.json<- as.data.frame(fromJSON(paste(readLines("reden_11_05_2006_840.json"))))
reden_11_05_2016_328.json<- as.data.frame(fromJSON(paste(readLines("reden_11_05_2016_328.json"))))
reden_11_05_2016_329.json<- as.data.frame(fromJSON(paste(readLines("reden_11_05_2016_329.json"))))
reden_11_05_2017_232.json<- as.data.frame(fromJSON(paste(readLines("reden_11_05_2017_232.json"))))
reden_11_06_2014_453.json<- as.data.frame(fromJSON(paste(readLines("reden_11_06_2014_453.json"))))
reden_11_06_2015_399.json<- as.data.frame(fromJSON(paste(readLines("reden_11_06_2015_399.json"))))
reden_11_06_2016_321.json<- as.data.frame(fromJSON(paste(readLines("reden_11_06_2016_321.json"))))
reden_11_07_2011_598.json<- as.data.frame(fromJSON(paste(readLines("reden_11_07_2011_598.json"))))
reden_11_07_2013_504.json<- as.data.frame(fromJSON(paste(readLines("reden_11_07_2013_504.json"))))
reden_11_09_2012_552.json<- as.data.frame(fromJSON(paste(readLines("reden_11_09_2012_552.json"))))
reden_11_09_2015_384.json<- as.data.frame(fromJSON(paste(readLines("reden_11_09_2015_384.json"))))
reden_11_09_2018_83.json<- as.data.frame(fromJSON(paste(readLines("reden_11_09_2018_83.json"))))
reden_11_10_2007_805.json<- as.data.frame(fromJSON(paste(readLines("reden_11_10_2007_805.json"))))
reden_11_10_2017_183.json<- as.data.frame(fromJSON(paste(readLines("reden_11_10_2017_183.json"))))
reden_11_10_2017_184.json<- as.data.frame(fromJSON(paste(readLines("reden_11_10_2017_184.json"))))
reden_11_11_2008_756.json<- as.data.frame(fromJSON(paste(readLines("reden_11_11_2008_756.json"))))
reden_11_11_2009_705.json<- as.data.frame(fromJSON(paste(readLines("reden_11_11_2009_705.json"))))
reden_11_11_2013_486.json<- as.data.frame(fromJSON(paste(readLines("reden_11_11_2013_486.json"))))
reden_11_11_2015_370.json<- as.data.frame(fromJSON(paste(readLines("reden_11_11_2015_370.json"))))
reden_11_11_2015_371.json<- as.data.frame(fromJSON(paste(readLines("reden_11_11_2015_371.json"))))
reden_11_11_2019_967.json<- as.data.frame(fromJSON(paste(readLines("reden_11_11_2019_967.json"))))
reden_11_12_2008_748.json<- as.data.frame(fromJSON(paste(readLines("reden_11_12_2008_748.json"))))
reden_12_01_2018_152.json<- as.data.frame(fromJSON(paste(readLines("reden_12_01_2018_152.json"))))
reden_12_02_2015_411.json<- as.data.frame(fromJSON(paste(readLines("reden_12_02_2015_411.json"))))
reden_12_02_2015_412.json<- as.data.frame(fromJSON(paste(readLines("reden_12_02_2015_412.json"))))
reden_12_02_2019_49.json<- as.data.frame(fromJSON(paste(readLines("reden_12_02_2019_49.json"))))
reden_12_03_2010_687.json<- as.data.frame(fromJSON(paste(readLines("reden_12_03_2010_687.json"))))
reden_12_03_2015_408.json<- as.data.frame(fromJSON(paste(readLines("reden_12_03_2015_408.json"))))
reden_12_04_2018_110.json<- as.data.frame(fromJSON(paste(readLines("reden_12_04_2018_110.json"))))
reden_12_04_2018_111.json<- as.data.frame(fromJSON(paste(readLines("reden_12_04_2018_111.json"))))
reden_12_04_2018_112.json<- as.data.frame(fromJSON(paste(readLines("reden_12_04_2018_112.json"))))
reden_12_05_2009_730.json<- as.data.frame(fromJSON(paste(readLines("reden_12_05_2009_730.json"))))
reden_12_05_2011_609.json<- as.data.frame(fromJSON(paste(readLines("reden_12_05_2011_609.json"))))
reden_12_05_2011_610.json<- as.data.frame(fromJSON(paste(readLines("reden_12_05_2011_610.json"))))
reden_12_06_2008_768.json<- as.data.frame(fromJSON(paste(readLines("reden_12_06_2008_768.json"))))
reden_12_06_2012_557.json<- as.data.frame(fromJSON(paste(readLines("reden_12_06_2012_557.json"))))
reden_12_06_2014_452.json<- as.data.frame(fromJSON(paste(readLines("reden_12_06_2014_452.json"))))
reden_12_07_2018_91.json<- as.data.frame(fromJSON(paste(readLines("reden_12_07_2018_91.json"))))
reden_12_10_2007_804.json<- as.data.frame(fromJSON(paste(readLines("reden_12_10_2007_804.json"))))
reden_12_10_2010_661.json<- as.data.frame(fromJSON(paste(readLines("reden_12_10_2010_661.json"))))
reden_12_10_2010_662.json<- as.data.frame(fromJSON(paste(readLines("reden_12_10_2010_662.json"))))
reden_12_11_2014_436.json<- as.data.frame(fromJSON(paste(readLines("reden_12_11_2014_436.json"))))
reden_12_11_2015_369.json<- as.data.frame(fromJSON(paste(readLines("reden_12_11_2015_369.json"))))
reden_12_11_2019_966.json<- as.data.frame(fromJSON(paste(readLines("reden_12_11_2019_966.json"))))
reden_12_12_2000_1.json<- as.data.frame(fromJSON(paste(readLines("reden_12_12_2000_1.json"))))
reden_12_12_2000_2.json<- as.data.frame(fromJSON(paste(readLines("reden_12_12_2000_2.json"))))
reden_12_12_2000_3.json<- as.data.frame(fromJSON(paste(readLines("reden_12_12_2000_3.json"))))
reden_12_12_2000_4.json<- as.data.frame(fromJSON(paste(readLines("reden_12_12_2000_4.json"))))
reden_12_12_2000_5.json<- as.data.frame(fromJSON(paste(readLines("reden_12_12_2000_5.json"))))
reden_12_12_2000_6.json<- as.data.frame(fromJSON(paste(readLines("reden_12_12_2000_6.json"))))
reden_12_12_2000_7.json<- as.data.frame(fromJSON(paste(readLines("reden_12_12_2000_7.json"))))
reden_12_12_2000_8.json<- as.data.frame(fromJSON(paste(readLines("reden_12_12_2000_8.json"))))
reden_12_12_2000_9.json<- as.data.frame(fromJSON(paste(readLines("reden_12_12_2000_9.json"))))
reden_12_12_2000_10.json<- as.data.frame(fromJSON(paste(readLines("reden_12_12_2000_10.json"))))
reden_12_12_2000_11.json<- as.data.frame(fromJSON(paste(readLines("reden_12_12_2000_11.json"))))
reden_12_12_2000_12.json<- as.data.frame(fromJSON(paste(readLines("reden_12_12_2000_12.json"))))
reden_12_12_2000_13.json<- as.data.frame(fromJSON(paste(readLines("reden_12_12_2000_13.json"))))
reden_12_12_2000_14.json<- as.data.frame(fromJSON(paste(readLines("reden_12_12_2000_14.json"))))
reden_12_12_2000_15.json<- as.data.frame(fromJSON(paste(readLines("reden_12_12_2000_15.json"))))
reden_12_12_2000_16.json<- as.data.frame(fromJSON(paste(readLines("reden_12_12_2000_16.json"))))
reden_12_12_2000_17.json<- as.data.frame(fromJSON(paste(readLines("reden_12_12_2000_17.json"))))
reden_12_12_2000_18.json<- as.data.frame(fromJSON(paste(readLines("reden_12_12_2000_18.json"))))
reden_12_12_2000_19.json<- as.data.frame(fromJSON(paste(readLines("reden_12_12_2000_19.json"))))
reden_12_12_2000_20.json<- as.data.frame(fromJSON(paste(readLines("reden_12_12_2000_20.json"))))
reden_12_12_2012_533.json<- as.data.frame(fromJSON(paste(readLines("reden_12_12_2012_533.json"))))
reden_13_01_2015_421.json<- as.data.frame(fromJSON(paste(readLines("reden_13_01_2015_421.json"))))
reden_13_01_2015_422.json<- as.data.frame(fromJSON(paste(readLines("reden_13_01_2015_422.json"))))
reden_13_03_2002_1.json<- as.data.frame(fromJSON(paste(readLines("reden_13_03_2002_1.json"))))
reden_13_03_2002_2.json<- as.data.frame(fromJSON(paste(readLines("reden_13_03_2002_2.json"))))
reden_13_03_2002_3.json<- as.data.frame(fromJSON(paste(readLines("reden_13_03_2002_3.json"))))
reden_13_03_2002_4.json<- as.data.frame(fromJSON(paste(readLines("reden_13_03_2002_4.json"))))
reden_13_03_2002_5.json<- as.data.frame(fromJSON(paste(readLines("reden_13_03_2002_5.json"))))
reden_13_03_2002_6.json<- as.data.frame(fromJSON(paste(readLines("reden_13_03_2002_6.json"))))
reden_13_03_2002_7.json<- as.data.frame(fromJSON(paste(readLines("reden_13_03_2002_7.json"))))
reden_13_03_2007_824.json<- as.data.frame(fromJSON(paste(readLines("reden_13_03_2007_824.json"))))
reden_13_04_2011_614.json<- as.data.frame(fromJSON(paste(readLines("reden_13_04_2011_614.json"))))
reden_13_04_2011_615.json<- as.data.frame(fromJSON(paste(readLines("reden_13_04_2011_615.json"))))
reden_13_04_2016_336.json<- as.data.frame(fromJSON(paste(readLines("reden_13_04_2016_336.json"))))
reden_13_05_2009_729.json<- as.data.frame(fromJSON(paste(readLines("reden_13_05_2009_729.json"))))
reden_13_05_2015_402.json<- as.data.frame(fromJSON(paste(readLines("reden_13_05_2015_402.json"))))
reden_13_06_2000_1.json<- as.data.frame(fromJSON(paste(readLines("reden_13_06_2000_1.json"))))
reden_13_06_2000_2.json<- as.data.frame(fromJSON(paste(readLines("reden_13_06_2000_2.json"))))
reden_13_06_2000_3.json<- as.data.frame(fromJSON(paste(readLines("reden_13_06_2000_3.json"))))
reden_13_06_2000_4.json<- as.data.frame(fromJSON(paste(readLines("reden_13_06_2000_4.json"))))
reden_13_06_2000_5.json<- as.data.frame(fromJSON(paste(readLines("reden_13_06_2000_5.json"))))
reden_13_06_2000_6.json<- as.data.frame(fromJSON(paste(readLines("reden_13_06_2000_6.json"))))
reden_13_06_2000_7.json<- as.data.frame(fromJSON(paste(readLines("reden_13_06_2000_7.json"))))
reden_13_06_2000_8.json<- as.data.frame(fromJSON(paste(readLines("reden_13_06_2000_8.json"))))
reden_13_06_2000_9.json<- as.data.frame(fromJSON(paste(readLines("reden_13_06_2000_9.json"))))
reden_13_06_2008_767.json<- as.data.frame(fromJSON(paste(readLines("reden_13_06_2008_767.json"))))
reden_13_06_2013_513.json<- as.data.frame(fromJSON(paste(readLines("reden_13_06_2013_513.json"))))
reden_13_06_2016_319.json<- as.data.frame(fromJSON(paste(readLines("reden_13_06_2016_319.json"))))
reden_13_06_2016_320.json<- as.data.frame(fromJSON(paste(readLines("reden_13_06_2016_320.json"))))
reden_13_06_2017_214.json<- as.data.frame(fromJSON(paste(readLines("reden_13_06_2017_214.json"))))
reden_13_06_2019_28.json<- as.data.frame(fromJSON(paste(readLines("reden_13_06_2019_28.json"))))
reden_13_07_2016_315.json<- as.data.frame(fromJSON(paste(readLines("reden_13_07_2016_315.json"))))
reden_13_07_2017_204.json<- as.data.frame(fromJSON(paste(readLines("reden_13_07_2017_204.json"))))
reden_13_09_2011_590.json<- as.data.frame(fromJSON(paste(readLines("reden_13_09_2011_590.json"))))
reden_13_09_2011_591.json<- as.data.frame(fromJSON(paste(readLines("reden_13_09_2011_591.json"))))
reden_13_09_2019_988.json<- as.data.frame(fromJSON(paste(readLines("reden_13_09_2019_988.json"))))
reden_13_10_2014_441.json<- as.data.frame(fromJSON(paste(readLines("reden_13_10_2014_441.json"))))
reden_13_10_2015_375.json<- as.data.frame(fromJSON(paste(readLines("reden_13_10_2015_375.json"))))
reden_13_10_2016_303.json<- as.data.frame(fromJSON(paste(readLines("reden_13_10_2016_303.json"))))
reden_13_11_2008_755.json<- as.data.frame(fromJSON(paste(readLines("reden_13_11_2008_755.json"))))
reden_13_11_2013_485.json<- as.data.frame(fromJSON(paste(readLines("reden_13_11_2013_485.json"))))
reden_13_11_2017_173.json<- as.data.frame(fromJSON(paste(readLines("reden_13_11_2017_173.json"))))
reden_13_11_2018_74.json<- as.data.frame(fromJSON(paste(readLines("reden_13_11_2018_74.json"))))
reden_13_12_2004_1.json<- as.data.frame(fromJSON(paste(readLines("reden_13_12_2004_1.json"))))
reden_13_12_2004_2.json<- as.data.frame(fromJSON(paste(readLines("reden_13_12_2004_2.json"))))
reden_13_12_2004_3.json<- as.data.frame(fromJSON(paste(readLines("reden_13_12_2004_3.json"))))
reden_13_12_2004_4.json<- as.data.frame(fromJSON(paste(readLines("reden_13_12_2004_4.json"))))
reden_13_12_2004_5.json<- as.data.frame(fromJSON(paste(readLines("reden_13_12_2004_5.json"))))
reden_13_12_2004_6.json<- as.data.frame(fromJSON(paste(readLines("reden_13_12_2004_6.json"))))
reden_13_12_2004_7.json<- as.data.frame(fromJSON(paste(readLines("reden_13_12_2004_7.json"))))
reden_13_12_2004_8.json<- as.data.frame(fromJSON(paste(readLines("reden_13_12_2004_8.json"))))
reden_13_12_2004_9.json<- as.data.frame(fromJSON(paste(readLines("reden_13_12_2004_9.json"))))
reden_13_12_2004_10.json<- as.data.frame(fromJSON(paste(readLines("reden_13_12_2004_10.json"))))
reden_13_12_2004_11.json<- as.data.frame(fromJSON(paste(readLines("reden_13_12_2004_11.json"))))
reden_13_12_2004_12.json<- as.data.frame(fromJSON(paste(readLines("reden_13_12_2004_12.json"))))
reden_13_12_2004_13.json<- as.data.frame(fromJSON(paste(readLines("reden_13_12_2004_13.json"))))
reden_13_12_2004_14.json<- as.data.frame(fromJSON(paste(readLines("reden_13_12_2004_14.json"))))
reden_13_12_2004_15.json<- as.data.frame(fromJSON(paste(readLines("reden_13_12_2004_15.json"))))
reden_13_12_2004_16.json<- as.data.frame(fromJSON(paste(readLines("reden_13_12_2004_16.json"))))
reden_13_12_2006_831.json<- as.data.frame(fromJSON(paste(readLines("reden_13_12_2006_831.json"))))
reden_13_12_2007_795.json<- as.data.frame(fromJSON(paste(readLines("reden_13_12_2007_795.json"))))
reden_13_12_2018_59.json<- as.data.frame(fromJSON(paste(readLines("reden_13_12_2018_59.json"))))
reden_14_01_2011_639.json<- as.data.frame(fromJSON(paste(readLines("reden_14_01_2011_639.json"))))
reden_14_01_2016_355.json<- as.data.frame(fromJSON(paste(readLines("reden_14_01_2016_355.json"))))
reden_14_02_2008_789.json<- as.data.frame(fromJSON(paste(readLines("reden_14_02_2008_789.json"))))
reden_14_02_2014_465.json<- as.data.frame(fromJSON(paste(readLines("reden_14_02_2014_465.json"))))
reden_14_02_2018_135.json<- as.data.frame(fromJSON(paste(readLines("reden_14_02_2018_135.json"))))
reden_14_02_2018_136.json<- as.data.frame(fromJSON(paste(readLines("reden_14_02_2018_136.json"))))
reden_14_02_2018_137.json<- as.data.frame(fromJSON(paste(readLines("reden_14_02_2018_137.json"))))
reden_14_02_2019_48.json<- as.data.frame(fromJSON(paste(readLines("reden_14_02_2019_48.json"))))
reden_14_03_2006_847.json<- as.data.frame(fromJSON(paste(readLines("reden_14_03_2006_847.json"))))
reden_14_03_2012_562.json<- as.data.frame(fromJSON(paste(readLines("reden_14_03_2012_562.json"))))
reden_14_04_2005_871.json<- as.data.frame(fromJSON(paste(readLines("reden_14_04_2005_871.json"))))
reden_14_04_2011_613.json<- as.data.frame(fromJSON(paste(readLines("reden_14_04_2011_613.json"))))
reden_14_05_2010_680.json<- as.data.frame(fromJSON(paste(readLines("reden_14_05_2010_680.json"))))
reden_14_05_2014_457.json<- as.data.frame(fromJSON(paste(readLines("reden_14_05_2014_457.json"))))
reden_14_06_2007_810.json<- as.data.frame(fromJSON(paste(readLines("reden_14_06_2007_810.json"))))
reden_14_06_2007_811.json<- as.data.frame(fromJSON(paste(readLines("reden_14_06_2007_811.json"))))
reden_14_06_2012_556.json<- as.data.frame(fromJSON(paste(readLines("reden_14_06_2012_556.json"))))
reden_14_06_2017_213.json<- as.data.frame(fromJSON(paste(readLines("reden_14_06_2017_213.json"))))
reden_14_07_2016_314.json<- as.data.frame(fromJSON(paste(readLines("reden_14_07_2016_314.json"))))
reden_14_08_2008_765.json<- as.data.frame(fromJSON(paste(readLines("reden_14_08_2008_765.json"))))
reden_14_08_2017_202.json<- as.data.frame(fromJSON(paste(readLines("reden_14_08_2017_202.json"))))
reden_14_09_2010_669.json<- as.data.frame(fromJSON(paste(readLines("reden_14_09_2010_669.json"))))
reden_14_09_2017_193.json<- as.data.frame(fromJSON(paste(readLines("reden_14_09_2017_193.json"))))
reden_14_10_2010_660.json<- as.data.frame(fromJSON(paste(readLines("reden_14_10_2010_660.json"))))
reden_14_10_2019_980.json<- as.data.frame(fromJSON(paste(readLines("reden_14_10_2019_980.json"))))
reden_14_11_2011_580.json<- as.data.frame(fromJSON(paste(readLines("reden_14_11_2011_580.json"))))
reden_14_11_2012_541.json<- as.data.frame(fromJSON(paste(readLines("reden_14_11_2012_541.json"))))
reden_14_11_2012_542.json<- as.data.frame(fromJSON(paste(readLines("reden_14_11_2012_542.json"))))
reden_14_11_2013_481.json<- as.data.frame(fromJSON(paste(readLines("reden_14_11_2013_481.json"))))
reden_14_11_2013_482.json<- as.data.frame(fromJSON(paste(readLines("reden_14_11_2013_482.json"))))
reden_14_11_2013_483.json<- as.data.frame(fromJSON(paste(readLines("reden_14_11_2013_483.json"))))
reden_14_11_2013_484.json<- as.data.frame(fromJSON(paste(readLines("reden_14_11_2013_484.json"))))
reden_14_11_2017_172.json<- as.data.frame(fromJSON(paste(readLines("reden_14_11_2017_172.json"))))
reden_14_11_2018_70.json<- as.data.frame(fromJSON(paste(readLines("reden_14_11_2018_70.json"))))
reden_14_11_2018_71.json<- as.data.frame(fromJSON(paste(readLines("reden_14_11_2018_71.json"))))
reden_14_11_2018_72.json<- as.data.frame(fromJSON(paste(readLines("reden_14_11_2018_72.json"))))
reden_14_11_2018_73.json<- as.data.frame(fromJSON(paste(readLines("reden_14_11_2018_73.json"))))
reden_14_12_2011_572.json<- as.data.frame(fromJSON(paste(readLines("reden_14_12_2011_572.json"))))
reden_14_12_2017_154.json<- as.data.frame(fromJSON(paste(readLines("reden_14_12_2017_154.json"))))
reden_14_12_2018_58.json<- as.data.frame(fromJSON(paste(readLines("reden_14_12_2018_58.json"))))
reden_15_01_2008_794.json<- as.data.frame(fromJSON(paste(readLines("reden_15_01_2008_794.json"))))
reden_15_01_2014_472.json<- as.data.frame(fromJSON(paste(readLines("reden_15_01_2014_472.json"))))
reden_15_01_2018_151.json<- as.data.frame(fromJSON(paste(readLines("reden_15_01_2018_151.json"))))
reden_15_01_2019_56.json<- as.data.frame(fromJSON(paste(readLines("reden_15_01_2019_56.json"))))
reden_15_01_2019_57.json<- as.data.frame(fromJSON(paste(readLines("reden_15_01_2019_57.json"))))
reden_15_02_2018_133.json<- as.data.frame(fromJSON(paste(readLines("reden_15_02_2018_133.json"))))
reden_15_02_2018_134.json<- as.data.frame(fromJSON(paste(readLines("reden_15_02_2018_134.json"))))
reden_15_03_2007_823.json<- as.data.frame(fromJSON(paste(readLines("reden_15_03_2007_823.json"))))
reden_15_03_2017_253.json<- as.data.frame(fromJSON(paste(readLines("reden_15_03_2017_253.json"))))
reden_15_03_2017_254.json<- as.data.frame(fromJSON(paste(readLines("reden_15_03_2017_254.json"))))
reden_15_03_2018_121.json<- as.data.frame(fromJSON(paste(readLines("reden_15_03_2018_121.json"))))
reden_15_04_2003_1.json<- as.data.frame(fromJSON(paste(readLines("reden_15_04_2003_1.json"))))
reden_15_04_2003_2.json<- as.data.frame(fromJSON(paste(readLines("reden_15_04_2003_2.json"))))
reden_15_04_2003_3.json<- as.data.frame(fromJSON(paste(readLines("reden_15_04_2003_3.json"))))
reden_15_04_2003_4.json<- as.data.frame(fromJSON(paste(readLines("reden_15_04_2003_4.json"))))
reden_15_04_2003_5.json<- as.data.frame(fromJSON(paste(readLines("reden_15_04_2003_5.json"))))
reden_15_04_2003_6.json<- as.data.frame(fromJSON(paste(readLines("reden_15_04_2003_6.json"))))
reden_15_04_2003_7.json<- as.data.frame(fromJSON(paste(readLines("reden_15_04_2003_7.json"))))
reden_15_04_2008_781.json<- as.data.frame(fromJSON(paste(readLines("reden_15_04_2008_781.json"))))
reden_15_04_2009_734.json<- as.data.frame(fromJSON(paste(readLines("reden_15_04_2009_734.json"))))
reden_15_05_2013_520.json<- as.data.frame(fromJSON(paste(readLines("reden_15_05_2013_520.json"))))
reden_15_05_2017_231.json<- as.data.frame(fromJSON(paste(readLines("reden_15_05_2017_231.json"))))
reden_15_05_2019_36.json<- as.data.frame(fromJSON(paste(readLines("reden_15_05_2019_36.json"))))
reden_15_06_2015_397.json<- as.data.frame(fromJSON(paste(readLines("reden_15_06_2015_397.json"))))
reden_15_06_2015_398.json<- as.data.frame(fromJSON(paste(readLines("reden_15_06_2015_398.json"))))
reden_15_06_2016_318.json<- as.data.frame(fromJSON(paste(readLines("reden_15_06_2016_318.json"))))
reden_15_07_2015_388.json<- as.data.frame(fromJSON(paste(readLines("reden_15_07_2015_388.json"))))
reden_15_08_2017_201.json<- as.data.frame(fromJSON(paste(readLines("reden_15_08_2017_201.json"))))
reden_15_09_2015_383.json<- as.data.frame(fromJSON(paste(readLines("reden_15_09_2015_383.json"))))
reden_15_09_2016_309.json<- as.data.frame(fromJSON(paste(readLines("reden_15_09_2016_309.json"))))
reden_15_10_2009_711.json<- as.data.frame(fromJSON(paste(readLines("reden_15_10_2009_711.json"))))
reden_15_10_2015_374.json<- as.data.frame(fromJSON(paste(readLines("reden_15_10_2015_374.json"))))
reden_15_11_2010_650.json<- as.data.frame(fromJSON(paste(readLines("reden_15_11_2010_650.json"))))
reden_15_11_2010_651.json<- as.data.frame(fromJSON(paste(readLines("reden_15_11_2010_651.json"))))
reden_15_11_2011_579.json<- as.data.frame(fromJSON(paste(readLines("reden_15_11_2011_579.json"))))
reden_15_11_2016_292.json<- as.data.frame(fromJSON(paste(readLines("reden_15_11_2016_292.json"))))
reden_15_11_2017_170.json<- as.data.frame(fromJSON(paste(readLines("reden_15_11_2017_170.json"))))
reden_15_11_2017_171.json<- as.data.frame(fromJSON(paste(readLines("reden_15_11_2017_171.json"))))
reden_15_11_2018_69.json<- as.data.frame(fromJSON(paste(readLines("reden_15_11_2018_69.json"))))
reden_16_01_2008_793.json<- as.data.frame(fromJSON(paste(readLines("reden_16_01_2008_793.json"))))
reden_16_01_2014_470.json<- as.data.frame(fromJSON(paste(readLines("reden_16_01_2014_470.json"))))
reden_16_01_2014_471.json<- as.data.frame(fromJSON(paste(readLines("reden_16_01_2014_471.json"))))
reden_16_01_2015_420.json<- as.data.frame(fromJSON(paste(readLines("reden_16_01_2015_420.json"))))
reden_16_01_2017_277.json<- as.data.frame(fromJSON(paste(readLines("reden_16_01_2017_277.json"))))
reden_16_01_2018_150.json<- as.data.frame(fromJSON(paste(readLines("reden_16_01_2018_150.json"))))
reden_16_02_2017_263.json<- as.data.frame(fromJSON(paste(readLines("reden_16_02_2017_263.json"))))
reden_16_03_2017_252.json<- as.data.frame(fromJSON(paste(readLines("reden_16_03_2017_252.json"))))
reden_16_04_2018_109.json<- as.data.frame(fromJSON(paste(readLines("reden_16_04_2018_109.json"))))
reden_16_05_2007_816.json<- as.data.frame(fromJSON(paste(readLines("reden_16_05_2007_816.json"))))
reden_16_05_2008_775.json<- as.data.frame(fromJSON(paste(readLines("reden_16_05_2008_775.json"))))
reden_16_05_2019_34.json<- as.data.frame(fromJSON(paste(readLines("reden_16_05_2019_34.json"))))
reden_16_05_2019_35.json<- as.data.frame(fromJSON(paste(readLines("reden_16_05_2019_35.json"))))
reden_16_06_2005_861.json<- as.data.frame(fromJSON(paste(readLines("reden_16_06_2005_861.json"))))
reden_16_06_2009_723.json<- as.data.frame(fromJSON(paste(readLines("reden_16_06_2009_723.json"))))
reden_16_07_2003_1.json<- as.data.frame(fromJSON(paste(readLines("reden_16_07_2003_1.json"))))
reden_16_07_2003_2.json<- as.data.frame(fromJSON(paste(readLines("reden_16_07_2003_2.json"))))
reden_16_07_2003_3.json<- as.data.frame(fromJSON(paste(readLines("reden_16_07_2003_3.json"))))
reden_16_07_2003_4.json<- as.data.frame(fromJSON(paste(readLines("reden_16_07_2003_4.json"))))
reden_16_07_2003_5.json<- as.data.frame(fromJSON(paste(readLines("reden_16_07_2003_5.json"))))
reden_16_07_2003_6.json<- as.data.frame(fromJSON(paste(readLines("reden_16_07_2003_6.json"))))
reden_16_07_2003_7.json<- as.data.frame(fromJSON(paste(readLines("reden_16_07_2003_7.json"))))
reden_16_07_2003_8.json<- as.data.frame(fromJSON(paste(readLines("reden_16_07_2003_8.json"))))
reden_16_07_2003_9.json<- as.data.frame(fromJSON(paste(readLines("reden_16_07_2003_9.json"))))
reden_16_09_2008_763.json<- as.data.frame(fromJSON(paste(readLines("reden_16_09_2008_763.json"))))
reden_16_09_2010_668.json<- as.data.frame(fromJSON(paste(readLines("reden_16_09_2010_668.json"))))
reden_16_09_2012_551.json<- as.data.frame(fromJSON(paste(readLines("reden_16_09_2012_551.json"))))
reden_16_09_2015_382.json<- as.data.frame(fromJSON(paste(readLines("reden_16_09_2015_382.json"))))
reden_16_10_2009_710.json<- as.data.frame(fromJSON(paste(readLines("reden_16_10_2009_710.json"))))
reden_16_10_2019_978.json<- as.data.frame(fromJSON(paste(readLines("reden_16_10_2019_978.json"))))
reden_16_10_2019_979.json<- as.data.frame(fromJSON(paste(readLines("reden_16_10_2019_979.json"))))
reden_16_11_2009_702.json<- as.data.frame(fromJSON(paste(readLines("reden_16_11_2009_702.json"))))
reden_16_11_2009_703.json<- as.data.frame(fromJSON(paste(readLines("reden_16_11_2009_703.json"))))
reden_16_11_2009_704.json<- as.data.frame(fromJSON(paste(readLines("reden_16_11_2009_704.json"))))
reden_16_11_2010_649.json<- as.data.frame(fromJSON(paste(readLines("reden_16_11_2010_649.json"))))
reden_16_11_2011_577.json<- as.data.frame(fromJSON(paste(readLines("reden_16_11_2011_577.json"))))
reden_16_11_2011_578.json<- as.data.frame(fromJSON(paste(readLines("reden_16_11_2011_578.json"))))
reden_16_11_2016_289.json<- as.data.frame(fromJSON(paste(readLines("reden_16_11_2016_289.json"))))
reden_16_11_2016_290.json<- as.data.frame(fromJSON(paste(readLines("reden_16_11_2016_290.json"))))
reden_16_11_2016_291.json<- as.data.frame(fromJSON(paste(readLines("reden_16_11_2016_291.json"))))
reden_16_11_2018_68.json<- as.data.frame(fromJSON(paste(readLines("reden_16_11_2018_68.json"))))
reden_16_12_2016_280.json<- as.data.frame(fromJSON(paste(readLines("reden_16_12_2016_280.json"))))
reden_16_12_2016_281.json<- as.data.frame(fromJSON(paste(readLines("reden_16_12_2016_281.json"))))
reden_16_12_2016_282.json<- as.data.frame(fromJSON(paste(readLines("reden_16_12_2016_282.json"))))
reden_17_01_2005_877.json<- as.data.frame(fromJSON(paste(readLines("reden_17_01_2005_877.json"))))
reden_17_01_2012_570.json<- as.data.frame(fromJSON(paste(readLines("reden_17_01_2012_570.json"))))
reden_17_01_2013_532.json<- as.data.frame(fromJSON(paste(readLines("reden_17_01_2013_532.json"))))
reden_17_02_2009_742.json<- as.data.frame(fromJSON(paste(readLines("reden_17_02_2009_742.json"))))
reden_17_02_2016_345.json<- as.data.frame(fromJSON(paste(readLines("reden_17_02_2016_345.json"))))
reden_17_03_2006_846.json<- as.data.frame(fromJSON(paste(readLines("reden_17_03_2006_846.json"))))
reden_17_03_2009_739.json<- as.data.frame(fromJSON(paste(readLines("reden_17_03_2009_739.json"))))
reden_17_03_2014_462.json<- as.data.frame(fromJSON(paste(readLines("reden_17_03_2014_462.json"))))
reden_17_04_2008_780.json<- as.data.frame(fromJSON(paste(readLines("reden_17_04_2008_780.json"))))
reden_17_04_2018_108.json<- as.data.frame(fromJSON(paste(readLines("reden_17_04_2018_108.json"))))
reden_17_05_2011_608.json<- as.data.frame(fromJSON(paste(readLines("reden_17_05_2011_608.json"))))
reden_17_05_2017_227.json<- as.data.frame(fromJSON(paste(readLines("reden_17_05_2017_227.json"))))
reden_17_05_2017_228.json<- as.data.frame(fromJSON(paste(readLines("reden_17_05_2017_228.json"))))
reden_17_05_2017_229.json<- as.data.frame(fromJSON(paste(readLines("reden_17_05_2017_229.json"))))
reden_17_05_2017_230.json<- as.data.frame(fromJSON(paste(readLines("reden_17_05_2017_230.json"))))
reden_17_06_2010_673.json<- as.data.frame(fromJSON(paste(readLines("reden_17_06_2010_673.json"))))
reden_17_06_2011_601.json<- as.data.frame(fromJSON(paste(readLines("reden_17_06_2011_601.json"))))
reden_17_06_2019_27.json<- as.data.frame(fromJSON(paste(readLines("reden_17_06_2019_27.json"))))
reden_17_08_2019_22.json<- as.data.frame(fromJSON(paste(readLines("reden_17_08_2019_22.json"))))
reden_17_09_2008_761.json<- as.data.frame(fromJSON(paste(readLines("reden_17_09_2008_761.json"))))
reden_17_09_2008_762.json<- as.data.frame(fromJSON(paste(readLines("reden_17_09_2008_762.json"))))
reden_17_09_2010_667.json<- as.data.frame(fromJSON(paste(readLines("reden_17_09_2010_667.json"))))
reden_17_10_2013_492.json<- as.data.frame(fromJSON(paste(readLines("reden_17_10_2013_492.json"))))
reden_17_10_2014_440.json<- as.data.frame(fromJSON(paste(readLines("reden_17_10_2014_440.json"))))
reden_17_10_2016_302.json<- as.data.frame(fromJSON(paste(readLines("reden_17_10_2016_302.json"))))
reden_17_10_2018_77.json<- as.data.frame(fromJSON(paste(readLines("reden_17_10_2018_77.json"))))
reden_17_10_2018_78.json<- as.data.frame(fromJSON(paste(readLines("reden_17_10_2018_78.json"))))
reden_17_10_2019_976.json<- as.data.frame(fromJSON(paste(readLines("reden_17_10_2019_976.json"))))
reden_17_10_2019_977.json<- as.data.frame(fromJSON(paste(readLines("reden_17_10_2019_977.json"))))
reden_17_11_2008_753.json<- as.data.frame(fromJSON(paste(readLines("reden_17_11_2008_753.json"))))
reden_17_11_2008_754.json<- as.data.frame(fromJSON(paste(readLines("reden_17_11_2008_754.json"))))
reden_17_11_2009_701.json<- as.data.frame(fromJSON(paste(readLines("reden_17_11_2009_701.json"))))
reden_17_11_2010_648.json<- as.data.frame(fromJSON(paste(readLines("reden_17_11_2010_648.json"))))
reden_17_11_2014_435.json<- as.data.frame(fromJSON(paste(readLines("reden_17_11_2014_435.json"))))
reden_17_11_2015_368.json<- as.data.frame(fromJSON(paste(readLines("reden_17_11_2015_368.json"))))
reden_17_11_2017_167.json<- as.data.frame(fromJSON(paste(readLines("reden_17_11_2017_167.json"))))
reden_17_11_2017_168.json<- as.data.frame(fromJSON(paste(readLines("reden_17_11_2017_168.json"))))
reden_17_11_2017_169.json<- as.data.frame(fromJSON(paste(readLines("reden_17_11_2017_169.json"))))
reden_17_12_2001_1.json<- as.data.frame(fromJSON(paste(readLines("reden_17_12_2001_1.json"))))
reden_17_12_2001_2.json<- as.data.frame(fromJSON(paste(readLines("reden_17_12_2001_2.json"))))
reden_17_12_2001_3.json<- as.data.frame(fromJSON(paste(readLines("reden_17_12_2001_3.json"))))
reden_17_12_2001_4.json<- as.data.frame(fromJSON(paste(readLines("reden_17_12_2001_4.json"))))
reden_17_12_2001_5.json<- as.data.frame(fromJSON(paste(readLines("reden_17_12_2001_5.json"))))
reden_17_12_2001_6.json<- as.data.frame(fromJSON(paste(readLines("reden_17_12_2001_6.json"))))
reden_17_12_2001_7.json<- as.data.frame(fromJSON(paste(readLines("reden_17_12_2001_7.json"))))
reden_17_12_2001_8.json<- as.data.frame(fromJSON(paste(readLines("reden_17_12_2001_8.json"))))
reden_17_12_2001_9.json<- as.data.frame(fromJSON(paste(readLines("reden_17_12_2001_9.json"))))
reden_17_12_2001_10.json<- as.data.frame(fromJSON(paste(readLines("reden_17_12_2001_10.json"))))
reden_17_12_2010_641.json<- as.data.frame(fromJSON(paste(readLines("reden_17_12_2010_641.json"))))
reden_18_01_2006_852.json<- as.data.frame(fromJSON(paste(readLines("reden_18_01_2006_852.json"))))
reden_18_01_2011_638.json<- as.data.frame(fromJSON(paste(readLines("reden_18_01_2011_638.json"))))
reden_18_01_2012_569.json<- as.data.frame(fromJSON(paste(readLines("reden_18_01_2012_569.json"))))
reden_18_01_2016_353.json<- as.data.frame(fromJSON(paste(readLines("reden_18_01_2016_353.json"))))
reden_18_01_2016_354.json<- as.data.frame(fromJSON(paste(readLines("reden_18_01_2016_354.json"))))
reden_18_02_2008_788.json<- as.data.frame(fromJSON(paste(readLines("reden_18_02_2008_788.json"))))
reden_18_02_2013_524.json<- as.data.frame(fromJSON(paste(readLines("reden_18_02_2013_524.json"))))
reden_18_02_2014_464.json<- as.data.frame(fromJSON(paste(readLines("reden_18_02_2014_464.json"))))
reden_18_03_2013_522.json<- as.data.frame(fromJSON(paste(readLines("reden_18_03_2013_522.json"))))
reden_18_03_2015_407.json<- as.data.frame(fromJSON(paste(readLines("reden_18_03_2015_407.json"))))
reden_18_04_2007_821.json<- as.data.frame(fromJSON(paste(readLines("reden_18_04_2007_821.json"))))
reden_18_04_2008_779.json<- as.data.frame(fromJSON(paste(readLines("reden_18_04_2008_779.json"))))
reden_18_05_2010_679.json<- as.data.frame(fromJSON(paste(readLines("reden_18_05_2010_679.json"))))
reden_18_05_2017_224.json<- as.data.frame(fromJSON(paste(readLines("reden_18_05_2017_224.json"))))
reden_18_05_2017_225.json<- as.data.frame(fromJSON(paste(readLines("reden_18_05_2017_225.json"))))
reden_18_05_2017_226.json<- as.data.frame(fromJSON(paste(readLines("reden_18_05_2017_226.json"))))
reden_18_05_2018_99.json<- as.data.frame(fromJSON(paste(readLines("reden_18_05_2018_99.json"))))
reden_18_06_2013_512.json<- as.data.frame(fromJSON(paste(readLines("reden_18_06_2013_512.json"))))
reden_18_06_2015_396.json<- as.data.frame(fromJSON(paste(readLines("reden_18_06_2015_396.json"))))
reden_18_07_2014_449.json<- as.data.frame(fromJSON(paste(readLines("reden_18_07_2014_449.json"))))
reden_18_09_2012_550.json<- as.data.frame(fromJSON(paste(readLines("reden_18_09_2012_550.json"))))
reden_18_09_2015_381.json<- as.data.frame(fromJSON(paste(readLines("reden_18_09_2015_381.json"))))
reden_18_09_2017_192.json<- as.data.frame(fromJSON(paste(readLines("reden_18_09_2017_192.json"))))
reden_18_09_2018_82.json<- as.data.frame(fromJSON(paste(readLines("reden_18_09_2018_82.json"))))
reden_18_09_2019_987.json<- as.data.frame(fromJSON(paste(readLines("reden_18_09_2019_987.json"))))
reden_18_11_2005_855.json<- as.data.frame(fromJSON(paste(readLines("reden_18_11_2005_855.json"))))
reden_18_11_2008_752.json<- as.data.frame(fromJSON(paste(readLines("reden_18_11_2008_752.json"))))
reden_18_11_2011_576.json<- as.data.frame(fromJSON(paste(readLines("reden_18_11_2011_576.json"))))
reden_18_11_2014_434.json<- as.data.frame(fromJSON(paste(readLines("reden_18_11_2014_434.json"))))
reden_18_11_2015_367.json<- as.data.frame(fromJSON(paste(readLines("reden_18_11_2015_367.json"))))
reden_18_11_2016_288.json<- as.data.frame(fromJSON(paste(readLines("reden_18_11_2016_288.json"))))
reden_18_11_2019_965.json<- as.data.frame(fromJSON(paste(readLines("reden_18_11_2019_965.json"))))
reden_19_01_2007_830.json<- as.data.frame(fromJSON(paste(readLines("reden_19_01_2007_830.json"))))
reden_19_01_2011_637.json<- as.data.frame(fromJSON(paste(readLines("reden_19_01_2011_637.json"))))
reden_19_01_2018_149.json<- as.data.frame(fromJSON(paste(readLines("reden_19_01_2018_149.json"))))
reden_19_02_2019_47.json<- as.data.frame(fromJSON(paste(readLines("reden_19_02_2019_47.json"))))
reden_19_03_2009_738.json<- as.data.frame(fromJSON(paste(readLines("reden_19_03_2009_738.json"))))
reden_19_03_2019_44.json<- as.data.frame(fromJSON(paste(readLines("reden_19_03_2019_44.json"))))
reden_19_05_2010_678.json<- as.data.frame(fromJSON(paste(readLines("reden_19_05_2010_678.json"))))
reden_19_05_2014_455.json<- as.data.frame(fromJSON(paste(readLines("reden_19_05_2014_455.json"))))
reden_19_05_2014_456.json<- as.data.frame(fromJSON(paste(readLines("reden_19_05_2014_456.json"))))
reden_19_06_2017_211.json<- as.data.frame(fromJSON(paste(readLines("reden_19_06_2017_211.json"))))
reden_19_06_2017_212.json<- as.data.frame(fromJSON(paste(readLines("reden_19_06_2017_212.json"))))
reden_19_08_2013_503.json<- as.data.frame(fromJSON(paste(readLines("reden_19_08_2013_503.json"))))
reden_19_09_2009_716.json<- as.data.frame(fromJSON(paste(readLines("reden_19_09_2009_716.json"))))
reden_19_09_2013_497.json<- as.data.frame(fromJSON(paste(readLines("reden_19_09_2013_497.json"))))
reden_19_09_2018_81.json<- as.data.frame(fromJSON(paste(readLines("reden_19_09_2018_81.json"))))
reden_19_10_2010_659.json<- as.data.frame(fromJSON(paste(readLines("reden_19_10_2010_659.json"))))
reden_19_10_2011_586.json<- as.data.frame(fromJSON(paste(readLines("reden_19_10_2011_586.json"))))
reden_19_10_2015_373.json<- as.data.frame(fromJSON(paste(readLines("reden_19_10_2015_373.json"))))
reden_19_10_2016_301.json<- as.data.frame(fromJSON(paste(readLines("reden_19_10_2016_301.json"))))
reden_19_10_2017_182.json<- as.data.frame(fromJSON(paste(readLines("reden_19_10_2017_182.json"))))
reden_19_11_2007_797.json<- as.data.frame(fromJSON(paste(readLines("reden_19_11_2007_797.json"))))
reden_19_11_2012_539.json<- as.data.frame(fromJSON(paste(readLines("reden_19_11_2012_539.json"))))
reden_19_11_2012_540.json<- as.data.frame(fromJSON(paste(readLines("reden_19_11_2012_540.json"))))
reden_19_11_2013_480.json<- as.data.frame(fromJSON(paste(readLines("reden_19_11_2013_480.json"))))
reden_19_11_2014_433.json<- as.data.frame(fromJSON(paste(readLines("reden_19_11_2014_433.json"))))
reden_19_11_2015_366.json<- as.data.frame(fromJSON(paste(readLines("reden_19_11_2015_366.json"))))
reden_19_11_2018_66.json<- as.data.frame(fromJSON(paste(readLines("reden_19_11_2018_66.json"))))
reden_19_11_2018_67.json<- as.data.frame(fromJSON(paste(readLines("reden_19_11_2018_67.json"))))
reden_19_11_2019_964.json<- as.data.frame(fromJSON(paste(readLines("reden_19_11_2019_964.json"))))
reden_19_12_2017_153.json<- as.data.frame(fromJSON(paste(readLines("reden_19_12_2017_153.json"))))
reden_20_01_2010_694.json<- as.data.frame(fromJSON(paste(readLines("reden_20_01_2010_694.json"))))
reden_20_02_2006_851.json<- as.data.frame(fromJSON(paste(readLines("reden_20_02_2006_851.json"))))
reden_20_02_2018_132.json<- as.data.frame(fromJSON(paste(readLines("reden_20_02_2018_132.json"))))
reden_20_03_2009_737.json<- as.data.frame(fromJSON(paste(readLines("reden_20_03_2009_737.json"))))
reden_20_03_2017_250.json<- as.data.frame(fromJSON(paste(readLines("reden_20_03_2017_250.json"))))
reden_20_03_2017_251.json<- as.data.frame(fromJSON(paste(readLines("reden_20_03_2017_251.json"))))
reden_20_03_2018_120.json<- as.data.frame(fromJSON(paste(readLines("reden_20_03_2018_120.json"))))
reden_20_04_2016_335.json<- as.data.frame(fromJSON(paste(readLines("reden_20_04_2016_335.json"))))
reden_20_04_2017_240.json<- as.data.frame(fromJSON(paste(readLines("reden_20_04_2017_240.json"))))
reden_20_04_2018_107.json<- as.data.frame(fromJSON(paste(readLines("reden_20_04_2018_107.json"))))
reden_20_05_2011_607.json<- as.data.frame(fromJSON(paste(readLines("reden_20_05_2011_607.json"))))
reden_20_06_2011_600.json<- as.data.frame(fromJSON(paste(readLines("reden_20_06_2011_600.json"))))
reden_20_06_2013_511.json<- as.data.frame(fromJSON(paste(readLines("reden_20_06_2013_511.json"))))
reden_20_06_2018_95.json<- as.data.frame(fromJSON(paste(readLines("reden_20_06_2018_95.json"))))
reden_20_08_2018_90.json<- as.data.frame(fromJSON(paste(readLines("reden_20_08_2018_90.json"))))
reden_20_09_2012_549.json<- as.data.frame(fromJSON(paste(readLines("reden_20_09_2012_549.json"))))
reden_20_09_2017_189.json<- as.data.frame(fromJSON(paste(readLines("reden_20_09_2017_189.json"))))
reden_20_09_2017_190.json<- as.data.frame(fromJSON(paste(readLines("reden_20_09_2017_190.json"))))
reden_20_09_2017_191.json<- as.data.frame(fromJSON(paste(readLines("reden_20_09_2017_191.json"))))
reden_20_09_2018_80.json<- as.data.frame(fromJSON(paste(readLines("reden_20_09_2018_80.json"))))
reden_20_10_2011_584.json<- as.data.frame(fromJSON(paste(readLines("reden_20_10_2011_584.json"))))
reden_20_10_2011_585.json<- as.data.frame(fromJSON(paste(readLines("reden_20_10_2011_585.json"))))
reden_20_11_2013_479.json<- as.data.frame(fromJSON(paste(readLines("reden_20_11_2013_479.json"))))
reden_20_11_2014_432.json<- as.data.frame(fromJSON(paste(readLines("reden_20_11_2014_432.json"))))
reden_20_11_2015_365.json<- as.data.frame(fromJSON(paste(readLines("reden_20_11_2015_365.json"))))
reden_20_11_2018_65.json<- as.data.frame(fromJSON(paste(readLines("reden_20_11_2018_65.json"))))
reden_20_11_2019_963.json<- as.data.frame(fromJSON(paste(readLines("reden_20_11_2019_963.json"))))
reden_20_12_2011_571.json<- as.data.frame(fromJSON(paste(readLines("reden_20_12_2011_571.json"))))
reden_21_01_2010_693.json<- as.data.frame(fromJSON(paste(readLines("reden_21_01_2010_693.json"))))
reden_21_01_2013_531.json<- as.data.frame(fromJSON(paste(readLines("reden_21_01_2013_531.json"))))
reden_21_02_2011_627.json<- as.data.frame(fromJSON(paste(readLines("reden_21_02_2011_627.json"))))
reden_21_02_2018_131.json<- as.data.frame(fromJSON(paste(readLines("reden_21_02_2018_131.json"))))
reden_21_04_2008_778.json<- as.data.frame(fromJSON(paste(readLines("reden_21_04_2008_778.json"))))
reden_21_04_2016_334.json<- as.data.frame(fromJSON(paste(readLines("reden_21_04_2016_334.json"))))
reden_21_05_2012_558.json<- as.data.frame(fromJSON(paste(readLines("reden_21_05_2012_558.json"))))
reden_21_06_2017_209.json<- as.data.frame(fromJSON(paste(readLines("reden_21_06_2017_209.json"))))
reden_21_06_2017_210.json<- as.data.frame(fromJSON(paste(readLines("reden_21_06_2017_210.json"))))
reden_21_06_2018_93.json<- as.data.frame(fromJSON(paste(readLines("reden_21_06_2018_93.json"))))
reden_21_06_2018_94.json<- as.data.frame(fromJSON(paste(readLines("reden_21_06_2018_94.json"))))
reden_21_06_2019_25.json<- as.data.frame(fromJSON(paste(readLines("reden_21_06_2019_25.json"))))
reden_21_06_2019_26.json<- as.data.frame(fromJSON(paste(readLines("reden_21_06_2019_26.json"))))
reden_21_07_2017_203.json<- as.data.frame(fromJSON(paste(readLines("reden_21_07_2017_203.json"))))
reden_21_08_2017_200.json<- as.data.frame(fromJSON(paste(readLines("reden_21_08_2017_200.json"))))
reden_21_09_2007_807.json<- as.data.frame(fromJSON(paste(readLines("reden_21_09_2007_807.json"))))
reden_21_09_2015_380.json<- as.data.frame(fromJSON(paste(readLines("reden_21_09_2015_380.json"))))
reden_21_09_2017_188.json<- as.data.frame(fromJSON(paste(readLines("reden_21_09_2017_188.json"))))
reden_21_11_2008_751.json<- as.data.frame(fromJSON(paste(readLines("reden_21_11_2008_751.json"))))
reden_21_11_2012_538.json<- as.data.frame(fromJSON(paste(readLines("reden_21_11_2012_538.json"))))
reden_21_11_2013_478.json<- as.data.frame(fromJSON(paste(readLines("reden_21_11_2013_478.json"))))
reden_21_11_2014_431.json<- as.data.frame(fromJSON(paste(readLines("reden_21_11_2014_431.json"))))
reden_21_11_2017_165.json<- as.data.frame(fromJSON(paste(readLines("reden_21_11_2017_165.json"))))
reden_21_11_2017_166.json<- as.data.frame(fromJSON(paste(readLines("reden_21_11_2017_166.json"))))
reden_21_11_2019_962.json<- as.data.frame(fromJSON(paste(readLines("reden_21_11_2019_962.json"))))
reden_22_01_2016_352.json<- as.data.frame(fromJSON(paste(readLines("reden_22_01_2016_352.json"))))
reden_22_02_2017_262.json<- as.data.frame(fromJSON(paste(readLines("reden_22_02_2017_262.json"))))
reden_22_03_2010_686.json<- as.data.frame(fromJSON(paste(readLines("reden_22_03_2010_686.json"))))
reden_22_03_2011_619.json<- as.data.frame(fromJSON(paste(readLines("reden_22_03_2011_619.json"))))
reden_22_03_2017_249.json<- as.data.frame(fromJSON(paste(readLines("reden_22_03_2017_249.json"))))
reden_22_04_2008_777.json<- as.data.frame(fromJSON(paste(readLines("reden_22_04_2008_777.json"))))
reden_22_05_2008_774.json<- as.data.frame(fromJSON(paste(readLines("reden_22_05_2008_774.json"))))
reden_22_05_2014_454.json<- as.data.frame(fromJSON(paste(readLines("reden_22_05_2014_454.json"))))
reden_22_05_2015_401.json<- as.data.frame(fromJSON(paste(readLines("reden_22_05_2015_401.json"))))
reden_22_05_2017_222.json<- as.data.frame(fromJSON(paste(readLines("reden_22_05_2017_222.json"))))
reden_22_05_2017_223.json<- as.data.frame(fromJSON(paste(readLines("reden_22_05_2017_223.json"))))
reden_22_06_2015_395.json<- as.data.frame(fromJSON(paste(readLines("reden_22_06_2015_395.json"))))
reden_22_08_2012_553.json<- as.data.frame(fromJSON(paste(readLines("reden_22_08_2012_553.json"))))
reden_22_09_2010_666.json<- as.data.frame(fromJSON(paste(readLines("reden_22_09_2010_666.json"))))
reden_22_09_2011_589.json<- as.data.frame(fromJSON(paste(readLines("reden_22_09_2011_589.json"))))
reden_22_09_2016_308.json<- as.data.frame(fromJSON(paste(readLines("reden_22_09_2016_308.json"))))
reden_22_09_2017_187.json<- as.data.frame(fromJSON(paste(readLines("reden_22_09_2017_187.json"))))
reden_22_10_2009_709.json<- as.data.frame(fromJSON(paste(readLines("reden_22_10_2009_709.json"))))
reden_22_11_2010_647.json<- as.data.frame(fromJSON(paste(readLines("reden_22_11_2010_647.json"))))
reden_22_11_2011_574.json<- as.data.frame(fromJSON(paste(readLines("reden_22_11_2011_574.json"))))
reden_22_11_2011_575.json<- as.data.frame(fromJSON(paste(readLines("reden_22_11_2011_575.json"))))
reden_22_11_2013_477.json<- as.data.frame(fromJSON(paste(readLines("reden_22_11_2013_477.json"))))
reden_22_11_2015_364.json<- as.data.frame(fromJSON(paste(readLines("reden_22_11_2015_364.json"))))
reden_22_11_2016_286.json<- as.data.frame(fromJSON(paste(readLines("reden_22_11_2016_286.json"))))
reden_22_11_2016_287.json<- as.data.frame(fromJSON(paste(readLines("reden_22_11_2016_287.json"))))
reden_22_11_2017_163.json<- as.data.frame(fromJSON(paste(readLines("reden_22_11_2017_163.json"))))
reden_22_11_2017_164.json<- as.data.frame(fromJSON(paste(readLines("reden_22_11_2017_164.json"))))
reden_22_11_2018_64.json<- as.data.frame(fromJSON(paste(readLines("reden_22_11_2018_64.json"))))
reden_22_11_2019_958.json<- as.data.frame(fromJSON(paste(readLines("reden_22_11_2019_958.json"))))
reden_22_11_2019_959.json<- as.data.frame(fromJSON(paste(readLines("reden_22_11_2019_959.json"))))
reden_22_11_2019_960.json<- as.data.frame(fromJSON(paste(readLines("reden_22_11_2019_960.json"))))
reden_22_11_2019_961.json<- as.data.frame(fromJSON(paste(readLines("reden_22_11_2019_961.json"))))
reden_22_12_2016_279.json<- as.data.frame(fromJSON(paste(readLines("reden_22_12_2016_279.json"))))
reden_23_01_2012_567.json<- as.data.frame(fromJSON(paste(readLines("reden_23_01_2012_567.json"))))
reden_23_02_2005_873.json<- as.data.frame(fromJSON(paste(readLines("reden_23_02_2005_873.json"))))
reden_23_02_2009_741.json<- as.data.frame(fromJSON(paste(readLines("reden_23_02_2009_741.json"))))
reden_23_02_2011_626.json<- as.data.frame(fromJSON(paste(readLines("reden_23_02_2011_626.json"))))
reden_23_02_2016_343.json<- as.data.frame(fromJSON(paste(readLines("reden_23_02_2016_343.json"))))
reden_23_02_2016_344.json<- as.data.frame(fromJSON(paste(readLines("reden_23_02_2016_344.json"))))
reden_23_02_2017_260.json<- as.data.frame(fromJSON(paste(readLines("reden_23_02_2017_260.json"))))
reden_23_02_2017_261.json<- as.data.frame(fromJSON(paste(readLines("reden_23_02_2017_261.json"))))
reden_23_03_2009_736.json<- as.data.frame(fromJSON(paste(readLines("reden_23_03_2009_736.json"))))
reden_23_03_2011_618.json<- as.data.frame(fromJSON(paste(readLines("reden_23_03_2011_618.json"))))
reden_23_03_2016_339.json<- as.data.frame(fromJSON(paste(readLines("reden_23_03_2016_339.json"))))
reden_23_04_2005_870.json<- as.data.frame(fromJSON(paste(readLines("reden_23_04_2005_870.json"))))
reden_23_04_2018_106.json<- as.data.frame(fromJSON(paste(readLines("reden_23_04_2018_106.json"))))
reden_23_05_2006_839.json<- as.data.frame(fromJSON(paste(readLines("reden_23_05_2006_839.json"))))
reden_23_05_2007_815.json<- as.data.frame(fromJSON(paste(readLines("reden_23_05_2007_815.json"))))
reden_23_05_2011_605.json<- as.data.frame(fromJSON(paste(readLines("reden_23_05_2011_605.json"))))
reden_23_05_2011_606.json<- as.data.frame(fromJSON(paste(readLines("reden_23_05_2011_606.json"))))
reden_23_05_2013_518.json<- as.data.frame(fromJSON(paste(readLines("reden_23_05_2013_518.json"))))
reden_23_05_2013_519.json<- as.data.frame(fromJSON(paste(readLines("reden_23_05_2013_519.json"))))
reden_23_05_2017_221.json<- as.data.frame(fromJSON(paste(readLines("reden_23_05_2017_221.json"))))
reden_23_05_2019_33.json<- as.data.frame(fromJSON(paste(readLines("reden_23_05_2019_33.json"))))
reden_23_06_2006_838.json<- as.data.frame(fromJSON(paste(readLines("reden_23_06_2006_838.json"))))
reden_23_06_2009_722.json<- as.data.frame(fromJSON(paste(readLines("reden_23_06_2009_722.json"))))
reden_23_06_2016_317.json<- as.data.frame(fromJSON(paste(readLines("reden_23_06_2016_317.json"))))
reden_23_07_2014_448.json<- as.data.frame(fromJSON(paste(readLines("reden_23_07_2014_448.json"))))
reden_23_07_2015_387.json<- as.data.frame(fromJSON(paste(readLines("reden_23_07_2015_387.json"))))
reden_23_08_2018_89.json<- as.data.frame(fromJSON(paste(readLines("reden_23_08_2018_89.json"))))
reden_23_09_2015_379.json<- as.data.frame(fromJSON(paste(readLines("reden_23_09_2015_379.json"))))
reden_23_09_2019_986.json<- as.data.frame(fromJSON(paste(readLines("reden_23_09_2019_986.json"))))
reden_23_10_2013_491.json<- as.data.frame(fromJSON(paste(readLines("reden_23_10_2013_491.json"))))
reden_23_10_2017_181.json<- as.data.frame(fromJSON(paste(readLines("reden_23_10_2017_181.json"))))
reden_23_10_2019_975.json<- as.data.frame(fromJSON(paste(readLines("reden_23_10_2019_975.json"))))
reden_23_11_2015_363.json<- as.data.frame(fromJSON(paste(readLines("reden_23_11_2015_363.json"))))
reden_23_11_2017_161.json<- as.data.frame(fromJSON(paste(readLines("reden_23_11_2017_161.json"))))
reden_23_11_2017_162.json<- as.data.frame(fromJSON(paste(readLines("reden_23_11_2017_162.json"))))
reden_23_12_2016_278.json<- as.data.frame(fromJSON(paste(readLines("reden_23_12_2016_278.json"))))
reden_24_01_2012_566.json<- as.data.frame(fromJSON(paste(readLines("reden_24_01_2012_566.json"))))
reden_24_01_2013_530.json<- as.data.frame(fromJSON(paste(readLines("reden_24_01_2013_530.json"))))
reden_24_01_2018_148.json<- as.data.frame(fromJSON(paste(readLines("reden_24_01_2018_148.json"))))
reden_24_01_2019_55.json<- as.data.frame(fromJSON(paste(readLines("reden_24_01_2019_55.json"))))
reden_24_02_2011_625.json<- as.data.frame(fromJSON(paste(readLines("reden_24_02_2011_625.json"))))
reden_24_02_2016_342.json<- as.data.frame(fromJSON(paste(readLines("reden_24_02_2016_342.json"))))
reden_24_02_2017_259.json<- as.data.frame(fromJSON(paste(readLines("reden_24_02_2017_259.json"))))
reden_24_03_2016_338.json<- as.data.frame(fromJSON(paste(readLines("reden_24_03_2016_338.json"))))
reden_24_04_2013_521.json<- as.data.frame(fromJSON(paste(readLines("reden_24_04_2013_521.json"))))
reden_24_04_2017_239.json<- as.data.frame(fromJSON(paste(readLines("reden_24_04_2017_239.json"))))
reden_24_04_2018_104.json<- as.data.frame(fromJSON(paste(readLines("reden_24_04_2018_104.json"))))
reden_24_04_2018_105.json<- as.data.frame(fromJSON(paste(readLines("reden_24_04_2018_105.json"))))
reden_24_05_2013_517.json<- as.data.frame(fromJSON(paste(readLines("reden_24_05_2013_517.json"))))
reden_24_05_2017_220.json<- as.data.frame(fromJSON(paste(readLines("reden_24_05_2017_220.json"))))
reden_24_05_2019_32.json<- as.data.frame(fromJSON(paste(readLines("reden_24_05_2019_32.json"))))
reden_24_07_2014_447.json<- as.data.frame(fromJSON(paste(readLines("reden_24_07_2014_447.json"))))
reden_24_08_2011_597.json<- as.data.frame(fromJSON(paste(readLines("reden_24_08_2011_597.json"))))
reden_24_09_2009_714.json<- as.data.frame(fromJSON(paste(readLines("reden_24_09_2009_714.json"))))
reden_24_09_2009_715.json<- as.data.frame(fromJSON(paste(readLines("reden_24_09_2009_715.json"))))
reden_24_09_2018_79.json<- as.data.frame(fromJSON(paste(readLines("reden_24_09_2018_79.json"))))
reden_24_10_2001_1.json<- as.data.frame(fromJSON(paste(readLines("reden_24_10_2001_1.json"))))
reden_24_10_2001_2.json<- as.data.frame(fromJSON(paste(readLines("reden_24_10_2001_2.json"))))
reden_24_10_2001_3.json<- as.data.frame(fromJSON(paste(readLines("reden_24_10_2001_3.json"))))
reden_24_10_2001_4.json<- as.data.frame(fromJSON(paste(readLines("reden_24_10_2001_4.json"))))
reden_24_10_2001_5.json<- as.data.frame(fromJSON(paste(readLines("reden_24_10_2001_5.json"))))
reden_24_10_2001_6.json<- as.data.frame(fromJSON(paste(readLines("reden_24_10_2001_6.json"))))
reden_24_10_2001_7.json<- as.data.frame(fromJSON(paste(readLines("reden_24_10_2001_7.json"))))
reden_24_10_2001_8.json<- as.data.frame(fromJSON(paste(readLines("reden_24_10_2001_8.json"))))
reden_24_10_2001_9.json<- as.data.frame(fromJSON(paste(readLines("reden_24_10_2001_9.json"))))
reden_24_10_2001_10.json<- as.data.frame(fromJSON(paste(readLines("reden_24_10_2001_10.json"))))
reden_24_10_2001_11.json<- as.data.frame(fromJSON(paste(readLines("reden_24_10_2001_11.json"))))
reden_24_10_2001_12.json<- as.data.frame(fromJSON(paste(readLines("reden_24_10_2001_12.json"))))
reden_24_10_2001_13.json<- as.data.frame(fromJSON(paste(readLines("reden_24_10_2001_13.json"))))
reden_24_10_2001_14.json<- as.data.frame(fromJSON(paste(readLines("reden_24_10_2001_14.json"))))
reden_24_10_2001_15.json<- as.data.frame(fromJSON(paste(readLines("reden_24_10_2001_15.json"))))
reden_24_10_2013_490.json<- as.data.frame(fromJSON(paste(readLines("reden_24_10_2013_490.json"))))
reden_24_10_2016_300.json<- as.data.frame(fromJSON(paste(readLines("reden_24_10_2016_300.json"))))
reden_24_10_2019_974.json<- as.data.frame(fromJSON(paste(readLines("reden_24_10_2019_974.json"))))
reden_24_11_2010_646.json<- as.data.frame(fromJSON(paste(readLines("reden_24_11_2010_646.json"))))
reden_24_11_2011_573.json<- as.data.frame(fromJSON(paste(readLines("reden_24_11_2011_573.json"))))
reden_24_11_2014_430.json<- as.data.frame(fromJSON(paste(readLines("reden_24_11_2014_430.json"))))
reden_24_11_2015_361.json<- as.data.frame(fromJSON(paste(readLines("reden_24_11_2015_361.json"))))
reden_24_11_2015_362.json<- as.data.frame(fromJSON(paste(readLines("reden_24_11_2015_362.json"))))
reden_25_01_2007_829.json<- as.data.frame(fromJSON(paste(readLines("reden_25_01_2007_829.json"))))
reden_25_01_2015_419.json<- as.data.frame(fromJSON(paste(readLines("reden_25_01_2015_419.json"))))
reden_25_01_2016_351.json<- as.data.frame(fromJSON(paste(readLines("reden_25_01_2016_351.json"))))
reden_25_01_2017_275.json<- as.data.frame(fromJSON(paste(readLines("reden_25_01_2017_275.json"))))
reden_25_01_2017_276.json<- as.data.frame(fromJSON(paste(readLines("reden_25_01_2017_276.json"))))
reden_25_01_2018_147.json<- as.data.frame(fromJSON(paste(readLines("reden_25_01_2018_147.json"))))
reden_25_02_2008_787.json<- as.data.frame(fromJSON(paste(readLines("reden_25_02_2008_787.json"))))
reden_25_02_2013_523.json<- as.data.frame(fromJSON(paste(readLines("reden_25_02_2013_523.json"))))
reden_25_02_2019_46.json<- as.data.frame(fromJSON(paste(readLines("reden_25_02_2019_46.json"))))
reden_25_03_2015_406.json<- as.data.frame(fromJSON(paste(readLines("reden_25_03_2015_406.json"))))
reden_25_03_2017_248.json<- as.data.frame(fromJSON(paste(readLines("reden_25_03_2017_248.json"))))
reden_25_04_2008_776.json<- as.data.frame(fromJSON(paste(readLines("reden_25_04_2008_776.json"))))
reden_25_04_2010_685.json<- as.data.frame(fromJSON(paste(readLines("reden_25_04_2010_685.json"))))
reden_25_04_2017_236.json<- as.data.frame(fromJSON(paste(readLines("reden_25_04_2017_236.json"))))
reden_25_04_2017_237.json<- as.data.frame(fromJSON(paste(readLines("reden_25_04_2017_237.json"))))
reden_25_04_2017_238.json<- as.data.frame(fromJSON(paste(readLines("reden_25_04_2017_238.json"))))
reden_25_05_2009_728.json<- as.data.frame(fromJSON(paste(readLines("reden_25_05_2009_728.json"))))
reden_25_05_2017_219.json<- as.data.frame(fromJSON(paste(readLines("reden_25_05_2017_219.json"))))
reden_25_05_2018_98.json<- as.data.frame(fromJSON(paste(readLines("reden_25_05_2018_98.json"))))
reden_25_06_2008_766.json<- as.data.frame(fromJSON(paste(readLines("reden_25_06_2008_766.json"))))
reden_25_06_2013_510.json<- as.data.frame(fromJSON(paste(readLines("reden_25_06_2013_510.json"))))
reden_25_06_2015_393.json<- as.data.frame(fromJSON(paste(readLines("reden_25_06_2015_393.json"))))
reden_25_06_2015_394.json<- as.data.frame(fromJSON(paste(readLines("reden_25_06_2015_394.json"))))
reden_25_08_2018_88.json<- as.data.frame(fromJSON(paste(readLines("reden_25_08_2018_88.json"))))
reden_25_09_2008_760.json<- as.data.frame(fromJSON(paste(readLines("reden_25_09_2008_760.json"))))
reden_25_09_2013_496.json<- as.data.frame(fromJSON(paste(readLines("reden_25_09_2013_496.json"))))
reden_25_09_2017_186.json<- as.data.frame(fromJSON(paste(readLines("reden_25_09_2017_186.json"))))
reden_25_10_2005_859.json<- as.data.frame(fromJSON(paste(readLines("reden_25_10_2005_859.json"))))
reden_25_10_2010_658.json<- as.data.frame(fromJSON(paste(readLines("reden_25_10_2010_658.json"))))
reden_25_11_2009_700.json<- as.data.frame(fromJSON(paste(readLines("reden_25_11_2009_700.json"))))
reden_25_11_2010_644.json<- as.data.frame(fromJSON(paste(readLines("reden_25_11_2010_644.json"))))
reden_25_11_2010_645.json<- as.data.frame(fromJSON(paste(readLines("reden_25_11_2010_645.json"))))
reden_25_11_2013_476.json<- as.data.frame(fromJSON(paste(readLines("reden_25_11_2013_476.json"))))
reden_25_11_2014_428.json<- as.data.frame(fromJSON(paste(readLines("reden_25_11_2014_428.json"))))
reden_25_11_2014_429.json<- as.data.frame(fromJSON(paste(readLines("reden_25_11_2014_429.json"))))
reden_25_11_2015_359.json<- as.data.frame(fromJSON(paste(readLines("reden_25_11_2015_359.json"))))
reden_25_11_2015_360.json<- as.data.frame(fromJSON(paste(readLines("reden_25_11_2015_360.json"))))
reden_26_01_2005_874.json<- as.data.frame(fromJSON(paste(readLines("reden_26_01_2005_874.json"))))
reden_26_01_2005_875.json<- as.data.frame(fromJSON(paste(readLines("reden_26_01_2005_875.json"))))
reden_26_01_2005_876.json<- as.data.frame(fromJSON(paste(readLines("reden_26_01_2005_876.json"))))
reden_26_01_2009_746.json<- as.data.frame(fromJSON(paste(readLines("reden_26_01_2009_746.json"))))
reden_26_01_2010_692.json<- as.data.frame(fromJSON(paste(readLines("reden_26_01_2010_692.json"))))
reden_26_01_2011_636.json<- as.data.frame(fromJSON(paste(readLines("reden_26_01_2011_636.json"))))
reden_26_01_2015_417.json<- as.data.frame(fromJSON(paste(readLines("reden_26_01_2015_417.json"))))
reden_26_01_2015_418.json<- as.data.frame(fromJSON(paste(readLines("reden_26_01_2015_418.json"))))
reden_26_01_2017_271.json<- as.data.frame(fromJSON(paste(readLines("reden_26_01_2017_271.json"))))
reden_26_01_2017_272.json<- as.data.frame(fromJSON(paste(readLines("reden_26_01_2017_272.json"))))
reden_26_01_2017_273.json<- as.data.frame(fromJSON(paste(readLines("reden_26_01_2017_273.json"))))
reden_26_01_2017_274.json<- as.data.frame(fromJSON(paste(readLines("reden_26_01_2017_274.json"))))
reden_26_02_2015_410.json<- as.data.frame(fromJSON(paste(readLines("reden_26_02_2015_410.json"))))
reden_26_02_2018_130.json<- as.data.frame(fromJSON(paste(readLines("reden_26_02_2018_130.json"))))
reden_26_03_2004_1.json<- as.data.frame(fromJSON(paste(readLines("reden_26_03_2004_1.json"))))
reden_26_03_2004_2.json<- as.data.frame(fromJSON(paste(readLines("reden_26_03_2004_2.json"))))
reden_26_03_2004_3.json<- as.data.frame(fromJSON(paste(readLines("reden_26_03_2004_3.json"))))
reden_26_03_2004_4.json<- as.data.frame(fromJSON(paste(readLines("reden_26_03_2004_4.json"))))
reden_26_03_2004_5.json<- as.data.frame(fromJSON(paste(readLines("reden_26_03_2004_5.json"))))
reden_26_03_2004_6.json<- as.data.frame(fromJSON(paste(readLines("reden_26_03_2004_6.json"))))
reden_26_03_2004_7.json<- as.data.frame(fromJSON(paste(readLines("reden_26_03_2004_7.json"))))
reden_26_03_2004_8.json<- as.data.frame(fromJSON(paste(readLines("reden_26_03_2004_8.json"))))
reden_26_03_2014_461.json<- as.data.frame(fromJSON(paste(readLines("reden_26_03_2014_461.json"))))
reden_26_03_2018_119.json<- as.data.frame(fromJSON(paste(readLines("reden_26_03_2018_119.json"))))
reden_26_04_2010_684.json<- as.data.frame(fromJSON(paste(readLines("reden_26_04_2010_684.json"))))
reden_26_04_2012_560.json<- as.data.frame(fromJSON(paste(readLines("reden_26_04_2012_560.json"))))
reden_26_04_2016_333.json<- as.data.frame(fromJSON(paste(readLines("reden_26_04_2016_333.json"))))
reden_26_05_2011_603.json<- as.data.frame(fromJSON(paste(readLines("reden_26_05_2011_603.json"))))
reden_26_05_2011_604.json<- as.data.frame(fromJSON(paste(readLines("reden_26_05_2011_604.json"))))
reden_26_08_2013_502.json<- as.data.frame(fromJSON(paste(readLines("reden_26_08_2013_502.json"))))
reden_26_09_2006_836.json<- as.data.frame(fromJSON(paste(readLines("reden_26_09_2006_836.json"))))
reden_26_09_2007_806.json<- as.data.frame(fromJSON(paste(readLines("reden_26_09_2007_806.json"))))
reden_26_09_2008_759.json<- as.data.frame(fromJSON(paste(readLines("reden_26_09_2008_759.json"))))
reden_26_09_2011_588.json<- as.data.frame(fromJSON(paste(readLines("reden_26_09_2011_588.json"))))
reden_26_09_2013_495.json<- as.data.frame(fromJSON(paste(readLines("reden_26_09_2013_495.json"))))
reden_26_09_2019_985.json<- as.data.frame(fromJSON(paste(readLines("reden_26_09_2019_985.json"))))
reden_26_10_2005_858.json<- as.data.frame(fromJSON(paste(readLines("reden_26_10_2005_858.json"))))
reden_26_10_2006_834.json<- as.data.frame(fromJSON(paste(readLines("reden_26_10_2006_834.json"))))
reden_26_10_2013_489.json<- as.data.frame(fromJSON(paste(readLines("reden_26_10_2013_489.json"))))
reden_26_10_2014_439.json<- as.data.frame(fromJSON(paste(readLines("reden_26_10_2014_439.json"))))
reden_26_10_2015_372.json<- as.data.frame(fromJSON(paste(readLines("reden_26_10_2015_372.json"))))
reden_26_11_2008_750.json<- as.data.frame(fromJSON(paste(readLines("reden_26_11_2008_750.json"))))
reden_26_11_2009_698.json<- as.data.frame(fromJSON(paste(readLines("reden_26_11_2009_698.json"))))
reden_26_11_2009_699.json<- as.data.frame(fromJSON(paste(readLines("reden_26_11_2009_699.json"))))
reden_26_11_2013_475.json<- as.data.frame(fromJSON(paste(readLines("reden_26_11_2013_475.json"))))
reden_27_01_2011_634.json<- as.data.frame(fromJSON(paste(readLines("reden_27_01_2011_634.json"))))
reden_27_01_2011_635.json<- as.data.frame(fromJSON(paste(readLines("reden_27_01_2011_635.json"))))
reden_27_01_2014_469.json<- as.data.frame(fromJSON(paste(readLines("reden_27_01_2014_469.json"))))
reden_27_01_2016_350.json<- as.data.frame(fromJSON(paste(readLines("reden_27_01_2016_350.json"))))
reden_27_02_2008_786.json<- as.data.frame(fromJSON(paste(readLines("reden_27_02_2008_786.json"))))
reden_27_02_2014_463.json<- as.data.frame(fromJSON(paste(readLines("reden_27_02_2014_463.json"))))
reden_27_02_2018_128.json<- as.data.frame(fromJSON(paste(readLines("reden_27_02_2018_128.json"))))
reden_27_02_2018_129.json<- as.data.frame(fromJSON(paste(readLines("reden_27_02_2018_129.json"))))
reden_27_02_2019_45.json<- as.data.frame(fromJSON(paste(readLines("reden_27_02_2019_45.json"))))
reden_27_05_2010_677.json<- as.data.frame(fromJSON(paste(readLines("reden_27_05_2010_677.json"))))
reden_27_05_2011_602.json<- as.data.frame(fromJSON(paste(readLines("reden_27_05_2011_602.json"))))
reden_27_06_2001_1.json<- as.data.frame(fromJSON(paste(readLines("reden_27_06_2001_1.json"))))
reden_27_06_2001_2.json<- as.data.frame(fromJSON(paste(readLines("reden_27_06_2001_2.json"))))
reden_27_06_2001_3.json<- as.data.frame(fromJSON(paste(readLines("reden_27_06_2001_3.json"))))
reden_27_06_2001_4.json<- as.data.frame(fromJSON(paste(readLines("reden_27_06_2001_4.json"))))
reden_27_06_2001_5.json<- as.data.frame(fromJSON(paste(readLines("reden_27_06_2001_5.json"))))
reden_27_06_2001_6.json<- as.data.frame(fromJSON(paste(readLines("reden_27_06_2001_6.json"))))
reden_27_06_2001_7.json<- as.data.frame(fromJSON(paste(readLines("reden_27_06_2001_7.json"))))
reden_27_06_2001_8.json<- as.data.frame(fromJSON(paste(readLines("reden_27_06_2001_8.json"))))
reden_27_06_2001_9.json<- as.data.frame(fromJSON(paste(readLines("reden_27_06_2001_9.json"))))
reden_27_06_2001_10.json<- as.data.frame(fromJSON(paste(readLines("reden_27_06_2001_10.json"))))
reden_27_06_2001_11.json<- as.data.frame(fromJSON(paste(readLines("reden_27_06_2001_11.json"))))
reden_27_06_2001_12.json<- as.data.frame(fromJSON(paste(readLines("reden_27_06_2001_12.json"))))
reden_27_06_2001_13.json<- as.data.frame(fromJSON(paste(readLines("reden_27_06_2001_13.json"))))
reden_27_06_2001_14.json<- as.data.frame(fromJSON(paste(readLines("reden_27_06_2001_14.json"))))
reden_27_06_2001_15.json<- as.data.frame(fromJSON(paste(readLines("reden_27_06_2001_15.json"))))
reden_27_06_2001_16.json<- as.data.frame(fromJSON(paste(readLines("reden_27_06_2001_16.json"))))
reden_27_06_2001_17.json<- as.data.frame(fromJSON(paste(readLines("reden_27_06_2001_17.json"))))
reden_27_06_2001_18.json<- as.data.frame(fromJSON(paste(readLines("reden_27_06_2001_18.json"))))
reden_27_06_2001_19.json<- as.data.frame(fromJSON(paste(readLines("reden_27_06_2001_19.json"))))
reden_27_06_2001_20.json<- as.data.frame(fromJSON(paste(readLines("reden_27_06_2001_20.json"))))
reden_27_06_2001_21.json<- as.data.frame(fromJSON(paste(readLines("reden_27_06_2001_21.json"))))
reden_27_06_2001_22.json<- as.data.frame(fromJSON(paste(readLines("reden_27_06_2001_22.json"))))
reden_27_06_2001_23.json<- as.data.frame(fromJSON(paste(readLines("reden_27_06_2001_23.json"))))
reden_27_06_2001_24.json<- as.data.frame(fromJSON(paste(readLines("reden_27_06_2001_24.json"))))
reden_27_06_2001_25.json<- as.data.frame(fromJSON(paste(readLines("reden_27_06_2001_25.json"))))
reden_27_06_2001_26.json<- as.data.frame(fromJSON(paste(readLines("reden_27_06_2001_26.json"))))
reden_27_06_2013_508.json<- as.data.frame(fromJSON(paste(readLines("reden_27_06_2013_508.json"))))
reden_27_06_2013_509.json<- as.data.frame(fromJSON(paste(readLines("reden_27_06_2013_509.json"))))
reden_27_09_2012_548.json<- as.data.frame(fromJSON(paste(readLines("reden_27_09_2012_548.json"))))
reden_27_09_2016_307.json<- as.data.frame(fromJSON(paste(readLines("reden_27_09_2016_307.json"))))
reden_27_09_2019_984.json<- as.data.frame(fromJSON(paste(readLines("reden_27_09_2019_984.json"))))
reden_27_10_2011_583.json<- as.data.frame(fromJSON(paste(readLines("reden_27_10_2011_583.json"))))
reden_27_10_2016_299.json<- as.data.frame(fromJSON(paste(readLines("reden_27_10_2016_299.json"))))
reden_27_10_2017_180.json<- as.data.frame(fromJSON(paste(readLines("reden_27_10_2017_180.json"))))
reden_27_11_2014_427.json<- as.data.frame(fromJSON(paste(readLines("reden_27_11_2014_427.json"))))
reden_28_01_2009_745.json<- as.data.frame(fromJSON(paste(readLines("reden_28_01_2009_745.json"))))
reden_28_01_2014_468.json<- as.data.frame(fromJSON(paste(readLines("reden_28_01_2014_468.json"))))
reden_28_01_2015_414.json<- as.data.frame(fromJSON(paste(readLines("reden_28_01_2015_414.json"))))
reden_28_01_2015_415.json<- as.data.frame(fromJSON(paste(readLines("reden_28_01_2015_415.json"))))
reden_28_01_2015_416.json<- as.data.frame(fromJSON(paste(readLines("reden_28_01_2015_416.json"))))
reden_28_01_2016_348.json<- as.data.frame(fromJSON(paste(readLines("reden_28_01_2016_348.json"))))
reden_28_01_2016_349.json<- as.data.frame(fromJSON(paste(readLines("reden_28_01_2016_349.json"))))
reden_28_02_2007_826.json<- as.data.frame(fromJSON(paste(readLines("reden_28_02_2007_826.json"))))
reden_28_02_2007_827.json<- as.data.frame(fromJSON(paste(readLines("reden_28_02_2007_827.json"))))
reden_28_02_2012_563.json<- as.data.frame(fromJSON(paste(readLines("reden_28_02_2012_563.json"))))
reden_28_02_2018_127.json<- as.data.frame(fromJSON(paste(readLines("reden_28_02_2018_127.json"))))
reden_28_03_2007_822.json<- as.data.frame(fromJSON(paste(readLines("reden_28_03_2007_822.json"))))
reden_28_03_2008_783.json<- as.data.frame(fromJSON(paste(readLines("reden_28_03_2008_783.json"))))
reden_28_03_2014_460.json<- as.data.frame(fromJSON(paste(readLines("reden_28_03_2014_460.json"))))
reden_28_03_2017_247.json<- as.data.frame(fromJSON(paste(readLines("reden_28_03_2017_247.json"))))
reden_28_03_2018_118.json<- as.data.frame(fromJSON(paste(readLines("reden_28_03_2018_118.json"))))
reden_28_04_2005_869.json<- as.data.frame(fromJSON(paste(readLines("reden_28_04_2005_869.json"))))
reden_28_04_2006_844.json<- as.data.frame(fromJSON(paste(readLines("reden_28_04_2006_844.json"))))
reden_28_04_2010_683.json<- as.data.frame(fromJSON(paste(readLines("reden_28_04_2010_683.json"))))
reden_28_04_2012_559.json<- as.data.frame(fromJSON(paste(readLines("reden_28_04_2012_559.json"))))
reden_28_04_2015_405.json<- as.data.frame(fromJSON(paste(readLines("reden_28_04_2015_405.json"))))
reden_28_05_2005_868.json<- as.data.frame(fromJSON(paste(readLines("reden_28_05_2005_868.json"))))
reden_28_05_2009_727.json<- as.data.frame(fromJSON(paste(readLines("reden_28_05_2009_727.json"))))
reden_28_05_2010_676.json<- as.data.frame(fromJSON(paste(readLines("reden_28_05_2010_676.json"))))
reden_28_05_2013_516.json<- as.data.frame(fromJSON(paste(readLines("reden_28_05_2013_516.json"))))
reden_28_06_2007_809.json<- as.data.frame(fromJSON(paste(readLines("reden_28_06_2007_809.json"))))
reden_28_06_2010_672.json<- as.data.frame(fromJSON(paste(readLines("reden_28_06_2010_672.json"))))
reden_28_08_2017_199.json<- as.data.frame(fromJSON(paste(readLines("reden_28_08_2017_199.json"))))
reden_28_10_2003_1.json<- as.data.frame(fromJSON(paste(readLines("reden_28_10_2003_1.json"))))
reden_28_10_2003_2.json<- as.data.frame(fromJSON(paste(readLines("reden_28_10_2003_2.json"))))
reden_28_10_2003_3.json<- as.data.frame(fromJSON(paste(readLines("reden_28_10_2003_3.json"))))
reden_28_10_2003_4.json<- as.data.frame(fromJSON(paste(readLines("reden_28_10_2003_4.json"))))
reden_28_10_2003_5.json<- as.data.frame(fromJSON(paste(readLines("reden_28_10_2003_5.json"))))
reden_28_10_2003_6.json<- as.data.frame(fromJSON(paste(readLines("reden_28_10_2003_6.json"))))
reden_28_10_2003_7.json<- as.data.frame(fromJSON(paste(readLines("reden_28_10_2003_7.json"))))
reden_28_10_2003_8.json<- as.data.frame(fromJSON(paste(readLines("reden_28_10_2003_8.json"))))
reden_28_10_2003_9.json<- as.data.frame(fromJSON(paste(readLines("reden_28_10_2003_9.json"))))
reden_28_10_2003_10.json<- as.data.frame(fromJSON(paste(readLines("reden_28_10_2003_10.json"))))
reden_28_10_2010_655.json<- as.data.frame(fromJSON(paste(readLines("reden_28_10_2010_655.json"))))
reden_28_10_2010_656.json<- as.data.frame(fromJSON(paste(readLines("reden_28_10_2010_656.json"))))
reden_28_10_2010_657.json<- as.data.frame(fromJSON(paste(readLines("reden_28_10_2010_657.json"))))
reden_28_11_2013_474.json<- as.data.frame(fromJSON(paste(readLines("reden_28_11_2013_474.json"))))
reden_28_11_2014_426.json<- as.data.frame(fromJSON(paste(readLines("reden_28_11_2014_426.json"))))
reden_28_11_2017_160.json<- as.data.frame(fromJSON(paste(readLines("reden_28_11_2017_160.json"))))
reden_28_11_2018_63.json<- as.data.frame(fromJSON(paste(readLines("reden_28_11_2018_63.json"))))
reden_28_11_2019_957.json<- as.data.frame(fromJSON(paste(readLines("reden_28_11_2019_957.json"))))
reden_29_01_2018_146.json<- as.data.frame(fromJSON(paste(readLines("reden_29_01_2018_146.json"))))
reden_29_03_1999_1.json<- as.data.frame(fromJSON(paste(readLines("reden_29_03_1999_1.json"))))
reden_29_03_1999_2.json<- as.data.frame(fromJSON(paste(readLines("reden_29_03_1999_2.json"))))
reden_29_03_1999_3.json<- as.data.frame(fromJSON(paste(readLines("reden_29_03_1999_3.json"))))
reden_29_03_1999_4.json<- as.data.frame(fromJSON(paste(readLines("reden_29_03_1999_4.json"))))
reden_29_03_1999_5.json<- as.data.frame(fromJSON(paste(readLines("reden_29_03_1999_5.json"))))
reden_29_03_1999_6.json<- as.data.frame(fromJSON(paste(readLines("reden_29_03_1999_6.json"))))
reden_29_03_1999_7.json<- as.data.frame(fromJSON(paste(readLines("reden_29_03_1999_7.json"))))
reden_29_03_1999_8.json<- as.data.frame(fromJSON(paste(readLines("reden_29_03_1999_8.json"))))
reden_29_03_1999_9.json<- as.data.frame(fromJSON(paste(readLines("reden_29_03_1999_9.json"))))
reden_29_03_2012_561.json<- as.data.frame(fromJSON(paste(readLines("reden_29_03_2012_561.json"))))
reden_29_03_2018_117.json<- as.data.frame(fromJSON(paste(readLines("reden_29_03_2018_117.json"))))
reden_29_04_2009_733.json<- as.data.frame(fromJSON(paste(readLines("reden_29_04_2009_733.json"))))
reden_29_04_2016_332.json<- as.data.frame(fromJSON(paste(readLines("reden_29_04_2016_332.json"))))
reden_29_05_2007_814.json<- as.data.frame(fromJSON(paste(readLines("reden_29_05_2007_814.json"))))
reden_29_05_2017_218.json<- as.data.frame(fromJSON(paste(readLines("reden_29_05_2017_218.json"))))
reden_29_05_2019_30.json<- as.data.frame(fromJSON(paste(readLines("reden_29_05_2019_30.json"))))
reden_29_05_2019_31.json<- as.data.frame(fromJSON(paste(readLines("reden_29_05_2019_31.json"))))
reden_29_06_2011_599.json<- as.data.frame(fromJSON(paste(readLines("reden_29_06_2011_599.json"))))
reden_29_06_2017_207.json<- as.data.frame(fromJSON(paste(readLines("reden_29_06_2017_207.json"))))
reden_29_06_2017_208.json<- as.data.frame(fromJSON(paste(readLines("reden_29_06_2017_208.json"))))
reden_29_08_2013_500.json<- as.data.frame(fromJSON(paste(readLines("reden_29_08_2013_500.json"))))
reden_29_08_2013_501.json<- as.data.frame(fromJSON(paste(readLines("reden_29_08_2013_501.json"))))
reden_29_08_2016_312.json<- as.data.frame(fromJSON(paste(readLines("reden_29_08_2016_312.json"))))
reden_29_08_2016_313.json<- as.data.frame(fromJSON(paste(readLines("reden_29_08_2016_313.json"))))
reden_29_08_2017_198.json<- as.data.frame(fromJSON(paste(readLines("reden_29_08_2017_198.json"))))
reden_29_08_2019_20.json<- as.data.frame(fromJSON(paste(readLines("reden_29_08_2019_20.json"))))
reden_29_08_2019_21.json<- as.data.frame(fromJSON(paste(readLines("reden_29_08_2019_21.json"))))
reden_29_09_2006_835.json<- as.data.frame(fromJSON(paste(readLines("reden_29_09_2006_835.json"))))
reden_29_09_2010_664.json<- as.data.frame(fromJSON(paste(readLines("reden_29_09_2010_664.json"))))
reden_29_09_2010_665.json<- as.data.frame(fromJSON(paste(readLines("reden_29_09_2010_665.json"))))
reden_29_09_2014_444.json<- as.data.frame(fromJSON(paste(readLines("reden_29_09_2014_444.json"))))
reden_29_09_2015_378.json<- as.data.frame(fromJSON(paste(readLines("reden_29_09_2015_378.json"))))
reden_29_09_2016_306.json<- as.data.frame(fromJSON(paste(readLines("reden_29_09_2016_306.json"))))
reden_29_10_2009_708.json<- as.data.frame(fromJSON(paste(readLines("reden_29_10_2009_708.json"))))
reden_29_10_2019_972.json<- as.data.frame(fromJSON(paste(readLines("reden_29_10_2019_972.json"))))
reden_29_10_2019_973.json<- as.data.frame(fromJSON(paste(readLines("reden_29_10_2019_973.json"))))
reden_29_11_2007_796.json<- as.data.frame(fromJSON(paste(readLines("reden_29_11_2007_796.json"))))
reden_29_11_2012_536.json<- as.data.frame(fromJSON(paste(readLines("reden_29_11_2012_536.json"))))
reden_29_11_2012_537.json<- as.data.frame(fromJSON(paste(readLines("reden_29_11_2012_537.json"))))
reden_29_11_2017_157.json<- as.data.frame(fromJSON(paste(readLines("reden_29_11_2017_157.json"))))
reden_29_11_2017_158.json<- as.data.frame(fromJSON(paste(readLines("reden_29_11_2017_158.json"))))
reden_29_11_2017_159.json<- as.data.frame(fromJSON(paste(readLines("reden_29_11_2017_159.json"))))
reden_30_01_2008_792.json<- as.data.frame(fromJSON(paste(readLines("reden_30_01_2008_792.json"))))
reden_30_01_2013_528.json<- as.data.frame(fromJSON(paste(readLines("reden_30_01_2013_528.json"))))
reden_30_01_2013_529.json<- as.data.frame(fromJSON(paste(readLines("reden_30_01_2013_529.json"))))
reden_30_01_2018_145.json<- as.data.frame(fromJSON(paste(readLines("reden_30_01_2018_145.json"))))
reden_30_03_2009_735.json<- as.data.frame(fromJSON(paste(readLines("reden_30_03_2009_735.json"))))
reden_30_03_2017_246.json<- as.data.frame(fromJSON(paste(readLines("reden_30_03_2017_246.json"))))
reden_30_04_2009_732.json<- as.data.frame(fromJSON(paste(readLines("reden_30_04_2009_732.json"))))
reden_30_05_2008_772.json<- as.data.frame(fromJSON(paste(readLines("reden_30_05_2008_772.json"))))
reden_30_05_2008_773.json<- as.data.frame(fromJSON(paste(readLines("reden_30_05_2008_773.json"))))
reden_30_05_2016_327.json<- as.data.frame(fromJSON(paste(readLines("reden_30_05_2016_327.json"))))
reden_30_05_2017_217.json<- as.data.frame(fromJSON(paste(readLines("reden_30_05_2017_217.json"))))
reden_30_06_2005_860.json<- as.data.frame(fromJSON(paste(readLines("reden_30_06_2005_860.json"))))
reden_30_06_2009_721.json<- as.data.frame(fromJSON(paste(readLines("reden_30_06_2009_721.json"))))
reden_30_08_1999_1.json<- as.data.frame(fromJSON(paste(readLines("reden_30_08_1999_1.json"))))
reden_30_08_1999_2.json<- as.data.frame(fromJSON(paste(readLines("reden_30_08_1999_2.json"))))
reden_30_08_1999_3.json<- as.data.frame(fromJSON(paste(readLines("reden_30_08_1999_3.json"))))
reden_30_08_2013_499.json<- as.data.frame(fromJSON(paste(readLines("reden_30_08_2013_499.json"))))
reden_30_08_2017_197.json<- as.data.frame(fromJSON(paste(readLines("reden_30_08_2017_197.json"))))
reden_30_08_2018_86.json<- as.data.frame(fromJSON(paste(readLines("reden_30_08_2018_86.json"))))
reden_30_08_2018_87.json<- as.data.frame(fromJSON(paste(readLines("reden_30_08_2018_87.json"))))
reden_30_09_2004_1.json<- as.data.frame(fromJSON(paste(readLines("reden_30_09_2004_1.json"))))
reden_30_09_2004_2.json<- as.data.frame(fromJSON(paste(readLines("reden_30_09_2004_2.json"))))
reden_30_09_2004_3.json<- as.data.frame(fromJSON(paste(readLines("reden_30_09_2004_3.json"))))
reden_30_09_2004_4.json<- as.data.frame(fromJSON(paste(readLines("reden_30_09_2004_4.json"))))
reden_30_09_2004_5.json<- as.data.frame(fromJSON(paste(readLines("reden_30_09_2004_5.json"))))
reden_30_09_2004_6.json<- as.data.frame(fromJSON(paste(readLines("reden_30_09_2004_6.json"))))
reden_30_09_2004_7.json<- as.data.frame(fromJSON(paste(readLines("reden_30_09_2004_7.json"))))
reden_30_09_2009_712.json<- as.data.frame(fromJSON(paste(readLines("reden_30_09_2009_712.json"))))
reden_30_09_2009_713.json<- as.data.frame(fromJSON(paste(readLines("reden_30_09_2009_713.json"))))
reden_30_09_2014_443.json<- as.data.frame(fromJSON(paste(readLines("reden_30_09_2014_443.json"))))
reden_30_10_2007_803.json<- as.data.frame(fromJSON(paste(readLines("reden_30_10_2007_803.json"))))
reden_30_10_2013_488.json<- as.data.frame(fromJSON(paste(readLines("reden_30_10_2013_488.json"))))
reden_30_10_2017_179.json<- as.data.frame(fromJSON(paste(readLines("reden_30_10_2017_179.json"))))
reden_30_10_2019_971.json<- as.data.frame(fromJSON(paste(readLines("reden_30_10_2019_971.json"))))
reden_30_11_2009_697.json<- as.data.frame(fromJSON(paste(readLines("reden_30_11_2009_697.json"))))
reden_30_11_2016_285.json<- as.data.frame(fromJSON(paste(readLines("reden_30_11_2016_285.json"))))
reden_30_11_2017_156.json<- as.data.frame(fromJSON(paste(readLines("reden_30_11_2017_156.json"))))
reden_31_01_2008_791.json<- as.data.frame(fromJSON(paste(readLines("reden_31_01_2008_791.json"))))
reden_31_01_2017_270.json<- as.data.frame(fromJSON(paste(readLines("reden_31_01_2017_270.json"))))
reden_31_01_2018_144.json<- as.data.frame(fromJSON(paste(readLines("reden_31_01_2018_144.json"))))
reden_31_01_2019_54.json<- as.data.frame(fromJSON(paste(readLines("reden_31_01_2019_54.json"))))
reden_31_03_2006_845.json<- as.data.frame(fromJSON(paste(readLines("reden_31_03_2006_845.json"))))
reden_31_03_2017_245.json<- as.data.frame(fromJSON(paste(readLines("reden_31_03_2017_245.json"))))
reden_31_05_2010_675.json<- as.data.frame(fromJSON(paste(readLines("reden_31_05_2010_675.json"))))
reden_31_05_2017_216.json<- as.data.frame(fromJSON(paste(readLines("reden_31_05_2017_216.json"))))
reden_31_05_2019_29.json<- as.data.frame(fromJSON(paste(readLines("reden_31_05_2019_29.json"))))
reden_31_08_2015_386.json<- as.data.frame(fromJSON(paste(readLines("reden_31_08_2015_386.json"))))
reden_31_10_2007_802.json<- as.data.frame(fromJSON(paste(readLines("reden_31_10_2007_802.json"))))
reden_31_10_2017_178.json<- as.data.frame(fromJSON(paste(readLines("reden_31_10_2017_178.json"))))


##
## Pick columns
##
ifelse(ncol(reden_01_02_2008_790.json)==8,rm(reden_01_02_2008_790.json),"")
ifelse(ncol(reden_01_02_2012_565.json)==8,rm(reden_01_02_2012_565.json),"")
ifelse(ncol(reden_01_02_2017_269.json)==8,rm(reden_01_02_2017_269.json),"")
ifelse(ncol(reden_01_03_2017_258.json)==8,rm(reden_01_03_2017_258.json),"")
ifelse(ncol(reden_01_04_2019_42.json)==8,rm(reden_01_04_2019_42.json),"")
ifelse(ncol(reden_01_04_2019_43.json)==8,rm(reden_01_04_2019_43.json),"")
ifelse(ncol(reden_01_06_2005_867.json)==8,rm(reden_01_06_2005_867.json),"")
ifelse(ncol(reden_01_06_2015_400.json)==8,rm(reden_01_06_2015_400.json),"")
ifelse(ncol(reden_01_06_2016_325.json)==8,rm(reden_01_06_2016_325.json),"")
ifelse(ncol(reden_01_06_2016_326.json)==8,rm(reden_01_06_2016_326.json),"")
ifelse(ncol(reden_01_07_2010_671.json)==8,rm(reden_01_07_2010_671.json),"")
ifelse(ncol(reden_01_07_2015_391.json)==8,rm(reden_01_07_2015_391.json),"")
ifelse(ncol(reden_01_07_2015_392.json)==8,rm(reden_01_07_2015_392.json),"")
ifelse(ncol(reden_01_07_2016_316.json)==8,rm(reden_01_07_2016_316.json),"")
ifelse(ncol(reden_01_09_2011_596.json)==8,rm(reden_01_09_2011_596.json),"")
ifelse(ncol(reden_01_10_2012_547.json)==8,rm(reden_01_10_2012_547.json),"")
ifelse(ncol(reden_01_10_2013_494.json)==8,rm(reden_01_10_2013_494.json),"")
ifelse(ncol(reden_01_10_2015_377.json)==8,rm(reden_01_10_2015_377.json),"")
ifelse(ncol(reden_01_10_2019_982.json)==8,rm(reden_01_10_2019_982.json),"")
ifelse(ncol(reden_01_10_2019_983.json)==8,rm(reden_01_10_2019_983.json),"")
ifelse(ncol(reden_01_11_2007_801.json)==8,rm(reden_01_11_2007_801.json),"")
ifelse(ncol(reden_01_11_2019_970.json)==8,rm(reden_01_11_2019_970.json),"")
ifelse(ncol(reden_01_12_2014_424.json)==8,rm(reden_01_12_2014_424.json),"")
ifelse(ncol(reden_01_12_2014_425.json)==8,rm(reden_01_12_2014_425.json),"")
ifelse(ncol(reden_02_02_2010_691.json)==8,rm(reden_02_02_2010_691.json),"")
ifelse(ncol(reden_02_02_2011_632.json)==8,rm(reden_02_02_2011_632.json),"")
ifelse(ncol(reden_02_02_2011_633.json)==8,rm(reden_02_02_2011_633.json),"")
ifelse(ncol(reden_02_02_2017_268.json)==8,rm(reden_02_02_2017_268.json),"")
ifelse(ncol(reden_02_03_2011_624.json)==8,rm(reden_02_03_2011_624.json),"")
ifelse(ncol(reden_02_05_2011_611.json)==8,rm(reden_02_05_2011_611.json),"")
ifelse(ncol(reden_02_05_2011_612.json)==8,rm(reden_02_05_2011_612.json),"")
ifelse(ncol(reden_02_05_2016_331.json)==8,rm(reden_02_05_2016_331.json),"")
ifelse(ncol(reden_02_05_2018_103.json)==8,rm(reden_02_05_2018_103.json),"")
ifelse(ncol(reden_02_05_2019_41.json)==8,rm(reden_02_05_2019_41.json),"")
ifelse(ncol(reden_02_07_2013_507.json)==8,rm(reden_02_07_2013_507.json),"")
ifelse(ncol(reden_02_10_2015_376.json)==8,rm(reden_02_10_2015_376.json),"")
ifelse(ncol(reden_02_10_2016_305.json)==8,rm(reden_02_10_2016_305.json),"")
ifelse(ncol(reden_02_10_2017_185.json)==8,rm(reden_02_10_2017_185.json),"")
ifelse(ncol(reden_02_11_2007_800.json)==8,rm(reden_02_11_2007_800.json),"")
ifelse(ncol(reden_02_12_2003_1.json)==8,rm(reden_02_12_2003_1.json),"")
ifelse(ncol(reden_02_12_2003_2.json)==8,rm(reden_02_12_2003_2.json),"")
ifelse(ncol(reden_02_12_2003_3.json)==8,rm(reden_02_12_2003_3.json),"")
ifelse(ncol(reden_02_12_2003_4.json)==8,rm(reden_02_12_2003_4.json),"")
ifelse(ncol(reden_02_12_2003_5.json)==8,rm(reden_02_12_2003_5.json),"")
ifelse(ncol(reden_02_12_2003_6.json)==8,rm(reden_02_12_2003_6.json),"")
ifelse(ncol(reden_02_12_2003_7.json)==8,rm(reden_02_12_2003_7.json),"")
ifelse(ncol(reden_02_12_2003_8.json)==8,rm(reden_02_12_2003_8.json),"")
ifelse(ncol(reden_02_12_2003_9.json)==8,rm(reden_02_12_2003_9.json),"")
ifelse(ncol(reden_02_12_2003_10.json)==8,rm(reden_02_12_2003_10.json),"")
ifelse(ncol(reden_02_12_2010_642.json)==8,rm(reden_02_12_2010_642.json),"")
ifelse(ncol(reden_02_12_2010_643.json)==8,rm(reden_02_12_2010_643.json),"")
ifelse(ncol(reden_02_12_2015_358.json)==8,rm(reden_02_12_2015_358.json),"")
ifelse(ncol(reden_03_02_2017_267.json)==8,rm(reden_03_02_2017_267.json),"")
ifelse(ncol(reden_03_03_2016_341.json)==8,rm(reden_03_03_2016_341.json),"")
ifelse(ncol(reden_03_04_2017_242.json)==8,rm(reden_03_04_2017_242.json),"")
ifelse(ncol(reden_03_04_2017_243.json)==8,rm(reden_03_04_2017_243.json),"")
ifelse(ncol(reden_03_04_2017_244.json)==8,rm(reden_03_04_2017_244.json),"")
ifelse(ncol(reden_03_05_2007_820.json)==8,rm(reden_03_05_2007_820.json),"")
ifelse(ncol(reden_03_05_2019_40.json)==8,rm(reden_03_05_2019_40.json),"")
ifelse(ncol(reden_03_06_2005_866.json)==8,rm(reden_03_06_2005_866.json),"")
ifelse(ncol(reden_03_06_2007_813.json)==8,rm(reden_03_06_2007_813.json),"")
ifelse(ncol(reden_03_06_2008_771.json)==8,rm(reden_03_06_2008_771.json),"")
ifelse(ncol(reden_03_07_2007_808.json)==8,rm(reden_03_07_2007_808.json),"")
ifelse(ncol(reden_03_07_2013_506.json)==8,rm(reden_03_07_2013_506.json),"")
ifelse(ncol(reden_03_07_2014_451.json)==8,rm(reden_03_07_2014_451.json),"")
ifelse(ncol(reden_03_09_2018_84.json)==8,rm(reden_03_09_2018_84.json),"")
ifelse(ncol(reden_03_09_2018_85.json)==8,rm(reden_03_09_2018_85.json),"")
ifelse(ncol(reden_03_11_2006_833.json)==8,rm(reden_03_11_2006_833.json),"")
ifelse(ncol(reden_03_11_2009_706.json)==8,rm(reden_03_11_2009_706.json),"")
ifelse(ncol(reden_03_11_2009_707.json)==8,rm(reden_03_11_2009_707.json),"")
ifelse(ncol(reden_03_11_2010_654.json)==8,rm(reden_03_11_2010_654.json),"")
ifelse(ncol(reden_03_11_2016_298.json)==8,rm(reden_03_11_2016_298.json),"")
ifelse(ncol(reden_03_11_2017_177.json)==8,rm(reden_03_11_2017_177.json),"")
ifelse(ncol(reden_03_12_1999_1.json)==8,rm(reden_03_12_1999_1.json),"")
ifelse(ncol(reden_03_12_1999_2.json)==8,rm(reden_03_12_1999_2.json),"")
ifelse(ncol(reden_03_12_1999_3.json)==8,rm(reden_03_12_1999_3.json),"")
ifelse(ncol(reden_03_12_1999_4.json)==8,rm(reden_03_12_1999_4.json),"")
ifelse(ncol(reden_03_12_2009_696.json)==8,rm(reden_03_12_2009_696.json),"")
ifelse(ncol(reden_03_12_2013_473.json)==8,rm(reden_03_12_2013_473.json),"")
ifelse(ncol(reden_03_12_2014_423.json)==8,rm(reden_03_12_2014_423.json),"")
ifelse(ncol(reden_03_12_2015_357.json)==8,rm(reden_03_12_2015_357.json),"")
ifelse(ncol(reden_03_12_2018_62.json)==8,rm(reden_03_12_2018_62.json),"")
ifelse(ncol(reden_04_02_2013_527.json)==8,rm(reden_04_02_2013_527.json),"")
ifelse(ncol(reden_04_02_2015_413.json)==8,rm(reden_04_02_2015_413.json),"")
ifelse(ncol(reden_04_02_2016_347.json)==8,rm(reden_04_02_2016_347.json),"")
ifelse(ncol(reden_04_03_2011_623.json)==8,rm(reden_04_03_2011_623.json),"")
ifelse(ncol(reden_04_05_2007_819.json)==8,rm(reden_04_05_2007_819.json),"")
ifelse(ncol(reden_04_05_2009_731.json)==8,rm(reden_04_05_2009_731.json),"")
ifelse(ncol(reden_04_05_2010_682.json)==8,rm(reden_04_05_2010_682.json),"")
ifelse(ncol(reden_04_05_2015_404.json)==8,rm(reden_04_05_2015_404.json),"")
ifelse(ncol(reden_04_05_2017_234.json)==8,rm(reden_04_05_2017_234.json),"")
ifelse(ncol(reden_04_05_2017_235.json)==8,rm(reden_04_05_2017_235.json),"")
ifelse(ncol(reden_04_05_2018_100.json)==8,rm(reden_04_05_2018_100.json),"")
ifelse(ncol(reden_04_05_2018_101.json)==8,rm(reden_04_05_2018_101.json),"")
ifelse(ncol(reden_04_05_2018_102.json)==8,rm(reden_04_05_2018_102.json),"")
ifelse(ncol(reden_04_07_2012_555.json)==8,rm(reden_04_07_2012_555.json),"")
ifelse(ncol(reden_04_09_2009_718.json)==8,rm(reden_04_09_2009_718.json),"")
ifelse(ncol(reden_04_09_2009_719.json)==8,rm(reden_04_09_2009_719.json),"")
ifelse(ncol(reden_04_09_2014_446.json)==8,rm(reden_04_09_2014_446.json),"")
ifelse(ncol(reden_04_10_2011_587.json)==8,rm(reden_04_10_2011_587.json),"")
ifelse(ncol(reden_04_11_2008_757.json)==8,rm(reden_04_11_2008_757.json),"")
ifelse(ncol(reden_04_11_2014_438.json)==8,rm(reden_04_11_2014_438.json),"")
ifelse(ncol(reden_04_11_2019_968.json)==8,rm(reden_04_11_2019_968.json),"")
ifelse(ncol(reden_04_11_2019_969.json)==8,rm(reden_04_11_2019_969.json),"")
ifelse(ncol(reden_04_12_2012_535.json)==8,rm(reden_04_12_2012_535.json),"")
ifelse(ncol(reden_04_12_2015_356.json)==8,rm(reden_04_12_2015_356.json),"")
ifelse(ncol(reden_04_12_2019_955.json)==8,rm(reden_04_12_2019_955.json),"")
ifelse(ncol(reden_04_12_2019_956.json)==8,rm(reden_04_12_2019_956.json),"")
ifelse(ncol(reden_05_02_2018_143.json)==8,rm(reden_05_02_2018_143.json),"")
ifelse(ncol(reden_05_03_2006_850.json)==8,rm(reden_05_03_2006_850.json),"")
ifelse(ncol(reden_05_03_2018_124.json)==8,rm(reden_05_03_2018_124.json),"")
ifelse(ncol(reden_05_03_2018_125.json)==8,rm(reden_05_03_2018_125.json),"")
ifelse(ncol(reden_05_03_2018_126.json)==8,rm(reden_05_03_2018_126.json),"")
ifelse(ncol(reden_05_04_2011_617.json)==8,rm(reden_05_04_2011_617.json),"")
ifelse(ncol(reden_05_04_2018_116.json)==8,rm(reden_05_04_2018_116.json),"")
ifelse(ncol(reden_05_05_2006_841.json)==8,rm(reden_05_05_2006_841.json),"")
ifelse(ncol(reden_05_05_2006_842.json)==8,rm(reden_05_05_2006_842.json),"")
ifelse(ncol(reden_05_05_2006_843.json)==8,rm(reden_05_05_2006_843.json),"")
ifelse(ncol(reden_05_05_2010_681.json)==8,rm(reden_05_05_2010_681.json),"")
ifelse(ncol(reden_05_05_2015_403.json)==8,rm(reden_05_05_2015_403.json),"")
ifelse(ncol(reden_05_06_2009_726.json)==8,rm(reden_05_06_2009_726.json),"")
ifelse(ncol(reden_05_06_2018_97.json)==8,rm(reden_05_06_2018_97.json),"")
ifelse(ncol(reden_05_07_2012_554.json)==8,rm(reden_05_07_2012_554.json),"")
ifelse(ncol(reden_05_07_2018_92.json)==8,rm(reden_05_07_2018_92.json),"")
ifelse(ncol(reden_05_09_2011_595.json)==8,rm(reden_05_09_2011_595.json),"")
ifelse(ncol(reden_05_09_2013_498.json)==8,rm(reden_05_09_2013_498.json),"")
ifelse(ncol(reden_05_09_2016_311.json)==8,rm(reden_05_09_2016_311.json),"")
ifelse(ncol(reden_05_09_2019_992.json)==8,rm(reden_05_09_2019_992.json),"")
ifelse(ncol(reden_05_10_2010_663.json)==8,rm(reden_05_10_2010_663.json),"")
ifelse(ncol(reden_05_11_2010_653.json)==8,rm(reden_05_11_2010_653.json),"")
ifelse(ncol(reden_05_11_2018_76.json)==8,rm(reden_05_11_2018_76.json),"")
ifelse(ncol(reden_05_12_2002_1.json)==8,rm(reden_05_12_2002_1.json),"")
ifelse(ncol(reden_05_12_2002_2.json)==8,rm(reden_05_12_2002_2.json),"")
ifelse(ncol(reden_05_12_2002_3.json)==8,rm(reden_05_12_2002_3.json),"")
ifelse(ncol(reden_05_12_2002_4.json)==8,rm(reden_05_12_2002_4.json),"")
ifelse(ncol(reden_05_12_2002_5.json)==8,rm(reden_05_12_2002_5.json),"")
ifelse(ncol(reden_05_12_2002_6.json)==8,rm(reden_05_12_2002_6.json),"")
ifelse(ncol(reden_05_12_2002_7.json)==8,rm(reden_05_12_2002_7.json),"")
ifelse(ncol(reden_05_12_2002_8.json)==8,rm(reden_05_12_2002_8.json),"")
ifelse(ncol(reden_05_12_2002_9.json)==8,rm(reden_05_12_2002_9.json),"")
ifelse(ncol(reden_05_12_2002_10.json)==8,rm(reden_05_12_2002_10.json),"")
ifelse(ncol(reden_05_12_2002_11.json)==8,rm(reden_05_12_2002_11.json),"")
ifelse(ncol(reden_05_12_2002_12.json)==8,rm(reden_05_12_2002_12.json),"")
ifelse(ncol(reden_05_12_2002_13.json)==8,rm(reden_05_12_2002_13.json),"")
ifelse(ncol(reden_05_12_2002_14.json)==8,rm(reden_05_12_2002_14.json),"")
ifelse(ncol(reden_05_12_2002_15.json)==8,rm(reden_05_12_2002_15.json),"")
ifelse(ncol(reden_05_12_2016_284.json)==8,rm(reden_05_12_2016_284.json),"")
ifelse(ncol(reden_05_12_2017_155.json)==8,rm(reden_05_12_2017_155.json),"")
ifelse(ncol(reden_05_12_2019_953.json)==8,rm(reden_05_12_2019_953.json),"")
ifelse(ncol(reden_05_12_2019_954.json)==8,rm(reden_05_12_2019_954.json),"")
ifelse(ncol(reden_06_02_2007_828.json)==8,rm(reden_06_02_2007_828.json),"")
ifelse(ncol(reden_06_02_2014_467.json)==8,rm(reden_06_02_2014_467.json),"")
ifelse(ncol(reden_06_02_2017_266.json)==8,rm(reden_06_02_2017_266.json),"")
ifelse(ncol(reden_06_02_2018_141.json)==8,rm(reden_06_02_2018_141.json),"")
ifelse(ncol(reden_06_02_2018_142.json)==8,rm(reden_06_02_2018_142.json),"")
ifelse(ncol(reden_06_03_2017_257.json)==8,rm(reden_06_03_2017_257.json),"")
ifelse(ncol(reden_06_04_2017_241.json)==8,rm(reden_06_04_2017_241.json),"")
ifelse(ncol(reden_06_05_2019_38.json)==8,rm(reden_06_05_2019_38.json),"")
ifelse(ncol(reden_06_05_2019_39.json)==8,rm(reden_06_05_2019_39.json),"")
ifelse(ncol(reden_06_06_2005_865.json)==8,rm(reden_06_06_2005_865.json),"")
ifelse(ncol(reden_06_06_2007_812.json)==8,rm(reden_06_06_2007_812.json),"")
ifelse(ncol(reden_06_06_2008_770.json)==8,rm(reden_06_06_2008_770.json),"")
ifelse(ncol(reden_06_06_2018_96.json)==8,rm(reden_06_06_2018_96.json),"")
ifelse(ncol(reden_06_07_2006_837.json)==8,rm(reden_06_07_2006_837.json),"")
ifelse(ncol(reden_06_07_2017_206.json)==8,rm(reden_06_07_2017_206.json),"")
ifelse(ncol(reden_06_09_2011_592.json)==8,rm(reden_06_09_2011_592.json),"")
ifelse(ncol(reden_06_09_2011_593.json)==8,rm(reden_06_09_2011_593.json),"")
ifelse(ncol(reden_06_09_2011_594.json)==8,rm(reden_06_09_2011_594.json),"")
ifelse(ncol(reden_06_11_2013_487.json)==8,rm(reden_06_11_2013_487.json),"")
ifelse(ncol(reden_06_12_2012_534.json)==8,rm(reden_06_12_2012_534.json),"")
ifelse(ncol(reden_07_02_2011_631.json)==8,rm(reden_07_02_2011_631.json),"")
ifelse(ncol(reden_07_02_2017_265.json)==8,rm(reden_07_02_2017_265.json),"")
ifelse(ncol(reden_07_02_2019_52.json)==8,rm(reden_07_02_2019_52.json),"")
ifelse(ncol(reden_07_02_2019_53.json)==8,rm(reden_07_02_2019_53.json),"")
ifelse(ncol(reden_07_03_2008_785.json)==8,rm(reden_07_03_2008_785.json),"")
ifelse(ncol(reden_07_03_2017_256.json)==8,rm(reden_07_03_2017_256.json),"")
ifelse(ncol(reden_07_03_2018_123.json)==8,rm(reden_07_03_2018_123.json),"")
ifelse(ncol(reden_07_04_2008_782.json)==8,rm(reden_07_04_2008_782.json),"")
ifelse(ncol(reden_07_04_2014_459.json)==8,rm(reden_07_04_2014_459.json),"")
ifelse(ncol(reden_07_05_2007_818.json)==8,rm(reden_07_05_2007_818.json),"")
ifelse(ncol(reden_07_06_2005_864.json)==8,rm(reden_07_06_2005_864.json),"")
ifelse(ncol(reden_07_06_2017_215.json)==8,rm(reden_07_06_2017_215.json),"")
ifelse(ncol(reden_07_09_2015_385.json)==8,rm(reden_07_09_2015_385.json),"")
ifelse(ncol(reden_07_09_2016_310.json)==8,rm(reden_07_09_2016_310.json),"")
ifelse(ncol(reden_07_09_2017_195.json)==8,rm(reden_07_09_2017_195.json),"")
ifelse(ncol(reden_07_09_2017_196.json)==8,rm(reden_07_09_2017_196.json),"")
ifelse(ncol(reden_07_11_2014_437.json)==8,rm(reden_07_11_2014_437.json),"")
ifelse(ncol(reden_07_12_2016_283.json)==8,rm(reden_07_12_2016_283.json),"")
ifelse(ncol(reden_07_12_2018_60.json)==8,rm(reden_07_12_2018_60.json),"")
ifelse(ncol(reden_07_12_2018_61.json)==8,rm(reden_07_12_2018_61.json),"")
ifelse(ncol(reden_08_01_2009_747.json)==8,rm(reden_08_01_2009_747.json),"")
ifelse(ncol(reden_08_02_2012_564.json)==8,rm(reden_08_02_2012_564.json),"")
ifelse(ncol(reden_08_02_2018_138.json)==8,rm(reden_08_02_2018_138.json),"")
ifelse(ncol(reden_08_02_2018_139.json)==8,rm(reden_08_02_2018_139.json),"")
ifelse(ncol(reden_08_02_2018_140.json)==8,rm(reden_08_02_2018_140.json),"")
ifelse(ncol(reden_08_02_2019_50.json)==8,rm(reden_08_02_2019_50.json),"")
ifelse(ncol(reden_08_02_2019_51.json)==8,rm(reden_08_02_2019_51.json),"")
ifelse(ncol(reden_08_03_2006_849.json)==8,rm(reden_08_03_2006_849.json),"")
ifelse(ncol(reden_08_03_2011_622.json)==8,rm(reden_08_03_2011_622.json),"")
ifelse(ncol(reden_08_03_2018_122.json)==8,rm(reden_08_03_2018_122.json),"")
ifelse(ncol(reden_08_04_2014_458.json)==8,rm(reden_08_04_2014_458.json),"")
ifelse(ncol(reden_08_04_2016_337.json)==8,rm(reden_08_04_2016_337.json),"")
ifelse(ncol(reden_08_05_2019_37.json)==8,rm(reden_08_05_2019_37.json),"")
ifelse(ncol(reden_08_06_2005_862.json)==8,rm(reden_08_06_2005_862.json),"")
ifelse(ncol(reden_08_06_2005_863.json)==8,rm(reden_08_06_2005_863.json),"")
ifelse(ncol(reden_08_06_2009_725.json)==8,rm(reden_08_06_2009_725.json),"")
ifelse(ncol(reden_08_06_2016_323.json)==8,rm(reden_08_06_2016_323.json),"")
ifelse(ncol(reden_08_06_2016_324.json)==8,rm(reden_08_06_2016_324.json),"")
ifelse(ncol(reden_08_07_2009_720.json)==8,rm(reden_08_07_2009_720.json),"")
ifelse(ncol(reden_08_07_2015_390.json)==8,rm(reden_08_07_2015_390.json),"")
ifelse(ncol(reden_08_07_2017_205.json)==8,rm(reden_08_07_2017_205.json),"")
ifelse(ncol(reden_08_09_2009_717.json)==8,rm(reden_08_09_2009_717.json),"")
ifelse(ncol(reden_08_09_2010_670.json)==8,rm(reden_08_09_2010_670.json),"")
ifelse(ncol(reden_08_09_2017_194.json)==8,rm(reden_08_09_2017_194.json),"")
ifelse(ncol(reden_08_10_2012_546.json)==8,rm(reden_08_10_2012_546.json),"")
ifelse(ncol(reden_08_10_2013_493.json)==8,rm(reden_08_10_2013_493.json),"")
ifelse(ncol(reden_08_10_2019_981.json)==8,rm(reden_08_10_2019_981.json),"")
ifelse(ncol(reden_08_11_2010_652.json)==8,rm(reden_08_11_2010_652.json),"")
ifelse(ncol(reden_08_11_2011_582.json)==8,rm(reden_08_11_2011_582.json),"")
ifelse(ncol(reden_08_11_2017_176.json)==8,rm(reden_08_11_2017_176.json),"")
ifelse(ncol(reden_08_12_2005_854.json)==8,rm(reden_08_12_2005_854.json),"")
ifelse(ncol(reden_08_12_2006_832.json)==8,rm(reden_08_12_2006_832.json),"")
ifelse(ncol(reden_09_03_2005_872.json)==8,rm(reden_09_03_2005_872.json),"")
ifelse(ncol(reden_09_03_2006_848.json)==8,rm(reden_09_03_2006_848.json),"")
ifelse(ncol(reden_09_03_2007_825.json)==8,rm(reden_09_03_2007_825.json),"")
ifelse(ncol(reden_09_03_2010_690.json)==8,rm(reden_09_03_2010_690.json),"")
ifelse(ncol(reden_09_03_2011_621.json)==8,rm(reden_09_03_2011_621.json),"")
ifelse(ncol(reden_09_03_2015_409.json)==8,rm(reden_09_03_2015_409.json),"")
ifelse(ncol(reden_09_03_2017_255.json)==8,rm(reden_09_03_2017_255.json),"")
ifelse(ncol(reden_09_05_2007_817.json)==8,rm(reden_09_05_2007_817.json),"")
ifelse(ncol(reden_09_06_2010_674.json)==8,rm(reden_09_06_2010_674.json),"")
ifelse(ncol(reden_09_07_2013_505.json)==8,rm(reden_09_07_2013_505.json),"")
ifelse(ncol(reden_09_07_2014_450.json)==8,rm(reden_09_07_2014_450.json),"")
ifelse(ncol(reden_09_07_2015_389.json)==8,rm(reden_09_07_2015_389.json),"")
ifelse(ncol(reden_09_07_2019_24.json)==8,rm(reden_09_07_2019_24.json),"")
ifelse(ncol(reden_09_09_2014_445.json)==8,rm(reden_09_09_2014_445.json),"")
ifelse(ncol(reden_09_10_2008_758.json)==8,rm(reden_09_10_2008_758.json),"")
ifelse(ncol(reden_09_10_2014_442.json)==8,rm(reden_09_10_2014_442.json),"")
ifelse(ncol(reden_09_11_2005_857.json)==8,rm(reden_09_11_2005_857.json),"")
ifelse(ncol(reden_09_11_2007_798.json)==8,rm(reden_09_11_2007_798.json),"")
ifelse(ncol(reden_09_11_2007_799.json)==8,rm(reden_09_11_2007_799.json),"")
ifelse(ncol(reden_09_11_2012_543.json)==8,rm(reden_09_11_2012_543.json),"")
ifelse(ncol(reden_09_11_2016_296.json)==8,rm(reden_09_11_2016_296.json),"")
ifelse(ncol(reden_09_11_2016_297.json)==8,rm(reden_09_11_2016_297.json),"")
ifelse(ncol(reden_09_11_2017_175.json)==8,rm(reden_09_11_2017_175.json),"")
ifelse(ncol(reden_09_11_2018_75.json)==8,rm(reden_09_11_2018_75.json),"")
ifelse(ncol(reden_09_12_2009_695.json)==8,rm(reden_09_12_2009_695.json),"")
ifelse(ncol(reden_10_01_2006_853.json)==8,rm(reden_10_01_2006_853.json),"")
ifelse(ncol(reden_10_02_2009_744.json)==8,rm(reden_10_02_2009_744.json),"")
ifelse(ncol(reden_10_02_2011_628.json)==8,rm(reden_10_02_2011_628.json),"")
ifelse(ncol(reden_10_02_2011_629.json)==8,rm(reden_10_02_2011_629.json),"")
ifelse(ncol(reden_10_02_2011_630.json)==8,rm(reden_10_02_2011_630.json),"")
ifelse(ncol(reden_10_02_2017_264.json)==8,rm(reden_10_02_2017_264.json),"")
ifelse(ncol(reden_10_03_2009_740.json)==8,rm(reden_10_03_2009_740.json),"")
ifelse(ncol(reden_10_03_2010_688.json)==8,rm(reden_10_03_2010_688.json),"")
ifelse(ncol(reden_10_03_2010_689.json)==8,rm(reden_10_03_2010_689.json),"")
ifelse(ncol(reden_10_03_2011_620.json)==8,rm(reden_10_03_2011_620.json),"")
ifelse(ncol(reden_10_03_2016_340.json)==8,rm(reden_10_03_2016_340.json),"")
ifelse(ncol(reden_10_04_2018_115.json)==8,rm(reden_10_04_2018_115.json),"")
ifelse(ncol(reden_10_05_2016_330.json)==8,rm(reden_10_05_2016_330.json),"")
ifelse(ncol(reden_10_05_2017_233.json)==8,rm(reden_10_05_2017_233.json),"")
ifelse(ncol(reden_10_06_2008_769.json)==8,rm(reden_10_06_2008_769.json),"")
ifelse(ncol(reden_10_06_2009_724.json)==8,rm(reden_10_06_2009_724.json),"")
ifelse(ncol(reden_10_06_2013_514.json)==8,rm(reden_10_06_2013_514.json),"")
ifelse(ncol(reden_10_06_2013_515.json)==8,rm(reden_10_06_2013_515.json),"")
ifelse(ncol(reden_10_06_2016_322.json)==8,rm(reden_10_06_2016_322.json),"")
ifelse(ncol(reden_10_07_2002_1.json)==8,rm(reden_10_07_2002_1.json),"")
ifelse(ncol(reden_10_07_2002_2.json)==8,rm(reden_10_07_2002_2.json),"")
ifelse(ncol(reden_10_07_2002_3.json)==8,rm(reden_10_07_2002_3.json),"")
ifelse(ncol(reden_10_07_2002_4.json)==8,rm(reden_10_07_2002_4.json),"")
ifelse(ncol(reden_10_07_2002_5.json)==8,rm(reden_10_07_2002_5.json),"")
ifelse(ncol(reden_10_07_2019_23.json)==8,rm(reden_10_07_2019_23.json),"")
ifelse(ncol(reden_10_09_2008_764.json)==8,rm(reden_10_09_2008_764.json),"")
ifelse(ncol(reden_10_09_2019_989.json)==8,rm(reden_10_09_2019_989.json),"")
ifelse(ncol(reden_10_09_2019_990.json)==8,rm(reden_10_09_2019_990.json),"")
ifelse(ncol(reden_10_09_2019_991.json)==8,rm(reden_10_09_2019_991.json),"")
ifelse(ncol(reden_10_10_2012_544.json)==8,rm(reden_10_10_2012_544.json),"")
ifelse(ncol(reden_10_10_2012_545.json)==8,rm(reden_10_10_2012_545.json),"")
ifelse(ncol(reden_10_10_2016_304.json)==8,rm(reden_10_10_2016_304.json),"")
ifelse(ncol(reden_10_11_2005_856.json)==8,rm(reden_10_11_2005_856.json),"")
ifelse(ncol(reden_10_11_2011_581.json)==8,rm(reden_10_11_2011_581.json),"")
ifelse(ncol(reden_10_11_2016_293.json)==8,rm(reden_10_11_2016_293.json),"")
ifelse(ncol(reden_10_11_2016_294.json)==8,rm(reden_10_11_2016_294.json),"")
ifelse(ncol(reden_10_11_2016_295.json)==8,rm(reden_10_11_2016_295.json),"")
ifelse(ncol(reden_10_11_2017_174.json)==8,rm(reden_10_11_2017_174.json),"")
ifelse(ncol(reden_10_12_2008_749.json)==8,rm(reden_10_12_2008_749.json),"")
ifelse(ncol(reden_11_01_2011_640.json)==8,rm(reden_11_01_2011_640.json),"")
ifelse(ncol(reden_11_02_2009_743.json)==8,rm(reden_11_02_2009_743.json),"")
ifelse(ncol(reden_11_02_2013_525.json)==8,rm(reden_11_02_2013_525.json),"")
ifelse(ncol(reden_11_02_2013_526.json)==8,rm(reden_11_02_2013_526.json),"")
ifelse(ncol(reden_11_02_2014_466.json)==8,rm(reden_11_02_2014_466.json),"")
ifelse(ncol(reden_11_02_2016_346.json)==8,rm(reden_11_02_2016_346.json),"")
ifelse(ncol(reden_11_03_2008_784.json)==8,rm(reden_11_03_2008_784.json),"")
ifelse(ncol(reden_11_04_2011_616.json)==8,rm(reden_11_04_2011_616.json),"")
ifelse(ncol(reden_11_04_2018_113.json)==8,rm(reden_11_04_2018_113.json),"")
ifelse(ncol(reden_11_04_2018_114.json)==8,rm(reden_11_04_2018_114.json),"")
ifelse(ncol(reden_11_05_2006_840.json)==8,rm(reden_11_05_2006_840.json),"")
ifelse(ncol(reden_11_05_2016_328.json)==8,rm(reden_11_05_2016_328.json),"")
ifelse(ncol(reden_11_05_2016_329.json)==8,rm(reden_11_05_2016_329.json),"")
ifelse(ncol(reden_11_05_2017_232.json)==8,rm(reden_11_05_2017_232.json),"")
ifelse(ncol(reden_11_06_2014_453.json)==8,rm(reden_11_06_2014_453.json),"")
ifelse(ncol(reden_11_06_2015_399.json)==8,rm(reden_11_06_2015_399.json),"")
ifelse(ncol(reden_11_06_2016_321.json)==8,rm(reden_11_06_2016_321.json),"")
ifelse(ncol(reden_11_07_2011_598.json)==8,rm(reden_11_07_2011_598.json),"")
ifelse(ncol(reden_11_07_2013_504.json)==8,rm(reden_11_07_2013_504.json),"")
ifelse(ncol(reden_11_09_2012_552.json)==8,rm(reden_11_09_2012_552.json),"")
ifelse(ncol(reden_11_09_2015_384.json)==8,rm(reden_11_09_2015_384.json),"")
ifelse(ncol(reden_11_09_2018_83.json)==8,rm(reden_11_09_2018_83.json),"")
ifelse(ncol(reden_11_10_2007_805.json)==8,rm(reden_11_10_2007_805.json),"")
ifelse(ncol(reden_11_10_2017_183.json)==8,rm(reden_11_10_2017_183.json),"")
ifelse(ncol(reden_11_10_2017_184.json)==8,rm(reden_11_10_2017_184.json),"")
ifelse(ncol(reden_11_11_2008_756.json)==8,rm(reden_11_11_2008_756.json),"")
ifelse(ncol(reden_11_11_2009_705.json)==8,rm(reden_11_11_2009_705.json),"")
ifelse(ncol(reden_11_11_2013_486.json)==8,rm(reden_11_11_2013_486.json),"")
ifelse(ncol(reden_11_11_2015_370.json)==8,rm(reden_11_11_2015_370.json),"")
ifelse(ncol(reden_11_11_2015_371.json)==8,rm(reden_11_11_2015_371.json),"")
ifelse(ncol(reden_11_11_2019_967.json)==8,rm(reden_11_11_2019_967.json),"")
ifelse(ncol(reden_11_12_2008_748.json)==8,rm(reden_11_12_2008_748.json),"")
ifelse(ncol(reden_12_01_2018_152.json)==8,rm(reden_12_01_2018_152.json),"")
ifelse(ncol(reden_12_02_2015_411.json)==8,rm(reden_12_02_2015_411.json),"")
ifelse(ncol(reden_12_02_2015_412.json)==8,rm(reden_12_02_2015_412.json),"")
ifelse(ncol(reden_12_02_2019_49.json)==8,rm(reden_12_02_2019_49.json),"")
ifelse(ncol(reden_12_03_2010_687.json)==8,rm(reden_12_03_2010_687.json),"")
ifelse(ncol(reden_12_03_2015_408.json)==8,rm(reden_12_03_2015_408.json),"")
ifelse(ncol(reden_12_04_2018_110.json)==8,rm(reden_12_04_2018_110.json),"")
ifelse(ncol(reden_12_04_2018_111.json)==8,rm(reden_12_04_2018_111.json),"")
ifelse(ncol(reden_12_04_2018_112.json)==8,rm(reden_12_04_2018_112.json),"")
ifelse(ncol(reden_12_05_2009_730.json)==8,rm(reden_12_05_2009_730.json),"")
ifelse(ncol(reden_12_05_2011_609.json)==8,rm(reden_12_05_2011_609.json),"")
ifelse(ncol(reden_12_05_2011_610.json)==8,rm(reden_12_05_2011_610.json),"")
ifelse(ncol(reden_12_06_2008_768.json)==8,rm(reden_12_06_2008_768.json),"")
ifelse(ncol(reden_12_06_2012_557.json)==8,rm(reden_12_06_2012_557.json),"")
ifelse(ncol(reden_12_06_2014_452.json)==8,rm(reden_12_06_2014_452.json),"")
ifelse(ncol(reden_12_07_2018_91.json)==8,rm(reden_12_07_2018_91.json),"")
ifelse(ncol(reden_12_10_2007_804.json)==8,rm(reden_12_10_2007_804.json),"")
ifelse(ncol(reden_12_10_2010_661.json)==8,rm(reden_12_10_2010_661.json),"")
ifelse(ncol(reden_12_10_2010_662.json)==8,rm(reden_12_10_2010_662.json),"")
ifelse(ncol(reden_12_11_2014_436.json)==8,rm(reden_12_11_2014_436.json),"")
ifelse(ncol(reden_12_11_2015_369.json)==8,rm(reden_12_11_2015_369.json),"")
ifelse(ncol(reden_12_11_2019_966.json)==8,rm(reden_12_11_2019_966.json),"")
ifelse(ncol(reden_12_12_2000_1.json)==8,rm(reden_12_12_2000_1.json),"")
ifelse(ncol(reden_12_12_2000_2.json)==8,rm(reden_12_12_2000_2.json),"")
ifelse(ncol(reden_12_12_2000_3.json)==8,rm(reden_12_12_2000_3.json),"")
ifelse(ncol(reden_12_12_2000_4.json)==8,rm(reden_12_12_2000_4.json),"")
ifelse(ncol(reden_12_12_2000_5.json)==8,rm(reden_12_12_2000_5.json),"")
ifelse(ncol(reden_12_12_2000_6.json)==8,rm(reden_12_12_2000_6.json),"")
ifelse(ncol(reden_12_12_2000_7.json)==8,rm(reden_12_12_2000_7.json),"")
ifelse(ncol(reden_12_12_2000_8.json)==8,rm(reden_12_12_2000_8.json),"")
ifelse(ncol(reden_12_12_2000_9.json)==8,rm(reden_12_12_2000_9.json),"")
ifelse(ncol(reden_12_12_2000_10.json)==8,rm(reden_12_12_2000_10.json),"")
ifelse(ncol(reden_12_12_2000_11.json)==8,rm(reden_12_12_2000_11.json),"")
ifelse(ncol(reden_12_12_2000_12.json)==8,rm(reden_12_12_2000_12.json),"")
ifelse(ncol(reden_12_12_2000_13.json)==8,rm(reden_12_12_2000_13.json),"")
ifelse(ncol(reden_12_12_2000_14.json)==8,rm(reden_12_12_2000_14.json),"")
ifelse(ncol(reden_12_12_2000_15.json)==8,rm(reden_12_12_2000_15.json),"")
ifelse(ncol(reden_12_12_2000_16.json)==8,rm(reden_12_12_2000_16.json),"")
ifelse(ncol(reden_12_12_2000_17.json)==8,rm(reden_12_12_2000_17.json),"")
ifelse(ncol(reden_12_12_2000_18.json)==8,rm(reden_12_12_2000_18.json),"")
ifelse(ncol(reden_12_12_2000_19.json)==8,rm(reden_12_12_2000_19.json),"")
ifelse(ncol(reden_12_12_2000_20.json)==8,rm(reden_12_12_2000_20.json),"")
ifelse(ncol(reden_12_12_2012_533.json)==8,rm(reden_12_12_2012_533.json),"")
ifelse(ncol(reden_13_01_2015_421.json)==8,rm(reden_13_01_2015_421.json),"")
ifelse(ncol(reden_13_01_2015_422.json)==8,rm(reden_13_01_2015_422.json),"")
ifelse(ncol(reden_13_03_2002_1.json)==8,rm(reden_13_03_2002_1.json),"")
ifelse(ncol(reden_13_03_2002_2.json)==8,rm(reden_13_03_2002_2.json),"")
ifelse(ncol(reden_13_03_2002_3.json)==8,rm(reden_13_03_2002_3.json),"")
ifelse(ncol(reden_13_03_2002_4.json)==8,rm(reden_13_03_2002_4.json),"")
ifelse(ncol(reden_13_03_2002_5.json)==8,rm(reden_13_03_2002_5.json),"")
ifelse(ncol(reden_13_03_2002_6.json)==8,rm(reden_13_03_2002_6.json),"")
ifelse(ncol(reden_13_03_2002_7.json)==8,rm(reden_13_03_2002_7.json),"")
ifelse(ncol(reden_13_03_2007_824.json)==8,rm(reden_13_03_2007_824.json),"")
ifelse(ncol(reden_13_04_2011_614.json)==8,rm(reden_13_04_2011_614.json),"")
ifelse(ncol(reden_13_04_2011_615.json)==8,rm(reden_13_04_2011_615.json),"")
ifelse(ncol(reden_13_04_2016_336.json)==8,rm(reden_13_04_2016_336.json),"")
ifelse(ncol(reden_13_05_2009_729.json)==8,rm(reden_13_05_2009_729.json),"")
ifelse(ncol(reden_13_05_2015_402.json)==8,rm(reden_13_05_2015_402.json),"")
ifelse(ncol(reden_13_06_2000_1.json)==8,rm(reden_13_06_2000_1.json),"")
ifelse(ncol(reden_13_06_2000_2.json)==8,rm(reden_13_06_2000_2.json),"")
ifelse(ncol(reden_13_06_2000_3.json)==8,rm(reden_13_06_2000_3.json),"")
ifelse(ncol(reden_13_06_2000_4.json)==8,rm(reden_13_06_2000_4.json),"")
ifelse(ncol(reden_13_06_2000_5.json)==8,rm(reden_13_06_2000_5.json),"")
ifelse(ncol(reden_13_06_2000_6.json)==8,rm(reden_13_06_2000_6.json),"")
ifelse(ncol(reden_13_06_2000_7.json)==8,rm(reden_13_06_2000_7.json),"")
ifelse(ncol(reden_13_06_2000_8.json)==8,rm(reden_13_06_2000_8.json),"")
ifelse(ncol(reden_13_06_2000_9.json)==8,rm(reden_13_06_2000_9.json),"")
ifelse(ncol(reden_13_06_2008_767.json)==8,rm(reden_13_06_2008_767.json),"")
ifelse(ncol(reden_13_06_2013_513.json)==8,rm(reden_13_06_2013_513.json),"")
ifelse(ncol(reden_13_06_2016_319.json)==8,rm(reden_13_06_2016_319.json),"")
ifelse(ncol(reden_13_06_2016_320.json)==8,rm(reden_13_06_2016_320.json),"")
ifelse(ncol(reden_13_06_2017_214.json)==8,rm(reden_13_06_2017_214.json),"")
ifelse(ncol(reden_13_06_2019_28.json)==8,rm(reden_13_06_2019_28.json),"")
ifelse(ncol(reden_13_07_2016_315.json)==8,rm(reden_13_07_2016_315.json),"")
ifelse(ncol(reden_13_07_2017_204.json)==8,rm(reden_13_07_2017_204.json),"")
ifelse(ncol(reden_13_09_2011_590.json)==8,rm(reden_13_09_2011_590.json),"")
ifelse(ncol(reden_13_09_2011_591.json)==8,rm(reden_13_09_2011_591.json),"")
ifelse(ncol(reden_13_09_2019_988.json)==8,rm(reden_13_09_2019_988.json),"")
ifelse(ncol(reden_13_10_2014_441.json)==8,rm(reden_13_10_2014_441.json),"")
ifelse(ncol(reden_13_10_2015_375.json)==8,rm(reden_13_10_2015_375.json),"")
ifelse(ncol(reden_13_10_2016_303.json)==8,rm(reden_13_10_2016_303.json),"")
ifelse(ncol(reden_13_11_2008_755.json)==8,rm(reden_13_11_2008_755.json),"")
ifelse(ncol(reden_13_11_2013_485.json)==8,rm(reden_13_11_2013_485.json),"")
ifelse(ncol(reden_13_11_2017_173.json)==8,rm(reden_13_11_2017_173.json),"")
ifelse(ncol(reden_13_11_2018_74.json)==8,rm(reden_13_11_2018_74.json),"")
ifelse(ncol(reden_13_12_2004_1.json)==8,rm(reden_13_12_2004_1.json),"")
ifelse(ncol(reden_13_12_2004_2.json)==8,rm(reden_13_12_2004_2.json),"")
ifelse(ncol(reden_13_12_2004_3.json)==8,rm(reden_13_12_2004_3.json),"")
ifelse(ncol(reden_13_12_2004_4.json)==8,rm(reden_13_12_2004_4.json),"")
ifelse(ncol(reden_13_12_2004_5.json)==8,rm(reden_13_12_2004_5.json),"")
ifelse(ncol(reden_13_12_2004_6.json)==8,rm(reden_13_12_2004_6.json),"")
ifelse(ncol(reden_13_12_2004_7.json)==8,rm(reden_13_12_2004_7.json),"")
ifelse(ncol(reden_13_12_2004_8.json)==8,rm(reden_13_12_2004_8.json),"")
ifelse(ncol(reden_13_12_2004_9.json)==8,rm(reden_13_12_2004_9.json),"")
ifelse(ncol(reden_13_12_2004_10.json)==8,rm(reden_13_12_2004_10.json),"")
ifelse(ncol(reden_13_12_2004_11.json)==8,rm(reden_13_12_2004_11.json),"")
ifelse(ncol(reden_13_12_2004_12.json)==8,rm(reden_13_12_2004_12.json),"")
ifelse(ncol(reden_13_12_2004_13.json)==8,rm(reden_13_12_2004_13.json),"")
ifelse(ncol(reden_13_12_2004_14.json)==8,rm(reden_13_12_2004_14.json),"")
ifelse(ncol(reden_13_12_2004_15.json)==8,rm(reden_13_12_2004_15.json),"")
ifelse(ncol(reden_13_12_2004_16.json)==8,rm(reden_13_12_2004_16.json),"")
ifelse(ncol(reden_13_12_2006_831.json)==8,rm(reden_13_12_2006_831.json),"")
ifelse(ncol(reden_13_12_2007_795.json)==8,rm(reden_13_12_2007_795.json),"")
ifelse(ncol(reden_13_12_2018_59.json)==8,rm(reden_13_12_2018_59.json),"")
ifelse(ncol(reden_14_01_2011_639.json)==8,rm(reden_14_01_2011_639.json),"")
ifelse(ncol(reden_14_01_2016_355.json)==8,rm(reden_14_01_2016_355.json),"")
ifelse(ncol(reden_14_02_2008_789.json)==8,rm(reden_14_02_2008_789.json),"")
ifelse(ncol(reden_14_02_2014_465.json)==8,rm(reden_14_02_2014_465.json),"")
ifelse(ncol(reden_14_02_2018_135.json)==8,rm(reden_14_02_2018_135.json),"")
ifelse(ncol(reden_14_02_2018_136.json)==8,rm(reden_14_02_2018_136.json),"")
ifelse(ncol(reden_14_02_2018_137.json)==8,rm(reden_14_02_2018_137.json),"")
ifelse(ncol(reden_14_02_2019_48.json)==8,rm(reden_14_02_2019_48.json),"")
ifelse(ncol(reden_14_03_2006_847.json)==8,rm(reden_14_03_2006_847.json),"")
ifelse(ncol(reden_14_03_2012_562.json)==8,rm(reden_14_03_2012_562.json),"")
ifelse(ncol(reden_14_04_2005_871.json)==8,rm(reden_14_04_2005_871.json),"")
ifelse(ncol(reden_14_04_2011_613.json)==8,rm(reden_14_04_2011_613.json),"")
ifelse(ncol(reden_14_05_2010_680.json)==8,rm(reden_14_05_2010_680.json),"")
ifelse(ncol(reden_14_05_2014_457.json)==8,rm(reden_14_05_2014_457.json),"")
ifelse(ncol(reden_14_06_2007_810.json)==8,rm(reden_14_06_2007_810.json),"")
ifelse(ncol(reden_14_06_2007_811.json)==8,rm(reden_14_06_2007_811.json),"")
ifelse(ncol(reden_14_06_2012_556.json)==8,rm(reden_14_06_2012_556.json),"")
ifelse(ncol(reden_14_06_2017_213.json)==8,rm(reden_14_06_2017_213.json),"")
ifelse(ncol(reden_14_07_2016_314.json)==8,rm(reden_14_07_2016_314.json),"")
ifelse(ncol(reden_14_08_2008_765.json)==8,rm(reden_14_08_2008_765.json),"")
ifelse(ncol(reden_14_08_2017_202.json)==8,rm(reden_14_08_2017_202.json),"")
ifelse(ncol(reden_14_09_2010_669.json)==8,rm(reden_14_09_2010_669.json),"")
ifelse(ncol(reden_14_09_2017_193.json)==8,rm(reden_14_09_2017_193.json),"")
ifelse(ncol(reden_14_10_2010_660.json)==8,rm(reden_14_10_2010_660.json),"")
ifelse(ncol(reden_14_10_2019_980.json)==8,rm(reden_14_10_2019_980.json),"")
ifelse(ncol(reden_14_11_2011_580.json)==8,rm(reden_14_11_2011_580.json),"")
ifelse(ncol(reden_14_11_2012_541.json)==8,rm(reden_14_11_2012_541.json),"")
ifelse(ncol(reden_14_11_2012_542.json)==8,rm(reden_14_11_2012_542.json),"")
ifelse(ncol(reden_14_11_2013_481.json)==8,rm(reden_14_11_2013_481.json),"")
ifelse(ncol(reden_14_11_2013_482.json)==8,rm(reden_14_11_2013_482.json),"")
ifelse(ncol(reden_14_11_2013_483.json)==8,rm(reden_14_11_2013_483.json),"")
ifelse(ncol(reden_14_11_2013_484.json)==8,rm(reden_14_11_2013_484.json),"")
ifelse(ncol(reden_14_11_2017_172.json)==8,rm(reden_14_11_2017_172.json),"")
ifelse(ncol(reden_14_11_2018_70.json)==8,rm(reden_14_11_2018_70.json),"")
ifelse(ncol(reden_14_11_2018_71.json)==8,rm(reden_14_11_2018_71.json),"")
ifelse(ncol(reden_14_11_2018_72.json)==8,rm(reden_14_11_2018_72.json),"")
ifelse(ncol(reden_14_11_2018_73.json)==8,rm(reden_14_11_2018_73.json),"")
ifelse(ncol(reden_14_12_2011_572.json)==8,rm(reden_14_12_2011_572.json),"")
ifelse(ncol(reden_14_12_2017_154.json)==8,rm(reden_14_12_2017_154.json),"")
ifelse(ncol(reden_14_12_2018_58.json)==8,rm(reden_14_12_2018_58.json),"")
ifelse(ncol(reden_15_01_2008_794.json)==8,rm(reden_15_01_2008_794.json),"")
ifelse(ncol(reden_15_01_2014_472.json)==8,rm(reden_15_01_2014_472.json),"")
ifelse(ncol(reden_15_01_2018_151.json)==8,rm(reden_15_01_2018_151.json),"")
ifelse(ncol(reden_15_01_2019_56.json)==8,rm(reden_15_01_2019_56.json),"")
ifelse(ncol(reden_15_01_2019_57.json)==8,rm(reden_15_01_2019_57.json),"")
ifelse(ncol(reden_15_02_2018_133.json)==8,rm(reden_15_02_2018_133.json),"")
ifelse(ncol(reden_15_02_2018_134.json)==8,rm(reden_15_02_2018_134.json),"")
ifelse(ncol(reden_15_03_2007_823.json)==8,rm(reden_15_03_2007_823.json),"")
ifelse(ncol(reden_15_03_2017_253.json)==8,rm(reden_15_03_2017_253.json),"")
ifelse(ncol(reden_15_03_2017_254.json)==8,rm(reden_15_03_2017_254.json),"")
ifelse(ncol(reden_15_03_2018_121.json)==8,rm(reden_15_03_2018_121.json),"")
ifelse(ncol(reden_15_04_2003_1.json)==8,rm(reden_15_04_2003_1.json),"")
ifelse(ncol(reden_15_04_2003_2.json)==8,rm(reden_15_04_2003_2.json),"")
ifelse(ncol(reden_15_04_2003_3.json)==8,rm(reden_15_04_2003_3.json),"")
ifelse(ncol(reden_15_04_2003_4.json)==8,rm(reden_15_04_2003_4.json),"")
ifelse(ncol(reden_15_04_2003_5.json)==8,rm(reden_15_04_2003_5.json),"")
ifelse(ncol(reden_15_04_2003_6.json)==8,rm(reden_15_04_2003_6.json),"")
ifelse(ncol(reden_15_04_2003_7.json)==8,rm(reden_15_04_2003_7.json),"")
ifelse(ncol(reden_15_04_2008_781.json)==8,rm(reden_15_04_2008_781.json),"")
ifelse(ncol(reden_15_04_2009_734.json)==8,rm(reden_15_04_2009_734.json),"")
ifelse(ncol(reden_15_05_2013_520.json)==8,rm(reden_15_05_2013_520.json),"")
ifelse(ncol(reden_15_05_2017_231.json)==8,rm(reden_15_05_2017_231.json),"")
ifelse(ncol(reden_15_05_2019_36.json)==8,rm(reden_15_05_2019_36.json),"")
ifelse(ncol(reden_15_06_2015_397.json)==8,rm(reden_15_06_2015_397.json),"")
ifelse(ncol(reden_15_06_2015_398.json)==8,rm(reden_15_06_2015_398.json),"")
ifelse(ncol(reden_15_06_2016_318.json)==8,rm(reden_15_06_2016_318.json),"")
ifelse(ncol(reden_15_07_2015_388.json)==8,rm(reden_15_07_2015_388.json),"")
ifelse(ncol(reden_15_08_2017_201.json)==8,rm(reden_15_08_2017_201.json),"")
ifelse(ncol(reden_15_09_2015_383.json)==8,rm(reden_15_09_2015_383.json),"")
ifelse(ncol(reden_15_09_2016_309.json)==8,rm(reden_15_09_2016_309.json),"")
ifelse(ncol(reden_15_10_2009_711.json)==8,rm(reden_15_10_2009_711.json),"")
ifelse(ncol(reden_15_10_2015_374.json)==8,rm(reden_15_10_2015_374.json),"")
ifelse(ncol(reden_15_11_2010_650.json)==8,rm(reden_15_11_2010_650.json),"")
ifelse(ncol(reden_15_11_2010_651.json)==8,rm(reden_15_11_2010_651.json),"")
ifelse(ncol(reden_15_11_2011_579.json)==8,rm(reden_15_11_2011_579.json),"")
ifelse(ncol(reden_15_11_2016_292.json)==8,rm(reden_15_11_2016_292.json),"")
ifelse(ncol(reden_15_11_2017_170.json)==8,rm(reden_15_11_2017_170.json),"")
ifelse(ncol(reden_15_11_2017_171.json)==8,rm(reden_15_11_2017_171.json),"")
ifelse(ncol(reden_15_11_2018_69.json)==8,rm(reden_15_11_2018_69.json),"")
ifelse(ncol(reden_16_01_2008_793.json)==8,rm(reden_16_01_2008_793.json),"")
ifelse(ncol(reden_16_01_2014_470.json)==8,rm(reden_16_01_2014_470.json),"")
ifelse(ncol(reden_16_01_2014_471.json)==8,rm(reden_16_01_2014_471.json),"")
ifelse(ncol(reden_16_01_2015_420.json)==8,rm(reden_16_01_2015_420.json),"")
ifelse(ncol(reden_16_01_2017_277.json)==8,rm(reden_16_01_2017_277.json),"")
ifelse(ncol(reden_16_01_2018_150.json)==8,rm(reden_16_01_2018_150.json),"")
ifelse(ncol(reden_16_02_2017_263.json)==8,rm(reden_16_02_2017_263.json),"")
ifelse(ncol(reden_16_03_2017_252.json)==8,rm(reden_16_03_2017_252.json),"")
ifelse(ncol(reden_16_04_2018_109.json)==8,rm(reden_16_04_2018_109.json),"")
ifelse(ncol(reden_16_05_2007_816.json)==8,rm(reden_16_05_2007_816.json),"")
ifelse(ncol(reden_16_05_2008_775.json)==8,rm(reden_16_05_2008_775.json),"")
ifelse(ncol(reden_16_05_2019_34.json)==8,rm(reden_16_05_2019_34.json),"")
ifelse(ncol(reden_16_05_2019_35.json)==8,rm(reden_16_05_2019_35.json),"")
ifelse(ncol(reden_16_06_2005_861.json)==8,rm(reden_16_06_2005_861.json),"")
ifelse(ncol(reden_16_06_2009_723.json)==8,rm(reden_16_06_2009_723.json),"")
ifelse(ncol(reden_16_07_2003_1.json)==8,rm(reden_16_07_2003_1.json),"")
ifelse(ncol(reden_16_07_2003_2.json)==8,rm(reden_16_07_2003_2.json),"")
ifelse(ncol(reden_16_07_2003_3.json)==8,rm(reden_16_07_2003_3.json),"")
ifelse(ncol(reden_16_07_2003_4.json)==8,rm(reden_16_07_2003_4.json),"")
ifelse(ncol(reden_16_07_2003_5.json)==8,rm(reden_16_07_2003_5.json),"")
ifelse(ncol(reden_16_07_2003_6.json)==8,rm(reden_16_07_2003_6.json),"")
ifelse(ncol(reden_16_07_2003_7.json)==8,rm(reden_16_07_2003_7.json),"")
ifelse(ncol(reden_16_07_2003_8.json)==8,rm(reden_16_07_2003_8.json),"")
ifelse(ncol(reden_16_07_2003_9.json)==8,rm(reden_16_07_2003_9.json),"")
ifelse(ncol(reden_16_09_2008_763.json)==8,rm(reden_16_09_2008_763.json),"")
ifelse(ncol(reden_16_09_2010_668.json)==8,rm(reden_16_09_2010_668.json),"")
ifelse(ncol(reden_16_09_2012_551.json)==8,rm(reden_16_09_2012_551.json),"")
ifelse(ncol(reden_16_09_2015_382.json)==8,rm(reden_16_09_2015_382.json),"")
ifelse(ncol(reden_16_10_2009_710.json)==8,rm(reden_16_10_2009_710.json),"")
ifelse(ncol(reden_16_10_2019_978.json)==8,rm(reden_16_10_2019_978.json),"")
ifelse(ncol(reden_16_10_2019_979.json)==8,rm(reden_16_10_2019_979.json),"")
ifelse(ncol(reden_16_11_2009_702.json)==8,rm(reden_16_11_2009_702.json),"")
ifelse(ncol(reden_16_11_2009_703.json)==8,rm(reden_16_11_2009_703.json),"")
ifelse(ncol(reden_16_11_2009_704.json)==8,rm(reden_16_11_2009_704.json),"")
ifelse(ncol(reden_16_11_2010_649.json)==8,rm(reden_16_11_2010_649.json),"")
ifelse(ncol(reden_16_11_2011_577.json)==8,rm(reden_16_11_2011_577.json),"")
ifelse(ncol(reden_16_11_2011_578.json)==8,rm(reden_16_11_2011_578.json),"")
ifelse(ncol(reden_16_11_2016_289.json)==8,rm(reden_16_11_2016_289.json),"")
ifelse(ncol(reden_16_11_2016_290.json)==8,rm(reden_16_11_2016_290.json),"")
ifelse(ncol(reden_16_11_2016_291.json)==8,rm(reden_16_11_2016_291.json),"")
ifelse(ncol(reden_16_11_2018_68.json)==8,rm(reden_16_11_2018_68.json),"")
ifelse(ncol(reden_16_12_2016_280.json)==8,rm(reden_16_12_2016_280.json),"")
ifelse(ncol(reden_16_12_2016_281.json)==8,rm(reden_16_12_2016_281.json),"")
ifelse(ncol(reden_16_12_2016_282.json)==8,rm(reden_16_12_2016_282.json),"")
ifelse(ncol(reden_17_01_2005_877.json)==8,rm(reden_17_01_2005_877.json),"")
ifelse(ncol(reden_17_01_2012_570.json)==8,rm(reden_17_01_2012_570.json),"")
ifelse(ncol(reden_17_01_2013_532.json)==8,rm(reden_17_01_2013_532.json),"")
ifelse(ncol(reden_17_02_2009_742.json)==8,rm(reden_17_02_2009_742.json),"")
ifelse(ncol(reden_17_02_2016_345.json)==8,rm(reden_17_02_2016_345.json),"")
ifelse(ncol(reden_17_03_2006_846.json)==8,rm(reden_17_03_2006_846.json),"")
ifelse(ncol(reden_17_03_2009_739.json)==8,rm(reden_17_03_2009_739.json),"")
ifelse(ncol(reden_17_03_2014_462.json)==8,rm(reden_17_03_2014_462.json),"")
ifelse(ncol(reden_17_04_2008_780.json)==8,rm(reden_17_04_2008_780.json),"")
ifelse(ncol(reden_17_04_2018_108.json)==8,rm(reden_17_04_2018_108.json),"")
ifelse(ncol(reden_17_05_2011_608.json)==8,rm(reden_17_05_2011_608.json),"")
ifelse(ncol(reden_17_05_2017_227.json)==8,rm(reden_17_05_2017_227.json),"")
ifelse(ncol(reden_17_05_2017_228.json)==8,rm(reden_17_05_2017_228.json),"")
ifelse(ncol(reden_17_05_2017_229.json)==8,rm(reden_17_05_2017_229.json),"")
ifelse(ncol(reden_17_05_2017_230.json)==8,rm(reden_17_05_2017_230.json),"")
ifelse(ncol(reden_17_06_2010_673.json)==8,rm(reden_17_06_2010_673.json),"")
ifelse(ncol(reden_17_06_2011_601.json)==8,rm(reden_17_06_2011_601.json),"")
ifelse(ncol(reden_17_06_2019_27.json)==8,rm(reden_17_06_2019_27.json),"")
ifelse(ncol(reden_17_08_2019_22.json)==8,rm(reden_17_08_2019_22.json),"")
ifelse(ncol(reden_17_09_2008_761.json)==8,rm(reden_17_09_2008_761.json),"")
ifelse(ncol(reden_17_09_2008_762.json)==8,rm(reden_17_09_2008_762.json),"")
ifelse(ncol(reden_17_09_2010_667.json)==8,rm(reden_17_09_2010_667.json),"")
ifelse(ncol(reden_17_10_2013_492.json)==8,rm(reden_17_10_2013_492.json),"")
ifelse(ncol(reden_17_10_2014_440.json)==8,rm(reden_17_10_2014_440.json),"")
ifelse(ncol(reden_17_10_2016_302.json)==8,rm(reden_17_10_2016_302.json),"")
ifelse(ncol(reden_17_10_2018_77.json)==8,rm(reden_17_10_2018_77.json),"")
ifelse(ncol(reden_17_10_2018_78.json)==8,rm(reden_17_10_2018_78.json),"")
ifelse(ncol(reden_17_10_2019_976.json)==8,rm(reden_17_10_2019_976.json),"")
ifelse(ncol(reden_17_10_2019_977.json)==8,rm(reden_17_10_2019_977.json),"")
ifelse(ncol(reden_17_11_2008_753.json)==8,rm(reden_17_11_2008_753.json),"")
ifelse(ncol(reden_17_11_2008_754.json)==8,rm(reden_17_11_2008_754.json),"")
ifelse(ncol(reden_17_11_2009_701.json)==8,rm(reden_17_11_2009_701.json),"")
ifelse(ncol(reden_17_11_2010_648.json)==8,rm(reden_17_11_2010_648.json),"")
ifelse(ncol(reden_17_11_2014_435.json)==8,rm(reden_17_11_2014_435.json),"")
ifelse(ncol(reden_17_11_2015_368.json)==8,rm(reden_17_11_2015_368.json),"")
ifelse(ncol(reden_17_11_2017_167.json)==8,rm(reden_17_11_2017_167.json),"")
ifelse(ncol(reden_17_11_2017_168.json)==8,rm(reden_17_11_2017_168.json),"")
ifelse(ncol(reden_17_11_2017_169.json)==8,rm(reden_17_11_2017_169.json),"")
ifelse(ncol(reden_17_12_2001_1.json)==8,rm(reden_17_12_2001_1.json),"")
ifelse(ncol(reden_17_12_2001_2.json)==8,rm(reden_17_12_2001_2.json),"")
ifelse(ncol(reden_17_12_2001_3.json)==8,rm(reden_17_12_2001_3.json),"")
ifelse(ncol(reden_17_12_2001_4.json)==8,rm(reden_17_12_2001_4.json),"")
ifelse(ncol(reden_17_12_2001_5.json)==8,rm(reden_17_12_2001_5.json),"")
ifelse(ncol(reden_17_12_2001_6.json)==8,rm(reden_17_12_2001_6.json),"")
ifelse(ncol(reden_17_12_2001_7.json)==8,rm(reden_17_12_2001_7.json),"")
ifelse(ncol(reden_17_12_2001_8.json)==8,rm(reden_17_12_2001_8.json),"")
ifelse(ncol(reden_17_12_2001_9.json)==8,rm(reden_17_12_2001_9.json),"")
ifelse(ncol(reden_17_12_2001_10.json)==8,rm(reden_17_12_2001_10.json),"")
ifelse(ncol(reden_17_12_2010_641.json)==8,rm(reden_17_12_2010_641.json),"")
ifelse(ncol(reden_18_01_2006_852.json)==8,rm(reden_18_01_2006_852.json),"")
ifelse(ncol(reden_18_01_2011_638.json)==8,rm(reden_18_01_2011_638.json),"")
ifelse(ncol(reden_18_01_2012_569.json)==8,rm(reden_18_01_2012_569.json),"")
ifelse(ncol(reden_18_01_2016_353.json)==8,rm(reden_18_01_2016_353.json),"")
ifelse(ncol(reden_18_01_2016_354.json)==8,rm(reden_18_01_2016_354.json),"")
ifelse(ncol(reden_18_02_2008_788.json)==8,rm(reden_18_02_2008_788.json),"")
ifelse(ncol(reden_18_02_2013_524.json)==8,rm(reden_18_02_2013_524.json),"")
ifelse(ncol(reden_18_02_2014_464.json)==8,rm(reden_18_02_2014_464.json),"")
ifelse(ncol(reden_18_03_2013_522.json)==8,rm(reden_18_03_2013_522.json),"")
ifelse(ncol(reden_18_03_2015_407.json)==8,rm(reden_18_03_2015_407.json),"")
ifelse(ncol(reden_18_04_2007_821.json)==8,rm(reden_18_04_2007_821.json),"")
ifelse(ncol(reden_18_04_2008_779.json)==8,rm(reden_18_04_2008_779.json),"")
ifelse(ncol(reden_18_05_2010_679.json)==8,rm(reden_18_05_2010_679.json),"")
ifelse(ncol(reden_18_05_2017_224.json)==8,rm(reden_18_05_2017_224.json),"")
ifelse(ncol(reden_18_05_2017_225.json)==8,rm(reden_18_05_2017_225.json),"")
ifelse(ncol(reden_18_05_2017_226.json)==8,rm(reden_18_05_2017_226.json),"")
ifelse(ncol(reden_18_05_2018_99.json)==8,rm(reden_18_05_2018_99.json),"")
ifelse(ncol(reden_18_06_2013_512.json)==8,rm(reden_18_06_2013_512.json),"")
ifelse(ncol(reden_18_06_2015_396.json)==8,rm(reden_18_06_2015_396.json),"")
ifelse(ncol(reden_18_07_2014_449.json)==8,rm(reden_18_07_2014_449.json),"")
ifelse(ncol(reden_18_09_2012_550.json)==8,rm(reden_18_09_2012_550.json),"")
ifelse(ncol(reden_18_09_2015_381.json)==8,rm(reden_18_09_2015_381.json),"")
ifelse(ncol(reden_18_09_2017_192.json)==8,rm(reden_18_09_2017_192.json),"")
ifelse(ncol(reden_18_09_2018_82.json)==8,rm(reden_18_09_2018_82.json),"")
ifelse(ncol(reden_18_09_2019_987.json)==8,rm(reden_18_09_2019_987.json),"")
ifelse(ncol(reden_18_11_2005_855.json)==8,rm(reden_18_11_2005_855.json),"")
ifelse(ncol(reden_18_11_2008_752.json)==8,rm(reden_18_11_2008_752.json),"")
ifelse(ncol(reden_18_11_2011_576.json)==8,rm(reden_18_11_2011_576.json),"")
ifelse(ncol(reden_18_11_2014_434.json)==8,rm(reden_18_11_2014_434.json),"")
ifelse(ncol(reden_18_11_2015_367.json)==8,rm(reden_18_11_2015_367.json),"")
ifelse(ncol(reden_18_11_2016_288.json)==8,rm(reden_18_11_2016_288.json),"")
ifelse(ncol(reden_18_11_2019_965.json)==8,rm(reden_18_11_2019_965.json),"")
ifelse(ncol(reden_19_01_2007_830.json)==8,rm(reden_19_01_2007_830.json),"")
ifelse(ncol(reden_19_01_2011_637.json)==8,rm(reden_19_01_2011_637.json),"")
ifelse(ncol(reden_19_01_2018_149.json)==8,rm(reden_19_01_2018_149.json),"")
ifelse(ncol(reden_19_02_2019_47.json)==8,rm(reden_19_02_2019_47.json),"")
ifelse(ncol(reden_19_03_2009_738.json)==8,rm(reden_19_03_2009_738.json),"")
ifelse(ncol(reden_19_03_2019_44.json)==8,rm(reden_19_03_2019_44.json),"")
ifelse(ncol(reden_19_05_2010_678.json)==8,rm(reden_19_05_2010_678.json),"")
ifelse(ncol(reden_19_05_2014_455.json)==8,rm(reden_19_05_2014_455.json),"")
ifelse(ncol(reden_19_05_2014_456.json)==8,rm(reden_19_05_2014_456.json),"")
ifelse(ncol(reden_19_06_2017_211.json)==8,rm(reden_19_06_2017_211.json),"")
ifelse(ncol(reden_19_06_2017_212.json)==8,rm(reden_19_06_2017_212.json),"")
ifelse(ncol(reden_19_08_2013_503.json)==8,rm(reden_19_08_2013_503.json),"")
ifelse(ncol(reden_19_09_2009_716.json)==8,rm(reden_19_09_2009_716.json),"")
ifelse(ncol(reden_19_09_2013_497.json)==8,rm(reden_19_09_2013_497.json),"")
ifelse(ncol(reden_19_09_2018_81.json)==8,rm(reden_19_09_2018_81.json),"")
ifelse(ncol(reden_19_10_2010_659.json)==8,rm(reden_19_10_2010_659.json),"")
ifelse(ncol(reden_19_10_2011_586.json)==8,rm(reden_19_10_2011_586.json),"")
ifelse(ncol(reden_19_10_2015_373.json)==8,rm(reden_19_10_2015_373.json),"")
ifelse(ncol(reden_19_10_2016_301.json)==8,rm(reden_19_10_2016_301.json),"")
ifelse(ncol(reden_19_10_2017_182.json)==8,rm(reden_19_10_2017_182.json),"")
ifelse(ncol(reden_19_11_2007_797.json)==8,rm(reden_19_11_2007_797.json),"")
ifelse(ncol(reden_19_11_2012_539.json)==8,rm(reden_19_11_2012_539.json),"")
ifelse(ncol(reden_19_11_2012_540.json)==8,rm(reden_19_11_2012_540.json),"")
ifelse(ncol(reden_19_11_2013_480.json)==8,rm(reden_19_11_2013_480.json),"")
ifelse(ncol(reden_19_11_2014_433.json)==8,rm(reden_19_11_2014_433.json),"")
ifelse(ncol(reden_19_11_2015_366.json)==8,rm(reden_19_11_2015_366.json),"")
ifelse(ncol(reden_19_11_2018_66.json)==8,rm(reden_19_11_2018_66.json),"")
ifelse(ncol(reden_19_11_2018_67.json)==8,rm(reden_19_11_2018_67.json),"")
ifelse(ncol(reden_19_11_2019_964.json)==8,rm(reden_19_11_2019_964.json),"")
ifelse(ncol(reden_19_12_2017_153.json)==8,rm(reden_19_12_2017_153.json),"")
ifelse(ncol(reden_20_01_2010_694.json)==8,rm(reden_20_01_2010_694.json),"")
ifelse(ncol(reden_20_02_2006_851.json)==8,rm(reden_20_02_2006_851.json),"")
ifelse(ncol(reden_20_02_2018_132.json)==8,rm(reden_20_02_2018_132.json),"")
ifelse(ncol(reden_20_03_2009_737.json)==8,rm(reden_20_03_2009_737.json),"")
ifelse(ncol(reden_20_03_2017_250.json)==8,rm(reden_20_03_2017_250.json),"")
ifelse(ncol(reden_20_03_2017_251.json)==8,rm(reden_20_03_2017_251.json),"")
ifelse(ncol(reden_20_03_2018_120.json)==8,rm(reden_20_03_2018_120.json),"")
ifelse(ncol(reden_20_04_2016_335.json)==8,rm(reden_20_04_2016_335.json),"")
ifelse(ncol(reden_20_04_2017_240.json)==8,rm(reden_20_04_2017_240.json),"")
ifelse(ncol(reden_20_04_2018_107.json)==8,rm(reden_20_04_2018_107.json),"")
ifelse(ncol(reden_20_05_2011_607.json)==8,rm(reden_20_05_2011_607.json),"")
ifelse(ncol(reden_20_06_2011_600.json)==8,rm(reden_20_06_2011_600.json),"")
ifelse(ncol(reden_20_06_2013_511.json)==8,rm(reden_20_06_2013_511.json),"")
ifelse(ncol(reden_20_06_2018_95.json)==8,rm(reden_20_06_2018_95.json),"")
ifelse(ncol(reden_20_08_2018_90.json)==8,rm(reden_20_08_2018_90.json),"")
ifelse(ncol(reden_20_09_2012_549.json)==8,rm(reden_20_09_2012_549.json),"")
ifelse(ncol(reden_20_09_2017_189.json)==8,rm(reden_20_09_2017_189.json),"")
ifelse(ncol(reden_20_09_2017_190.json)==8,rm(reden_20_09_2017_190.json),"")
ifelse(ncol(reden_20_09_2017_191.json)==8,rm(reden_20_09_2017_191.json),"")
ifelse(ncol(reden_20_09_2018_80.json)==8,rm(reden_20_09_2018_80.json),"")
ifelse(ncol(reden_20_10_2011_584.json)==8,rm(reden_20_10_2011_584.json),"")
ifelse(ncol(reden_20_10_2011_585.json)==8,rm(reden_20_10_2011_585.json),"")
ifelse(ncol(reden_20_11_2013_479.json)==8,rm(reden_20_11_2013_479.json),"")
ifelse(ncol(reden_20_11_2014_432.json)==8,rm(reden_20_11_2014_432.json),"")
ifelse(ncol(reden_20_11_2015_365.json)==8,rm(reden_20_11_2015_365.json),"")
ifelse(ncol(reden_20_11_2018_65.json)==8,rm(reden_20_11_2018_65.json),"")
ifelse(ncol(reden_20_11_2019_963.json)==8,rm(reden_20_11_2019_963.json),"")
ifelse(ncol(reden_20_12_2011_571.json)==8,rm(reden_20_12_2011_571.json),"")
ifelse(ncol(reden_21_01_2010_693.json)==8,rm(reden_21_01_2010_693.json),"")
ifelse(ncol(reden_21_01_2013_531.json)==8,rm(reden_21_01_2013_531.json),"")
ifelse(ncol(reden_21_02_2011_627.json)==8,rm(reden_21_02_2011_627.json),"")
ifelse(ncol(reden_21_02_2018_131.json)==8,rm(reden_21_02_2018_131.json),"")
ifelse(ncol(reden_21_04_2008_778.json)==8,rm(reden_21_04_2008_778.json),"")
ifelse(ncol(reden_21_04_2016_334.json)==8,rm(reden_21_04_2016_334.json),"")
ifelse(ncol(reden_21_05_2012_558.json)==8,rm(reden_21_05_2012_558.json),"")
ifelse(ncol(reden_21_06_2017_209.json)==8,rm(reden_21_06_2017_209.json),"")
ifelse(ncol(reden_21_06_2017_210.json)==8,rm(reden_21_06_2017_210.json),"")
ifelse(ncol(reden_21_06_2018_93.json)==8,rm(reden_21_06_2018_93.json),"")
ifelse(ncol(reden_21_06_2018_94.json)==8,rm(reden_21_06_2018_94.json),"")
ifelse(ncol(reden_21_06_2019_25.json)==8,rm(reden_21_06_2019_25.json),"")
ifelse(ncol(reden_21_06_2019_26.json)==8,rm(reden_21_06_2019_26.json),"")
ifelse(ncol(reden_21_07_2017_203.json)==8,rm(reden_21_07_2017_203.json),"")
ifelse(ncol(reden_21_08_2017_200.json)==8,rm(reden_21_08_2017_200.json),"")
ifelse(ncol(reden_21_09_2007_807.json)==8,rm(reden_21_09_2007_807.json),"")
ifelse(ncol(reden_21_09_2015_380.json)==8,rm(reden_21_09_2015_380.json),"")
ifelse(ncol(reden_21_09_2017_188.json)==8,rm(reden_21_09_2017_188.json),"")
ifelse(ncol(reden_21_11_2008_751.json)==8,rm(reden_21_11_2008_751.json),"")
ifelse(ncol(reden_21_11_2012_538.json)==8,rm(reden_21_11_2012_538.json),"")
ifelse(ncol(reden_21_11_2013_478.json)==8,rm(reden_21_11_2013_478.json),"")
ifelse(ncol(reden_21_11_2014_431.json)==8,rm(reden_21_11_2014_431.json),"")
ifelse(ncol(reden_21_11_2017_165.json)==8,rm(reden_21_11_2017_165.json),"")
ifelse(ncol(reden_21_11_2017_166.json)==8,rm(reden_21_11_2017_166.json),"")
ifelse(ncol(reden_21_11_2019_962.json)==8,rm(reden_21_11_2019_962.json),"")
ifelse(ncol(reden_22_01_2016_352.json)==8,rm(reden_22_01_2016_352.json),"")
ifelse(ncol(reden_22_02_2017_262.json)==8,rm(reden_22_02_2017_262.json),"")
ifelse(ncol(reden_22_03_2010_686.json)==8,rm(reden_22_03_2010_686.json),"")
ifelse(ncol(reden_22_03_2011_619.json)==8,rm(reden_22_03_2011_619.json),"")
ifelse(ncol(reden_22_03_2017_249.json)==8,rm(reden_22_03_2017_249.json),"")
ifelse(ncol(reden_22_04_2008_777.json)==8,rm(reden_22_04_2008_777.json),"")
ifelse(ncol(reden_22_05_2008_774.json)==8,rm(reden_22_05_2008_774.json),"")
ifelse(ncol(reden_22_05_2014_454.json)==8,rm(reden_22_05_2014_454.json),"")
ifelse(ncol(reden_22_05_2015_401.json)==8,rm(reden_22_05_2015_401.json),"")
ifelse(ncol(reden_22_05_2017_222.json)==8,rm(reden_22_05_2017_222.json),"")
ifelse(ncol(reden_22_05_2017_223.json)==8,rm(reden_22_05_2017_223.json),"")
ifelse(ncol(reden_22_06_2015_395.json)==8,rm(reden_22_06_2015_395.json),"")
ifelse(ncol(reden_22_08_2012_553.json)==8,rm(reden_22_08_2012_553.json),"")
ifelse(ncol(reden_22_09_2010_666.json)==8,rm(reden_22_09_2010_666.json),"")
ifelse(ncol(reden_22_09_2011_589.json)==8,rm(reden_22_09_2011_589.json),"")
ifelse(ncol(reden_22_09_2016_308.json)==8,rm(reden_22_09_2016_308.json),"")
ifelse(ncol(reden_22_09_2017_187.json)==8,rm(reden_22_09_2017_187.json),"")
ifelse(ncol(reden_22_10_2009_709.json)==8,rm(reden_22_10_2009_709.json),"")
ifelse(ncol(reden_22_11_2010_647.json)==8,rm(reden_22_11_2010_647.json),"")
ifelse(ncol(reden_22_11_2011_574.json)==8,rm(reden_22_11_2011_574.json),"")
ifelse(ncol(reden_22_11_2011_575.json)==8,rm(reden_22_11_2011_575.json),"")
ifelse(ncol(reden_22_11_2013_477.json)==8,rm(reden_22_11_2013_477.json),"")
ifelse(ncol(reden_22_11_2015_364.json)==8,rm(reden_22_11_2015_364.json),"")
ifelse(ncol(reden_22_11_2016_286.json)==8,rm(reden_22_11_2016_286.json),"")
ifelse(ncol(reden_22_11_2016_287.json)==8,rm(reden_22_11_2016_287.json),"")
ifelse(ncol(reden_22_11_2017_163.json)==8,rm(reden_22_11_2017_163.json),"")
ifelse(ncol(reden_22_11_2017_164.json)==8,rm(reden_22_11_2017_164.json),"")
ifelse(ncol(reden_22_11_2018_64.json)==8,rm(reden_22_11_2018_64.json),"")
ifelse(ncol(reden_22_11_2019_958.json)==8,rm(reden_22_11_2019_958.json),"")
ifelse(ncol(reden_22_11_2019_959.json)==8,rm(reden_22_11_2019_959.json),"")
ifelse(ncol(reden_22_11_2019_960.json)==8,rm(reden_22_11_2019_960.json),"")
ifelse(ncol(reden_22_11_2019_961.json)==8,rm(reden_22_11_2019_961.json),"")
ifelse(ncol(reden_22_12_2016_279.json)==8,rm(reden_22_12_2016_279.json),"")
ifelse(ncol(reden_23_01_2012_567.json)==8,rm(reden_23_01_2012_567.json),"")
ifelse(ncol(reden_23_02_2005_873.json)==8,rm(reden_23_02_2005_873.json),"")
ifelse(ncol(reden_23_02_2009_741.json)==8,rm(reden_23_02_2009_741.json),"")
ifelse(ncol(reden_23_02_2011_626.json)==8,rm(reden_23_02_2011_626.json),"")
ifelse(ncol(reden_23_02_2016_343.json)==8,rm(reden_23_02_2016_343.json),"")
ifelse(ncol(reden_23_02_2016_344.json)==8,rm(reden_23_02_2016_344.json),"")
ifelse(ncol(reden_23_02_2017_260.json)==8,rm(reden_23_02_2017_260.json),"")
ifelse(ncol(reden_23_02_2017_261.json)==8,rm(reden_23_02_2017_261.json),"")
ifelse(ncol(reden_23_03_2009_736.json)==8,rm(reden_23_03_2009_736.json),"")
ifelse(ncol(reden_23_03_2011_618.json)==8,rm(reden_23_03_2011_618.json),"")
ifelse(ncol(reden_23_03_2016_339.json)==8,rm(reden_23_03_2016_339.json),"")
ifelse(ncol(reden_23_04_2005_870.json)==8,rm(reden_23_04_2005_870.json),"")
ifelse(ncol(reden_23_04_2018_106.json)==8,rm(reden_23_04_2018_106.json),"")
ifelse(ncol(reden_23_05_2006_839.json)==8,rm(reden_23_05_2006_839.json),"")
ifelse(ncol(reden_23_05_2007_815.json)==8,rm(reden_23_05_2007_815.json),"")
ifelse(ncol(reden_23_05_2011_605.json)==8,rm(reden_23_05_2011_605.json),"")
ifelse(ncol(reden_23_05_2011_606.json)==8,rm(reden_23_05_2011_606.json),"")
ifelse(ncol(reden_23_05_2013_518.json)==8,rm(reden_23_05_2013_518.json),"")
ifelse(ncol(reden_23_05_2013_519.json)==8,rm(reden_23_05_2013_519.json),"")
ifelse(ncol(reden_23_05_2017_221.json)==8,rm(reden_23_05_2017_221.json),"")
ifelse(ncol(reden_23_05_2019_33.json)==8,rm(reden_23_05_2019_33.json),"")
ifelse(ncol(reden_23_06_2006_838.json)==8,rm(reden_23_06_2006_838.json),"")
ifelse(ncol(reden_23_06_2009_722.json)==8,rm(reden_23_06_2009_722.json),"")
ifelse(ncol(reden_23_06_2016_317.json)==8,rm(reden_23_06_2016_317.json),"")
ifelse(ncol(reden_23_07_2014_448.json)==8,rm(reden_23_07_2014_448.json),"")
ifelse(ncol(reden_23_07_2015_387.json)==8,rm(reden_23_07_2015_387.json),"")
ifelse(ncol(reden_23_08_2018_89.json)==8,rm(reden_23_08_2018_89.json),"")
ifelse(ncol(reden_23_09_2015_379.json)==8,rm(reden_23_09_2015_379.json),"")
ifelse(ncol(reden_23_09_2019_986.json)==8,rm(reden_23_09_2019_986.json),"")
ifelse(ncol(reden_23_10_2013_491.json)==8,rm(reden_23_10_2013_491.json),"")
ifelse(ncol(reden_23_10_2017_181.json)==8,rm(reden_23_10_2017_181.json),"")
ifelse(ncol(reden_23_10_2019_975.json)==8,rm(reden_23_10_2019_975.json),"")
ifelse(ncol(reden_23_11_2015_363.json)==8,rm(reden_23_11_2015_363.json),"")
ifelse(ncol(reden_23_11_2017_161.json)==8,rm(reden_23_11_2017_161.json),"")
ifelse(ncol(reden_23_11_2017_162.json)==8,rm(reden_23_11_2017_162.json),"")
ifelse(ncol(reden_23_12_2016_278.json)==8,rm(reden_23_12_2016_278.json),"")
ifelse(ncol(reden_24_01_2012_566.json)==8,rm(reden_24_01_2012_566.json),"")
ifelse(ncol(reden_24_01_2013_530.json)==8,rm(reden_24_01_2013_530.json),"")
ifelse(ncol(reden_24_01_2018_148.json)==8,rm(reden_24_01_2018_148.json),"")
ifelse(ncol(reden_24_01_2019_55.json)==8,rm(reden_24_01_2019_55.json),"")
ifelse(ncol(reden_24_02_2011_625.json)==8,rm(reden_24_02_2011_625.json),"")
ifelse(ncol(reden_24_02_2016_342.json)==8,rm(reden_24_02_2016_342.json),"")
ifelse(ncol(reden_24_02_2017_259.json)==8,rm(reden_24_02_2017_259.json),"")
ifelse(ncol(reden_24_03_2016_338.json)==8,rm(reden_24_03_2016_338.json),"")
ifelse(ncol(reden_24_04_2013_521.json)==8,rm(reden_24_04_2013_521.json),"")
ifelse(ncol(reden_24_04_2017_239.json)==8,rm(reden_24_04_2017_239.json),"")
ifelse(ncol(reden_24_04_2018_104.json)==8,rm(reden_24_04_2018_104.json),"")
ifelse(ncol(reden_24_04_2018_105.json)==8,rm(reden_24_04_2018_105.json),"")
ifelse(ncol(reden_24_05_2013_517.json)==8,rm(reden_24_05_2013_517.json),"")
ifelse(ncol(reden_24_05_2017_220.json)==8,rm(reden_24_05_2017_220.json),"")
ifelse(ncol(reden_24_05_2019_32.json)==8,rm(reden_24_05_2019_32.json),"")
ifelse(ncol(reden_24_07_2014_447.json)==8,rm(reden_24_07_2014_447.json),"")
ifelse(ncol(reden_24_08_2011_597.json)==8,rm(reden_24_08_2011_597.json),"")
ifelse(ncol(reden_24_09_2009_714.json)==8,rm(reden_24_09_2009_714.json),"")
ifelse(ncol(reden_24_09_2009_715.json)==8,rm(reden_24_09_2009_715.json),"")
ifelse(ncol(reden_24_09_2018_79.json)==8,rm(reden_24_09_2018_79.json),"")
ifelse(ncol(reden_24_10_2001_1.json)==8,rm(reden_24_10_2001_1.json),"")
ifelse(ncol(reden_24_10_2001_2.json)==8,rm(reden_24_10_2001_2.json),"")
ifelse(ncol(reden_24_10_2001_3.json)==8,rm(reden_24_10_2001_3.json),"")
ifelse(ncol(reden_24_10_2001_4.json)==8,rm(reden_24_10_2001_4.json),"")
ifelse(ncol(reden_24_10_2001_5.json)==8,rm(reden_24_10_2001_5.json),"")
ifelse(ncol(reden_24_10_2001_6.json)==8,rm(reden_24_10_2001_6.json),"")
ifelse(ncol(reden_24_10_2001_7.json)==8,rm(reden_24_10_2001_7.json),"")
ifelse(ncol(reden_24_10_2001_8.json)==8,rm(reden_24_10_2001_8.json),"")
ifelse(ncol(reden_24_10_2001_9.json)==8,rm(reden_24_10_2001_9.json),"")
ifelse(ncol(reden_24_10_2001_10.json)==8,rm(reden_24_10_2001_10.json),"")
ifelse(ncol(reden_24_10_2001_11.json)==8,rm(reden_24_10_2001_11.json),"")
ifelse(ncol(reden_24_10_2001_12.json)==8,rm(reden_24_10_2001_12.json),"")
ifelse(ncol(reden_24_10_2001_13.json)==8,rm(reden_24_10_2001_13.json),"")
ifelse(ncol(reden_24_10_2001_14.json)==8,rm(reden_24_10_2001_14.json),"")
ifelse(ncol(reden_24_10_2001_15.json)==8,rm(reden_24_10_2001_15.json),"")
ifelse(ncol(reden_24_10_2013_490.json)==8,rm(reden_24_10_2013_490.json),"")
ifelse(ncol(reden_24_10_2016_300.json)==8,rm(reden_24_10_2016_300.json),"")
ifelse(ncol(reden_24_10_2019_974.json)==8,rm(reden_24_10_2019_974.json),"")
ifelse(ncol(reden_24_11_2010_646.json)==8,rm(reden_24_11_2010_646.json),"")
ifelse(ncol(reden_24_11_2011_573.json)==8,rm(reden_24_11_2011_573.json),"")
ifelse(ncol(reden_24_11_2014_430.json)==8,rm(reden_24_11_2014_430.json),"")
ifelse(ncol(reden_24_11_2015_361.json)==8,rm(reden_24_11_2015_361.json),"")
ifelse(ncol(reden_24_11_2015_362.json)==8,rm(reden_24_11_2015_362.json),"")
ifelse(ncol(reden_25_01_2007_829.json)==8,rm(reden_25_01_2007_829.json),"")
ifelse(ncol(reden_25_01_2015_419.json)==8,rm(reden_25_01_2015_419.json),"")
ifelse(ncol(reden_25_01_2016_351.json)==8,rm(reden_25_01_2016_351.json),"")
ifelse(ncol(reden_25_01_2017_275.json)==8,rm(reden_25_01_2017_275.json),"")
ifelse(ncol(reden_25_01_2017_276.json)==8,rm(reden_25_01_2017_276.json),"")
ifelse(ncol(reden_25_01_2018_147.json)==8,rm(reden_25_01_2018_147.json),"")
ifelse(ncol(reden_25_02_2008_787.json)==8,rm(reden_25_02_2008_787.json),"")
ifelse(ncol(reden_25_02_2013_523.json)==8,rm(reden_25_02_2013_523.json),"")
ifelse(ncol(reden_25_02_2019_46.json)==8,rm(reden_25_02_2019_46.json),"")
ifelse(ncol(reden_25_03_2015_406.json)==8,rm(reden_25_03_2015_406.json),"")
ifelse(ncol(reden_25_03_2017_248.json)==8,rm(reden_25_03_2017_248.json),"")
ifelse(ncol(reden_25_04_2008_776.json)==8,rm(reden_25_04_2008_776.json),"")
ifelse(ncol(reden_25_04_2010_685.json)==8,rm(reden_25_04_2010_685.json),"")
ifelse(ncol(reden_25_04_2017_236.json)==8,rm(reden_25_04_2017_236.json),"")
ifelse(ncol(reden_25_04_2017_237.json)==8,rm(reden_25_04_2017_237.json),"")
ifelse(ncol(reden_25_04_2017_238.json)==8,rm(reden_25_04_2017_238.json),"")
ifelse(ncol(reden_25_05_2009_728.json)==8,rm(reden_25_05_2009_728.json),"")
ifelse(ncol(reden_25_05_2017_219.json)==8,rm(reden_25_05_2017_219.json),"")
ifelse(ncol(reden_25_05_2018_98.json)==8,rm(reden_25_05_2018_98.json),"")
ifelse(ncol(reden_25_06_2008_766.json)==8,rm(reden_25_06_2008_766.json),"")
ifelse(ncol(reden_25_06_2013_510.json)==8,rm(reden_25_06_2013_510.json),"")
ifelse(ncol(reden_25_06_2015_393.json)==8,rm(reden_25_06_2015_393.json),"")
ifelse(ncol(reden_25_06_2015_394.json)==8,rm(reden_25_06_2015_394.json),"")
ifelse(ncol(reden_25_08_2018_88.json)==8,rm(reden_25_08_2018_88.json),"")
ifelse(ncol(reden_25_09_2008_760.json)==8,rm(reden_25_09_2008_760.json),"")
ifelse(ncol(reden_25_09_2013_496.json)==8,rm(reden_25_09_2013_496.json),"")
ifelse(ncol(reden_25_09_2017_186.json)==8,rm(reden_25_09_2017_186.json),"")
ifelse(ncol(reden_25_10_2005_859.json)==8,rm(reden_25_10_2005_859.json),"")
ifelse(ncol(reden_25_10_2010_658.json)==8,rm(reden_25_10_2010_658.json),"")
ifelse(ncol(reden_25_11_2009_700.json)==8,rm(reden_25_11_2009_700.json),"")
ifelse(ncol(reden_25_11_2010_644.json)==8,rm(reden_25_11_2010_644.json),"")
ifelse(ncol(reden_25_11_2010_645.json)==8,rm(reden_25_11_2010_645.json),"")
ifelse(ncol(reden_25_11_2013_476.json)==8,rm(reden_25_11_2013_476.json),"")
ifelse(ncol(reden_25_11_2014_428.json)==8,rm(reden_25_11_2014_428.json),"")
ifelse(ncol(reden_25_11_2014_429.json)==8,rm(reden_25_11_2014_429.json),"")
ifelse(ncol(reden_25_11_2015_359.json)==8,rm(reden_25_11_2015_359.json),"")
ifelse(ncol(reden_25_11_2015_360.json)==8,rm(reden_25_11_2015_360.json),"")
ifelse(ncol(reden_26_01_2005_874.json)==8,rm(reden_26_01_2005_874.json),"")
ifelse(ncol(reden_26_01_2005_875.json)==8,rm(reden_26_01_2005_875.json),"")
ifelse(ncol(reden_26_01_2005_876.json)==8,rm(reden_26_01_2005_876.json),"")
ifelse(ncol(reden_26_01_2009_746.json)==8,rm(reden_26_01_2009_746.json),"")
ifelse(ncol(reden_26_01_2010_692.json)==8,rm(reden_26_01_2010_692.json),"")
ifelse(ncol(reden_26_01_2011_636.json)==8,rm(reden_26_01_2011_636.json),"")
ifelse(ncol(reden_26_01_2015_417.json)==8,rm(reden_26_01_2015_417.json),"")
ifelse(ncol(reden_26_01_2015_418.json)==8,rm(reden_26_01_2015_418.json),"")
ifelse(ncol(reden_26_01_2017_271.json)==8,rm(reden_26_01_2017_271.json),"")
ifelse(ncol(reden_26_01_2017_272.json)==8,rm(reden_26_01_2017_272.json),"")
ifelse(ncol(reden_26_01_2017_273.json)==8,rm(reden_26_01_2017_273.json),"")
ifelse(ncol(reden_26_01_2017_274.json)==8,rm(reden_26_01_2017_274.json),"")
ifelse(ncol(reden_26_02_2015_410.json)==8,rm(reden_26_02_2015_410.json),"")
ifelse(ncol(reden_26_02_2018_130.json)==8,rm(reden_26_02_2018_130.json),"")
ifelse(ncol(reden_26_03_2004_1.json)==8,rm(reden_26_03_2004_1.json),"")
ifelse(ncol(reden_26_03_2004_2.json)==8,rm(reden_26_03_2004_2.json),"")
ifelse(ncol(reden_26_03_2004_3.json)==8,rm(reden_26_03_2004_3.json),"")
ifelse(ncol(reden_26_03_2004_4.json)==8,rm(reden_26_03_2004_4.json),"")
ifelse(ncol(reden_26_03_2004_5.json)==8,rm(reden_26_03_2004_5.json),"")
ifelse(ncol(reden_26_03_2004_6.json)==8,rm(reden_26_03_2004_6.json),"")
ifelse(ncol(reden_26_03_2004_7.json)==8,rm(reden_26_03_2004_7.json),"")
ifelse(ncol(reden_26_03_2004_8.json)==8,rm(reden_26_03_2004_8.json),"")
ifelse(ncol(reden_26_03_2014_461.json)==8,rm(reden_26_03_2014_461.json),"")
ifelse(ncol(reden_26_03_2018_119.json)==8,rm(reden_26_03_2018_119.json),"")
ifelse(ncol(reden_26_04_2010_684.json)==8,rm(reden_26_04_2010_684.json),"")
ifelse(ncol(reden_26_04_2012_560.json)==8,rm(reden_26_04_2012_560.json),"")
ifelse(ncol(reden_26_04_2016_333.json)==8,rm(reden_26_04_2016_333.json),"")
ifelse(ncol(reden_26_05_2011_603.json)==8,rm(reden_26_05_2011_603.json),"")
ifelse(ncol(reden_26_05_2011_604.json)==8,rm(reden_26_05_2011_604.json),"")
ifelse(ncol(reden_26_08_2013_502.json)==8,rm(reden_26_08_2013_502.json),"")
ifelse(ncol(reden_26_09_2006_836.json)==8,rm(reden_26_09_2006_836.json),"")
ifelse(ncol(reden_26_09_2007_806.json)==8,rm(reden_26_09_2007_806.json),"")
ifelse(ncol(reden_26_09_2008_759.json)==8,rm(reden_26_09_2008_759.json),"")
ifelse(ncol(reden_26_09_2011_588.json)==8,rm(reden_26_09_2011_588.json),"")
ifelse(ncol(reden_26_09_2013_495.json)==8,rm(reden_26_09_2013_495.json),"")
ifelse(ncol(reden_26_09_2019_985.json)==8,rm(reden_26_09_2019_985.json),"")
ifelse(ncol(reden_26_10_2005_858.json)==8,rm(reden_26_10_2005_858.json),"")
ifelse(ncol(reden_26_10_2006_834.json)==8,rm(reden_26_10_2006_834.json),"")
ifelse(ncol(reden_26_10_2013_489.json)==8,rm(reden_26_10_2013_489.json),"")
ifelse(ncol(reden_26_10_2014_439.json)==8,rm(reden_26_10_2014_439.json),"")
ifelse(ncol(reden_26_10_2015_372.json)==8,rm(reden_26_10_2015_372.json),"")
ifelse(ncol(reden_26_11_2008_750.json)==8,rm(reden_26_11_2008_750.json),"")
ifelse(ncol(reden_26_11_2009_698.json)==8,rm(reden_26_11_2009_698.json),"")
ifelse(ncol(reden_26_11_2009_699.json)==8,rm(reden_26_11_2009_699.json),"")
ifelse(ncol(reden_26_11_2013_475.json)==8,rm(reden_26_11_2013_475.json),"")
ifelse(ncol(reden_27_01_2011_634.json)==8,rm(reden_27_01_2011_634.json),"")
ifelse(ncol(reden_27_01_2011_635.json)==8,rm(reden_27_01_2011_635.json),"")
ifelse(ncol(reden_27_01_2014_469.json)==8,rm(reden_27_01_2014_469.json),"")
ifelse(ncol(reden_27_01_2016_350.json)==8,rm(reden_27_01_2016_350.json),"")
ifelse(ncol(reden_27_02_2008_786.json)==8,rm(reden_27_02_2008_786.json),"")
ifelse(ncol(reden_27_02_2014_463.json)==8,rm(reden_27_02_2014_463.json),"")
ifelse(ncol(reden_27_02_2018_128.json)==8,rm(reden_27_02_2018_128.json),"")
ifelse(ncol(reden_27_02_2018_129.json)==8,rm(reden_27_02_2018_129.json),"")
ifelse(ncol(reden_27_02_2019_45.json)==8,rm(reden_27_02_2019_45.json),"")
ifelse(ncol(reden_27_05_2010_677.json)==8,rm(reden_27_05_2010_677.json),"")
ifelse(ncol(reden_27_05_2011_602.json)==8,rm(reden_27_05_2011_602.json),"")
ifelse(ncol(reden_27_06_2001_1.json)==8,rm(reden_27_06_2001_1.json),"")
ifelse(ncol(reden_27_06_2001_2.json)==8,rm(reden_27_06_2001_2.json),"")
ifelse(ncol(reden_27_06_2001_3.json)==8,rm(reden_27_06_2001_3.json),"")
ifelse(ncol(reden_27_06_2001_4.json)==8,rm(reden_27_06_2001_4.json),"")
ifelse(ncol(reden_27_06_2001_5.json)==8,rm(reden_27_06_2001_5.json),"")
ifelse(ncol(reden_27_06_2001_6.json)==8,rm(reden_27_06_2001_6.json),"")
ifelse(ncol(reden_27_06_2001_7.json)==8,rm(reden_27_06_2001_7.json),"")
ifelse(ncol(reden_27_06_2001_8.json)==8,rm(reden_27_06_2001_8.json),"")
ifelse(ncol(reden_27_06_2001_9.json)==8,rm(reden_27_06_2001_9.json),"")
ifelse(ncol(reden_27_06_2001_10.json)==8,rm(reden_27_06_2001_10.json),"")
ifelse(ncol(reden_27_06_2001_11.json)==8,rm(reden_27_06_2001_11.json),"")
ifelse(ncol(reden_27_06_2001_12.json)==8,rm(reden_27_06_2001_12.json),"")
ifelse(ncol(reden_27_06_2001_13.json)==8,rm(reden_27_06_2001_13.json),"")
ifelse(ncol(reden_27_06_2001_14.json)==8,rm(reden_27_06_2001_14.json),"")
ifelse(ncol(reden_27_06_2001_15.json)==8,rm(reden_27_06_2001_15.json),"")
ifelse(ncol(reden_27_06_2001_16.json)==8,rm(reden_27_06_2001_16.json),"")
ifelse(ncol(reden_27_06_2001_17.json)==8,rm(reden_27_06_2001_17.json),"")
ifelse(ncol(reden_27_06_2001_18.json)==8,rm(reden_27_06_2001_18.json),"")
ifelse(ncol(reden_27_06_2001_19.json)==8,rm(reden_27_06_2001_19.json),"")
ifelse(ncol(reden_27_06_2001_20.json)==8,rm(reden_27_06_2001_20.json),"")
ifelse(ncol(reden_27_06_2001_21.json)==8,rm(reden_27_06_2001_21.json),"")
ifelse(ncol(reden_27_06_2001_22.json)==8,rm(reden_27_06_2001_22.json),"")
ifelse(ncol(reden_27_06_2001_23.json)==8,rm(reden_27_06_2001_23.json),"")
ifelse(ncol(reden_27_06_2001_24.json)==8,rm(reden_27_06_2001_24.json),"")
ifelse(ncol(reden_27_06_2001_25.json)==8,rm(reden_27_06_2001_25.json),"")
ifelse(ncol(reden_27_06_2001_26.json)==8,rm(reden_27_06_2001_26.json),"")
ifelse(ncol(reden_27_06_2013_508.json)==8,rm(reden_27_06_2013_508.json),"")
ifelse(ncol(reden_27_06_2013_509.json)==8,rm(reden_27_06_2013_509.json),"")
ifelse(ncol(reden_27_09_2012_548.json)==8,rm(reden_27_09_2012_548.json),"")
ifelse(ncol(reden_27_09_2016_307.json)==8,rm(reden_27_09_2016_307.json),"")
ifelse(ncol(reden_27_09_2019_984.json)==8,rm(reden_27_09_2019_984.json),"")
ifelse(ncol(reden_27_10_2011_583.json)==8,rm(reden_27_10_2011_583.json),"")
ifelse(ncol(reden_27_10_2016_299.json)==8,rm(reden_27_10_2016_299.json),"")
ifelse(ncol(reden_27_10_2017_180.json)==8,rm(reden_27_10_2017_180.json),"")
ifelse(ncol(reden_27_11_2014_427.json)==8,rm(reden_27_11_2014_427.json),"")
ifelse(ncol(reden_28_01_2009_745.json)==8,rm(reden_28_01_2009_745.json),"")
ifelse(ncol(reden_28_01_2014_468.json)==8,rm(reden_28_01_2014_468.json),"")
ifelse(ncol(reden_28_01_2015_414.json)==8,rm(reden_28_01_2015_414.json),"")
ifelse(ncol(reden_28_01_2015_415.json)==8,rm(reden_28_01_2015_415.json),"")
ifelse(ncol(reden_28_01_2015_416.json)==8,rm(reden_28_01_2015_416.json),"")
ifelse(ncol(reden_28_01_2016_348.json)==8,rm(reden_28_01_2016_348.json),"")
ifelse(ncol(reden_28_01_2016_349.json)==8,rm(reden_28_01_2016_349.json),"")
ifelse(ncol(reden_28_02_2007_826.json)==8,rm(reden_28_02_2007_826.json),"")
ifelse(ncol(reden_28_02_2007_827.json)==8,rm(reden_28_02_2007_827.json),"")
ifelse(ncol(reden_28_02_2012_563.json)==8,rm(reden_28_02_2012_563.json),"")
ifelse(ncol(reden_28_02_2018_127.json)==8,rm(reden_28_02_2018_127.json),"")
ifelse(ncol(reden_28_03_2007_822.json)==8,rm(reden_28_03_2007_822.json),"")
ifelse(ncol(reden_28_03_2008_783.json)==8,rm(reden_28_03_2008_783.json),"")
ifelse(ncol(reden_28_03_2014_460.json)==8,rm(reden_28_03_2014_460.json),"")
ifelse(ncol(reden_28_03_2017_247.json)==8,rm(reden_28_03_2017_247.json),"")
ifelse(ncol(reden_28_03_2018_118.json)==8,rm(reden_28_03_2018_118.json),"")
ifelse(ncol(reden_28_04_2005_869.json)==8,rm(reden_28_04_2005_869.json),"")
ifelse(ncol(reden_28_04_2006_844.json)==8,rm(reden_28_04_2006_844.json),"")
ifelse(ncol(reden_28_04_2010_683.json)==8,rm(reden_28_04_2010_683.json),"")
ifelse(ncol(reden_28_04_2012_559.json)==8,rm(reden_28_04_2012_559.json),"")
ifelse(ncol(reden_28_04_2015_405.json)==8,rm(reden_28_04_2015_405.json),"")
ifelse(ncol(reden_28_05_2005_868.json)==8,rm(reden_28_05_2005_868.json),"")
ifelse(ncol(reden_28_05_2009_727.json)==8,rm(reden_28_05_2009_727.json),"")
ifelse(ncol(reden_28_05_2010_676.json)==8,rm(reden_28_05_2010_676.json),"")
ifelse(ncol(reden_28_05_2013_516.json)==8,rm(reden_28_05_2013_516.json),"")
ifelse(ncol(reden_28_06_2007_809.json)==8,rm(reden_28_06_2007_809.json),"")
ifelse(ncol(reden_28_06_2010_672.json)==8,rm(reden_28_06_2010_672.json),"")
ifelse(ncol(reden_28_08_2017_199.json)==8,rm(reden_28_08_2017_199.json),"")
ifelse(ncol(reden_28_10_2003_1.json)==8,rm(reden_28_10_2003_1.json),"")
ifelse(ncol(reden_28_10_2003_2.json)==8,rm(reden_28_10_2003_2.json),"")
ifelse(ncol(reden_28_10_2003_3.json)==8,rm(reden_28_10_2003_3.json),"")
ifelse(ncol(reden_28_10_2003_4.json)==8,rm(reden_28_10_2003_4.json),"")
ifelse(ncol(reden_28_10_2003_5.json)==8,rm(reden_28_10_2003_5.json),"")
ifelse(ncol(reden_28_10_2003_6.json)==8,rm(reden_28_10_2003_6.json),"")
ifelse(ncol(reden_28_10_2003_7.json)==8,rm(reden_28_10_2003_7.json),"")
ifelse(ncol(reden_28_10_2003_8.json)==8,rm(reden_28_10_2003_8.json),"")
ifelse(ncol(reden_28_10_2003_9.json)==8,rm(reden_28_10_2003_9.json),"")
ifelse(ncol(reden_28_10_2003_10.json)==8,rm(reden_28_10_2003_10.json),"")
ifelse(ncol(reden_28_10_2010_655.json)==8,rm(reden_28_10_2010_655.json),"")
ifelse(ncol(reden_28_10_2010_656.json)==8,rm(reden_28_10_2010_656.json),"")
ifelse(ncol(reden_28_10_2010_657.json)==8,rm(reden_28_10_2010_657.json),"")
ifelse(ncol(reden_28_11_2013_474.json)==8,rm(reden_28_11_2013_474.json),"")
ifelse(ncol(reden_28_11_2014_426.json)==8,rm(reden_28_11_2014_426.json),"")
ifelse(ncol(reden_28_11_2017_160.json)==8,rm(reden_28_11_2017_160.json),"")
ifelse(ncol(reden_28_11_2018_63.json)==8,rm(reden_28_11_2018_63.json),"")
ifelse(ncol(reden_28_11_2019_957.json)==8,rm(reden_28_11_2019_957.json),"")
ifelse(ncol(reden_29_01_2018_146.json)==8,rm(reden_29_01_2018_146.json),"")
ifelse(ncol(reden_29_03_1999_1.json)==8,rm(reden_29_03_1999_1.json),"")
ifelse(ncol(reden_29_03_1999_2.json)==8,rm(reden_29_03_1999_2.json),"")
ifelse(ncol(reden_29_03_1999_3.json)==8,rm(reden_29_03_1999_3.json),"")
ifelse(ncol(reden_29_03_1999_4.json)==8,rm(reden_29_03_1999_4.json),"")
ifelse(ncol(reden_29_03_1999_5.json)==8,rm(reden_29_03_1999_5.json),"")
ifelse(ncol(reden_29_03_1999_6.json)==8,rm(reden_29_03_1999_6.json),"")
ifelse(ncol(reden_29_03_1999_7.json)==8,rm(reden_29_03_1999_7.json),"")
ifelse(ncol(reden_29_03_1999_8.json)==8,rm(reden_29_03_1999_8.json),"")
ifelse(ncol(reden_29_03_1999_9.json)==8,rm(reden_29_03_1999_9.json),"")
ifelse(ncol(reden_29_03_2012_561.json)==8,rm(reden_29_03_2012_561.json),"")
ifelse(ncol(reden_29_03_2018_117.json)==8,rm(reden_29_03_2018_117.json),"")
ifelse(ncol(reden_29_04_2009_733.json)==8,rm(reden_29_04_2009_733.json),"")
ifelse(ncol(reden_29_04_2016_332.json)==8,rm(reden_29_04_2016_332.json),"")
ifelse(ncol(reden_29_05_2007_814.json)==8,rm(reden_29_05_2007_814.json),"")
ifelse(ncol(reden_29_05_2017_218.json)==8,rm(reden_29_05_2017_218.json),"")
ifelse(ncol(reden_29_05_2019_30.json)==8,rm(reden_29_05_2019_30.json),"")
ifelse(ncol(reden_29_05_2019_31.json)==8,rm(reden_29_05_2019_31.json),"")
ifelse(ncol(reden_29_06_2011_599.json)==8,rm(reden_29_06_2011_599.json),"")
ifelse(ncol(reden_29_06_2017_207.json)==8,rm(reden_29_06_2017_207.json),"")
ifelse(ncol(reden_29_06_2017_208.json)==8,rm(reden_29_06_2017_208.json),"")
ifelse(ncol(reden_29_08_2013_500.json)==8,rm(reden_29_08_2013_500.json),"")
ifelse(ncol(reden_29_08_2013_501.json)==8,rm(reden_29_08_2013_501.json),"")
ifelse(ncol(reden_29_08_2016_312.json)==8,rm(reden_29_08_2016_312.json),"")
ifelse(ncol(reden_29_08_2016_313.json)==8,rm(reden_29_08_2016_313.json),"")
ifelse(ncol(reden_29_08_2017_198.json)==8,rm(reden_29_08_2017_198.json),"")
ifelse(ncol(reden_29_08_2019_20.json)==8,rm(reden_29_08_2019_20.json),"")
ifelse(ncol(reden_29_08_2019_21.json)==8,rm(reden_29_08_2019_21.json),"")
ifelse(ncol(reden_29_09_2006_835.json)==8,rm(reden_29_09_2006_835.json),"")
ifelse(ncol(reden_29_09_2010_664.json)==8,rm(reden_29_09_2010_664.json),"")
ifelse(ncol(reden_29_09_2010_665.json)==8,rm(reden_29_09_2010_665.json),"")
ifelse(ncol(reden_29_09_2014_444.json)==8,rm(reden_29_09_2014_444.json),"")
ifelse(ncol(reden_29_09_2015_378.json)==8,rm(reden_29_09_2015_378.json),"")
ifelse(ncol(reden_29_09_2016_306.json)==8,rm(reden_29_09_2016_306.json),"")
ifelse(ncol(reden_29_10_2009_708.json)==8,rm(reden_29_10_2009_708.json),"")
ifelse(ncol(reden_29_10_2019_972.json)==8,rm(reden_29_10_2019_972.json),"")
ifelse(ncol(reden_29_10_2019_973.json)==8,rm(reden_29_10_2019_973.json),"")
ifelse(ncol(reden_29_11_2007_796.json)==8,rm(reden_29_11_2007_796.json),"")
ifelse(ncol(reden_29_11_2012_536.json)==8,rm(reden_29_11_2012_536.json),"")
ifelse(ncol(reden_29_11_2012_537.json)==8,rm(reden_29_11_2012_537.json),"")
ifelse(ncol(reden_29_11_2017_157.json)==8,rm(reden_29_11_2017_157.json),"")
ifelse(ncol(reden_29_11_2017_158.json)==8,rm(reden_29_11_2017_158.json),"")
ifelse(ncol(reden_29_11_2017_159.json)==8,rm(reden_29_11_2017_159.json),"")
ifelse(ncol(reden_30_01_2008_792.json)==8,rm(reden_30_01_2008_792.json),"")
ifelse(ncol(reden_30_01_2013_528.json)==8,rm(reden_30_01_2013_528.json),"")
ifelse(ncol(reden_30_01_2013_529.json)==8,rm(reden_30_01_2013_529.json),"")
ifelse(ncol(reden_30_01_2018_145.json)==8,rm(reden_30_01_2018_145.json),"")
ifelse(ncol(reden_30_03_2009_735.json)==8,rm(reden_30_03_2009_735.json),"")
ifelse(ncol(reden_30_03_2017_246.json)==8,rm(reden_30_03_2017_246.json),"")
ifelse(ncol(reden_30_04_2009_732.json)==8,rm(reden_30_04_2009_732.json),"")
ifelse(ncol(reden_30_05_2008_772.json)==8,rm(reden_30_05_2008_772.json),"")
ifelse(ncol(reden_30_05_2008_773.json)==8,rm(reden_30_05_2008_773.json),"")
ifelse(ncol(reden_30_05_2016_327.json)==8,rm(reden_30_05_2016_327.json),"")
ifelse(ncol(reden_30_05_2017_217.json)==8,rm(reden_30_05_2017_217.json),"")
ifelse(ncol(reden_30_06_2005_860.json)==8,rm(reden_30_06_2005_860.json),"")
ifelse(ncol(reden_30_06_2009_721.json)==8,rm(reden_30_06_2009_721.json),"")
ifelse(ncol(reden_30_08_1999_1.json)==8,rm(reden_30_08_1999_1.json),"")
ifelse(ncol(reden_30_08_1999_2.json)==8,rm(reden_30_08_1999_2.json),"")
ifelse(ncol(reden_30_08_1999_3.json)==8,rm(reden_30_08_1999_3.json),"")
ifelse(ncol(reden_30_08_2013_499.json)==8,rm(reden_30_08_2013_499.json),"")
ifelse(ncol(reden_30_08_2017_197.json)==8,rm(reden_30_08_2017_197.json),"")
ifelse(ncol(reden_30_08_2018_86.json)==8,rm(reden_30_08_2018_86.json),"")
ifelse(ncol(reden_30_08_2018_87.json)==8,rm(reden_30_08_2018_87.json),"")
ifelse(ncol(reden_30_09_2004_1.json)==8,rm(reden_30_09_2004_1.json),"")
ifelse(ncol(reden_30_09_2004_2.json)==8,rm(reden_30_09_2004_2.json),"")
ifelse(ncol(reden_30_09_2004_3.json)==8,rm(reden_30_09_2004_3.json),"")
ifelse(ncol(reden_30_09_2004_4.json)==8,rm(reden_30_09_2004_4.json),"")
ifelse(ncol(reden_30_09_2004_5.json)==8,rm(reden_30_09_2004_5.json),"")
ifelse(ncol(reden_30_09_2004_6.json)==8,rm(reden_30_09_2004_6.json),"")
ifelse(ncol(reden_30_09_2004_7.json)==8,rm(reden_30_09_2004_7.json),"")
ifelse(ncol(reden_30_09_2009_712.json)==8,rm(reden_30_09_2009_712.json),"")
ifelse(ncol(reden_30_09_2009_713.json)==8,rm(reden_30_09_2009_713.json),"")
ifelse(ncol(reden_30_09_2014_443.json)==8,rm(reden_30_09_2014_443.json),"")
ifelse(ncol(reden_30_10_2007_803.json)==8,rm(reden_30_10_2007_803.json),"")
ifelse(ncol(reden_30_10_2013_488.json)==8,rm(reden_30_10_2013_488.json),"")
ifelse(ncol(reden_30_10_2017_179.json)==8,rm(reden_30_10_2017_179.json),"")
ifelse(ncol(reden_30_10_2019_971.json)==8,rm(reden_30_10_2019_971.json),"")
ifelse(ncol(reden_30_11_2009_697.json)==8,rm(reden_30_11_2009_697.json),"")
ifelse(ncol(reden_30_11_2016_285.json)==8,rm(reden_30_11_2016_285.json),"")
ifelse(ncol(reden_30_11_2017_156.json)==8,rm(reden_30_11_2017_156.json),"")
ifelse(ncol(reden_31_01_2008_791.json)==8,rm(reden_31_01_2008_791.json),"")
ifelse(ncol(reden_31_01_2017_270.json)==8,rm(reden_31_01_2017_270.json),"")
ifelse(ncol(reden_31_01_2018_144.json)==8,rm(reden_31_01_2018_144.json),"")
ifelse(ncol(reden_31_01_2019_54.json)==8,rm(reden_31_01_2019_54.json),"")
ifelse(ncol(reden_31_03_2006_845.json)==8,rm(reden_31_03_2006_845.json),"")
ifelse(ncol(reden_31_03_2017_245.json)==8,rm(reden_31_03_2017_245.json),"")
ifelse(ncol(reden_31_05_2010_675.json)==8,rm(reden_31_05_2010_675.json),"")
ifelse(ncol(reden_31_05_2017_216.json)==8,rm(reden_31_05_2017_216.json),"")
ifelse(ncol(reden_31_05_2019_29.json)==8,rm(reden_31_05_2019_29.json),"")
ifelse(ncol(reden_31_08_2015_386.json)==8,rm(reden_31_08_2015_386.json),"")
ifelse(ncol(reden_31_10_2007_802.json)==8,rm(reden_31_10_2007_802.json),"")
ifelse(ncol(reden_31_10_2017_178.json)==8,rm(reden_31_10_2017_178.json),"")

#
# Row bind files
# 


Master <- bind_rows("reden_01_02_2008_790.json",
                       "reden_01_02_2012_565.json",
                       "reden_01_02_2017_269.json",
                       "reden_01_03_2017_258.json",
                       "reden_01_04_2019_42.json",
                       "reden_01_04_2019_43.json",
                       "reden_01_06_2005_867.json",
                       "reden_01_06_2015_400.json",
                       "reden_01_06_2016_325.json",
                       "reden_01_06_2016_326.json",
                       "reden_01_07_2010_671.json",
                       "reden_01_07_2015_391.json",
                       "reden_01_07_2015_392.json",
                       "reden_01_07_2016_316.json",
                       "reden_01_09_2011_596.json",
                       "reden_01_10_2012_547.json",
                       "reden_01_10_2013_494.json",
                       "reden_01_10_2015_377.json",
                       "reden_01_10_2019_982.json",
                       "reden_01_10_2019_983.json",
                       "reden_01_11_2007_801.json",
                       "reden_01_11_2019_970.json",
                       "reden_01_12_2014_424.json",
                       "reden_01_12_2014_425.json",
                       "reden_02_02_2010_691.json",
                       "reden_02_02_2011_632.json",
                       "reden_02_02_2011_633.json",
                       "reden_02_02_2017_268.json",
                       "reden_02_03_2011_624.json",
                       "reden_02_05_2011_611.json",
                       "reden_02_05_2011_612.json",
                       "reden_02_05_2016_331.json",
                       "reden_02_05_2018_103.json",
                       "reden_02_05_2019_41.json",
                       "reden_02_07_2013_507.json",
                       "reden_02_10_2015_376.json",
                       "reden_02_10_2016_305.json",
                       "reden_02_10_2017_185.json",
                       "reden_02_11_2007_800.json",
                       "reden_02_12_2003_1.json",
                       "reden_02_12_2003_2.json",
                       "reden_02_12_2003_3.json",
                       "reden_02_12_2003_4.json",
                       "reden_02_12_2003_5.json",
                       "reden_02_12_2003_6.json",
                       "reden_02_12_2003_7.json",
                       "reden_02_12_2003_8.json",
                       "reden_02_12_2003_9.json",
                       "reden_02_12_2003_10.json",
                       "reden_02_12_2010_642.json",
                       "reden_02_12_2010_643.json",
                       "reden_02_12_2015_358.json",
                       "reden_03_02_2017_267.json",
                       "reden_03_03_2016_341.json",
                       "reden_03_04_2017_242.json",
                       "reden_03_04_2017_243.json",
                       "reden_03_04_2017_244.json",
                       "reden_03_05_2007_820.json",
                       "reden_03_05_2019_40.json",
                       "reden_03_06_2005_866.json",
                       "reden_03_06_2007_813.json",
                       "reden_03_06_2008_771.json",
                       "reden_03_07_2007_808.json",
                       "reden_03_07_2013_506.json",
                       "reden_03_07_2014_451.json",
                       "reden_03_09_2018_84.json",
                       "reden_03_09_2018_85.json",
                       "reden_03_11_2006_833.json",
                       "reden_03_11_2009_706.json",
                       "reden_03_11_2009_707.json",
                       "reden_03_11_2010_654.json",
                       "reden_03_11_2016_298.json",
                       "reden_03_11_2017_177.json",
                       "reden_03_12_1999_1.json",
                       "reden_03_12_1999_2.json",
                       "reden_03_12_1999_3.json",
                       "reden_03_12_1999_4.json",
                       "reden_03_12_2009_696.json",
                       "reden_03_12_2013_473.json",
                       "reden_03_12_2014_423.json",
                       "reden_03_12_2015_357.json",
                       "reden_03_12_2018_62.json",
                       "reden_04_02_2013_527.json",
                       "reden_04_02_2015_413.json",
                       "reden_04_02_2016_347.json",
                       "reden_04_03_2011_623.json",
                       "reden_04_05_2007_819.json",
                       "reden_04_05_2009_731.json",
                       "reden_04_05_2010_682.json",
                       "reden_04_05_2015_404.json",
                       "reden_04_05_2017_234.json",
                       "reden_04_05_2017_235.json",
                       "reden_04_05_2018_100.json",
                       "reden_04_05_2018_101.json",
                       "reden_04_05_2018_102.json",
                       "reden_04_07_2012_555.json",
                       "reden_04_09_2009_718.json",
                       "reden_04_09_2009_719.json",
                       "reden_04_09_2014_446.json",
                       "reden_04_10_2011_587.json",
                       "reden_04_11_2008_757.json",
                       "reden_04_11_2014_438.json",
                       "reden_04_11_2019_968.json",
                       "reden_04_11_2019_969.json",
                       "reden_04_12_2012_535.json",
                       "reden_04_12_2015_356.json",
                       "reden_04_12_2019_955.json",
                       "reden_04_12_2019_956.json",
                       "reden_05_02_2018_143.json",
                       "reden_05_03_2006_850.json",
                       "reden_05_03_2018_124.json",
                       "reden_05_03_2018_125.json",
                       "reden_05_03_2018_126.json",
                       "reden_05_04_2011_617.json",
                       "reden_05_04_2018_116.json",
                       "reden_05_05_2006_841.json",
                       "reden_05_05_2006_842.json",
                       "reden_05_05_2006_843.json",
                       "reden_05_05_2010_681.json",
                       "reden_05_05_2015_403.json",
                       "reden_05_06_2009_726.json",
                       "reden_05_06_2018_97.json",
                       "reden_05_07_2012_554.json",
                       "reden_05_07_2018_92.json",
                       "reden_05_09_2011_595.json",
                       "reden_05_09_2013_498.json",
                       "reden_05_09_2016_311.json",
                       "reden_05_09_2019_992.json",
                       "reden_05_10_2010_663.json",
                       "reden_05_11_2010_653.json",
                       "reden_05_11_2018_76.json",
                       "reden_05_12_2002_1.json",
                       "reden_05_12_2002_2.json",
                       "reden_05_12_2002_3.json",
                       "reden_05_12_2002_4.json",
                       "reden_05_12_2002_5.json",
                       "reden_05_12_2002_6.json",
                       "reden_05_12_2002_7.json",
                       "reden_05_12_2002_8.json",
                       "reden_05_12_2002_9.json",
                       "reden_05_12_2002_10.json",
                       "reden_05_12_2002_11.json",
                       "reden_05_12_2002_12.json",
                       "reden_05_12_2002_13.json",
                       "reden_05_12_2002_14.json",
                       "reden_05_12_2002_15.json",
                       "reden_05_12_2016_284.json",
                       "reden_05_12_2017_155.json",
                       "reden_05_12_2019_953.json",
                       "reden_05_12_2019_954.json",
                       "reden_06_02_2007_828.json",
                       "reden_06_02_2014_467.json",
                       "reden_06_02_2017_266.json",
                       "reden_06_02_2018_141.json",
                       "reden_06_02_2018_142.json",
                       "reden_06_03_2017_257.json",
                       "reden_06_04_2017_241.json",
                       "reden_06_05_2019_38.json",
                       "reden_06_05_2019_39.json",
                       "reden_06_06_2005_865.json",
                       "reden_06_06_2007_812.json",
                       "reden_06_06_2008_770.json",
                       "reden_06_06_2018_96.json",
                       "reden_06_07_2006_837.json",
                       "reden_06_07_2017_206.json",
                       "reden_06_09_2011_592.json",
                       "reden_06_09_2011_593.json",
                       "reden_06_09_2011_594.json",
                       "reden_06_11_2013_487.json",
                       "reden_06_12_2012_534.json",
                       "reden_07_02_2011_631.json",
                       "reden_07_02_2017_265.json",
                       "reden_07_02_2019_52.json",
                       "reden_07_02_2019_53.json",
                       "reden_07_03_2008_785.json",
                       "reden_07_03_2017_256.json",
                       "reden_07_03_2018_123.json",
                       "reden_07_04_2008_782.json",
                       "reden_07_04_2014_459.json",
                       "reden_07_05_2007_818.json",
                       "reden_07_06_2005_864.json",
                       "reden_07_06_2017_215.json",
                       "reden_07_09_2015_385.json",
                       "reden_07_09_2016_310.json",
                       "reden_07_09_2017_195.json",
                       "reden_07_09_2017_196.json",
                       "reden_07_11_2014_437.json",
                       "reden_07_12_2016_283.json",
                       "reden_07_12_2018_60.json",
                       "reden_07_12_2018_61.json",
                       "reden_08_01_2009_747.json",
                       "reden_08_02_2012_564.json",
                       "reden_08_02_2018_138.json",
                       "reden_08_02_2018_139.json",
                       "reden_08_02_2018_140.json",
                       "reden_08_02_2019_50.json",
                       "reden_08_02_2019_51.json",
                       "reden_08_03_2006_849.json",
                       "reden_08_03_2011_622.json",
                       "reden_08_03_2018_122.json",
                       "reden_08_04_2014_458.json",
                       "reden_08_04_2016_337.json",
                       "reden_08_05_2019_37.json",
                       "reden_08_06_2005_862.json",
                       "reden_08_06_2005_863.json",
                       "reden_08_06_2009_725.json",
                       "reden_08_06_2016_323.json",
                       "reden_08_06_2016_324.json",
                       "reden_08_07_2009_720.json",
                       "reden_08_07_2015_390.json",
                       "reden_08_07_2017_205.json",
                       "reden_08_09_2009_717.json",
                       "reden_08_09_2010_670.json",
                       "reden_08_09_2017_194.json",
                       "reden_08_10_2012_546.json",
                       "reden_08_10_2013_493.json",
                       "reden_08_10_2019_981.json",
                       "reden_08_11_2010_652.json",
                       "reden_08_11_2011_582.json",
                       "reden_08_11_2017_176.json",
                       "reden_08_12_2005_854.json",
                       "reden_08_12_2006_832.json",
                       "reden_09_03_2005_872.json",
                       "reden_09_03_2006_848.json",
                       "reden_09_03_2007_825.json",
                       "reden_09_03_2010_690.json",
                       "reden_09_03_2011_621.json",
                       "reden_09_03_2015_409.json",
                       "reden_09_03_2017_255.json",
                       "reden_09_05_2007_817.json",
                       "reden_09_06_2010_674.json",
                       "reden_09_07_2013_505.json",
                       "reden_09_07_2014_450.json",
                       "reden_09_07_2015_389.json",
                       "reden_09_07_2019_24.json",
                       "reden_09_09_2014_445.json",
                       "reden_09_10_2008_758.json",
                       "reden_09_10_2014_442.json",
                       "reden_09_11_2005_857.json",
                       "reden_09_11_2007_798.json",
                       "reden_09_11_2007_799.json",
                       "reden_09_11_2012_543.json",
                       "reden_09_11_2016_296.json",
                       "reden_09_11_2016_297.json",
                       "reden_09_11_2017_175.json",
                       "reden_09_11_2018_75.json",
                       "reden_09_12_2009_695.json",
                       "reden_10_01_2006_853.json",
                       "reden_10_02_2009_744.json",
                       "reden_10_02_2011_628.json",
                       "reden_10_02_2011_629.json",
                       "reden_10_02_2011_630.json",
                       "reden_10_02_2017_264.json",
                       "reden_10_03_2009_740.json",
                       "reden_10_03_2010_688.json",
                       "reden_10_03_2010_689.json",
                       "reden_10_03_2011_620.json",
                       "reden_10_03_2016_340.json",
                       "reden_10_04_2018_115.json",
                       "reden_10_05_2016_330.json",
                       "reden_10_05_2017_233.json",
                       "reden_10_06_2008_769.json",
                       "reden_10_06_2009_724.json",
                       "reden_10_06_2013_514.json",
                       "reden_10_06_2013_515.json",
                       "reden_10_06_2016_322.json",
                       "reden_10_07_2002_1.json",
                       "reden_10_07_2002_2.json",
                       "reden_10_07_2002_3.json",
                       "reden_10_07_2002_4.json",
                       "reden_10_07_2002_5.json",
                       "reden_10_07_2019_23.json",
                       "reden_10_09_2008_764.json",
                       "reden_10_09_2019_989.json",
                       "reden_10_09_2019_990.json",
                       "reden_10_09_2019_991.json",
                       "reden_10_10_2012_544.json",
                       "reden_10_10_2012_545.json",
                       "reden_10_10_2016_304.json",
                       "reden_10_11_2005_856.json",
                       "reden_10_11_2011_581.json",
                       "reden_10_11_2016_293.json",
                       "reden_10_11_2016_294.json",
                       "reden_10_11_2016_295.json",
                       "reden_10_11_2017_174.json",
                       "reden_10_12_2008_749.json",
                       "reden_11_01_2011_640.json",
                       "reden_11_02_2009_743.json",
                       "reden_11_02_2013_525.json",
                       "reden_11_02_2013_526.json",
                       "reden_11_02_2014_466.json",
                       "reden_11_02_2016_346.json",
                       "reden_11_03_2008_784.json",
                       "reden_11_04_2011_616.json",
                       "reden_11_04_2018_113.json",
                       "reden_11_04_2018_114.json",
                       "reden_11_05_2006_840.json",
                       "reden_11_05_2016_328.json",
                       "reden_11_05_2016_329.json",
                       "reden_11_05_2017_232.json",
                       "reden_11_06_2014_453.json",
                       "reden_11_06_2015_399.json",
                       "reden_11_06_2016_321.json",
                       "reden_11_07_2011_598.json",
                       "reden_11_07_2013_504.json",
                       "reden_11_09_2012_552.json",
                       "reden_11_09_2015_384.json",
                       "reden_11_09_2018_83.json",
                       "reden_11_10_2007_805.json",
                       "reden_11_10_2017_183.json",
                       "reden_11_10_2017_184.json",
                       "reden_11_11_2008_756.json",
                       "reden_11_11_2009_705.json",
                       "reden_11_11_2013_486.json",
                       "reden_11_11_2015_370.json",
                       "reden_11_11_2015_371.json",
                       "reden_11_11_2019_967.json",
                       "reden_11_12_2008_748.json",
                       "reden_12_01_2018_152.json",
                       "reden_12_02_2015_411.json",
                       "reden_12_02_2015_412.json",
                       "reden_12_02_2019_49.json",
                       "reden_12_03_2010_687.json",
                       "reden_12_03_2015_408.json",
                       "reden_12_04_2018_110.json",
                       "reden_12_04_2018_111.json",
                       "reden_12_04_2018_112.json",
                       "reden_12_05_2009_730.json",
                       "reden_12_05_2011_609.json",
                       "reden_12_05_2011_610.json",
                       "reden_12_06_2008_768.json",
                       "reden_12_06_2012_557.json",
                       "reden_12_06_2014_452.json",
                       "reden_12_07_2018_91.json",
                       "reden_12_10_2007_804.json",
                       "reden_12_10_2010_661.json",
                       "reden_12_10_2010_662.json",
                       "reden_12_11_2014_436.json",
                       "reden_12_11_2015_369.json",
                       "reden_12_11_2019_966.json",
                       "reden_12_12_2000_1.json",
                       "reden_12_12_2000_2.json",
                       "reden_12_12_2000_3.json",
                       "reden_12_12_2000_4.json",
                       "reden_12_12_2000_5.json",
                       "reden_12_12_2000_6.json",
                       "reden_12_12_2000_7.json",
                       "reden_12_12_2000_8.json",
                       "reden_12_12_2000_9.json",
                       "reden_12_12_2000_10.json",
                       "reden_12_12_2000_11.json",
                       "reden_12_12_2000_12.json",
                       "reden_12_12_2000_13.json",
                       "reden_12_12_2000_14.json",
                       "reden_12_12_2000_15.json",
                       "reden_12_12_2000_16.json",
                       "reden_12_12_2000_17.json",
                       "reden_12_12_2000_18.json",
                       "reden_12_12_2000_19.json",
                       "reden_12_12_2000_20.json",
                       "reden_12_12_2012_533.json",
                       "reden_13_01_2015_421.json",
                       "reden_13_01_2015_422.json",
                       "reden_13_03_2002_1.json",
                       "reden_13_03_2002_2.json",
                       "reden_13_03_2002_3.json",
                       "reden_13_03_2002_4.json",
                       "reden_13_03_2002_5.json",
                       "reden_13_03_2002_6.json",
                       "reden_13_03_2002_7.json",
                       "reden_13_03_2007_824.json",
                       "reden_13_04_2011_614.json",
                       "reden_13_04_2011_615.json",
                       "reden_13_04_2016_336.json",
                       "reden_13_05_2009_729.json",
                       "reden_13_05_2015_402.json",
                       "reden_13_06_2000_1.json",
                       "reden_13_06_2000_2.json",
                       "reden_13_06_2000_3.json",
                       "reden_13_06_2000_4.json",
                       "reden_13_06_2000_5.json",
                       "reden_13_06_2000_6.json",
                       "reden_13_06_2000_7.json",
                       "reden_13_06_2000_8.json",
                       "reden_13_06_2000_9.json",
                       "reden_13_06_2008_767.json",
                       "reden_13_06_2013_513.json",
                       "reden_13_06_2016_319.json",
                       "reden_13_06_2016_320.json",
                       "reden_13_06_2017_214.json",
                       "reden_13_06_2019_28.json",
                       "reden_13_07_2016_315.json",
                       "reden_13_07_2017_204.json",
                       "reden_13_09_2011_590.json",
                       "reden_13_09_2011_591.json",
                       "reden_13_09_2019_988.json",
                       "reden_13_10_2014_441.json",
                       "reden_13_10_2015_375.json",
                       "reden_13_10_2016_303.json",
                       "reden_13_11_2008_755.json",
                       "reden_13_11_2013_485.json",
                       "reden_13_11_2017_173.json",
                       "reden_13_11_2018_74.json",
                       "reden_13_12_2004_1.json",
                       "reden_13_12_2004_2.json",
                       "reden_13_12_2004_3.json",
                       "reden_13_12_2004_4.json",
                       "reden_13_12_2004_5.json",
                       "reden_13_12_2004_6.json",
                       "reden_13_12_2004_7.json",
                       "reden_13_12_2004_8.json",
                       "reden_13_12_2004_9.json",
                       "reden_13_12_2004_10.json",
                       "reden_13_12_2004_11.json",
                       "reden_13_12_2004_12.json",
                       "reden_13_12_2004_13.json",
                       "reden_13_12_2004_14.json",
                       "reden_13_12_2004_15.json",
                       "reden_13_12_2004_16.json",
                       "reden_13_12_2006_831.json",
                       "reden_13_12_2007_795.json",
                       "reden_13_12_2018_59.json",
                       "reden_14_01_2011_639.json",
                       "reden_14_01_2016_355.json",
                       "reden_14_02_2008_789.json",
                       "reden_14_02_2014_465.json",
                       "reden_14_02_2018_135.json",
                       "reden_14_02_2018_136.json",
                       "reden_14_02_2018_137.json",
                       "reden_14_02_2019_48.json",
                       "reden_14_03_2006_847.json",
                       "reden_14_03_2012_562.json",
                       "reden_14_04_2005_871.json",
                       "reden_14_04_2011_613.json",
                       "reden_14_05_2010_680.json",
                       "reden_14_05_2014_457.json",
                       "reden_14_06_2007_810.json",
                       "reden_14_06_2007_811.json",
                       "reden_14_06_2012_556.json",
                       "reden_14_06_2017_213.json",
                       "reden_14_07_2016_314.json",
                       "reden_14_08_2008_765.json",
                       "reden_14_08_2017_202.json",
                       "reden_14_09_2010_669.json",
                       "reden_14_09_2017_193.json",
                       "reden_14_10_2010_660.json",
                       "reden_14_10_2019_980.json",
                       "reden_14_11_2011_580.json",
                       "reden_14_11_2012_541.json",
                       "reden_14_11_2012_542.json",
                       "reden_14_11_2013_481.json",
                       "reden_14_11_2013_482.json",
                       "reden_14_11_2013_483.json",
                       "reden_14_11_2013_484.json",
                       "reden_14_11_2017_172.json",
                       "reden_14_11_2018_70.json",
                       "reden_14_11_2018_71.json",
                       "reden_14_11_2018_72.json",
                       "reden_14_11_2018_73.json",
                       "reden_14_12_2011_572.json",
                       "reden_14_12_2017_154.json",
                       "reden_14_12_2018_58.json",
                       "reden_15_01_2008_794.json",
                       "reden_15_01_2014_472.json",
                       "reden_15_01_2018_151.json",
                       "reden_15_01_2019_56.json",
                       "reden_15_01_2019_57.json",
                       "reden_15_02_2018_133.json",
                       "reden_15_02_2018_134.json",
                       "reden_15_03_2007_823.json",
                       "reden_15_03_2017_253.json",
                       "reden_15_03_2017_254.json",
                       "reden_15_03_2018_121.json",
                       "reden_15_04_2003_1.json",
                       "reden_15_04_2003_2.json",
                       "reden_15_04_2003_3.json",
                       "reden_15_04_2003_4.json",
                       "reden_15_04_2003_5.json",
                       "reden_15_04_2003_6.json",
                       "reden_15_04_2003_7.json",
                       "reden_15_04_2008_781.json",
                       "reden_15_04_2009_734.json",
                       "reden_15_05_2013_520.json",
                       "reden_15_05_2017_231.json",
                       "reden_15_05_2019_36.json",
                       "reden_15_06_2015_397.json",
                       "reden_15_06_2015_398.json",
                       "reden_15_06_2016_318.json",
                       "reden_15_07_2015_388.json",
                       "reden_15_08_2017_201.json",
                       "reden_15_09_2015_383.json",
                       "reden_15_09_2016_309.json",
                       "reden_15_10_2009_711.json",
                       "reden_15_10_2015_374.json",
                       "reden_15_11_2010_650.json",
                       "reden_15_11_2010_651.json",
                       "reden_15_11_2011_579.json",
                       "reden_15_11_2016_292.json",
                       "reden_15_11_2017_170.json",
                       "reden_15_11_2017_171.json",
                       "reden_15_11_2018_69.json",
                       "reden_16_01_2008_793.json",
                       "reden_16_01_2014_470.json",
                       "reden_16_01_2014_471.json",
                       "reden_16_01_2015_420.json",
                       "reden_16_01_2017_277.json",
                       "reden_16_01_2018_150.json",
                       "reden_16_02_2017_263.json",
                       "reden_16_03_2017_252.json",
                       "reden_16_04_2018_109.json",
                       "reden_16_05_2007_816.json",
                       "reden_16_05_2008_775.json",
                       "reden_16_05_2019_34.json",
                       "reden_16_05_2019_35.json",
                       "reden_16_06_2005_861.json",
                       "reden_16_06_2009_723.json",
                       "reden_16_07_2003_1.json",
                       "reden_16_07_2003_2.json",
                       "reden_16_07_2003_3.json",
                       "reden_16_07_2003_4.json",
                       "reden_16_07_2003_5.json",
                       "reden_16_07_2003_6.json",
                       "reden_16_07_2003_7.json",
                       "reden_16_07_2003_8.json",
                       "reden_16_07_2003_9.json",
                       "reden_16_09_2008_763.json",
                       "reden_16_09_2010_668.json",
                       "reden_16_09_2012_551.json",
                       "reden_16_09_2015_382.json",
                       "reden_16_10_2009_710.json",
                       "reden_16_10_2019_978.json",
                       "reden_16_10_2019_979.json",
                       "reden_16_11_2009_702.json",
                       "reden_16_11_2009_703.json",
                       "reden_16_11_2009_704.json",
                       "reden_16_11_2010_649.json",
                       "reden_16_11_2011_577.json",
                       "reden_16_11_2011_578.json",
                       "reden_16_11_2016_289.json",
                       "reden_16_11_2016_290.json",
                       "reden_16_11_2016_291.json",
                       "reden_16_11_2018_68.json",
                       "reden_16_12_2016_280.json",
                       "reden_16_12_2016_281.json",
                       "reden_16_12_2016_282.json",
                       "reden_17_01_2005_877.json",
                       "reden_17_01_2012_570.json",
                       "reden_17_01_2013_532.json",
                       "reden_17_02_2009_742.json",
                       "reden_17_02_2016_345.json",
                       "reden_17_03_2006_846.json",
                       "reden_17_03_2009_739.json",
                       "reden_17_03_2014_462.json",
                       "reden_17_04_2008_780.json",
                       "reden_17_04_2018_108.json",
                       "reden_17_05_2011_608.json",
                       "reden_17_05_2017_227.json",
                       "reden_17_05_2017_228.json",
                       "reden_17_05_2017_229.json",
                       "reden_17_05_2017_230.json",
                       "reden_17_06_2010_673.json",
                       "reden_17_06_2011_601.json",
                       "reden_17_06_2019_27.json",
                       "reden_17_08_2019_22.json",
                       "reden_17_09_2008_761.json",
                       "reden_17_09_2008_762.json",
                       "reden_17_09_2010_667.json",
                       "reden_17_10_2013_492.json",
                       "reden_17_10_2014_440.json",
                       "reden_17_10_2016_302.json",
                       "reden_17_10_2018_77.json",
                       "reden_17_10_2018_78.json",
                       "reden_17_10_2019_976.json",
                       "reden_17_10_2019_977.json",
                       "reden_17_11_2008_753.json",
                       "reden_17_11_2008_754.json",
                       "reden_17_11_2009_701.json",
                       "reden_17_11_2010_648.json",
                       "reden_17_11_2014_435.json",
                       "reden_17_11_2015_368.json",
                       "reden_17_11_2017_167.json",
                       "reden_17_11_2017_168.json",
                       "reden_17_11_2017_169.json",
                       "reden_17_12_2001_1.json",
                       "reden_17_12_2001_2.json",
                       "reden_17_12_2001_3.json",
                       "reden_17_12_2001_4.json",
                       "reden_17_12_2001_5.json",
                       "reden_17_12_2001_6.json",
                       "reden_17_12_2001_7.json",
                       "reden_17_12_2001_8.json",
                       "reden_17_12_2001_9.json",
                       "reden_17_12_2001_10.json",
                       "reden_17_12_2010_641.json",
                       "reden_18_01_2006_852.json",
                       "reden_18_01_2011_638.json",
                       "reden_18_01_2012_569.json",
                       "reden_18_01_2016_353.json",
                       "reden_18_01_2016_354.json",
                       "reden_18_02_2008_788.json",
                       "reden_18_02_2013_524.json",
                       "reden_18_02_2014_464.json",
                       "reden_18_03_2013_522.json",
                       "reden_18_03_2015_407.json",
                       "reden_18_04_2007_821.json",
                       "reden_18_04_2008_779.json",
                       "reden_18_05_2010_679.json",
                       "reden_18_05_2017_224.json",
                       "reden_18_05_2017_225.json",
                       "reden_18_05_2017_226.json",
                       "reden_18_05_2018_99.json",
                       "reden_18_06_2013_512.json",
                       "reden_18_06_2015_396.json",
                       "reden_18_07_2014_449.json",
                       "reden_18_09_2012_550.json",
                       "reden_18_09_2015_381.json",
                       "reden_18_09_2017_192.json",
                       "reden_18_09_2018_82.json",
                       "reden_18_09_2019_987.json",
                       "reden_18_11_2005_855.json",
                       "reden_18_11_2008_752.json",
                       "reden_18_11_2011_576.json",
                       "reden_18_11_2014_434.json",
                       "reden_18_11_2015_367.json",
                       "reden_18_11_2016_288.json",
                       "reden_18_11_2019_965.json",
                       "reden_19_01_2007_830.json",
                       "reden_19_01_2011_637.json",
                       "reden_19_01_2018_149.json",
                       "reden_19_02_2019_47.json",
                       "reden_19_03_2009_738.json",
                       "reden_19_03_2019_44.json",
                       "reden_19_05_2010_678.json",
                       "reden_19_05_2014_455.json",
                       "reden_19_05_2014_456.json",
                       "reden_19_06_2017_211.json",
                       "reden_19_06_2017_212.json",
                       "reden_19_08_2013_503.json",
                       "reden_19_09_2009_716.json",
                       "reden_19_09_2013_497.json",
                       "reden_19_09_2018_81.json",
                       "reden_19_10_2010_659.json",
                       "reden_19_10_2011_586.json",
                       "reden_19_10_2015_373.json",
                       "reden_19_10_2016_301.json",
                       "reden_19_10_2017_182.json",
                       "reden_19_11_2007_797.json",
                       "reden_19_11_2012_539.json",
                       "reden_19_11_2012_540.json",
                       "reden_19_11_2013_480.json",
                       "reden_19_11_2014_433.json",
                       "reden_19_11_2015_366.json",
                       "reden_19_11_2018_66.json",
                       "reden_19_11_2018_67.json",
                       "reden_19_11_2019_964.json",
                       "reden_19_12_2017_153.json",
                       "reden_20_01_2010_694.json",
                       "reden_20_02_2006_851.json",
                       "reden_20_02_2018_132.json",
                       "reden_20_03_2009_737.json",
                       "reden_20_03_2017_250.json",
                       "reden_20_03_2017_251.json",
                       "reden_20_03_2018_120.json",
                       "reden_20_04_2016_335.json",
                       "reden_20_04_2017_240.json",
                       "reden_20_04_2018_107.json",
                       "reden_20_05_2011_607.json",
                       "reden_20_06_2011_600.json",
                       "reden_20_06_2013_511.json",
                       "reden_20_06_2018_95.json",
                       "reden_20_08_2018_90.json",
                       "reden_20_09_2012_549.json",
                       "reden_20_09_2017_189.json",
                       "reden_20_09_2017_190.json",
                       "reden_20_09_2017_191.json",
                       "reden_20_09_2018_80.json",
                       "reden_20_10_2011_584.json",
                       "reden_20_10_2011_585.json",
                       "reden_20_11_2013_479.json",
                       "reden_20_11_2014_432.json",
                       "reden_20_11_2015_365.json",
                       "reden_20_11_2018_65.json",
                       "reden_20_11_2019_963.json",
                       "reden_20_12_2011_571.json",
                       "reden_21_01_2010_693.json",
                       "reden_21_01_2013_531.json",
                       "reden_21_02_2011_627.json",
                       "reden_21_02_2018_131.json",
                       "reden_21_04_2008_778.json",
                       "reden_21_04_2016_334.json",
                       "reden_21_05_2012_558.json",
                       "reden_21_06_2017_209.json",
                       "reden_21_06_2017_210.json",
                       "reden_21_06_2018_93.json",
                       "reden_21_06_2018_94.json",
                       "reden_21_06_2019_25.json",
                       "reden_21_06_2019_26.json",
                       "reden_21_07_2017_203.json",
                       "reden_21_08_2017_200.json",
                       "reden_21_09_2007_807.json",
                       "reden_21_09_2015_380.json",
                       "reden_21_09_2017_188.json",
                       "reden_21_11_2008_751.json",
                       "reden_21_11_2012_538.json",
                       "reden_21_11_2013_478.json",
                       "reden_21_11_2014_431.json",
                       "reden_21_11_2017_165.json",
                       "reden_21_11_2017_166.json",
                       "reden_21_11_2019_962.json",
                       "reden_22_01_2016_352.json",
                       "reden_22_02_2017_262.json",
                       "reden_22_03_2010_686.json",
                       "reden_22_03_2011_619.json",
                       "reden_22_03_2017_249.json",
                       "reden_22_04_2008_777.json",
                       "reden_22_05_2008_774.json",
                       "reden_22_05_2014_454.json",
                       "reden_22_05_2015_401.json",
                       "reden_22_05_2017_222.json",
                       "reden_22_05_2017_223.json",
                       "reden_22_06_2015_395.json",
                       "reden_22_08_2012_553.json",
                       "reden_22_09_2010_666.json",
                       "reden_22_09_2011_589.json",
                       "reden_22_09_2016_308.json",
                       "reden_22_09_2017_187.json",
                       "reden_22_10_2009_709.json",
                       "reden_22_11_2010_647.json",
                       "reden_22_11_2011_574.json",
                       "reden_22_11_2011_575.json",
                       "reden_22_11_2013_477.json",
                       "reden_22_11_2015_364.json",
                       "reden_22_11_2016_286.json",
                       "reden_22_11_2016_287.json",
                       "reden_22_11_2017_163.json",
                       "reden_22_11_2017_164.json",
                       "reden_22_11_2018_64.json",
                       "reden_22_11_2019_958.json",
                       "reden_22_11_2019_959.json",
                       "reden_22_11_2019_960.json",
                       "reden_22_11_2019_961.json",
                       "reden_22_12_2016_279.json",
                       "reden_23_01_2012_567.json",
                       "reden_23_02_2005_873.json",
                       "reden_23_02_2009_741.json",
                       "reden_23_02_2011_626.json",
                       "reden_23_02_2016_343.json",
                       "reden_23_02_2016_344.json",
                       "reden_23_02_2017_260.json",
                       "reden_23_02_2017_261.json",
                       "reden_23_03_2009_736.json",
                       "reden_23_03_2011_618.json",
                       "reden_23_03_2016_339.json",
                       "reden_23_04_2005_870.json",
                       "reden_23_04_2018_106.json",
                       "reden_23_05_2006_839.json",
                       "reden_23_05_2007_815.json",
                       "reden_23_05_2011_605.json",
                       "reden_23_05_2011_606.json",
                       "reden_23_05_2013_518.json",
                       "reden_23_05_2013_519.json",
                       "reden_23_05_2017_221.json",
                       "reden_23_05_2019_33.json",
                       "reden_23_06_2006_838.json",
                       "reden_23_06_2009_722.json",
                       "reden_23_06_2016_317.json",
                       "reden_23_07_2014_448.json",
                       "reden_23_07_2015_387.json",
                       "reden_23_08_2018_89.json",
                       "reden_23_09_2015_379.json",
                       "reden_23_09_2019_986.json",
                       "reden_23_10_2013_491.json",
                       "reden_23_10_2017_181.json",
                       "reden_23_10_2019_975.json",
                       "reden_23_11_2015_363.json",
                       "reden_23_11_2017_161.json",
                       "reden_23_11_2017_162.json",
                       "reden_23_12_2016_278.json",
                       "reden_24_01_2012_566.json",
                       "reden_24_01_2013_530.json",
                       "reden_24_01_2018_148.json",
                       "reden_24_01_2019_55.json",
                       "reden_24_02_2011_625.json",
                       "reden_24_02_2016_342.json",
                       "reden_24_02_2017_259.json",
                       "reden_24_03_2016_338.json",
                       "reden_24_04_2013_521.json",
                       "reden_24_04_2017_239.json",
                       "reden_24_04_2018_104.json",
                       "reden_24_04_2018_105.json",
                       "reden_24_05_2013_517.json",
                       "reden_24_05_2017_220.json",
                       "reden_24_05_2019_32.json",
                       "reden_24_07_2014_447.json",
                       "reden_24_08_2011_597.json",
                       "reden_24_09_2009_714.json",
                       "reden_24_09_2009_715.json",
                       "reden_24_09_2018_79.json",
                       "reden_24_10_2001_1.json",
                       "reden_24_10_2001_2.json",
                       "reden_24_10_2001_3.json",
                       "reden_24_10_2001_4.json",
                       "reden_24_10_2001_5.json",
                       "reden_24_10_2001_6.json",
                       "reden_24_10_2001_7.json",
                       "reden_24_10_2001_8.json",
                       "reden_24_10_2001_9.json",
                       "reden_24_10_2001_10.json",
                       "reden_24_10_2001_11.json",
                       "reden_24_10_2001_12.json",
                       "reden_24_10_2001_13.json",
                       "reden_24_10_2001_14.json",
                       "reden_24_10_2001_15.json",
                       "reden_24_10_2013_490.json",
                       "reden_24_10_2016_300.json",
                       "reden_24_10_2019_974.json",
                       "reden_24_11_2010_646.json",
                       "reden_24_11_2011_573.json",
                       "reden_24_11_2014_430.json",
                       "reden_24_11_2015_361.json",
                       "reden_24_11_2015_362.json",
                       "reden_25_01_2007_829.json",
                       "reden_25_01_2015_419.json",
                       "reden_25_01_2016_351.json",
                       "reden_25_01_2017_275.json",
                       "reden_25_01_2017_276.json",
                       "reden_25_01_2018_147.json",
                       "reden_25_02_2008_787.json",
                       "reden_25_02_2013_523.json",
                       "reden_25_02_2019_46.json",
                       "reden_25_03_2015_406.json",
                       "reden_25_03_2017_248.json",
                       "reden_25_04_2008_776.json",
                       "reden_25_04_2010_685.json",
                       "reden_25_04_2017_236.json",
                       "reden_25_04_2017_237.json",
                       "reden_25_04_2017_238.json",
                       "reden_25_05_2009_728.json",
                       "reden_25_05_2017_219.json",
                       "reden_25_05_2018_98.json",
                       "reden_25_06_2008_766.json",
                       "reden_25_06_2013_510.json",
                       "reden_25_06_2015_393.json",
                       "reden_25_06_2015_394.json",
                       "reden_25_08_2018_88.json",
                       "reden_25_09_2008_760.json",
                       "reden_25_09_2013_496.json",
                       "reden_25_09_2017_186.json",
                       "reden_25_10_2005_859.json",
                       "reden_25_10_2010_658.json",
                       "reden_25_11_2009_700.json",
                       "reden_25_11_2010_644.json",
                       "reden_25_11_2010_645.json",
                       "reden_25_11_2013_476.json",
                       "reden_25_11_2014_428.json",
                       "reden_25_11_2014_429.json",
                       "reden_25_11_2015_359.json",
                       "reden_25_11_2015_360.json",
                       "reden_26_01_2005_874.json",
                       "reden_26_01_2005_875.json",
                       "reden_26_01_2005_876.json",
                       "reden_26_01_2009_746.json",
                       "reden_26_01_2010_692.json",
                       "reden_26_01_2011_636.json",
                       "reden_26_01_2015_417.json",
                       "reden_26_01_2015_418.json",
                       "reden_26_01_2017_271.json",
                       "reden_26_01_2017_272.json",
                       "reden_26_01_2017_273.json",
                       "reden_26_01_2017_274.json",
                       "reden_26_02_2015_410.json",
                       "reden_26_02_2018_130.json",
                       "reden_26_03_2004_1.json",
                       "reden_26_03_2004_2.json",
                       "reden_26_03_2004_3.json",
                       "reden_26_03_2004_4.json",
                       "reden_26_03_2004_5.json",
                       "reden_26_03_2004_6.json",
                       "reden_26_03_2004_7.json",
                       "reden_26_03_2004_8.json",
                       "reden_26_03_2014_461.json",
                       "reden_26_03_2018_119.json",
                       "reden_26_04_2010_684.json",
                       "reden_26_04_2012_560.json",
                       "reden_26_04_2016_333.json",
                       "reden_26_05_2011_603.json",
                       "reden_26_05_2011_604.json",
                       "reden_26_08_2013_502.json",
                       "reden_26_09_2006_836.json",
                       "reden_26_09_2007_806.json",
                       "reden_26_09_2008_759.json",
                       "reden_26_09_2011_588.json",
                       "reden_26_09_2013_495.json",
                       "reden_26_09_2019_985.json",
                       "reden_26_10_2005_858.json",
                       "reden_26_10_2006_834.json",
                       "reden_26_10_2013_489.json",
                       "reden_26_10_2014_439.json",
                       "reden_26_10_2015_372.json",
                       "reden_26_11_2008_750.json",
                       "reden_26_11_2009_698.json",
                       "reden_26_11_2009_699.json",
                       "reden_26_11_2013_475.json",
                       "reden_27_01_2011_634.json",
                       "reden_27_01_2011_635.json",
                       "reden_27_01_2014_469.json",
                       "reden_27_01_2016_350.json",
                       "reden_27_02_2008_786.json",
                       "reden_27_02_2014_463.json",
                       "reden_27_02_2018_128.json",
                       "reden_27_02_2018_129.json",
                       "reden_27_02_2019_45.json",
                       "reden_27_05_2010_677.json",
                       "reden_27_05_2011_602.json",
                       "reden_27_06_2001_1.json",
                       "reden_27_06_2001_2.json",
                       "reden_27_06_2001_3.json",
                       "reden_27_06_2001_4.json",
                       "reden_27_06_2001_5.json",
                       "reden_27_06_2001_6.json",
                       "reden_27_06_2001_7.json",
                       "reden_27_06_2001_8.json",
                       "reden_27_06_2001_9.json",
                       "reden_27_06_2001_10.json",
                       "reden_27_06_2001_11.json",
                       "reden_27_06_2001_12.json",
                       "reden_27_06_2001_13.json",
                       "reden_27_06_2001_14.json",
                       "reden_27_06_2001_15.json",
                       "reden_27_06_2001_16.json",
                       "reden_27_06_2001_17.json",
                       "reden_27_06_2001_18.json",
                       "reden_27_06_2001_19.json",
                       "reden_27_06_2001_20.json",
                       "reden_27_06_2001_21.json",
                       "reden_27_06_2001_22.json",
                       "reden_27_06_2001_23.json",
                       "reden_27_06_2001_24.json",
                       "reden_27_06_2001_25.json",
                       "reden_27_06_2001_26.json",
                       "reden_27_06_2013_508.json",
                       "reden_27_06_2013_509.json",
                       "reden_27_09_2012_548.json",
                       "reden_27_09_2016_307.json",
                       "reden_27_09_2019_984.json",
                       "reden_27_10_2011_583.json",
                       "reden_27_10_2016_299.json",
                       "reden_27_10_2017_180.json",
                       "reden_27_11_2014_427.json",
                       "reden_28_01_2009_745.json",
                       "reden_28_01_2014_468.json",
                       "reden_28_01_2015_414.json",
                       "reden_28_01_2015_415.json",
                       "reden_28_01_2015_416.json",
                       "reden_28_01_2016_348.json",
                       "reden_28_01_2016_349.json",
                       "reden_28_02_2007_826.json",
                       "reden_28_02_2007_827.json",
                       "reden_28_02_2012_563.json",
                       "reden_28_02_2018_127.json",
                       "reden_28_03_2007_822.json",
                       "reden_28_03_2008_783.json",
                       "reden_28_03_2014_460.json",
                       "reden_28_03_2017_247.json",
                       "reden_28_03_2018_118.json",
                       "reden_28_04_2005_869.json",
                       "reden_28_04_2006_844.json",
                       "reden_28_04_2010_683.json",
                       "reden_28_04_2012_559.json",
                       "reden_28_04_2015_405.json",
                       "reden_28_05_2005_868.json",
                       "reden_28_05_2009_727.json",
                       "reden_28_05_2010_676.json",
                       "reden_28_05_2013_516.json",
                       "reden_28_06_2007_809.json",
                       "reden_28_06_2010_672.json",
                       "reden_28_08_2017_199.json",
                       "reden_28_10_2003_1.json",
                       "reden_28_10_2003_2.json",
                       "reden_28_10_2003_3.json",
                       "reden_28_10_2003_4.json",
                       "reden_28_10_2003_5.json",
                       "reden_28_10_2003_6.json",
                       "reden_28_10_2003_7.json",
                       "reden_28_10_2003_8.json",
                       "reden_28_10_2003_9.json",
                       "reden_28_10_2003_10.json",
                       "reden_28_10_2010_655.json",
                       "reden_28_10_2010_656.json",
                       "reden_28_10_2010_657.json",
                       "reden_28_11_2013_474.json",
                       "reden_28_11_2014_426.json",
                       "reden_28_11_2017_160.json",
                       "reden_28_11_2018_63.json",
                       "reden_28_11_2019_957.json",
                       "reden_29_01_2018_146.json",
                       "reden_29_03_1999_1.json",
                       "reden_29_03_1999_2.json",
                       "reden_29_03_1999_3.json",
                       "reden_29_03_1999_4.json",
                       "reden_29_03_1999_5.json",
                       "reden_29_03_1999_6.json",
                       "reden_29_03_1999_7.json",
                       "reden_29_03_1999_8.json",
                       "reden_29_03_1999_9.json",
                       "reden_29_03_2012_561.json",
                       "reden_29_03_2018_117.json",
                       "reden_29_04_2009_733.json",
                       "reden_29_04_2016_332.json",
                       "reden_29_05_2007_814.json",
                       "reden_29_05_2017_218.json",
                       "reden_29_05_2019_30.json",
                       "reden_29_05_2019_31.json",
                       "reden_29_06_2011_599.json",
                       "reden_29_06_2017_207.json",
                       "reden_29_06_2017_208.json",
                       "reden_29_08_2013_500.json",
                       "reden_29_08_2013_501.json",
                       "reden_29_08_2016_312.json",
                       "reden_29_08_2016_313.json",
                       "reden_29_08_2017_198.json",
                       "reden_29_08_2019_20.json",
                       "reden_29_08_2019_21.json",
                       "reden_29_09_2006_835.json",
                       "reden_29_09_2010_664.json",
                       "reden_29_09_2010_665.json",
                       "reden_29_09_2014_444.json",
                       "reden_29_09_2015_378.json",
                       "reden_29_09_2016_306.json",
                       "reden_29_10_2009_708.json",
                       "reden_29_10_2019_972.json",
                       "reden_29_10_2019_973.json",
                       "reden_29_11_2007_796.json",
                       "reden_29_11_2012_536.json",
                       "reden_29_11_2012_537.json",
                       "reden_29_11_2017_157.json",
                       "reden_29_11_2017_158.json",
                       "reden_29_11_2017_159.json",
                       "reden_30_01_2008_792.json",
                       "reden_30_01_2013_528.json",
                       "reden_30_01_2013_529.json",
                       "reden_30_01_2018_145.json",
                       "reden_30_03_2009_735.json",
                       "reden_30_03_2017_246.json",
                       "reden_30_04_2009_732.json",
                       "reden_30_05_2008_772.json",
                       "reden_30_05_2008_773.json",
                       "reden_30_05_2016_327.json",
                       "reden_30_05_2017_217.json",
                       "reden_30_06_2005_860.json",
                       "reden_30_06_2009_721.json",
                       "reden_30_08_1999_1.json",
                       "reden_30_08_1999_2.json",
                       "reden_30_08_1999_3.json",
                       "reden_30_08_2013_499.json",
                       "reden_30_08_2017_197.json",
                       "reden_30_08_2018_86.json",
                       "reden_30_08_2018_87.json",
                       "reden_30_09_2004_1.json",
                       "reden_30_09_2004_2.json",
                       "reden_30_09_2004_3.json",
                       "reden_30_09_2004_4.json",
                       "reden_30_09_2004_5.json",
                       "reden_30_09_2004_6.json",
                       "reden_30_09_2004_7.json",
                       "reden_30_09_2009_712.json",
                       "reden_30_09_2009_713.json",
                       "reden_30_09_2014_443.json",
                       "reden_30_10_2007_803.json",
                       "reden_30_10_2013_488.json",
                       "reden_30_10_2017_179.json",
                       "reden_30_10_2019_971.json",
                       "reden_30_11_2009_697.json",
                       "reden_30_11_2016_285.json",
                       "reden_30_11_2017_156.json",
                       "reden_31_01_2008_791.json",
                       "reden_31_01_2017_270.json",
                       "reden_31_01_2018_144.json",
                       "reden_31_01_2019_54.json",
                       "reden_31_03_2006_845.json",
                       "reden_31_03_2017_245.json",
                       "reden_31_05_2010_675.json",
                       "reden_31_05_2017_216.json",
                       "reden_31_05_2019_29.json",
                       "reden_31_08_2015_386.json",
                       "reden_31_10_2007_802.json",
                       "reden_31_10_2017_178.json")


Master <- do.call(rbind,mget(ls(pattern = ".json")))
Master_7 <- do.call(rbind,mget(ls(pattern = ".json")))

Master_9 <- do.call(rbind,mget(ls(pattern = ".json")))



rm("reden_01_02_2008_790.json",
      "reden_01_02_2012_565.json",
      "reden_01_02_2017_269.json",
      "reden_01_03_2017_258.json",
      "reden_01_04_2019_42.json",
      "reden_01_04_2019_43.json",
      "reden_01_06_2005_867.json",
      "reden_01_06_2015_400.json",
      "reden_01_06_2016_325.json",
      "reden_01_06_2016_326.json",
      "reden_01_07_2010_671.json",
      "reden_01_07_2015_391.json",
      "reden_01_07_2015_392.json",
      "reden_01_07_2016_316.json",
      "reden_01_09_2011_596.json",
      "reden_01_10_2012_547.json",
      "reden_01_10_2013_494.json",
      "reden_01_10_2015_377.json",
      "reden_01_10_2019_982.json",
      "reden_01_10_2019_983.json",
      "reden_01_11_2007_801.json",
      "reden_01_11_2019_970.json",
      "reden_01_12_2014_424.json",
      "reden_01_12_2014_425.json",
      "reden_02_02_2010_691.json",
      "reden_02_02_2011_632.json",
      "reden_02_02_2011_633.json",
      "reden_02_02_2017_268.json",
      "reden_02_03_2011_624.json",
      "reden_02_05_2011_611.json",
      "reden_02_05_2011_612.json",
      "reden_02_05_2016_331.json",
      "reden_02_05_2018_103.json",
      "reden_02_05_2019_41.json",
      "reden_02_07_2013_507.json",
      "reden_02_10_2015_376.json",
      "reden_02_10_2016_305.json",
      "reden_02_10_2017_185.json",
      "reden_02_11_2007_800.json",
      "reden_02_12_2003_1.json",
      "reden_02_12_2003_2.json",
      "reden_02_12_2003_3.json",
      "reden_02_12_2003_4.json",
      "reden_02_12_2003_5.json",
      "reden_02_12_2003_6.json",
      "reden_02_12_2003_7.json",
      "reden_02_12_2003_8.json",
      "reden_02_12_2003_9.json",
      "reden_02_12_2003_10.json",
      "reden_02_12_2010_642.json",
      "reden_02_12_2010_643.json",
      "reden_02_12_2015_358.json",
      "reden_03_02_2017_267.json",
      "reden_03_03_2016_341.json",
      "reden_03_04_2017_242.json",
      "reden_03_04_2017_243.json",
      "reden_03_04_2017_244.json",
      "reden_03_05_2007_820.json",
      "reden_03_05_2019_40.json",
      "reden_03_06_2005_866.json",
      "reden_03_06_2007_813.json",
      "reden_03_06_2008_771.json",
      "reden_03_07_2007_808.json",
      "reden_03_07_2013_506.json",
      "reden_03_07_2014_451.json",
      "reden_03_09_2018_84.json",
      "reden_03_09_2018_85.json",
      "reden_03_11_2006_833.json",
      "reden_03_11_2009_706.json",
      "reden_03_11_2009_707.json",
      "reden_03_11_2010_654.json",
      "reden_03_11_2016_298.json",
      "reden_03_11_2017_177.json",
      "reden_03_12_1999_1.json",
      "reden_03_12_1999_2.json",
      "reden_03_12_1999_3.json",
      "reden_03_12_1999_4.json",
      "reden_03_12_2009_696.json",
      "reden_03_12_2013_473.json",
      "reden_03_12_2014_423.json",
      "reden_03_12_2015_357.json",
      "reden_03_12_2018_62.json",
      "reden_04_02_2013_527.json",
      "reden_04_02_2015_413.json",
      "reden_04_02_2016_347.json",
      "reden_04_03_2011_623.json",
      "reden_04_05_2007_819.json",
      "reden_04_05_2009_731.json",
      "reden_04_05_2010_682.json",
      "reden_04_05_2015_404.json",
      "reden_04_05_2017_234.json",
      "reden_04_05_2017_235.json",
      "reden_04_05_2018_100.json",
      "reden_04_05_2018_101.json",
      "reden_04_05_2018_102.json",
      "reden_04_07_2012_555.json",
      "reden_04_09_2009_718.json",
      "reden_04_09_2009_719.json",
      "reden_04_09_2014_446.json",
      "reden_04_10_2011_587.json",
      "reden_04_11_2008_757.json",
      "reden_04_11_2014_438.json",
      "reden_04_11_2019_968.json",
      "reden_04_11_2019_969.json",
      "reden_04_12_2012_535.json",
      "reden_04_12_2015_356.json",
      "reden_04_12_2019_955.json",
      "reden_04_12_2019_956.json",
      "reden_05_02_2018_143.json",
      "reden_05_03_2006_850.json",
      "reden_05_03_2018_124.json",
      "reden_05_03_2018_125.json",
      "reden_05_03_2018_126.json",
      "reden_05_04_2011_617.json",
      "reden_05_04_2018_116.json",
      "reden_05_05_2006_841.json",
      "reden_05_05_2006_842.json",
      "reden_05_05_2006_843.json",
      "reden_05_05_2010_681.json",
      "reden_05_05_2015_403.json",
      "reden_05_06_2009_726.json",
      "reden_05_06_2018_97.json",
      "reden_05_07_2012_554.json",
      "reden_05_07_2018_92.json",
      "reden_05_09_2011_595.json",
      "reden_05_09_2013_498.json",
      "reden_05_09_2016_311.json",
      "reden_05_09_2019_992.json",
      "reden_05_10_2010_663.json",
      "reden_05_11_2010_653.json",
      "reden_05_11_2018_76.json",
      "reden_05_12_2002_1.json",
      "reden_05_12_2002_2.json",
      "reden_05_12_2002_3.json",
      "reden_05_12_2002_4.json",
      "reden_05_12_2002_5.json",
      "reden_05_12_2002_6.json",
      "reden_05_12_2002_7.json",
      "reden_05_12_2002_8.json",
      "reden_05_12_2002_9.json",
      "reden_05_12_2002_10.json",
      "reden_05_12_2002_11.json",
      "reden_05_12_2002_12.json",
      "reden_05_12_2002_13.json",
      "reden_05_12_2002_14.json",
      "reden_05_12_2002_15.json",
      "reden_05_12_2016_284.json",
      "reden_05_12_2017_155.json",
      "reden_05_12_2019_953.json",
      "reden_05_12_2019_954.json",
      "reden_06_02_2007_828.json",
      "reden_06_02_2014_467.json",
      "reden_06_02_2017_266.json",
      "reden_06_02_2018_141.json",
      "reden_06_02_2018_142.json",
      "reden_06_03_2017_257.json",
      "reden_06_04_2017_241.json",
      "reden_06_05_2019_38.json",
      "reden_06_05_2019_39.json",
      "reden_06_06_2005_865.json",
      "reden_06_06_2007_812.json",
      "reden_06_06_2008_770.json",
      "reden_06_06_2018_96.json",
      "reden_06_07_2006_837.json",
      "reden_06_07_2017_206.json",
      "reden_06_09_2011_592.json",
      "reden_06_09_2011_593.json",
      "reden_06_09_2011_594.json",
      "reden_06_11_2013_487.json",
      "reden_06_12_2012_534.json",
      "reden_07_02_2011_631.json",
      "reden_07_02_2017_265.json",
      "reden_07_02_2019_52.json",
      "reden_07_02_2019_53.json",
      "reden_07_03_2008_785.json",
      "reden_07_03_2017_256.json",
      "reden_07_03_2018_123.json",
      "reden_07_04_2008_782.json",
      "reden_07_04_2014_459.json",
      "reden_07_05_2007_818.json",
      "reden_07_06_2005_864.json",
      "reden_07_06_2017_215.json",
      "reden_07_09_2015_385.json",
      "reden_07_09_2016_310.json",
      "reden_07_09_2017_195.json",
      "reden_07_09_2017_196.json",
      "reden_07_11_2014_437.json",
      "reden_07_12_2016_283.json",
      "reden_07_12_2018_60.json",
      "reden_07_12_2018_61.json",
      "reden_08_01_2009_747.json",
      "reden_08_02_2012_564.json",
      "reden_08_02_2018_138.json",
      "reden_08_02_2018_139.json",
      "reden_08_02_2018_140.json",
      "reden_08_02_2019_50.json",
      "reden_08_02_2019_51.json",
      "reden_08_03_2006_849.json",
      "reden_08_03_2011_622.json",
      "reden_08_03_2018_122.json",
      "reden_08_04_2014_458.json",
      "reden_08_04_2016_337.json",
      "reden_08_05_2019_37.json",
      "reden_08_06_2005_862.json",
      "reden_08_06_2005_863.json",
      "reden_08_06_2009_725.json",
      "reden_08_06_2016_323.json",
      "reden_08_06_2016_324.json",
      "reden_08_07_2009_720.json",
      "reden_08_07_2015_390.json",
      "reden_08_07_2017_205.json",
      "reden_08_09_2009_717.json",
      "reden_08_09_2010_670.json",
      "reden_08_09_2017_194.json",
      "reden_08_10_2012_546.json",
      "reden_08_10_2013_493.json",
      "reden_08_10_2019_981.json",
      "reden_08_11_2010_652.json",
      "reden_08_11_2011_582.json",
      "reden_08_11_2017_176.json",
      "reden_08_12_2005_854.json",
      "reden_08_12_2006_832.json",
      "reden_09_03_2005_872.json",
      "reden_09_03_2006_848.json",
      "reden_09_03_2007_825.json",
      "reden_09_03_2010_690.json",
      "reden_09_03_2011_621.json",
      "reden_09_03_2015_409.json",
      "reden_09_03_2017_255.json",
      "reden_09_05_2007_817.json",
      "reden_09_06_2010_674.json",
      "reden_09_07_2013_505.json",
      "reden_09_07_2014_450.json",
      "reden_09_07_2015_389.json",
      "reden_09_07_2019_24.json",
      "reden_09_09_2014_445.json",
      "reden_09_10_2008_758.json",
      "reden_09_10_2014_442.json",
      "reden_09_11_2005_857.json",
      "reden_09_11_2007_798.json",
      "reden_09_11_2007_799.json",
      "reden_09_11_2012_543.json",
      "reden_09_11_2016_296.json",
      "reden_09_11_2016_297.json",
      "reden_09_11_2017_175.json",
      "reden_09_11_2018_75.json",
      "reden_09_12_2009_695.json",
      "reden_10_01_2006_853.json",
      "reden_10_02_2009_744.json",
      "reden_10_02_2011_628.json",
      "reden_10_02_2011_629.json",
      "reden_10_02_2011_630.json",
      "reden_10_02_2017_264.json",
      "reden_10_03_2009_740.json",
      "reden_10_03_2010_688.json",
      "reden_10_03_2010_689.json",
      "reden_10_03_2011_620.json",
      "reden_10_03_2016_340.json",
      "reden_10_04_2018_115.json",
      "reden_10_05_2016_330.json",
      "reden_10_05_2017_233.json",
      "reden_10_06_2008_769.json",
      "reden_10_06_2009_724.json",
      "reden_10_06_2013_514.json",
      "reden_10_06_2013_515.json",
      "reden_10_06_2016_322.json",
      "reden_10_07_2002_1.json",
      "reden_10_07_2002_2.json",
      "reden_10_07_2002_3.json",
      "reden_10_07_2002_4.json",
      "reden_10_07_2002_5.json",
      "reden_10_07_2019_23.json",
      "reden_10_09_2008_764.json",
      "reden_10_09_2019_989.json",
      "reden_10_09_2019_990.json",
      "reden_10_09_2019_991.json",
      "reden_10_10_2012_544.json",
      "reden_10_10_2012_545.json",
      "reden_10_10_2016_304.json",
      "reden_10_11_2005_856.json",
      "reden_10_11_2011_581.json",
      "reden_10_11_2016_293.json",
      "reden_10_11_2016_294.json",
      "reden_10_11_2016_295.json",
      "reden_10_11_2017_174.json",
      "reden_10_12_2008_749.json",
      "reden_11_01_2011_640.json",
      "reden_11_02_2009_743.json",
      "reden_11_02_2013_525.json",
      "reden_11_02_2013_526.json",
      "reden_11_02_2014_466.json",
      "reden_11_02_2016_346.json",
      "reden_11_03_2008_784.json",
      "reden_11_04_2011_616.json",
      "reden_11_04_2018_113.json",
      "reden_11_04_2018_114.json",
      "reden_11_05_2006_840.json",
      "reden_11_05_2016_328.json",
      "reden_11_05_2016_329.json",
      "reden_11_05_2017_232.json",
      "reden_11_06_2014_453.json",
      "reden_11_06_2015_399.json",
      "reden_11_06_2016_321.json",
      "reden_11_07_2011_598.json",
      "reden_11_07_2013_504.json",
      "reden_11_09_2012_552.json",
      "reden_11_09_2015_384.json",
      "reden_11_09_2018_83.json",
      "reden_11_10_2007_805.json",
      "reden_11_10_2017_183.json",
      "reden_11_10_2017_184.json",
      "reden_11_11_2008_756.json",
      "reden_11_11_2009_705.json",
      "reden_11_11_2013_486.json",
      "reden_11_11_2015_370.json",
      "reden_11_11_2015_371.json",
      "reden_11_11_2019_967.json",
      "reden_11_12_2008_748.json",
      "reden_12_01_2018_152.json",
      "reden_12_02_2015_411.json",
      "reden_12_02_2015_412.json",
      "reden_12_02_2019_49.json",
      "reden_12_03_2010_687.json",
      "reden_12_03_2015_408.json",
      "reden_12_04_2018_110.json",
      "reden_12_04_2018_111.json",
      "reden_12_04_2018_112.json",
      "reden_12_05_2009_730.json",
      "reden_12_05_2011_609.json",
      "reden_12_05_2011_610.json",
      "reden_12_06_2008_768.json",
      "reden_12_06_2012_557.json",
      "reden_12_06_2014_452.json",
      "reden_12_07_2018_91.json",
      "reden_12_10_2007_804.json",
      "reden_12_10_2010_661.json",
      "reden_12_10_2010_662.json",
      "reden_12_11_2014_436.json",
      "reden_12_11_2015_369.json",
      "reden_12_11_2019_966.json",
      "reden_12_12_2000_1.json",
      "reden_12_12_2000_2.json",
      "reden_12_12_2000_3.json",
      "reden_12_12_2000_4.json",
      "reden_12_12_2000_5.json",
      "reden_12_12_2000_6.json",
      "reden_12_12_2000_7.json",
      "reden_12_12_2000_8.json",
      "reden_12_12_2000_9.json",
      "reden_12_12_2000_10.json",
      "reden_12_12_2000_11.json",
      "reden_12_12_2000_12.json",
      "reden_12_12_2000_13.json",
      "reden_12_12_2000_14.json",
      "reden_12_12_2000_15.json",
      "reden_12_12_2000_16.json",
      "reden_12_12_2000_17.json",
      "reden_12_12_2000_18.json",
      "reden_12_12_2000_19.json",
      "reden_12_12_2000_20.json",
      "reden_12_12_2012_533.json",
      "reden_13_01_2015_421.json",
      "reden_13_01_2015_422.json",
      "reden_13_03_2002_1.json",
      "reden_13_03_2002_2.json",
      "reden_13_03_2002_3.json",
      "reden_13_03_2002_4.json",
      "reden_13_03_2002_5.json",
      "reden_13_03_2002_6.json",
      "reden_13_03_2002_7.json",
      "reden_13_03_2007_824.json",
      "reden_13_04_2011_614.json",
      "reden_13_04_2011_615.json",
      "reden_13_04_2016_336.json",
      "reden_13_05_2009_729.json",
      "reden_13_05_2015_402.json",
      "reden_13_06_2000_1.json",
      "reden_13_06_2000_2.json",
      "reden_13_06_2000_3.json",
      "reden_13_06_2000_4.json",
      "reden_13_06_2000_5.json",
      "reden_13_06_2000_6.json",
      "reden_13_06_2000_7.json",
      "reden_13_06_2000_8.json",
      "reden_13_06_2000_9.json",
      "reden_13_06_2008_767.json",
      "reden_13_06_2013_513.json",
      "reden_13_06_2016_319.json",
      "reden_13_06_2016_320.json",
      "reden_13_06_2017_214.json",
      "reden_13_06_2019_28.json",
      "reden_13_07_2016_315.json",
      "reden_13_07_2017_204.json",
      "reden_13_09_2011_590.json",
      "reden_13_09_2011_591.json",
      "reden_13_09_2019_988.json",
      "reden_13_10_2014_441.json",
      "reden_13_10_2015_375.json",
      "reden_13_10_2016_303.json",
      "reden_13_11_2008_755.json",
      "reden_13_11_2013_485.json",
      "reden_13_11_2017_173.json",
      "reden_13_11_2018_74.json",
      "reden_13_12_2004_1.json",
      "reden_13_12_2004_2.json",
      "reden_13_12_2004_3.json",
      "reden_13_12_2004_4.json",
      "reden_13_12_2004_5.json",
      "reden_13_12_2004_6.json",
      "reden_13_12_2004_7.json",
      "reden_13_12_2004_8.json",
      "reden_13_12_2004_9.json",
      "reden_13_12_2004_10.json",
      "reden_13_12_2004_11.json",
      "reden_13_12_2004_12.json",
      "reden_13_12_2004_13.json",
      "reden_13_12_2004_14.json",
      "reden_13_12_2004_15.json",
      "reden_13_12_2004_16.json",
      "reden_13_12_2006_831.json",
      "reden_13_12_2007_795.json",
      "reden_13_12_2018_59.json",
      "reden_14_01_2011_639.json",
      "reden_14_01_2016_355.json",
      "reden_14_02_2008_789.json",
      "reden_14_02_2014_465.json",
      "reden_14_02_2018_135.json",
      "reden_14_02_2018_136.json",
      "reden_14_02_2018_137.json",
      "reden_14_02_2019_48.json",
      "reden_14_03_2006_847.json",
      "reden_14_03_2012_562.json",
      "reden_14_04_2005_871.json",
      "reden_14_04_2011_613.json",
      "reden_14_05_2010_680.json",
      "reden_14_05_2014_457.json",
      "reden_14_06_2007_810.json",
      "reden_14_06_2007_811.json",
      "reden_14_06_2012_556.json",
      "reden_14_06_2017_213.json",
      "reden_14_07_2016_314.json",
      "reden_14_08_2008_765.json",
      "reden_14_08_2017_202.json",
      "reden_14_09_2010_669.json",
      "reden_14_09_2017_193.json",
      "reden_14_10_2010_660.json",
      "reden_14_10_2019_980.json",
      "reden_14_11_2011_580.json",
      "reden_14_11_2012_541.json",
      "reden_14_11_2012_542.json",
      "reden_14_11_2013_481.json",
      "reden_14_11_2013_482.json",
      "reden_14_11_2013_483.json",
      "reden_14_11_2013_484.json",
      "reden_14_11_2017_172.json",
      "reden_14_11_2018_70.json",
      "reden_14_11_2018_71.json",
      "reden_14_11_2018_72.json",
      "reden_14_11_2018_73.json",
      "reden_14_12_2011_572.json",
      "reden_14_12_2017_154.json",
      "reden_14_12_2018_58.json",
      "reden_15_01_2008_794.json",
      "reden_15_01_2014_472.json",
      "reden_15_01_2018_151.json",
      "reden_15_01_2019_56.json",
      "reden_15_01_2019_57.json",
      "reden_15_02_2018_133.json",
      "reden_15_02_2018_134.json",
      "reden_15_03_2007_823.json",
      "reden_15_03_2017_253.json",
      "reden_15_03_2017_254.json",
      "reden_15_03_2018_121.json",
      "reden_15_04_2003_1.json",
      "reden_15_04_2003_2.json",
      "reden_15_04_2003_3.json",
      "reden_15_04_2003_4.json",
      "reden_15_04_2003_5.json",
      "reden_15_04_2003_6.json",
      "reden_15_04_2003_7.json",
      "reden_15_04_2008_781.json",
      "reden_15_04_2009_734.json",
      "reden_15_05_2013_520.json",
      "reden_15_05_2017_231.json",
      "reden_15_05_2019_36.json",
      "reden_15_06_2015_397.json",
      "reden_15_06_2015_398.json",
      "reden_15_06_2016_318.json",
      "reden_15_07_2015_388.json",
      "reden_15_08_2017_201.json",
      "reden_15_09_2015_383.json",
      "reden_15_09_2016_309.json",
      "reden_15_10_2009_711.json",
      "reden_15_10_2015_374.json",
      "reden_15_11_2010_650.json",
      "reden_15_11_2010_651.json",
      "reden_15_11_2011_579.json",
      "reden_15_11_2016_292.json",
      "reden_15_11_2017_170.json",
      "reden_15_11_2017_171.json",
      "reden_15_11_2018_69.json",
      "reden_16_01_2008_793.json",
      "reden_16_01_2014_470.json",
      "reden_16_01_2014_471.json",
      "reden_16_01_2015_420.json",
      "reden_16_01_2017_277.json",
      "reden_16_01_2018_150.json",
      "reden_16_02_2017_263.json",
      "reden_16_03_2017_252.json",
      "reden_16_04_2018_109.json",
      "reden_16_05_2007_816.json",
      "reden_16_05_2008_775.json",
      "reden_16_05_2019_34.json",
      "reden_16_05_2019_35.json",
      "reden_16_06_2005_861.json",
      "reden_16_06_2009_723.json",
      "reden_16_07_2003_1.json",
      "reden_16_07_2003_2.json",
      "reden_16_07_2003_3.json",
      "reden_16_07_2003_4.json",
      "reden_16_07_2003_5.json",
      "reden_16_07_2003_6.json",
      "reden_16_07_2003_7.json",
      "reden_16_07_2003_8.json",
      "reden_16_07_2003_9.json",
      "reden_16_09_2008_763.json",
      "reden_16_09_2010_668.json",
      "reden_16_09_2012_551.json",
      "reden_16_09_2015_382.json",
      "reden_16_10_2009_710.json",
      "reden_16_10_2019_978.json",
      "reden_16_10_2019_979.json",
      "reden_16_11_2009_702.json",
      "reden_16_11_2009_703.json",
      "reden_16_11_2009_704.json",
      "reden_16_11_2010_649.json",
      "reden_16_11_2011_577.json",
      "reden_16_11_2011_578.json",
      "reden_16_11_2016_289.json",
      "reden_16_11_2016_290.json",
      "reden_16_11_2016_291.json",
      "reden_16_11_2018_68.json",
      "reden_16_12_2016_280.json",
      "reden_16_12_2016_281.json",
      "reden_16_12_2016_282.json",
      "reden_17_01_2005_877.json",
      "reden_17_01_2012_570.json",
      "reden_17_01_2013_532.json",
      "reden_17_02_2009_742.json",
      "reden_17_02_2016_345.json",
      "reden_17_03_2006_846.json",
      "reden_17_03_2009_739.json",
      "reden_17_03_2014_462.json",
      "reden_17_04_2008_780.json",
      "reden_17_04_2018_108.json",
      "reden_17_05_2011_608.json",
      "reden_17_05_2017_227.json",
      "reden_17_05_2017_228.json",
      "reden_17_05_2017_229.json",
      "reden_17_05_2017_230.json",
      "reden_17_06_2010_673.json",
      "reden_17_06_2011_601.json",
      "reden_17_06_2019_27.json",
      "reden_17_08_2019_22.json",
      "reden_17_09_2008_761.json",
      "reden_17_09_2008_762.json",
      "reden_17_09_2010_667.json",
      "reden_17_10_2013_492.json",
      "reden_17_10_2014_440.json",
      "reden_17_10_2016_302.json",
      "reden_17_10_2018_77.json",
      "reden_17_10_2018_78.json",
      "reden_17_10_2019_976.json",
      "reden_17_10_2019_977.json",
      "reden_17_11_2008_753.json",
      "reden_17_11_2008_754.json",
      "reden_17_11_2009_701.json",
      "reden_17_11_2010_648.json",
      "reden_17_11_2014_435.json",
      "reden_17_11_2015_368.json",
      "reden_17_11_2017_167.json",
      "reden_17_11_2017_168.json",
      "reden_17_11_2017_169.json",
      "reden_17_12_2001_1.json",
      "reden_17_12_2001_2.json",
      "reden_17_12_2001_3.json",
      "reden_17_12_2001_4.json",
      "reden_17_12_2001_5.json",
      "reden_17_12_2001_6.json",
      "reden_17_12_2001_7.json",
      "reden_17_12_2001_8.json",
      "reden_17_12_2001_9.json",
      "reden_17_12_2001_10.json",
      "reden_17_12_2010_641.json",
      "reden_18_01_2006_852.json",
      "reden_18_01_2011_638.json",
      "reden_18_01_2012_569.json",
      "reden_18_01_2016_353.json",
      "reden_18_01_2016_354.json",
      "reden_18_02_2008_788.json",
      "reden_18_02_2013_524.json",
      "reden_18_02_2014_464.json",
      "reden_18_03_2013_522.json",
      "reden_18_03_2015_407.json",
      "reden_18_04_2007_821.json",
      "reden_18_04_2008_779.json",
      "reden_18_05_2010_679.json",
      "reden_18_05_2017_224.json",
      "reden_18_05_2017_225.json",
      "reden_18_05_2017_226.json",
      "reden_18_05_2018_99.json",
      "reden_18_06_2013_512.json",
      "reden_18_06_2015_396.json",
      "reden_18_07_2014_449.json",
      "reden_18_09_2012_550.json",
      "reden_18_09_2015_381.json",
      "reden_18_09_2017_192.json",
      "reden_18_09_2018_82.json",
      "reden_18_09_2019_987.json",
      "reden_18_11_2005_855.json",
      "reden_18_11_2008_752.json",
      "reden_18_11_2011_576.json",
      "reden_18_11_2014_434.json",
      "reden_18_11_2015_367.json",
      "reden_18_11_2016_288.json",
      "reden_18_11_2019_965.json",
      "reden_19_01_2007_830.json",
      "reden_19_01_2011_637.json",
      "reden_19_01_2018_149.json",
      "reden_19_02_2019_47.json",
      "reden_19_03_2009_738.json",
      "reden_19_03_2019_44.json",
      "reden_19_05_2010_678.json",
      "reden_19_05_2014_455.json",
      "reden_19_05_2014_456.json",
      "reden_19_06_2017_211.json",
      "reden_19_06_2017_212.json",
      "reden_19_08_2013_503.json",
      "reden_19_09_2009_716.json",
      "reden_19_09_2013_497.json",
      "reden_19_09_2018_81.json",
      "reden_19_10_2010_659.json",
      "reden_19_10_2011_586.json",
      "reden_19_10_2015_373.json",
      "reden_19_10_2016_301.json",
      "reden_19_10_2017_182.json",
      "reden_19_11_2007_797.json",
      "reden_19_11_2012_539.json",
      "reden_19_11_2012_540.json",
      "reden_19_11_2013_480.json",
      "reden_19_11_2014_433.json",
      "reden_19_11_2015_366.json",
      "reden_19_11_2018_66.json",
      "reden_19_11_2018_67.json",
      "reden_19_11_2019_964.json",
      "reden_19_12_2017_153.json",
      "reden_20_01_2010_694.json",
      "reden_20_02_2006_851.json",
      "reden_20_02_2018_132.json",
      "reden_20_03_2009_737.json",
      "reden_20_03_2017_250.json",
      "reden_20_03_2017_251.json",
      "reden_20_03_2018_120.json",
      "reden_20_04_2016_335.json",
      "reden_20_04_2017_240.json",
      "reden_20_04_2018_107.json",
      "reden_20_05_2011_607.json",
      "reden_20_06_2011_600.json",
      "reden_20_06_2013_511.json",
      "reden_20_06_2018_95.json",
      "reden_20_08_2018_90.json",
      "reden_20_09_2012_549.json",
      "reden_20_09_2017_189.json",
      "reden_20_09_2017_190.json",
      "reden_20_09_2017_191.json",
      "reden_20_09_2018_80.json",
      "reden_20_10_2011_584.json",
      "reden_20_10_2011_585.json",
      "reden_20_11_2013_479.json",
      "reden_20_11_2014_432.json",
      "reden_20_11_2015_365.json",
      "reden_20_11_2018_65.json",
      "reden_20_11_2019_963.json",
      "reden_20_12_2011_571.json",
      "reden_21_01_2010_693.json",
      "reden_21_01_2013_531.json",
      "reden_21_02_2011_627.json",
      "reden_21_02_2018_131.json",
      "reden_21_04_2008_778.json",
      "reden_21_04_2016_334.json",
      "reden_21_05_2012_558.json",
      "reden_21_06_2017_209.json",
      "reden_21_06_2017_210.json",
      "reden_21_06_2018_93.json",
      "reden_21_06_2018_94.json",
      "reden_21_06_2019_25.json",
      "reden_21_06_2019_26.json",
      "reden_21_07_2017_203.json",
      "reden_21_08_2017_200.json",
      "reden_21_09_2007_807.json",
      "reden_21_09_2015_380.json",
      "reden_21_09_2017_188.json",
      "reden_21_11_2008_751.json",
      "reden_21_11_2012_538.json",
      "reden_21_11_2013_478.json",
      "reden_21_11_2014_431.json",
      "reden_21_11_2017_165.json",
      "reden_21_11_2017_166.json",
      "reden_21_11_2019_962.json",
      "reden_22_01_2016_352.json",
      "reden_22_02_2017_262.json",
      "reden_22_03_2010_686.json",
      "reden_22_03_2011_619.json",
      "reden_22_03_2017_249.json",
      "reden_22_04_2008_777.json",
      "reden_22_05_2008_774.json",
      "reden_22_05_2014_454.json",
      "reden_22_05_2015_401.json",
      "reden_22_05_2017_222.json",
      "reden_22_05_2017_223.json",
      "reden_22_06_2015_395.json",
      "reden_22_08_2012_553.json",
      "reden_22_09_2010_666.json",
      "reden_22_09_2011_589.json",
      "reden_22_09_2016_308.json",
      "reden_22_09_2017_187.json",
      "reden_22_10_2009_709.json",
      "reden_22_11_2010_647.json",
      "reden_22_11_2011_574.json",
      "reden_22_11_2011_575.json",
      "reden_22_11_2013_477.json",
      "reden_22_11_2015_364.json",
      "reden_22_11_2016_286.json",
      "reden_22_11_2016_287.json",
      "reden_22_11_2017_163.json",
      "reden_22_11_2017_164.json",
      "reden_22_11_2018_64.json",
      "reden_22_11_2019_958.json",
      "reden_22_11_2019_959.json",
      "reden_22_11_2019_960.json",
      "reden_22_11_2019_961.json",
      "reden_22_12_2016_279.json",
      "reden_23_01_2012_567.json",
      "reden_23_02_2005_873.json",
      "reden_23_02_2009_741.json",
      "reden_23_02_2011_626.json",
      "reden_23_02_2016_343.json",
      "reden_23_02_2016_344.json",
      "reden_23_02_2017_260.json",
      "reden_23_02_2017_261.json",
      "reden_23_03_2009_736.json",
      "reden_23_03_2011_618.json",
      "reden_23_03_2016_339.json",
      "reden_23_04_2005_870.json",
      "reden_23_04_2018_106.json",
      "reden_23_05_2006_839.json",
      "reden_23_05_2007_815.json",
      "reden_23_05_2011_605.json",
      "reden_23_05_2011_606.json",
      "reden_23_05_2013_518.json",
      "reden_23_05_2013_519.json",
      "reden_23_05_2017_221.json",
      "reden_23_05_2019_33.json",
      "reden_23_06_2006_838.json",
      "reden_23_06_2009_722.json",
      "reden_23_06_2016_317.json",
      "reden_23_07_2014_448.json",
      "reden_23_07_2015_387.json",
      "reden_23_08_2018_89.json",
      "reden_23_09_2015_379.json",
      "reden_23_09_2019_986.json",
      "reden_23_10_2013_491.json",
      "reden_23_10_2017_181.json",
      "reden_23_10_2019_975.json",
      "reden_23_11_2015_363.json",
      "reden_23_11_2017_161.json",
      "reden_23_11_2017_162.json",
      "reden_23_12_2016_278.json",
      "reden_24_01_2012_566.json",
      "reden_24_01_2013_530.json",
      "reden_24_01_2018_148.json",
      "reden_24_01_2019_55.json",
      "reden_24_02_2011_625.json",
      "reden_24_02_2016_342.json",
      "reden_24_02_2017_259.json",
      "reden_24_03_2016_338.json",
      "reden_24_04_2013_521.json",
      "reden_24_04_2017_239.json",
      "reden_24_04_2018_104.json",
      "reden_24_04_2018_105.json",
      "reden_24_05_2013_517.json",
      "reden_24_05_2017_220.json",
      "reden_24_05_2019_32.json",
      "reden_24_07_2014_447.json",
      "reden_24_08_2011_597.json",
      "reden_24_09_2009_714.json",
      "reden_24_09_2009_715.json",
      "reden_24_09_2018_79.json",
      "reden_24_10_2001_1.json",
      "reden_24_10_2001_2.json",
      "reden_24_10_2001_3.json",
      "reden_24_10_2001_4.json",
      "reden_24_10_2001_5.json",
      "reden_24_10_2001_6.json",
      "reden_24_10_2001_7.json",
      "reden_24_10_2001_8.json",
      "reden_24_10_2001_9.json",
      "reden_24_10_2001_10.json",
      "reden_24_10_2001_11.json",
      "reden_24_10_2001_12.json",
      "reden_24_10_2001_13.json",
      "reden_24_10_2001_14.json",
      "reden_24_10_2001_15.json",
      "reden_24_10_2013_490.json",
      "reden_24_10_2016_300.json",
      "reden_24_10_2019_974.json",
      "reden_24_11_2010_646.json",
      "reden_24_11_2011_573.json",
      "reden_24_11_2014_430.json",
      "reden_24_11_2015_361.json",
      "reden_24_11_2015_362.json",
      "reden_25_01_2007_829.json",
      "reden_25_01_2015_419.json",
      "reden_25_01_2016_351.json",
      "reden_25_01_2017_275.json",
      "reden_25_01_2017_276.json",
      "reden_25_01_2018_147.json",
      "reden_25_02_2008_787.json",
      "reden_25_02_2013_523.json",
      "reden_25_02_2019_46.json",
      "reden_25_03_2015_406.json",
      "reden_25_03_2017_248.json",
      "reden_25_04_2008_776.json",
      "reden_25_04_2010_685.json",
      "reden_25_04_2017_236.json",
      "reden_25_04_2017_237.json",
      "reden_25_04_2017_238.json",
      "reden_25_05_2009_728.json",
      "reden_25_05_2017_219.json",
      "reden_25_05_2018_98.json",
      "reden_25_06_2008_766.json",
      "reden_25_06_2013_510.json",
      "reden_25_06_2015_393.json",
      "reden_25_06_2015_394.json",
      "reden_25_08_2018_88.json",
      "reden_25_09_2008_760.json",
      "reden_25_09_2013_496.json",
      "reden_25_09_2017_186.json",
      "reden_25_10_2005_859.json",
      "reden_25_10_2010_658.json",
      "reden_25_11_2009_700.json",
      "reden_25_11_2010_644.json",
      "reden_25_11_2010_645.json",
      "reden_25_11_2013_476.json",
      "reden_25_11_2014_428.json",
      "reden_25_11_2014_429.json",
      "reden_25_11_2015_359.json",
      "reden_25_11_2015_360.json",
      "reden_26_01_2005_874.json",
      "reden_26_01_2005_875.json",
      "reden_26_01_2005_876.json",
      "reden_26_01_2009_746.json",
      "reden_26_01_2010_692.json",
      "reden_26_01_2011_636.json",
      "reden_26_01_2015_417.json",
      "reden_26_01_2015_418.json",
      "reden_26_01_2017_271.json",
      "reden_26_01_2017_272.json",
      "reden_26_01_2017_273.json",
      "reden_26_01_2017_274.json",
      "reden_26_02_2015_410.json",
      "reden_26_02_2018_130.json",
      "reden_26_03_2004_1.json",
      "reden_26_03_2004_2.json",
      "reden_26_03_2004_3.json",
      "reden_26_03_2004_4.json",
      "reden_26_03_2004_5.json",
      "reden_26_03_2004_6.json",
      "reden_26_03_2004_7.json",
      "reden_26_03_2004_8.json",
      "reden_26_03_2014_461.json",
      "reden_26_03_2018_119.json",
      "reden_26_04_2010_684.json",
      "reden_26_04_2012_560.json",
      "reden_26_04_2016_333.json",
      "reden_26_05_2011_603.json",
      "reden_26_05_2011_604.json",
      "reden_26_08_2013_502.json",
      "reden_26_09_2006_836.json",
      "reden_26_09_2007_806.json",
      "reden_26_09_2008_759.json",
      "reden_26_09_2011_588.json",
      "reden_26_09_2013_495.json",
      "reden_26_09_2019_985.json",
      "reden_26_10_2005_858.json",
      "reden_26_10_2006_834.json",
      "reden_26_10_2013_489.json",
      "reden_26_10_2014_439.json",
      "reden_26_10_2015_372.json",
      "reden_26_11_2008_750.json",
      "reden_26_11_2009_698.json",
      "reden_26_11_2009_699.json",
      "reden_26_11_2013_475.json",
      "reden_27_01_2011_634.json",
      "reden_27_01_2011_635.json",
      "reden_27_01_2014_469.json",
      "reden_27_01_2016_350.json",
      "reden_27_02_2008_786.json",
      "reden_27_02_2014_463.json",
      "reden_27_02_2018_128.json",
      "reden_27_02_2018_129.json",
      "reden_27_02_2019_45.json",
      "reden_27_05_2010_677.json",
      "reden_27_05_2011_602.json",
      "reden_27_06_2001_1.json",
      "reden_27_06_2001_2.json",
      "reden_27_06_2001_3.json",
      "reden_27_06_2001_4.json",
      "reden_27_06_2001_5.json",
      "reden_27_06_2001_6.json",
      "reden_27_06_2001_7.json",
      "reden_27_06_2001_8.json",
      "reden_27_06_2001_9.json",
      "reden_27_06_2001_10.json",
      "reden_27_06_2001_11.json",
      "reden_27_06_2001_12.json",
      "reden_27_06_2001_13.json",
      "reden_27_06_2001_14.json",
      "reden_27_06_2001_15.json",
      "reden_27_06_2001_16.json",
      "reden_27_06_2001_17.json",
      "reden_27_06_2001_18.json",
      "reden_27_06_2001_19.json",
      "reden_27_06_2001_20.json",
      "reden_27_06_2001_21.json",
      "reden_27_06_2001_22.json",
      "reden_27_06_2001_23.json",
      "reden_27_06_2001_24.json",
      "reden_27_06_2001_25.json",
      "reden_27_06_2001_26.json",
      "reden_27_06_2013_508.json",
      "reden_27_06_2013_509.json",
      "reden_27_09_2012_548.json",
      "reden_27_09_2016_307.json",
      "reden_27_09_2019_984.json",
      "reden_27_10_2011_583.json",
      "reden_27_10_2016_299.json",
      "reden_27_10_2017_180.json",
      "reden_27_11_2014_427.json",
      "reden_28_01_2009_745.json",
      "reden_28_01_2014_468.json",
      "reden_28_01_2015_414.json",
      "reden_28_01_2015_415.json",
      "reden_28_01_2015_416.json",
      "reden_28_01_2016_348.json",
      "reden_28_01_2016_349.json",
      "reden_28_02_2007_826.json",
      "reden_28_02_2007_827.json",
      "reden_28_02_2012_563.json",
      "reden_28_02_2018_127.json",
      "reden_28_03_2007_822.json",
      "reden_28_03_2008_783.json",
      "reden_28_03_2014_460.json",
      "reden_28_03_2017_247.json",
      "reden_28_03_2018_118.json",
      "reden_28_04_2005_869.json",
      "reden_28_04_2006_844.json",
      "reden_28_04_2010_683.json",
      "reden_28_04_2012_559.json",
      "reden_28_04_2015_405.json",
      "reden_28_05_2005_868.json",
      "reden_28_05_2009_727.json",
      "reden_28_05_2010_676.json",
      "reden_28_05_2013_516.json",
      "reden_28_06_2007_809.json",
      "reden_28_06_2010_672.json",
      "reden_28_08_2017_199.json",
      "reden_28_10_2003_1.json",
      "reden_28_10_2003_2.json",
      "reden_28_10_2003_3.json",
      "reden_28_10_2003_4.json",
      "reden_28_10_2003_5.json",
      "reden_28_10_2003_6.json",
      "reden_28_10_2003_7.json",
      "reden_28_10_2003_8.json",
      "reden_28_10_2003_9.json",
      "reden_28_10_2003_10.json",
      "reden_28_10_2010_655.json",
      "reden_28_10_2010_656.json",
      "reden_28_10_2010_657.json",
      "reden_28_11_2013_474.json",
      "reden_28_11_2014_426.json",
      "reden_28_11_2017_160.json",
      "reden_28_11_2018_63.json",
      "reden_28_11_2019_957.json",
      "reden_29_01_2018_146.json",
      "reden_29_03_1999_1.json",
      "reden_29_03_1999_2.json",
      "reden_29_03_1999_3.json",
      "reden_29_03_1999_4.json",
      "reden_29_03_1999_5.json",
      "reden_29_03_1999_6.json",
      "reden_29_03_1999_7.json",
      "reden_29_03_1999_8.json",
      "reden_29_03_1999_9.json",
      "reden_29_03_2012_561.json",
      "reden_29_03_2018_117.json",
      "reden_29_04_2009_733.json",
      "reden_29_04_2016_332.json",
      "reden_29_05_2007_814.json",
      "reden_29_05_2017_218.json",
      "reden_29_05_2019_30.json",
      "reden_29_05_2019_31.json",
      "reden_29_06_2011_599.json",
      "reden_29_06_2017_207.json",
      "reden_29_06_2017_208.json",
      "reden_29_08_2013_500.json",
      "reden_29_08_2013_501.json",
      "reden_29_08_2016_312.json",
      "reden_29_08_2016_313.json",
      "reden_29_08_2017_198.json",
      "reden_29_08_2019_20.json",
      "reden_29_08_2019_21.json",
      "reden_29_09_2006_835.json",
      "reden_29_09_2010_664.json",
      "reden_29_09_2010_665.json",
      "reden_29_09_2014_444.json",
      "reden_29_09_2015_378.json",
      "reden_29_09_2016_306.json",
      "reden_29_10_2009_708.json",
      "reden_29_10_2019_972.json",
      "reden_29_10_2019_973.json",
      "reden_29_11_2007_796.json",
      "reden_29_11_2012_536.json",
      "reden_29_11_2012_537.json",
      "reden_29_11_2017_157.json",
      "reden_29_11_2017_158.json",
      "reden_29_11_2017_159.json",
      "reden_30_01_2008_792.json",
      "reden_30_01_2013_528.json",
      "reden_30_01_2013_529.json",
      "reden_30_01_2018_145.json",
      "reden_30_03_2009_735.json",
      "reden_30_03_2017_246.json",
      "reden_30_04_2009_732.json",
      "reden_30_05_2008_772.json",
      "reden_30_05_2008_773.json",
      "reden_30_05_2016_327.json",
      "reden_30_05_2017_217.json",
      "reden_30_06_2005_860.json",
      "reden_30_06_2009_721.json",
      "reden_30_08_1999_1.json",
      "reden_30_08_1999_2.json",
      "reden_30_08_1999_3.json",
      "reden_30_08_2013_499.json",
      "reden_30_08_2017_197.json",
      "reden_30_08_2018_86.json",
      "reden_30_08_2018_87.json",
      "reden_30_09_2004_1.json",
      "reden_30_09_2004_2.json",
      "reden_30_09_2004_3.json",
      "reden_30_09_2004_4.json",
      "reden_30_09_2004_5.json",
      "reden_30_09_2004_6.json",
      "reden_30_09_2004_7.json",
      "reden_30_09_2009_712.json",
      "reden_30_09_2009_713.json",
      "reden_30_09_2014_443.json",
      "reden_30_10_2007_803.json",
      "reden_30_10_2013_488.json",
      "reden_30_10_2017_179.json",
      "reden_30_10_2019_971.json",
      "reden_30_11_2009_697.json",
      "reden_30_11_2016_285.json",
      "reden_30_11_2017_156.json",
      "reden_31_01_2008_791.json",
      "reden_31_01_2017_270.json",
      "reden_31_01_2018_144.json",
      "reden_31_01_2019_54.json",
      "reden_31_03_2006_845.json",
      "reden_31_03_2017_245.json",
      "reden_31_05_2010_675.json",
      "reden_31_05_2017_216.json",
      "reden_31_05_2019_29.json",
      "reden_31_08_2015_386.json",
      "reden_31_10_2007_802.json",
      "reden_31_10_2017_178.json")



colnames(Master)
Master$File_Names <- rownames(Master)
rownames(Master)<- NULL
Master$TEXT <- str_trim(Master$TEXT, side = "both")

colnames(Master_7)
Master_7$N_Chars <- nchar(Master_7$TEXT)
mean(Master_7$N_Chars)
Master_7$TEXT <- paste(Master_7$PDF_TEXT)
Master_7$TEXT <- str_trim(Master_7$TEXT)
Master_7$N_Chars <- NULL


Master_7$File_Name <- rownames(Master_7)
Master_7$File_Name <- substr(Master_7$File_Name,0,5)
Master_17 <- subset(Master_7, Master_7$File_Name == 'reden')

colnames(Master_9)
Master_9$N_Chars <- nchar(Master_9$TEXT)
mean(Master_9$N_Chars)
Master_9$TEXT <- paste(Master_9$PDF_TEXT)
Master_9$TEXT <- str_trim(Master_9$TEXT)
Master_9$N_Chars <- NULL


Master_1 <- Master[,c("AUTHOR","TITLE","DATE","TEXT")]
Master_2 <- Master_7[,c("AUTHOR","TITLE","DATE","TEXT")]
Master_3 <- Master_9[,c("AUTHOR","TITLE","DATE","TEXT")]

Master_Reden <- rbind(Master_1, Master_2, Master_3)
colnames(Master_Reden)
length(unique(Master_Reden$TEXT))
length(unique(Master_Reden$AUTHOR))
Reden_Authors <- as.data.frame(unique(Master_Reden$AUTHOR))



Master_Reden_3 <- Master_Reden[with(Master_Reden,order(Master_Reden$AUTHOR, decreasing = TRUE)),]

Duplicates_1 <- subset(Master_Reden, Master_Reden$Match != 'NA')


wordcount(Master_Reden$TEXT, sep = " ", count.function = sum)

write.csv(Master_Reden, file = "Master_Reden.csv", sep = ",")

Testing <- read.csv("Master_Reden.csv")



#write.csv(Master, file = "Reden_8.csv")
#write.csv(Master_7, file = "Reden_7.csv")
#write.csv(Master_9, file = "Reden_9.csv")


Reden_Final <- read.csv("C:\\Users\\salaz\\Desktop\\Moritz\\Reden_BB\\Reden_Speeches_08202021.csv")




###
### Start over again
###


reden_01_02_2008_790.json<- as.data.frame(t(unlist(read_json("reden_01_02_2008_790.json"))))
reden_01_02_2012_565.json<- as.data.frame(t(unlist(read_json("reden_01_02_2012_565.json"))))
reden_01_02_2017_269.json<- as.data.frame(t(unlist(read_json("reden_01_02_2017_269.json"))))
reden_01_03_2017_258.json<- as.data.frame(t(unlist(read_json("reden_01_03_2017_258.json"))))
reden_01_04_2019_42.json<- as.data.frame(t(unlist(read_json("reden_01_04_2019_42.json"))))
reden_01_04_2019_43.json<- as.data.frame(t(unlist(read_json("reden_01_04_2019_43.json"))))
reden_01_06_2005_867.json<- as.data.frame(t(unlist(read_json("reden_01_06_2005_867.json"))))
reden_01_06_2015_400.json<- as.data.frame(t(unlist(read_json("reden_01_06_2015_400.json"))))
reden_01_06_2016_325.json<- as.data.frame(t(unlist(read_json("reden_01_06_2016_325.json"))))
reden_01_06_2016_326.json<- as.data.frame(t(unlist(read_json("reden_01_06_2016_326.json"))))
reden_01_07_2010_671.json<- as.data.frame(t(unlist(read_json("reden_01_07_2010_671.json"))))
reden_01_07_2015_391.json<- as.data.frame(t(unlist(read_json("reden_01_07_2015_391.json"))))
reden_01_07_2015_392.json<- as.data.frame(t(unlist(read_json("reden_01_07_2015_392.json"))))
reden_01_07_2016_316.json<- as.data.frame(t(unlist(read_json("reden_01_07_2016_316.json"))))
reden_01_09_2011_596.json<- as.data.frame(t(unlist(read_json("reden_01_09_2011_596.json"))))
reden_01_10_2012_547.json<- as.data.frame(t(unlist(read_json("reden_01_10_2012_547.json"))))
reden_01_10_2013_494.json<- as.data.frame(t(unlist(read_json("reden_01_10_2013_494.json"))))
reden_01_10_2015_377.json<- as.data.frame(t(unlist(read_json("reden_01_10_2015_377.json"))))
reden_01_10_2019_982.json<- as.data.frame(t(unlist(read_json("reden_01_10_2019_982.json"))))
reden_01_10_2019_983.json<- as.data.frame(t(unlist(read_json("reden_01_10_2019_983.json"))))
reden_01_11_2007_801.json<- as.data.frame(t(unlist(read_json("reden_01_11_2007_801.json"))))
reden_01_11_2019_970.json<- as.data.frame(t(unlist(read_json("reden_01_11_2019_970.json"))))
reden_01_12_2014_424.json<- as.data.frame(t(unlist(read_json("reden_01_12_2014_424.json"))))
reden_01_12_2014_425.json<- as.data.frame(t(unlist(read_json("reden_01_12_2014_425.json"))))
reden_02_02_2010_691.json<- as.data.frame(t(unlist(read_json("reden_02_02_2010_691.json"))))
reden_02_02_2011_632.json<- as.data.frame(t(unlist(read_json("reden_02_02_2011_632.json"))))
reden_02_02_2011_633.json<- as.data.frame(t(unlist(read_json("reden_02_02_2011_633.json"))))
reden_02_02_2017_268.json<- as.data.frame(t(unlist(read_json("reden_02_02_2017_268.json"))))
reden_02_03_2011_624.json<- as.data.frame(t(unlist(read_json("reden_02_03_2011_624.json"))))
reden_02_05_2011_611.json<- as.data.frame(t(unlist(read_json("reden_02_05_2011_611.json"))))
reden_02_05_2011_612.json<- as.data.frame(t(unlist(read_json("reden_02_05_2011_612.json"))))
reden_02_05_2016_331.json<- as.data.frame(t(unlist(read_json("reden_02_05_2016_331.json"))))
reden_02_05_2018_103.json<- as.data.frame(t(unlist(read_json("reden_02_05_2018_103.json"))))
reden_02_05_2019_41.json<- as.data.frame(t(unlist(read_json("reden_02_05_2019_41.json"))))
reden_02_07_2013_507.json<- as.data.frame(t(unlist(read_json("reden_02_07_2013_507.json"))))
reden_02_10_2015_376.json<- as.data.frame(t(unlist(read_json("reden_02_10_2015_376.json"))))
reden_02_10_2016_305.json<- as.data.frame(t(unlist(read_json("reden_02_10_2016_305.json"))))
reden_02_10_2017_185.json<- as.data.frame(t(unlist(read_json("reden_02_10_2017_185.json"))))
reden_02_11_2007_800.json<- as.data.frame(t(unlist(read_json("reden_02_11_2007_800.json"))))
reden_02_12_2003_1.json<- as.data.frame(t(unlist(read_json("reden_02_12_2003_1.json"))))
reden_02_12_2003_2.json<- as.data.frame(t(unlist(read_json("reden_02_12_2003_2.json"))))
reden_02_12_2003_3.json<- as.data.frame(t(unlist(read_json("reden_02_12_2003_3.json"))))
reden_02_12_2003_4.json<- as.data.frame(t(unlist(read_json("reden_02_12_2003_4.json"))))
reden_02_12_2003_5.json<- as.data.frame(t(unlist(read_json("reden_02_12_2003_5.json"))))
reden_02_12_2003_6.json<- as.data.frame(t(unlist(read_json("reden_02_12_2003_6.json"))))
reden_02_12_2003_7.json<- as.data.frame(t(unlist(read_json("reden_02_12_2003_7.json"))))
reden_02_12_2003_8.json<- as.data.frame(t(unlist(read_json("reden_02_12_2003_8.json"))))
reden_02_12_2003_9.json<- as.data.frame(t(unlist(read_json("reden_02_12_2003_9.json"))))
reden_02_12_2003_10.json<- as.data.frame(t(unlist(read_json("reden_02_12_2003_10.json"))))
reden_02_12_2010_642.json<- as.data.frame(t(unlist(read_json("reden_02_12_2010_642.json"))))
reden_02_12_2010_643.json<- as.data.frame(t(unlist(read_json("reden_02_12_2010_643.json"))))
reden_02_12_2015_358.json<- as.data.frame(t(unlist(read_json("reden_02_12_2015_358.json"))))
reden_03_02_2017_267.json<- as.data.frame(t(unlist(read_json("reden_03_02_2017_267.json"))))
reden_03_03_2016_341.json<- as.data.frame(t(unlist(read_json("reden_03_03_2016_341.json"))))
reden_03_04_2017_242.json<- as.data.frame(t(unlist(read_json("reden_03_04_2017_242.json"))))
reden_03_04_2017_243.json<- as.data.frame(t(unlist(read_json("reden_03_04_2017_243.json"))))
reden_03_04_2017_244.json<- as.data.frame(t(unlist(read_json("reden_03_04_2017_244.json"))))
reden_03_05_2007_820.json<- as.data.frame(t(unlist(read_json("reden_03_05_2007_820.json"))))
reden_03_05_2019_40.json<- as.data.frame(t(unlist(read_json("reden_03_05_2019_40.json"))))
reden_03_06_2005_866.json<- as.data.frame(t(unlist(read_json("reden_03_06_2005_866.json"))))
reden_03_06_2007_813.json<- as.data.frame(t(unlist(read_json("reden_03_06_2007_813.json"))))
reden_03_06_2008_771.json<- as.data.frame(t(unlist(read_json("reden_03_06_2008_771.json"))))
reden_03_07_2007_808.json<- as.data.frame(t(unlist(read_json("reden_03_07_2007_808.json"))))
reden_03_07_2013_506.json<- as.data.frame(t(unlist(read_json("reden_03_07_2013_506.json"))))
reden_03_07_2014_451.json<- as.data.frame(t(unlist(read_json("reden_03_07_2014_451.json"))))
reden_03_09_2018_84.json<- as.data.frame(t(unlist(read_json("reden_03_09_2018_84.json"))))
reden_03_09_2018_85.json<- as.data.frame(t(unlist(read_json("reden_03_09_2018_85.json"))))
reden_03_11_2006_833.json<- as.data.frame(t(unlist(read_json("reden_03_11_2006_833.json"))))
reden_03_11_2009_706.json<- as.data.frame(t(unlist(read_json("reden_03_11_2009_706.json"))))
reden_03_11_2009_707.json<- as.data.frame(t(unlist(read_json("reden_03_11_2009_707.json"))))
reden_03_11_2010_654.json<- as.data.frame(t(unlist(read_json("reden_03_11_2010_654.json"))))
reden_03_11_2016_298.json<- as.data.frame(t(unlist(read_json("reden_03_11_2016_298.json"))))
reden_03_11_2017_177.json<- as.data.frame(t(unlist(read_json("reden_03_11_2017_177.json"))))
reden_03_12_1999_1.json<- as.data.frame(t(unlist(read_json("reden_03_12_1999_1.json"))))
reden_03_12_1999_2.json<- as.data.frame(t(unlist(read_json("reden_03_12_1999_2.json"))))
reden_03_12_1999_3.json<- as.data.frame(t(unlist(read_json("reden_03_12_1999_3.json"))))
reden_03_12_1999_4.json<- as.data.frame(t(unlist(read_json("reden_03_12_1999_4.json"))))
reden_03_12_2009_696.json<- as.data.frame(t(unlist(read_json("reden_03_12_2009_696.json"))))
reden_03_12_2013_473.json<- as.data.frame(t(unlist(read_json("reden_03_12_2013_473.json"))))
reden_03_12_2014_423.json<- as.data.frame(t(unlist(read_json("reden_03_12_2014_423.json"))))
reden_03_12_2015_357.json<- as.data.frame(t(unlist(read_json("reden_03_12_2015_357.json"))))
reden_03_12_2018_62.json<- as.data.frame(t(unlist(read_json("reden_03_12_2018_62.json"))))
reden_04_02_2013_527.json<- as.data.frame(t(unlist(read_json("reden_04_02_2013_527.json"))))
reden_04_02_2015_413.json<- as.data.frame(t(unlist(read_json("reden_04_02_2015_413.json"))))
reden_04_02_2016_347.json<- as.data.frame(t(unlist(read_json("reden_04_02_2016_347.json"))))
reden_04_03_2011_623.json<- as.data.frame(t(unlist(read_json("reden_04_03_2011_623.json"))))
reden_04_05_2007_819.json<- as.data.frame(t(unlist(read_json("reden_04_05_2007_819.json"))))
reden_04_05_2009_731.json<- as.data.frame(t(unlist(read_json("reden_04_05_2009_731.json"))))
reden_04_05_2010_682.json<- as.data.frame(t(unlist(read_json("reden_04_05_2010_682.json"))))
reden_04_05_2015_404.json<- as.data.frame(t(unlist(read_json("reden_04_05_2015_404.json"))))
reden_04_05_2017_234.json<- as.data.frame(t(unlist(read_json("reden_04_05_2017_234.json"))))
reden_04_05_2017_235.json<- as.data.frame(t(unlist(read_json("reden_04_05_2017_235.json"))))
reden_04_05_2018_100.json<- as.data.frame(t(unlist(read_json("reden_04_05_2018_100.json"))))
reden_04_05_2018_101.json<- as.data.frame(t(unlist(read_json("reden_04_05_2018_101.json"))))
reden_04_05_2018_102.json<- as.data.frame(t(unlist(read_json("reden_04_05_2018_102.json"))))
reden_04_07_2012_555.json<- as.data.frame(t(unlist(read_json("reden_04_07_2012_555.json"))))
reden_04_09_2009_718.json<- as.data.frame(t(unlist(read_json("reden_04_09_2009_718.json"))))
reden_04_09_2009_719.json<- as.data.frame(t(unlist(read_json("reden_04_09_2009_719.json"))))
reden_04_09_2014_446.json<- as.data.frame(t(unlist(read_json("reden_04_09_2014_446.json"))))
reden_04_10_2011_587.json<- as.data.frame(t(unlist(read_json("reden_04_10_2011_587.json"))))
reden_04_11_2008_757.json<- as.data.frame(t(unlist(read_json("reden_04_11_2008_757.json"))))
reden_04_11_2014_438.json<- as.data.frame(t(unlist(read_json("reden_04_11_2014_438.json"))))
reden_04_11_2019_968.json<- as.data.frame(t(unlist(read_json("reden_04_11_2019_968.json"))))
reden_04_11_2019_969.json<- as.data.frame(t(unlist(read_json("reden_04_11_2019_969.json"))))
reden_04_12_2012_535.json<- as.data.frame(t(unlist(read_json("reden_04_12_2012_535.json"))))
reden_04_12_2015_356.json<- as.data.frame(t(unlist(read_json("reden_04_12_2015_356.json"))))
reden_04_12_2019_955.json<- as.data.frame(t(unlist(read_json("reden_04_12_2019_955.json"))))
reden_04_12_2019_956.json<- as.data.frame(t(unlist(read_json("reden_04_12_2019_956.json"))))
reden_05_02_2018_143.json<- as.data.frame(t(unlist(read_json("reden_05_02_2018_143.json"))))
reden_05_03_2006_850.json<- as.data.frame(t(unlist(read_json("reden_05_03_2006_850.json"))))
reden_05_03_2018_124.json<- as.data.frame(t(unlist(read_json("reden_05_03_2018_124.json"))))
reden_05_03_2018_125.json<- as.data.frame(t(unlist(read_json("reden_05_03_2018_125.json"))))
reden_05_03_2018_126.json<- as.data.frame(t(unlist(read_json("reden_05_03_2018_126.json"))))
reden_05_04_2011_617.json<- as.data.frame(t(unlist(read_json("reden_05_04_2011_617.json"))))
reden_05_04_2018_116.json<- as.data.frame(t(unlist(read_json("reden_05_04_2018_116.json"))))
reden_05_05_2006_841.json<- as.data.frame(t(unlist(read_json("reden_05_05_2006_841.json"))))
reden_05_05_2006_842.json<- as.data.frame(t(unlist(read_json("reden_05_05_2006_842.json"))))
reden_05_05_2006_843.json<- as.data.frame(t(unlist(read_json("reden_05_05_2006_843.json"))))
reden_05_05_2010_681.json<- as.data.frame(t(unlist(read_json("reden_05_05_2010_681.json"))))
reden_05_05_2015_403.json<- as.data.frame(t(unlist(read_json("reden_05_05_2015_403.json"))))
reden_05_06_2009_726.json<- as.data.frame(t(unlist(read_json("reden_05_06_2009_726.json"))))
reden_05_06_2018_97.json<- as.data.frame(t(unlist(read_json("reden_05_06_2018_97.json"))))
reden_05_07_2012_554.json<- as.data.frame(t(unlist(read_json("reden_05_07_2012_554.json"))))
reden_05_07_2018_92.json<- as.data.frame(t(unlist(read_json("reden_05_07_2018_92.json"))))
reden_05_09_2011_595.json<- as.data.frame(t(unlist(read_json("reden_05_09_2011_595.json"))))
reden_05_09_2013_498.json<- as.data.frame(t(unlist(read_json("reden_05_09_2013_498.json"))))
reden_05_09_2016_311.json<- as.data.frame(t(unlist(read_json("reden_05_09_2016_311.json"))))
reden_05_09_2019_992.json<- as.data.frame(t(unlist(read_json("reden_05_09_2019_992.json"))))
reden_05_10_2010_663.json<- as.data.frame(t(unlist(read_json("reden_05_10_2010_663.json"))))
reden_05_11_2010_653.json<- as.data.frame(t(unlist(read_json("reden_05_11_2010_653.json"))))
reden_05_11_2018_76.json<- as.data.frame(t(unlist(read_json("reden_05_11_2018_76.json"))))
reden_05_12_2002_1.json<- as.data.frame(t(unlist(read_json("reden_05_12_2002_1.json"))))
reden_05_12_2002_2.json<- as.data.frame(t(unlist(read_json("reden_05_12_2002_2.json"))))
reden_05_12_2002_3.json<- as.data.frame(t(unlist(read_json("reden_05_12_2002_3.json"))))
reden_05_12_2002_4.json<- as.data.frame(t(unlist(read_json("reden_05_12_2002_4.json"))))
reden_05_12_2002_5.json<- as.data.frame(t(unlist(read_json("reden_05_12_2002_5.json"))))
reden_05_12_2002_6.json<- as.data.frame(t(unlist(read_json("reden_05_12_2002_6.json"))))
reden_05_12_2002_7.json<- as.data.frame(t(unlist(read_json("reden_05_12_2002_7.json"))))
reden_05_12_2002_8.json<- as.data.frame(t(unlist(read_json("reden_05_12_2002_8.json"))))
reden_05_12_2002_9.json<- as.data.frame(t(unlist(read_json("reden_05_12_2002_9.json"))))
reden_05_12_2002_10.json<- as.data.frame(t(unlist(read_json("reden_05_12_2002_10.json"))))
reden_05_12_2002_11.json<- as.data.frame(t(unlist(read_json("reden_05_12_2002_11.json"))))
reden_05_12_2002_12.json<- as.data.frame(t(unlist(read_json("reden_05_12_2002_12.json"))))
reden_05_12_2002_13.json<- as.data.frame(t(unlist(read_json("reden_05_12_2002_13.json"))))
reden_05_12_2002_14.json<- as.data.frame(t(unlist(read_json("reden_05_12_2002_14.json"))))
reden_05_12_2002_15.json<- as.data.frame(t(unlist(read_json("reden_05_12_2002_15.json"))))
reden_05_12_2016_284.json<- as.data.frame(t(unlist(read_json("reden_05_12_2016_284.json"))))
reden_05_12_2017_155.json<- as.data.frame(t(unlist(read_json("reden_05_12_2017_155.json"))))
reden_05_12_2019_953.json<- as.data.frame(t(unlist(read_json("reden_05_12_2019_953.json"))))
reden_05_12_2019_954.json<- as.data.frame(t(unlist(read_json("reden_05_12_2019_954.json"))))
reden_06_02_2007_828.json<- as.data.frame(t(unlist(read_json("reden_06_02_2007_828.json"))))
reden_06_02_2014_467.json<- as.data.frame(t(unlist(read_json("reden_06_02_2014_467.json"))))
reden_06_02_2017_266.json<- as.data.frame(t(unlist(read_json("reden_06_02_2017_266.json"))))
reden_06_02_2018_141.json<- as.data.frame(t(unlist(read_json("reden_06_02_2018_141.json"))))
reden_06_02_2018_142.json<- as.data.frame(t(unlist(read_json("reden_06_02_2018_142.json"))))
reden_06_03_2017_257.json<- as.data.frame(t(unlist(read_json("reden_06_03_2017_257.json"))))
reden_06_04_2017_241.json<- as.data.frame(t(unlist(read_json("reden_06_04_2017_241.json"))))
reden_06_05_2019_38.json<- as.data.frame(t(unlist(read_json("reden_06_05_2019_38.json"))))
reden_06_05_2019_39.json<- as.data.frame(t(unlist(read_json("reden_06_05_2019_39.json"))))
reden_06_06_2005_865.json<- as.data.frame(t(unlist(read_json("reden_06_06_2005_865.json"))))
reden_06_06_2007_812.json<- as.data.frame(t(unlist(read_json("reden_06_06_2007_812.json"))))
reden_06_06_2008_770.json<- as.data.frame(t(unlist(read_json("reden_06_06_2008_770.json"))))
reden_06_06_2018_96.json<- as.data.frame(t(unlist(read_json("reden_06_06_2018_96.json"))))
reden_06_07_2006_837.json<- as.data.frame(t(unlist(read_json("reden_06_07_2006_837.json"))))
reden_06_07_2017_206.json<- as.data.frame(t(unlist(read_json("reden_06_07_2017_206.json"))))
reden_06_09_2011_592.json<- as.data.frame(t(unlist(read_json("reden_06_09_2011_592.json"))))
reden_06_09_2011_593.json<- as.data.frame(t(unlist(read_json("reden_06_09_2011_593.json"))))
reden_06_09_2011_594.json<- as.data.frame(t(unlist(read_json("reden_06_09_2011_594.json"))))
reden_06_11_2013_487.json<- as.data.frame(t(unlist(read_json("reden_06_11_2013_487.json"))))
reden_06_12_2012_534.json<- as.data.frame(t(unlist(read_json("reden_06_12_2012_534.json"))))
reden_07_02_2011_631.json<- as.data.frame(t(unlist(read_json("reden_07_02_2011_631.json"))))
reden_07_02_2017_265.json<- as.data.frame(t(unlist(read_json("reden_07_02_2017_265.json"))))
reden_07_02_2019_52.json<- as.data.frame(t(unlist(read_json("reden_07_02_2019_52.json"))))
reden_07_02_2019_53.json<- as.data.frame(t(unlist(read_json("reden_07_02_2019_53.json"))))
reden_07_03_2008_785.json<- as.data.frame(t(unlist(read_json("reden_07_03_2008_785.json"))))
reden_07_03_2017_256.json<- as.data.frame(t(unlist(read_json("reden_07_03_2017_256.json"))))
reden_07_03_2018_123.json<- as.data.frame(t(unlist(read_json("reden_07_03_2018_123.json"))))
reden_07_04_2008_782.json<- as.data.frame(t(unlist(read_json("reden_07_04_2008_782.json"))))
reden_07_04_2014_459.json<- as.data.frame(t(unlist(read_json("reden_07_04_2014_459.json"))))
reden_07_05_2007_818.json<- as.data.frame(t(unlist(read_json("reden_07_05_2007_818.json"))))
reden_07_06_2005_864.json<- as.data.frame(t(unlist(read_json("reden_07_06_2005_864.json"))))
reden_07_06_2017_215.json<- as.data.frame(t(unlist(read_json("reden_07_06_2017_215.json"))))
reden_07_09_2015_385.json<- as.data.frame(t(unlist(read_json("reden_07_09_2015_385.json"))))
reden_07_09_2016_310.json<- as.data.frame(t(unlist(read_json("reden_07_09_2016_310.json"))))
reden_07_09_2017_195.json<- as.data.frame(t(unlist(read_json("reden_07_09_2017_195.json"))))
reden_07_09_2017_196.json<- as.data.frame(t(unlist(read_json("reden_07_09_2017_196.json"))))
reden_07_11_2014_437.json<- as.data.frame(t(unlist(read_json("reden_07_11_2014_437.json"))))
reden_07_12_2016_283.json<- as.data.frame(t(unlist(read_json("reden_07_12_2016_283.json"))))
reden_07_12_2018_60.json<- as.data.frame(t(unlist(read_json("reden_07_12_2018_60.json"))))
reden_07_12_2018_61.json<- as.data.frame(t(unlist(read_json("reden_07_12_2018_61.json"))))
reden_08_01_2009_747.json<- as.data.frame(t(unlist(read_json("reden_08_01_2009_747.json"))))
reden_08_02_2012_564.json<- as.data.frame(t(unlist(read_json("reden_08_02_2012_564.json"))))
reden_08_02_2018_138.json<- as.data.frame(t(unlist(read_json("reden_08_02_2018_138.json"))))
reden_08_02_2018_139.json<- as.data.frame(t(unlist(read_json("reden_08_02_2018_139.json"))))
reden_08_02_2018_140.json<- as.data.frame(t(unlist(read_json("reden_08_02_2018_140.json"))))
reden_08_02_2019_50.json<- as.data.frame(t(unlist(read_json("reden_08_02_2019_50.json"))))
reden_08_02_2019_51.json<- as.data.frame(t(unlist(read_json("reden_08_02_2019_51.json"))))
reden_08_03_2006_849.json<- as.data.frame(t(unlist(read_json("reden_08_03_2006_849.json"))))
reden_08_03_2011_622.json<- as.data.frame(t(unlist(read_json("reden_08_03_2011_622.json"))))
reden_08_03_2018_122.json<- as.data.frame(t(unlist(read_json("reden_08_03_2018_122.json"))))
reden_08_04_2014_458.json<- as.data.frame(t(unlist(read_json("reden_08_04_2014_458.json"))))
reden_08_04_2016_337.json<- as.data.frame(t(unlist(read_json("reden_08_04_2016_337.json"))))
reden_08_05_2019_37.json<- as.data.frame(t(unlist(read_json("reden_08_05_2019_37.json"))))
reden_08_06_2005_862.json<- as.data.frame(t(unlist(read_json("reden_08_06_2005_862.json"))))
reden_08_06_2005_863.json<- as.data.frame(t(unlist(read_json("reden_08_06_2005_863.json"))))
reden_08_06_2009_725.json<- as.data.frame(t(unlist(read_json("reden_08_06_2009_725.json"))))
reden_08_06_2016_323.json<- as.data.frame(t(unlist(read_json("reden_08_06_2016_323.json"))))
reden_08_06_2016_324.json<- as.data.frame(t(unlist(read_json("reden_08_06_2016_324.json"))))
reden_08_07_2009_720.json<- as.data.frame(t(unlist(read_json("reden_08_07_2009_720.json"))))
reden_08_07_2015_390.json<- as.data.frame(t(unlist(read_json("reden_08_07_2015_390.json"))))
reden_08_07_2017_205.json<- as.data.frame(t(unlist(read_json("reden_08_07_2017_205.json"))))
reden_08_09_2009_717.json<- as.data.frame(t(unlist(read_json("reden_08_09_2009_717.json"))))
reden_08_09_2010_670.json<- as.data.frame(t(unlist(read_json("reden_08_09_2010_670.json"))))
reden_08_09_2017_194.json<- as.data.frame(t(unlist(read_json("reden_08_09_2017_194.json"))))
reden_08_10_2012_546.json<- as.data.frame(t(unlist(read_json("reden_08_10_2012_546.json"))))
reden_08_10_2013_493.json<- as.data.frame(t(unlist(read_json("reden_08_10_2013_493.json"))))
reden_08_10_2019_981.json<- as.data.frame(t(unlist(read_json("reden_08_10_2019_981.json"))))
reden_08_11_2010_652.json<- as.data.frame(t(unlist(read_json("reden_08_11_2010_652.json"))))
reden_08_11_2011_582.json<- as.data.frame(t(unlist(read_json("reden_08_11_2011_582.json"))))
reden_08_11_2017_176.json<- as.data.frame(t(unlist(read_json("reden_08_11_2017_176.json"))))
reden_08_12_2005_854.json<- as.data.frame(t(unlist(read_json("reden_08_12_2005_854.json"))))
reden_08_12_2006_832.json<- as.data.frame(t(unlist(read_json("reden_08_12_2006_832.json"))))
reden_09_03_2005_872.json<- as.data.frame(t(unlist(read_json("reden_09_03_2005_872.json"))))
reden_09_03_2006_848.json<- as.data.frame(t(unlist(read_json("reden_09_03_2006_848.json"))))
reden_09_03_2007_825.json<- as.data.frame(t(unlist(read_json("reden_09_03_2007_825.json"))))
reden_09_03_2010_690.json<- as.data.frame(t(unlist(read_json("reden_09_03_2010_690.json"))))
reden_09_03_2011_621.json<- as.data.frame(t(unlist(read_json("reden_09_03_2011_621.json"))))
reden_09_03_2015_409.json<- as.data.frame(t(unlist(read_json("reden_09_03_2015_409.json"))))
reden_09_03_2017_255.json<- as.data.frame(t(unlist(read_json("reden_09_03_2017_255.json"))))
reden_09_05_2007_817.json<- as.data.frame(t(unlist(read_json("reden_09_05_2007_817.json"))))
reden_09_06_2010_674.json<- as.data.frame(t(unlist(read_json("reden_09_06_2010_674.json"))))
reden_09_07_2013_505.json<- as.data.frame(t(unlist(read_json("reden_09_07_2013_505.json"))))
reden_09_07_2014_450.json<- as.data.frame(t(unlist(read_json("reden_09_07_2014_450.json"))))
reden_09_07_2015_389.json<- as.data.frame(t(unlist(read_json("reden_09_07_2015_389.json"))))
reden_09_07_2019_24.json<- as.data.frame(t(unlist(read_json("reden_09_07_2019_24.json"))))
reden_09_09_2014_445.json<- as.data.frame(t(unlist(read_json("reden_09_09_2014_445.json"))))
reden_09_10_2008_758.json<- as.data.frame(t(unlist(read_json("reden_09_10_2008_758.json"))))
reden_09_10_2014_442.json<- as.data.frame(t(unlist(read_json("reden_09_10_2014_442.json"))))
reden_09_11_2005_857.json<- as.data.frame(t(unlist(read_json("reden_09_11_2005_857.json"))))
reden_09_11_2007_798.json<- as.data.frame(t(unlist(read_json("reden_09_11_2007_798.json"))))
reden_09_11_2007_799.json<- as.data.frame(t(unlist(read_json("reden_09_11_2007_799.json"))))
reden_09_11_2012_543.json<- as.data.frame(t(unlist(read_json("reden_09_11_2012_543.json"))))
reden_09_11_2016_296.json<- as.data.frame(t(unlist(read_json("reden_09_11_2016_296.json"))))
reden_09_11_2016_297.json<- as.data.frame(t(unlist(read_json("reden_09_11_2016_297.json"))))
reden_09_11_2017_175.json<- as.data.frame(t(unlist(read_json("reden_09_11_2017_175.json"))))
reden_09_11_2018_75.json<- as.data.frame(t(unlist(read_json("reden_09_11_2018_75.json"))))
reden_09_12_2009_695.json<- as.data.frame(t(unlist(read_json("reden_09_12_2009_695.json"))))
reden_10_01_2006_853.json<- as.data.frame(t(unlist(read_json("reden_10_01_2006_853.json"))))
reden_10_02_2009_744.json<- as.data.frame(t(unlist(read_json("reden_10_02_2009_744.json"))))
reden_10_02_2011_628.json<- as.data.frame(t(unlist(read_json("reden_10_02_2011_628.json"))))
reden_10_02_2011_629.json<- as.data.frame(t(unlist(read_json("reden_10_02_2011_629.json"))))
reden_10_02_2011_630.json<- as.data.frame(t(unlist(read_json("reden_10_02_2011_630.json"))))
reden_10_02_2017_264.json<- as.data.frame(t(unlist(read_json("reden_10_02_2017_264.json"))))
reden_10_03_2009_740.json<- as.data.frame(t(unlist(read_json("reden_10_03_2009_740.json"))))
reden_10_03_2010_688.json<- as.data.frame(t(unlist(read_json("reden_10_03_2010_688.json"))))
reden_10_03_2010_689.json<- as.data.frame(t(unlist(read_json("reden_10_03_2010_689.json"))))
reden_10_03_2011_620.json<- as.data.frame(t(unlist(read_json("reden_10_03_2011_620.json"))))
reden_10_03_2016_340.json<- as.data.frame(t(unlist(read_json("reden_10_03_2016_340.json"))))
reden_10_04_2018_115.json<- as.data.frame(t(unlist(read_json("reden_10_04_2018_115.json"))))
reden_10_05_2016_330.json<- as.data.frame(t(unlist(read_json("reden_10_05_2016_330.json"))))
reden_10_05_2017_233.json<- as.data.frame(t(unlist(read_json("reden_10_05_2017_233.json"))))
reden_10_06_2008_769.json<- as.data.frame(t(unlist(read_json("reden_10_06_2008_769.json"))))
reden_10_06_2009_724.json<- as.data.frame(t(unlist(read_json("reden_10_06_2009_724.json"))))
reden_10_06_2013_514.json<- as.data.frame(t(unlist(read_json("reden_10_06_2013_514.json"))))
reden_10_06_2013_515.json<- as.data.frame(t(unlist(read_json("reden_10_06_2013_515.json"))))
reden_10_06_2016_322.json<- as.data.frame(t(unlist(read_json("reden_10_06_2016_322.json"))))
reden_10_07_2002_1.json<- as.data.frame(t(unlist(read_json("reden_10_07_2002_1.json"))))
reden_10_07_2002_2.json<- as.data.frame(t(unlist(read_json("reden_10_07_2002_2.json"))))
reden_10_07_2002_3.json<- as.data.frame(t(unlist(read_json("reden_10_07_2002_3.json"))))
reden_10_07_2002_4.json<- as.data.frame(t(unlist(read_json("reden_10_07_2002_4.json"))))
reden_10_07_2002_5.json<- as.data.frame(t(unlist(read_json("reden_10_07_2002_5.json"))))
reden_10_07_2019_23.json<- as.data.frame(t(unlist(read_json("reden_10_07_2019_23.json"))))
reden_10_09_2008_764.json<- as.data.frame(t(unlist(read_json("reden_10_09_2008_764.json"))))
reden_10_09_2019_989.json<- as.data.frame(t(unlist(read_json("reden_10_09_2019_989.json"))))
reden_10_09_2019_990.json<- as.data.frame(t(unlist(read_json("reden_10_09_2019_990.json"))))
reden_10_09_2019_991.json<- as.data.frame(t(unlist(read_json("reden_10_09_2019_991.json"))))
reden_10_10_2012_544.json<- as.data.frame(t(unlist(read_json("reden_10_10_2012_544.json"))))
reden_10_10_2012_545.json<- as.data.frame(t(unlist(read_json("reden_10_10_2012_545.json"))))
reden_10_10_2016_304.json<- as.data.frame(t(unlist(read_json("reden_10_10_2016_304.json"))))
reden_10_11_2005_856.json<- as.data.frame(t(unlist(read_json("reden_10_11_2005_856.json"))))
reden_10_11_2011_581.json<- as.data.frame(t(unlist(read_json("reden_10_11_2011_581.json"))))
reden_10_11_2016_293.json<- as.data.frame(t(unlist(read_json("reden_10_11_2016_293.json"))))
reden_10_11_2016_294.json<- as.data.frame(t(unlist(read_json("reden_10_11_2016_294.json"))))
reden_10_11_2016_295.json<- as.data.frame(t(unlist(read_json("reden_10_11_2016_295.json"))))
reden_10_11_2017_174.json<- as.data.frame(t(unlist(read_json("reden_10_11_2017_174.json"))))
reden_10_12_2008_749.json<- as.data.frame(t(unlist(read_json("reden_10_12_2008_749.json"))))
reden_11_01_2011_640.json<- as.data.frame(t(unlist(read_json("reden_11_01_2011_640.json"))))
reden_11_02_2009_743.json<- as.data.frame(t(unlist(read_json("reden_11_02_2009_743.json"))))
reden_11_02_2013_525.json<- as.data.frame(t(unlist(read_json("reden_11_02_2013_525.json"))))
reden_11_02_2013_526.json<- as.data.frame(t(unlist(read_json("reden_11_02_2013_526.json"))))
reden_11_02_2014_466.json<- as.data.frame(t(unlist(read_json("reden_11_02_2014_466.json"))))
reden_11_02_2016_346.json<- as.data.frame(t(unlist(read_json("reden_11_02_2016_346.json"))))
reden_11_03_2008_784.json<- as.data.frame(t(unlist(read_json("reden_11_03_2008_784.json"))))
reden_11_04_2011_616.json<- as.data.frame(t(unlist(read_json("reden_11_04_2011_616.json"))))
reden_11_04_2018_113.json<- as.data.frame(t(unlist(read_json("reden_11_04_2018_113.json"))))
reden_11_04_2018_114.json<- as.data.frame(t(unlist(read_json("reden_11_04_2018_114.json"))))
reden_11_05_2006_840.json<- as.data.frame(t(unlist(read_json("reden_11_05_2006_840.json"))))
reden_11_05_2016_328.json<- as.data.frame(t(unlist(read_json("reden_11_05_2016_328.json"))))
reden_11_05_2016_329.json<- as.data.frame(t(unlist(read_json("reden_11_05_2016_329.json"))))
reden_11_05_2017_232.json<- as.data.frame(t(unlist(read_json("reden_11_05_2017_232.json"))))
reden_11_06_2014_453.json<- as.data.frame(t(unlist(read_json("reden_11_06_2014_453.json"))))
reden_11_06_2015_399.json<- as.data.frame(t(unlist(read_json("reden_11_06_2015_399.json"))))
reden_11_06_2016_321.json<- as.data.frame(t(unlist(read_json("reden_11_06_2016_321.json"))))
reden_11_07_2011_598.json<- as.data.frame(t(unlist(read_json("reden_11_07_2011_598.json"))))
reden_11_07_2013_504.json<- as.data.frame(t(unlist(read_json("reden_11_07_2013_504.json"))))
reden_11_09_2012_552.json<- as.data.frame(t(unlist(read_json("reden_11_09_2012_552.json"))))
reden_11_09_2015_384.json<- as.data.frame(t(unlist(read_json("reden_11_09_2015_384.json"))))
reden_11_09_2018_83.json<- as.data.frame(t(unlist(read_json("reden_11_09_2018_83.json"))))
reden_11_10_2007_805.json<- as.data.frame(t(unlist(read_json("reden_11_10_2007_805.json"))))
reden_11_10_2017_183.json<- as.data.frame(t(unlist(read_json("reden_11_10_2017_183.json"))))
reden_11_10_2017_184.json<- as.data.frame(t(unlist(read_json("reden_11_10_2017_184.json"))))
reden_11_11_2008_756.json<- as.data.frame(t(unlist(read_json("reden_11_11_2008_756.json"))))
reden_11_11_2009_705.json<- as.data.frame(t(unlist(read_json("reden_11_11_2009_705.json"))))
reden_11_11_2013_486.json<- as.data.frame(t(unlist(read_json("reden_11_11_2013_486.json"))))
reden_11_11_2015_370.json<- as.data.frame(t(unlist(read_json("reden_11_11_2015_370.json"))))
reden_11_11_2015_371.json<- as.data.frame(t(unlist(read_json("reden_11_11_2015_371.json"))))
reden_11_11_2019_967.json<- as.data.frame(t(unlist(read_json("reden_11_11_2019_967.json"))))
reden_11_12_2008_748.json<- as.data.frame(t(unlist(read_json("reden_11_12_2008_748.json"))))
reden_12_01_2018_152.json<- as.data.frame(t(unlist(read_json("reden_12_01_2018_152.json"))))
reden_12_02_2015_411.json<- as.data.frame(t(unlist(read_json("reden_12_02_2015_411.json"))))
reden_12_02_2015_412.json<- as.data.frame(t(unlist(read_json("reden_12_02_2015_412.json"))))
reden_12_02_2019_49.json<- as.data.frame(t(unlist(read_json("reden_12_02_2019_49.json"))))
reden_12_03_2010_687.json<- as.data.frame(t(unlist(read_json("reden_12_03_2010_687.json"))))
reden_12_03_2015_408.json<- as.data.frame(t(unlist(read_json("reden_12_03_2015_408.json"))))
reden_12_04_2018_110.json<- as.data.frame(t(unlist(read_json("reden_12_04_2018_110.json"))))
reden_12_04_2018_111.json<- as.data.frame(t(unlist(read_json("reden_12_04_2018_111.json"))))
reden_12_04_2018_112.json<- as.data.frame(t(unlist(read_json("reden_12_04_2018_112.json"))))
reden_12_05_2009_730.json<- as.data.frame(t(unlist(read_json("reden_12_05_2009_730.json"))))
reden_12_05_2011_609.json<- as.data.frame(t(unlist(read_json("reden_12_05_2011_609.json"))))
reden_12_05_2011_610.json<- as.data.frame(t(unlist(read_json("reden_12_05_2011_610.json"))))
reden_12_06_2008_768.json<- as.data.frame(t(unlist(read_json("reden_12_06_2008_768.json"))))
reden_12_06_2012_557.json<- as.data.frame(t(unlist(read_json("reden_12_06_2012_557.json"))))
reden_12_06_2014_452.json<- as.data.frame(t(unlist(read_json("reden_12_06_2014_452.json"))))
reden_12_07_2018_91.json<- as.data.frame(t(unlist(read_json("reden_12_07_2018_91.json"))))
reden_12_10_2007_804.json<- as.data.frame(t(unlist(read_json("reden_12_10_2007_804.json"))))
reden_12_10_2010_661.json<- as.data.frame(t(unlist(read_json("reden_12_10_2010_661.json"))))
reden_12_10_2010_662.json<- as.data.frame(t(unlist(read_json("reden_12_10_2010_662.json"))))
reden_12_11_2014_436.json<- as.data.frame(t(unlist(read_json("reden_12_11_2014_436.json"))))
reden_12_11_2015_369.json<- as.data.frame(t(unlist(read_json("reden_12_11_2015_369.json"))))
reden_12_11_2019_966.json<- as.data.frame(t(unlist(read_json("reden_12_11_2019_966.json"))))
reden_12_12_2000_1.json<- as.data.frame(t(unlist(read_json("reden_12_12_2000_1.json"))))
reden_12_12_2000_2.json<- as.data.frame(t(unlist(read_json("reden_12_12_2000_2.json"))))
reden_12_12_2000_3.json<- as.data.frame(t(unlist(read_json("reden_12_12_2000_3.json"))))
reden_12_12_2000_4.json<- as.data.frame(t(unlist(read_json("reden_12_12_2000_4.json"))))
reden_12_12_2000_5.json<- as.data.frame(t(unlist(read_json("reden_12_12_2000_5.json"))))
reden_12_12_2000_6.json<- as.data.frame(t(unlist(read_json("reden_12_12_2000_6.json"))))
reden_12_12_2000_7.json<- as.data.frame(t(unlist(read_json("reden_12_12_2000_7.json"))))
reden_12_12_2000_8.json<- as.data.frame(t(unlist(read_json("reden_12_12_2000_8.json"))))
reden_12_12_2000_9.json<- as.data.frame(t(unlist(read_json("reden_12_12_2000_9.json"))))
reden_12_12_2000_10.json<- as.data.frame(t(unlist(read_json("reden_12_12_2000_10.json"))))
reden_12_12_2000_11.json<- as.data.frame(t(unlist(read_json("reden_12_12_2000_11.json"))))
reden_12_12_2000_12.json<- as.data.frame(t(unlist(read_json("reden_12_12_2000_12.json"))))
reden_12_12_2000_13.json<- as.data.frame(t(unlist(read_json("reden_12_12_2000_13.json"))))
reden_12_12_2000_14.json<- as.data.frame(t(unlist(read_json("reden_12_12_2000_14.json"))))
reden_12_12_2000_15.json<- as.data.frame(t(unlist(read_json("reden_12_12_2000_15.json"))))
reden_12_12_2000_16.json<- as.data.frame(t(unlist(read_json("reden_12_12_2000_16.json"))))
reden_12_12_2000_17.json<- as.data.frame(t(unlist(read_json("reden_12_12_2000_17.json"))))
reden_12_12_2000_18.json<- as.data.frame(t(unlist(read_json("reden_12_12_2000_18.json"))))
reden_12_12_2000_19.json<- as.data.frame(t(unlist(read_json("reden_12_12_2000_19.json"))))
reden_12_12_2000_20.json<- as.data.frame(t(unlist(read_json("reden_12_12_2000_20.json"))))
reden_12_12_2012_533.json<- as.data.frame(t(unlist(read_json("reden_12_12_2012_533.json"))))
reden_13_01_2015_421.json<- as.data.frame(t(unlist(read_json("reden_13_01_2015_421.json"))))
reden_13_01_2015_422.json<- as.data.frame(t(unlist(read_json("reden_13_01_2015_422.json"))))
reden_13_03_2002_1.json<- as.data.frame(t(unlist(read_json("reden_13_03_2002_1.json"))))
reden_13_03_2002_2.json<- as.data.frame(t(unlist(read_json("reden_13_03_2002_2.json"))))
reden_13_03_2002_3.json<- as.data.frame(t(unlist(read_json("reden_13_03_2002_3.json"))))
reden_13_03_2002_4.json<- as.data.frame(t(unlist(read_json("reden_13_03_2002_4.json"))))
reden_13_03_2002_5.json<- as.data.frame(t(unlist(read_json("reden_13_03_2002_5.json"))))
reden_13_03_2002_6.json<- as.data.frame(t(unlist(read_json("reden_13_03_2002_6.json"))))
reden_13_03_2002_7.json<- as.data.frame(t(unlist(read_json("reden_13_03_2002_7.json"))))
reden_13_03_2007_824.json<- as.data.frame(t(unlist(read_json("reden_13_03_2007_824.json"))))
reden_13_04_2011_614.json<- as.data.frame(t(unlist(read_json("reden_13_04_2011_614.json"))))
reden_13_04_2011_615.json<- as.data.frame(t(unlist(read_json("reden_13_04_2011_615.json"))))
reden_13_04_2016_336.json<- as.data.frame(t(unlist(read_json("reden_13_04_2016_336.json"))))
reden_13_05_2009_729.json<- as.data.frame(t(unlist(read_json("reden_13_05_2009_729.json"))))
reden_13_05_2015_402.json<- as.data.frame(t(unlist(read_json("reden_13_05_2015_402.json"))))
reden_13_06_2000_1.json<- as.data.frame(t(unlist(read_json("reden_13_06_2000_1.json"))))
reden_13_06_2000_2.json<- as.data.frame(t(unlist(read_json("reden_13_06_2000_2.json"))))
reden_13_06_2000_3.json<- as.data.frame(t(unlist(read_json("reden_13_06_2000_3.json"))))
reden_13_06_2000_4.json<- as.data.frame(t(unlist(read_json("reden_13_06_2000_4.json"))))
reden_13_06_2000_5.json<- as.data.frame(t(unlist(read_json("reden_13_06_2000_5.json"))))
reden_13_06_2000_6.json<- as.data.frame(t(unlist(read_json("reden_13_06_2000_6.json"))))
reden_13_06_2000_7.json<- as.data.frame(t(unlist(read_json("reden_13_06_2000_7.json"))))
reden_13_06_2000_8.json<- as.data.frame(t(unlist(read_json("reden_13_06_2000_8.json"))))
reden_13_06_2000_9.json<- as.data.frame(t(unlist(read_json("reden_13_06_2000_9.json"))))
reden_13_06_2008_767.json<- as.data.frame(t(unlist(read_json("reden_13_06_2008_767.json"))))
reden_13_06_2013_513.json<- as.data.frame(t(unlist(read_json("reden_13_06_2013_513.json"))))
reden_13_06_2016_319.json<- as.data.frame(t(unlist(read_json("reden_13_06_2016_319.json"))))
reden_13_06_2016_320.json<- as.data.frame(t(unlist(read_json("reden_13_06_2016_320.json"))))
reden_13_06_2017_214.json<- as.data.frame(t(unlist(read_json("reden_13_06_2017_214.json"))))
reden_13_06_2019_28.json<- as.data.frame(t(unlist(read_json("reden_13_06_2019_28.json"))))
reden_13_07_2016_315.json<- as.data.frame(t(unlist(read_json("reden_13_07_2016_315.json"))))
reden_13_07_2017_204.json<- as.data.frame(t(unlist(read_json("reden_13_07_2017_204.json"))))
reden_13_09_2011_590.json<- as.data.frame(t(unlist(read_json("reden_13_09_2011_590.json"))))
reden_13_09_2011_591.json<- as.data.frame(t(unlist(read_json("reden_13_09_2011_591.json"))))
reden_13_09_2019_988.json<- as.data.frame(t(unlist(read_json("reden_13_09_2019_988.json"))))
reden_13_10_2014_441.json<- as.data.frame(t(unlist(read_json("reden_13_10_2014_441.json"))))
reden_13_10_2015_375.json<- as.data.frame(t(unlist(read_json("reden_13_10_2015_375.json"))))
reden_13_10_2016_303.json<- as.data.frame(t(unlist(read_json("reden_13_10_2016_303.json"))))
reden_13_11_2008_755.json<- as.data.frame(t(unlist(read_json("reden_13_11_2008_755.json"))))
reden_13_11_2013_485.json<- as.data.frame(t(unlist(read_json("reden_13_11_2013_485.json"))))
reden_13_11_2017_173.json<- as.data.frame(t(unlist(read_json("reden_13_11_2017_173.json"))))
reden_13_11_2018_74.json<- as.data.frame(t(unlist(read_json("reden_13_11_2018_74.json"))))
reden_13_12_2004_1.json<- as.data.frame(t(unlist(read_json("reden_13_12_2004_1.json"))))
reden_13_12_2004_2.json<- as.data.frame(t(unlist(read_json("reden_13_12_2004_2.json"))))
reden_13_12_2004_3.json<- as.data.frame(t(unlist(read_json("reden_13_12_2004_3.json"))))
reden_13_12_2004_4.json<- as.data.frame(t(unlist(read_json("reden_13_12_2004_4.json"))))
reden_13_12_2004_5.json<- as.data.frame(t(unlist(read_json("reden_13_12_2004_5.json"))))
reden_13_12_2004_6.json<- as.data.frame(t(unlist(read_json("reden_13_12_2004_6.json"))))
reden_13_12_2004_7.json<- as.data.frame(t(unlist(read_json("reden_13_12_2004_7.json"))))
reden_13_12_2004_8.json<- as.data.frame(t(unlist(read_json("reden_13_12_2004_8.json"))))
reden_13_12_2004_9.json<- as.data.frame(t(unlist(read_json("reden_13_12_2004_9.json"))))
reden_13_12_2004_10.json<- as.data.frame(t(unlist(read_json("reden_13_12_2004_10.json"))))
reden_13_12_2004_11.json<- as.data.frame(t(unlist(read_json("reden_13_12_2004_11.json"))))
reden_13_12_2004_12.json<- as.data.frame(t(unlist(read_json("reden_13_12_2004_12.json"))))
reden_13_12_2004_13.json<- as.data.frame(t(unlist(read_json("reden_13_12_2004_13.json"))))
reden_13_12_2004_14.json<- as.data.frame(t(unlist(read_json("reden_13_12_2004_14.json"))))
reden_13_12_2004_15.json<- as.data.frame(t(unlist(read_json("reden_13_12_2004_15.json"))))
reden_13_12_2004_16.json<- as.data.frame(t(unlist(read_json("reden_13_12_2004_16.json"))))
reden_13_12_2006_831.json<- as.data.frame(t(unlist(read_json("reden_13_12_2006_831.json"))))
reden_13_12_2007_795.json<- as.data.frame(t(unlist(read_json("reden_13_12_2007_795.json"))))
reden_13_12_2018_59.json<- as.data.frame(t(unlist(read_json("reden_13_12_2018_59.json"))))
reden_14_01_2011_639.json<- as.data.frame(t(unlist(read_json("reden_14_01_2011_639.json"))))
reden_14_01_2016_355.json<- as.data.frame(t(unlist(read_json("reden_14_01_2016_355.json"))))
reden_14_02_2008_789.json<- as.data.frame(t(unlist(read_json("reden_14_02_2008_789.json"))))
reden_14_02_2014_465.json<- as.data.frame(t(unlist(read_json("reden_14_02_2014_465.json"))))
reden_14_02_2018_135.json<- as.data.frame(t(unlist(read_json("reden_14_02_2018_135.json"))))
reden_14_02_2018_136.json<- as.data.frame(t(unlist(read_json("reden_14_02_2018_136.json"))))
reden_14_02_2018_137.json<- as.data.frame(t(unlist(read_json("reden_14_02_2018_137.json"))))
reden_14_02_2019_48.json<- as.data.frame(t(unlist(read_json("reden_14_02_2019_48.json"))))
reden_14_03_2006_847.json<- as.data.frame(t(unlist(read_json("reden_14_03_2006_847.json"))))
reden_14_03_2012_562.json<- as.data.frame(t(unlist(read_json("reden_14_03_2012_562.json"))))
reden_14_04_2005_871.json<- as.data.frame(t(unlist(read_json("reden_14_04_2005_871.json"))))
reden_14_04_2011_613.json<- as.data.frame(t(unlist(read_json("reden_14_04_2011_613.json"))))
reden_14_05_2010_680.json<- as.data.frame(t(unlist(read_json("reden_14_05_2010_680.json"))))
reden_14_05_2014_457.json<- as.data.frame(t(unlist(read_json("reden_14_05_2014_457.json"))))
reden_14_06_2007_810.json<- as.data.frame(t(unlist(read_json("reden_14_06_2007_810.json"))))
reden_14_06_2007_811.json<- as.data.frame(t(unlist(read_json("reden_14_06_2007_811.json"))))
reden_14_06_2012_556.json<- as.data.frame(t(unlist(read_json("reden_14_06_2012_556.json"))))
reden_14_06_2017_213.json<- as.data.frame(t(unlist(read_json("reden_14_06_2017_213.json"))))
reden_14_07_2016_314.json<- as.data.frame(t(unlist(read_json("reden_14_07_2016_314.json"))))
reden_14_08_2008_765.json<- as.data.frame(t(unlist(read_json("reden_14_08_2008_765.json"))))
reden_14_08_2017_202.json<- as.data.frame(t(unlist(read_json("reden_14_08_2017_202.json"))))
reden_14_09_2010_669.json<- as.data.frame(t(unlist(read_json("reden_14_09_2010_669.json"))))
reden_14_09_2017_193.json<- as.data.frame(t(unlist(read_json("reden_14_09_2017_193.json"))))
reden_14_10_2010_660.json<- as.data.frame(t(unlist(read_json("reden_14_10_2010_660.json"))))
reden_14_10_2019_980.json<- as.data.frame(t(unlist(read_json("reden_14_10_2019_980.json"))))
reden_14_11_2011_580.json<- as.data.frame(t(unlist(read_json("reden_14_11_2011_580.json"))))
reden_14_11_2012_541.json<- as.data.frame(t(unlist(read_json("reden_14_11_2012_541.json"))))
reden_14_11_2012_542.json<- as.data.frame(t(unlist(read_json("reden_14_11_2012_542.json"))))
reden_14_11_2013_481.json<- as.data.frame(t(unlist(read_json("reden_14_11_2013_481.json"))))
reden_14_11_2013_482.json<- as.data.frame(t(unlist(read_json("reden_14_11_2013_482.json"))))
reden_14_11_2013_483.json<- as.data.frame(t(unlist(read_json("reden_14_11_2013_483.json"))))
reden_14_11_2013_484.json<- as.data.frame(t(unlist(read_json("reden_14_11_2013_484.json"))))
reden_14_11_2017_172.json<- as.data.frame(t(unlist(read_json("reden_14_11_2017_172.json"))))
reden_14_11_2018_70.json<- as.data.frame(t(unlist(read_json("reden_14_11_2018_70.json"))))
reden_14_11_2018_71.json<- as.data.frame(t(unlist(read_json("reden_14_11_2018_71.json"))))
reden_14_11_2018_72.json<- as.data.frame(t(unlist(read_json("reden_14_11_2018_72.json"))))
reden_14_11_2018_73.json<- as.data.frame(t(unlist(read_json("reden_14_11_2018_73.json"))))
reden_14_12_2011_572.json<- as.data.frame(t(unlist(read_json("reden_14_12_2011_572.json"))))
reden_14_12_2017_154.json<- as.data.frame(t(unlist(read_json("reden_14_12_2017_154.json"))))
reden_14_12_2018_58.json<- as.data.frame(t(unlist(read_json("reden_14_12_2018_58.json"))))
reden_15_01_2008_794.json<- as.data.frame(t(unlist(read_json("reden_15_01_2008_794.json"))))
reden_15_01_2014_472.json<- as.data.frame(t(unlist(read_json("reden_15_01_2014_472.json"))))
reden_15_01_2018_151.json<- as.data.frame(t(unlist(read_json("reden_15_01_2018_151.json"))))
reden_15_01_2019_56.json<- as.data.frame(t(unlist(read_json("reden_15_01_2019_56.json"))))
reden_15_01_2019_57.json<- as.data.frame(t(unlist(read_json("reden_15_01_2019_57.json"))))
reden_15_02_2018_133.json<- as.data.frame(t(unlist(read_json("reden_15_02_2018_133.json"))))
reden_15_02_2018_134.json<- as.data.frame(t(unlist(read_json("reden_15_02_2018_134.json"))))
reden_15_03_2007_823.json<- as.data.frame(t(unlist(read_json("reden_15_03_2007_823.json"))))
reden_15_03_2017_253.json<- as.data.frame(t(unlist(read_json("reden_15_03_2017_253.json"))))
reden_15_03_2017_254.json<- as.data.frame(t(unlist(read_json("reden_15_03_2017_254.json"))))
reden_15_03_2018_121.json<- as.data.frame(t(unlist(read_json("reden_15_03_2018_121.json"))))
reden_15_04_2003_1.json<- as.data.frame(t(unlist(read_json("reden_15_04_2003_1.json"))))
reden_15_04_2003_2.json<- as.data.frame(t(unlist(read_json("reden_15_04_2003_2.json"))))
reden_15_04_2003_3.json<- as.data.frame(t(unlist(read_json("reden_15_04_2003_3.json"))))
reden_15_04_2003_4.json<- as.data.frame(t(unlist(read_json("reden_15_04_2003_4.json"))))
reden_15_04_2003_5.json<- as.data.frame(t(unlist(read_json("reden_15_04_2003_5.json"))))
reden_15_04_2003_6.json<- as.data.frame(t(unlist(read_json("reden_15_04_2003_6.json"))))
reden_15_04_2003_7.json<- as.data.frame(t(unlist(read_json("reden_15_04_2003_7.json"))))
reden_15_04_2008_781.json<- as.data.frame(t(unlist(read_json("reden_15_04_2008_781.json"))))
reden_15_04_2009_734.json<- as.data.frame(t(unlist(read_json("reden_15_04_2009_734.json"))))
reden_15_05_2013_520.json<- as.data.frame(t(unlist(read_json("reden_15_05_2013_520.json"))))
reden_15_05_2017_231.json<- as.data.frame(t(unlist(read_json("reden_15_05_2017_231.json"))))
reden_15_05_2019_36.json<- as.data.frame(t(unlist(read_json("reden_15_05_2019_36.json"))))
reden_15_06_2015_397.json<- as.data.frame(t(unlist(read_json("reden_15_06_2015_397.json"))))
reden_15_06_2015_398.json<- as.data.frame(t(unlist(read_json("reden_15_06_2015_398.json"))))
reden_15_06_2016_318.json<- as.data.frame(t(unlist(read_json("reden_15_06_2016_318.json"))))
reden_15_07_2015_388.json<- as.data.frame(t(unlist(read_json("reden_15_07_2015_388.json"))))
reden_15_08_2017_201.json<- as.data.frame(t(unlist(read_json("reden_15_08_2017_201.json"))))
reden_15_09_2015_383.json<- as.data.frame(t(unlist(read_json("reden_15_09_2015_383.json"))))
reden_15_09_2016_309.json<- as.data.frame(t(unlist(read_json("reden_15_09_2016_309.json"))))
reden_15_10_2009_711.json<- as.data.frame(t(unlist(read_json("reden_15_10_2009_711.json"))))
reden_15_10_2015_374.json<- as.data.frame(t(unlist(read_json("reden_15_10_2015_374.json"))))
reden_15_11_2010_650.json<- as.data.frame(t(unlist(read_json("reden_15_11_2010_650.json"))))
reden_15_11_2010_651.json<- as.data.frame(t(unlist(read_json("reden_15_11_2010_651.json"))))
reden_15_11_2011_579.json<- as.data.frame(t(unlist(read_json("reden_15_11_2011_579.json"))))
reden_15_11_2016_292.json<- as.data.frame(t(unlist(read_json("reden_15_11_2016_292.json"))))
reden_15_11_2017_170.json<- as.data.frame(t(unlist(read_json("reden_15_11_2017_170.json"))))
reden_15_11_2017_171.json<- as.data.frame(t(unlist(read_json("reden_15_11_2017_171.json"))))
reden_15_11_2018_69.json<- as.data.frame(t(unlist(read_json("reden_15_11_2018_69.json"))))
reden_16_01_2008_793.json<- as.data.frame(t(unlist(read_json("reden_16_01_2008_793.json"))))
reden_16_01_2014_470.json<- as.data.frame(t(unlist(read_json("reden_16_01_2014_470.json"))))
reden_16_01_2014_471.json<- as.data.frame(t(unlist(read_json("reden_16_01_2014_471.json"))))
reden_16_01_2015_420.json<- as.data.frame(t(unlist(read_json("reden_16_01_2015_420.json"))))
reden_16_01_2017_277.json<- as.data.frame(t(unlist(read_json("reden_16_01_2017_277.json"))))
reden_16_01_2018_150.json<- as.data.frame(t(unlist(read_json("reden_16_01_2018_150.json"))))
reden_16_02_2017_263.json<- as.data.frame(t(unlist(read_json("reden_16_02_2017_263.json"))))
reden_16_03_2017_252.json<- as.data.frame(t(unlist(read_json("reden_16_03_2017_252.json"))))
reden_16_04_2018_109.json<- as.data.frame(t(unlist(read_json("reden_16_04_2018_109.json"))))
reden_16_05_2007_816.json<- as.data.frame(t(unlist(read_json("reden_16_05_2007_816.json"))))
reden_16_05_2008_775.json<- as.data.frame(t(unlist(read_json("reden_16_05_2008_775.json"))))
reden_16_05_2019_34.json<- as.data.frame(t(unlist(read_json("reden_16_05_2019_34.json"))))
reden_16_05_2019_35.json<- as.data.frame(t(unlist(read_json("reden_16_05_2019_35.json"))))
reden_16_06_2005_861.json<- as.data.frame(t(unlist(read_json("reden_16_06_2005_861.json"))))
reden_16_06_2009_723.json<- as.data.frame(t(unlist(read_json("reden_16_06_2009_723.json"))))
reden_16_07_2003_1.json<- as.data.frame(t(unlist(read_json("reden_16_07_2003_1.json"))))
reden_16_07_2003_2.json<- as.data.frame(t(unlist(read_json("reden_16_07_2003_2.json"))))
reden_16_07_2003_3.json<- as.data.frame(t(unlist(read_json("reden_16_07_2003_3.json"))))
reden_16_07_2003_4.json<- as.data.frame(t(unlist(read_json("reden_16_07_2003_4.json"))))
reden_16_07_2003_5.json<- as.data.frame(t(unlist(read_json("reden_16_07_2003_5.json"))))
reden_16_07_2003_6.json<- as.data.frame(t(unlist(read_json("reden_16_07_2003_6.json"))))
reden_16_07_2003_7.json<- as.data.frame(t(unlist(read_json("reden_16_07_2003_7.json"))))
reden_16_07_2003_8.json<- as.data.frame(t(unlist(read_json("reden_16_07_2003_8.json"))))
reden_16_07_2003_9.json<- as.data.frame(t(unlist(read_json("reden_16_07_2003_9.json"))))
reden_16_09_2008_763.json<- as.data.frame(t(unlist(read_json("reden_16_09_2008_763.json"))))
reden_16_09_2010_668.json<- as.data.frame(t(unlist(read_json("reden_16_09_2010_668.json"))))
reden_16_09_2012_551.json<- as.data.frame(t(unlist(read_json("reden_16_09_2012_551.json"))))
reden_16_09_2015_382.json<- as.data.frame(t(unlist(read_json("reden_16_09_2015_382.json"))))
reden_16_10_2009_710.json<- as.data.frame(t(unlist(read_json("reden_16_10_2009_710.json"))))
reden_16_10_2019_978.json<- as.data.frame(t(unlist(read_json("reden_16_10_2019_978.json"))))
reden_16_10_2019_979.json<- as.data.frame(t(unlist(read_json("reden_16_10_2019_979.json"))))
reden_16_11_2009_702.json<- as.data.frame(t(unlist(read_json("reden_16_11_2009_702.json"))))
reden_16_11_2009_703.json<- as.data.frame(t(unlist(read_json("reden_16_11_2009_703.json"))))
reden_16_11_2009_704.json<- as.data.frame(t(unlist(read_json("reden_16_11_2009_704.json"))))
reden_16_11_2010_649.json<- as.data.frame(t(unlist(read_json("reden_16_11_2010_649.json"))))
reden_16_11_2011_577.json<- as.data.frame(t(unlist(read_json("reden_16_11_2011_577.json"))))
reden_16_11_2011_578.json<- as.data.frame(t(unlist(read_json("reden_16_11_2011_578.json"))))
reden_16_11_2016_289.json<- as.data.frame(t(unlist(read_json("reden_16_11_2016_289.json"))))
reden_16_11_2016_290.json<- as.data.frame(t(unlist(read_json("reden_16_11_2016_290.json"))))
reden_16_11_2016_291.json<- as.data.frame(t(unlist(read_json("reden_16_11_2016_291.json"))))
reden_16_11_2018_68.json<- as.data.frame(t(unlist(read_json("reden_16_11_2018_68.json"))))
reden_16_12_2016_280.json<- as.data.frame(t(unlist(read_json("reden_16_12_2016_280.json"))))
reden_16_12_2016_281.json<- as.data.frame(t(unlist(read_json("reden_16_12_2016_281.json"))))
reden_16_12_2016_282.json<- as.data.frame(t(unlist(read_json("reden_16_12_2016_282.json"))))
reden_17_01_2005_877.json<- as.data.frame(t(unlist(read_json("reden_17_01_2005_877.json"))))
reden_17_01_2012_570.json<- as.data.frame(t(unlist(read_json("reden_17_01_2012_570.json"))))
reden_17_01_2013_532.json<- as.data.frame(t(unlist(read_json("reden_17_01_2013_532.json"))))
reden_17_02_2009_742.json<- as.data.frame(t(unlist(read_json("reden_17_02_2009_742.json"))))
reden_17_02_2016_345.json<- as.data.frame(t(unlist(read_json("reden_17_02_2016_345.json"))))
reden_17_03_2006_846.json<- as.data.frame(t(unlist(read_json("reden_17_03_2006_846.json"))))
reden_17_03_2009_739.json<- as.data.frame(t(unlist(read_json("reden_17_03_2009_739.json"))))
reden_17_03_2014_462.json<- as.data.frame(t(unlist(read_json("reden_17_03_2014_462.json"))))
reden_17_04_2008_780.json<- as.data.frame(t(unlist(read_json("reden_17_04_2008_780.json"))))
reden_17_04_2018_108.json<- as.data.frame(t(unlist(read_json("reden_17_04_2018_108.json"))))
reden_17_05_2011_608.json<- as.data.frame(t(unlist(read_json("reden_17_05_2011_608.json"))))
reden_17_05_2017_227.json<- as.data.frame(t(unlist(read_json("reden_17_05_2017_227.json"))))
reden_17_05_2017_228.json<- as.data.frame(t(unlist(read_json("reden_17_05_2017_228.json"))))
reden_17_05_2017_229.json<- as.data.frame(t(unlist(read_json("reden_17_05_2017_229.json"))))
reden_17_05_2017_230.json<- as.data.frame(t(unlist(read_json("reden_17_05_2017_230.json"))))
reden_17_06_2010_673.json<- as.data.frame(t(unlist(read_json("reden_17_06_2010_673.json"))))
reden_17_06_2011_601.json<- as.data.frame(t(unlist(read_json("reden_17_06_2011_601.json"))))
reden_17_06_2019_27.json<- as.data.frame(t(unlist(read_json("reden_17_06_2019_27.json"))))
reden_17_08_2019_22.json<- as.data.frame(t(unlist(read_json("reden_17_08_2019_22.json"))))
reden_17_09_2008_761.json<- as.data.frame(t(unlist(read_json("reden_17_09_2008_761.json"))))
reden_17_09_2008_762.json<- as.data.frame(t(unlist(read_json("reden_17_09_2008_762.json"))))
reden_17_09_2010_667.json<- as.data.frame(t(unlist(read_json("reden_17_09_2010_667.json"))))
reden_17_10_2013_492.json<- as.data.frame(t(unlist(read_json("reden_17_10_2013_492.json"))))
reden_17_10_2014_440.json<- as.data.frame(t(unlist(read_json("reden_17_10_2014_440.json"))))
reden_17_10_2016_302.json<- as.data.frame(t(unlist(read_json("reden_17_10_2016_302.json"))))
reden_17_10_2018_77.json<- as.data.frame(t(unlist(read_json("reden_17_10_2018_77.json"))))
reden_17_10_2018_78.json<- as.data.frame(t(unlist(read_json("reden_17_10_2018_78.json"))))
reden_17_10_2019_976.json<- as.data.frame(t(unlist(read_json("reden_17_10_2019_976.json"))))
reden_17_10_2019_977.json<- as.data.frame(t(unlist(read_json("reden_17_10_2019_977.json"))))
reden_17_11_2008_753.json<- as.data.frame(t(unlist(read_json("reden_17_11_2008_753.json"))))
reden_17_11_2008_754.json<- as.data.frame(t(unlist(read_json("reden_17_11_2008_754.json"))))
reden_17_11_2009_701.json<- as.data.frame(t(unlist(read_json("reden_17_11_2009_701.json"))))
reden_17_11_2010_648.json<- as.data.frame(t(unlist(read_json("reden_17_11_2010_648.json"))))
reden_17_11_2014_435.json<- as.data.frame(t(unlist(read_json("reden_17_11_2014_435.json"))))
reden_17_11_2015_368.json<- as.data.frame(t(unlist(read_json("reden_17_11_2015_368.json"))))
reden_17_11_2017_167.json<- as.data.frame(t(unlist(read_json("reden_17_11_2017_167.json"))))
reden_17_11_2017_168.json<- as.data.frame(t(unlist(read_json("reden_17_11_2017_168.json"))))
reden_17_11_2017_169.json<- as.data.frame(t(unlist(read_json("reden_17_11_2017_169.json"))))
reden_17_12_2001_1.json<- as.data.frame(t(unlist(read_json("reden_17_12_2001_1.json"))))
reden_17_12_2001_2.json<- as.data.frame(t(unlist(read_json("reden_17_12_2001_2.json"))))
reden_17_12_2001_3.json<- as.data.frame(t(unlist(read_json("reden_17_12_2001_3.json"))))
reden_17_12_2001_4.json<- as.data.frame(t(unlist(read_json("reden_17_12_2001_4.json"))))
reden_17_12_2001_5.json<- as.data.frame(t(unlist(read_json("reden_17_12_2001_5.json"))))
reden_17_12_2001_6.json<- as.data.frame(t(unlist(read_json("reden_17_12_2001_6.json"))))
reden_17_12_2001_7.json<- as.data.frame(t(unlist(read_json("reden_17_12_2001_7.json"))))
reden_17_12_2001_8.json<- as.data.frame(t(unlist(read_json("reden_17_12_2001_8.json"))))
reden_17_12_2001_9.json<- as.data.frame(t(unlist(read_json("reden_17_12_2001_9.json"))))
reden_17_12_2001_10.json<- as.data.frame(t(unlist(read_json("reden_17_12_2001_10.json"))))
reden_17_12_2010_641.json<- as.data.frame(t(unlist(read_json("reden_17_12_2010_641.json"))))
reden_18_01_2006_852.json<- as.data.frame(t(unlist(read_json("reden_18_01_2006_852.json"))))
reden_18_01_2011_638.json<- as.data.frame(t(unlist(read_json("reden_18_01_2011_638.json"))))
reden_18_01_2012_569.json<- as.data.frame(t(unlist(read_json("reden_18_01_2012_569.json"))))
reden_18_01_2016_353.json<- as.data.frame(t(unlist(read_json("reden_18_01_2016_353.json"))))
reden_18_01_2016_354.json<- as.data.frame(t(unlist(read_json("reden_18_01_2016_354.json"))))
reden_18_02_2008_788.json<- as.data.frame(t(unlist(read_json("reden_18_02_2008_788.json"))))
reden_18_02_2013_524.json<- as.data.frame(t(unlist(read_json("reden_18_02_2013_524.json"))))
reden_18_02_2014_464.json<- as.data.frame(t(unlist(read_json("reden_18_02_2014_464.json"))))
reden_18_03_2013_522.json<- as.data.frame(t(unlist(read_json("reden_18_03_2013_522.json"))))
reden_18_03_2015_407.json<- as.data.frame(t(unlist(read_json("reden_18_03_2015_407.json"))))
reden_18_04_2007_821.json<- as.data.frame(t(unlist(read_json("reden_18_04_2007_821.json"))))
reden_18_04_2008_779.json<- as.data.frame(t(unlist(read_json("reden_18_04_2008_779.json"))))
reden_18_05_2010_679.json<- as.data.frame(t(unlist(read_json("reden_18_05_2010_679.json"))))
reden_18_05_2017_224.json<- as.data.frame(t(unlist(read_json("reden_18_05_2017_224.json"))))
reden_18_05_2017_225.json<- as.data.frame(t(unlist(read_json("reden_18_05_2017_225.json"))))
reden_18_05_2017_226.json<- as.data.frame(t(unlist(read_json("reden_18_05_2017_226.json"))))
reden_18_05_2018_99.json<- as.data.frame(t(unlist(read_json("reden_18_05_2018_99.json"))))
reden_18_06_2013_512.json<- as.data.frame(t(unlist(read_json("reden_18_06_2013_512.json"))))
reden_18_06_2015_396.json<- as.data.frame(t(unlist(read_json("reden_18_06_2015_396.json"))))
reden_18_07_2014_449.json<- as.data.frame(t(unlist(read_json("reden_18_07_2014_449.json"))))
reden_18_09_2012_550.json<- as.data.frame(t(unlist(read_json("reden_18_09_2012_550.json"))))
reden_18_09_2015_381.json<- as.data.frame(t(unlist(read_json("reden_18_09_2015_381.json"))))
reden_18_09_2017_192.json<- as.data.frame(t(unlist(read_json("reden_18_09_2017_192.json"))))
reden_18_09_2018_82.json<- as.data.frame(t(unlist(read_json("reden_18_09_2018_82.json"))))
reden_18_09_2019_987.json<- as.data.frame(t(unlist(read_json("reden_18_09_2019_987.json"))))
reden_18_11_2005_855.json<- as.data.frame(t(unlist(read_json("reden_18_11_2005_855.json"))))
reden_18_11_2008_752.json<- as.data.frame(t(unlist(read_json("reden_18_11_2008_752.json"))))
reden_18_11_2011_576.json<- as.data.frame(t(unlist(read_json("reden_18_11_2011_576.json"))))
reden_18_11_2014_434.json<- as.data.frame(t(unlist(read_json("reden_18_11_2014_434.json"))))
reden_18_11_2015_367.json<- as.data.frame(t(unlist(read_json("reden_18_11_2015_367.json"))))
reden_18_11_2016_288.json<- as.data.frame(t(unlist(read_json("reden_18_11_2016_288.json"))))
reden_18_11_2019_965.json<- as.data.frame(t(unlist(read_json("reden_18_11_2019_965.json"))))
reden_19_01_2007_830.json<- as.data.frame(t(unlist(read_json("reden_19_01_2007_830.json"))))
reden_19_01_2011_637.json<- as.data.frame(t(unlist(read_json("reden_19_01_2011_637.json"))))
reden_19_01_2018_149.json<- as.data.frame(t(unlist(read_json("reden_19_01_2018_149.json"))))
reden_19_02_2019_47.json<- as.data.frame(t(unlist(read_json("reden_19_02_2019_47.json"))))
reden_19_03_2009_738.json<- as.data.frame(t(unlist(read_json("reden_19_03_2009_738.json"))))
reden_19_03_2019_44.json<- as.data.frame(t(unlist(read_json("reden_19_03_2019_44.json"))))
reden_19_05_2010_678.json<- as.data.frame(t(unlist(read_json("reden_19_05_2010_678.json"))))
reden_19_05_2014_455.json<- as.data.frame(t(unlist(read_json("reden_19_05_2014_455.json"))))
reden_19_05_2014_456.json<- as.data.frame(t(unlist(read_json("reden_19_05_2014_456.json"))))
reden_19_06_2017_211.json<- as.data.frame(t(unlist(read_json("reden_19_06_2017_211.json"))))
reden_19_06_2017_212.json<- as.data.frame(t(unlist(read_json("reden_19_06_2017_212.json"))))
reden_19_08_2013_503.json<- as.data.frame(t(unlist(read_json("reden_19_08_2013_503.json"))))
reden_19_09_2009_716.json<- as.data.frame(t(unlist(read_json("reden_19_09_2009_716.json"))))
reden_19_09_2013_497.json<- as.data.frame(t(unlist(read_json("reden_19_09_2013_497.json"))))
reden_19_09_2018_81.json<- as.data.frame(t(unlist(read_json("reden_19_09_2018_81.json"))))
reden_19_10_2010_659.json<- as.data.frame(t(unlist(read_json("reden_19_10_2010_659.json"))))
reden_19_10_2011_586.json<- as.data.frame(t(unlist(read_json("reden_19_10_2011_586.json"))))
reden_19_10_2015_373.json<- as.data.frame(t(unlist(read_json("reden_19_10_2015_373.json"))))
reden_19_10_2016_301.json<- as.data.frame(t(unlist(read_json("reden_19_10_2016_301.json"))))
reden_19_10_2017_182.json<- as.data.frame(t(unlist(read_json("reden_19_10_2017_182.json"))))
reden_19_11_2007_797.json<- as.data.frame(t(unlist(read_json("reden_19_11_2007_797.json"))))
reden_19_11_2012_539.json<- as.data.frame(t(unlist(read_json("reden_19_11_2012_539.json"))))
reden_19_11_2012_540.json<- as.data.frame(t(unlist(read_json("reden_19_11_2012_540.json"))))
reden_19_11_2013_480.json<- as.data.frame(t(unlist(read_json("reden_19_11_2013_480.json"))))
reden_19_11_2014_433.json<- as.data.frame(t(unlist(read_json("reden_19_11_2014_433.json"))))
reden_19_11_2015_366.json<- as.data.frame(t(unlist(read_json("reden_19_11_2015_366.json"))))
reden_19_11_2018_66.json<- as.data.frame(t(unlist(read_json("reden_19_11_2018_66.json"))))
reden_19_11_2018_67.json<- as.data.frame(t(unlist(read_json("reden_19_11_2018_67.json"))))
reden_19_11_2019_964.json<- as.data.frame(t(unlist(read_json("reden_19_11_2019_964.json"))))
reden_19_12_2017_153.json<- as.data.frame(t(unlist(read_json("reden_19_12_2017_153.json"))))
reden_20_01_2010_694.json<- as.data.frame(t(unlist(read_json("reden_20_01_2010_694.json"))))
reden_20_02_2006_851.json<- as.data.frame(t(unlist(read_json("reden_20_02_2006_851.json"))))
reden_20_02_2018_132.json<- as.data.frame(t(unlist(read_json("reden_20_02_2018_132.json"))))
reden_20_03_2009_737.json<- as.data.frame(t(unlist(read_json("reden_20_03_2009_737.json"))))
reden_20_03_2017_250.json<- as.data.frame(t(unlist(read_json("reden_20_03_2017_250.json"))))
reden_20_03_2017_251.json<- as.data.frame(t(unlist(read_json("reden_20_03_2017_251.json"))))
reden_20_03_2018_120.json<- as.data.frame(t(unlist(read_json("reden_20_03_2018_120.json"))))
reden_20_04_2016_335.json<- as.data.frame(t(unlist(read_json("reden_20_04_2016_335.json"))))
reden_20_04_2017_240.json<- as.data.frame(t(unlist(read_json("reden_20_04_2017_240.json"))))
reden_20_04_2018_107.json<- as.data.frame(t(unlist(read_json("reden_20_04_2018_107.json"))))
reden_20_05_2011_607.json<- as.data.frame(t(unlist(read_json("reden_20_05_2011_607.json"))))
reden_20_06_2011_600.json<- as.data.frame(t(unlist(read_json("reden_20_06_2011_600.json"))))
reden_20_06_2013_511.json<- as.data.frame(t(unlist(read_json("reden_20_06_2013_511.json"))))
reden_20_06_2018_95.json<- as.data.frame(t(unlist(read_json("reden_20_06_2018_95.json"))))
reden_20_08_2018_90.json<- as.data.frame(t(unlist(read_json("reden_20_08_2018_90.json"))))
reden_20_09_2012_549.json<- as.data.frame(t(unlist(read_json("reden_20_09_2012_549.json"))))
reden_20_09_2017_189.json<- as.data.frame(t(unlist(read_json("reden_20_09_2017_189.json"))))
reden_20_09_2017_190.json<- as.data.frame(t(unlist(read_json("reden_20_09_2017_190.json"))))
reden_20_09_2017_191.json<- as.data.frame(t(unlist(read_json("reden_20_09_2017_191.json"))))
reden_20_09_2018_80.json<- as.data.frame(t(unlist(read_json("reden_20_09_2018_80.json"))))
reden_20_10_2011_584.json<- as.data.frame(t(unlist(read_json("reden_20_10_2011_584.json"))))
reden_20_10_2011_585.json<- as.data.frame(t(unlist(read_json("reden_20_10_2011_585.json"))))
reden_20_11_2013_479.json<- as.data.frame(t(unlist(read_json("reden_20_11_2013_479.json"))))
reden_20_11_2014_432.json<- as.data.frame(t(unlist(read_json("reden_20_11_2014_432.json"))))
reden_20_11_2015_365.json<- as.data.frame(t(unlist(read_json("reden_20_11_2015_365.json"))))
reden_20_11_2018_65.json<- as.data.frame(t(unlist(read_json("reden_20_11_2018_65.json"))))
reden_20_11_2019_963.json<- as.data.frame(t(unlist(read_json("reden_20_11_2019_963.json"))))
reden_20_12_2011_571.json<- as.data.frame(t(unlist(read_json("reden_20_12_2011_571.json"))))
reden_21_01_2010_693.json<- as.data.frame(t(unlist(read_json("reden_21_01_2010_693.json"))))
reden_21_01_2013_531.json<- as.data.frame(t(unlist(read_json("reden_21_01_2013_531.json"))))
reden_21_02_2011_627.json<- as.data.frame(t(unlist(read_json("reden_21_02_2011_627.json"))))
reden_21_02_2018_131.json<- as.data.frame(t(unlist(read_json("reden_21_02_2018_131.json"))))
reden_21_04_2008_778.json<- as.data.frame(t(unlist(read_json("reden_21_04_2008_778.json"))))
reden_21_04_2016_334.json<- as.data.frame(t(unlist(read_json("reden_21_04_2016_334.json"))))
reden_21_05_2012_558.json<- as.data.frame(t(unlist(read_json("reden_21_05_2012_558.json"))))
reden_21_06_2017_209.json<- as.data.frame(t(unlist(read_json("reden_21_06_2017_209.json"))))
reden_21_06_2017_210.json<- as.data.frame(t(unlist(read_json("reden_21_06_2017_210.json"))))
reden_21_06_2018_93.json<- as.data.frame(t(unlist(read_json("reden_21_06_2018_93.json"))))
reden_21_06_2018_94.json<- as.data.frame(t(unlist(read_json("reden_21_06_2018_94.json"))))
reden_21_06_2019_25.json<- as.data.frame(t(unlist(read_json("reden_21_06_2019_25.json"))))
reden_21_06_2019_26.json<- as.data.frame(t(unlist(read_json("reden_21_06_2019_26.json"))))
reden_21_07_2017_203.json<- as.data.frame(t(unlist(read_json("reden_21_07_2017_203.json"))))
reden_21_08_2017_200.json<- as.data.frame(t(unlist(read_json("reden_21_08_2017_200.json"))))
reden_21_09_2007_807.json<- as.data.frame(t(unlist(read_json("reden_21_09_2007_807.json"))))
reden_21_09_2015_380.json<- as.data.frame(t(unlist(read_json("reden_21_09_2015_380.json"))))
reden_21_09_2017_188.json<- as.data.frame(t(unlist(read_json("reden_21_09_2017_188.json"))))
reden_21_11_2008_751.json<- as.data.frame(t(unlist(read_json("reden_21_11_2008_751.json"))))
reden_21_11_2012_538.json<- as.data.frame(t(unlist(read_json("reden_21_11_2012_538.json"))))
reden_21_11_2013_478.json<- as.data.frame(t(unlist(read_json("reden_21_11_2013_478.json"))))
reden_21_11_2014_431.json<- as.data.frame(t(unlist(read_json("reden_21_11_2014_431.json"))))
reden_21_11_2017_165.json<- as.data.frame(t(unlist(read_json("reden_21_11_2017_165.json"))))
reden_21_11_2017_166.json<- as.data.frame(t(unlist(read_json("reden_21_11_2017_166.json"))))
reden_21_11_2019_962.json<- as.data.frame(t(unlist(read_json("reden_21_11_2019_962.json"))))
reden_22_01_2016_352.json<- as.data.frame(t(unlist(read_json("reden_22_01_2016_352.json"))))
reden_22_02_2017_262.json<- as.data.frame(t(unlist(read_json("reden_22_02_2017_262.json"))))
reden_22_03_2010_686.json<- as.data.frame(t(unlist(read_json("reden_22_03_2010_686.json"))))
reden_22_03_2011_619.json<- as.data.frame(t(unlist(read_json("reden_22_03_2011_619.json"))))
reden_22_03_2017_249.json<- as.data.frame(t(unlist(read_json("reden_22_03_2017_249.json"))))
reden_22_04_2008_777.json<- as.data.frame(t(unlist(read_json("reden_22_04_2008_777.json"))))
reden_22_05_2008_774.json<- as.data.frame(t(unlist(read_json("reden_22_05_2008_774.json"))))
reden_22_05_2014_454.json<- as.data.frame(t(unlist(read_json("reden_22_05_2014_454.json"))))
reden_22_05_2015_401.json<- as.data.frame(t(unlist(read_json("reden_22_05_2015_401.json"))))
reden_22_05_2017_222.json<- as.data.frame(t(unlist(read_json("reden_22_05_2017_222.json"))))
reden_22_05_2017_223.json<- as.data.frame(t(unlist(read_json("reden_22_05_2017_223.json"))))
reden_22_06_2015_395.json<- as.data.frame(t(unlist(read_json("reden_22_06_2015_395.json"))))
reden_22_08_2012_553.json<- as.data.frame(t(unlist(read_json("reden_22_08_2012_553.json"))))
reden_22_09_2010_666.json<- as.data.frame(t(unlist(read_json("reden_22_09_2010_666.json"))))
reden_22_09_2011_589.json<- as.data.frame(t(unlist(read_json("reden_22_09_2011_589.json"))))
reden_22_09_2016_308.json<- as.data.frame(t(unlist(read_json("reden_22_09_2016_308.json"))))
reden_22_09_2017_187.json<- as.data.frame(t(unlist(read_json("reden_22_09_2017_187.json"))))
reden_22_10_2009_709.json<- as.data.frame(t(unlist(read_json("reden_22_10_2009_709.json"))))
reden_22_11_2010_647.json<- as.data.frame(t(unlist(read_json("reden_22_11_2010_647.json"))))
reden_22_11_2011_574.json<- as.data.frame(t(unlist(read_json("reden_22_11_2011_574.json"))))
reden_22_11_2011_575.json<- as.data.frame(t(unlist(read_json("reden_22_11_2011_575.json"))))
reden_22_11_2013_477.json<- as.data.frame(t(unlist(read_json("reden_22_11_2013_477.json"))))
reden_22_11_2015_364.json<- as.data.frame(t(unlist(read_json("reden_22_11_2015_364.json"))))
reden_22_11_2016_286.json<- as.data.frame(t(unlist(read_json("reden_22_11_2016_286.json"))))
reden_22_11_2016_287.json<- as.data.frame(t(unlist(read_json("reden_22_11_2016_287.json"))))
reden_22_11_2017_163.json<- as.data.frame(t(unlist(read_json("reden_22_11_2017_163.json"))))
reden_22_11_2017_164.json<- as.data.frame(t(unlist(read_json("reden_22_11_2017_164.json"))))
reden_22_11_2018_64.json<- as.data.frame(t(unlist(read_json("reden_22_11_2018_64.json"))))
reden_22_11_2019_958.json<- as.data.frame(t(unlist(read_json("reden_22_11_2019_958.json"))))
reden_22_11_2019_959.json<- as.data.frame(t(unlist(read_json("reden_22_11_2019_959.json"))))
reden_22_11_2019_960.json<- as.data.frame(t(unlist(read_json("reden_22_11_2019_960.json"))))
reden_22_11_2019_961.json<- as.data.frame(t(unlist(read_json("reden_22_11_2019_961.json"))))
reden_22_12_2016_279.json<- as.data.frame(t(unlist(read_json("reden_22_12_2016_279.json"))))
reden_23_01_2012_567.json<- as.data.frame(t(unlist(read_json("reden_23_01_2012_567.json"))))
reden_23_02_2005_873.json<- as.data.frame(t(unlist(read_json("reden_23_02_2005_873.json"))))
reden_23_02_2009_741.json<- as.data.frame(t(unlist(read_json("reden_23_02_2009_741.json"))))
reden_23_02_2011_626.json<- as.data.frame(t(unlist(read_json("reden_23_02_2011_626.json"))))
reden_23_02_2016_343.json<- as.data.frame(t(unlist(read_json("reden_23_02_2016_343.json"))))
reden_23_02_2016_344.json<- as.data.frame(t(unlist(read_json("reden_23_02_2016_344.json"))))
reden_23_02_2017_260.json<- as.data.frame(t(unlist(read_json("reden_23_02_2017_260.json"))))
reden_23_02_2017_261.json<- as.data.frame(t(unlist(read_json("reden_23_02_2017_261.json"))))
reden_23_03_2009_736.json<- as.data.frame(t(unlist(read_json("reden_23_03_2009_736.json"))))
reden_23_03_2011_618.json<- as.data.frame(t(unlist(read_json("reden_23_03_2011_618.json"))))
reden_23_03_2016_339.json<- as.data.frame(t(unlist(read_json("reden_23_03_2016_339.json"))))
reden_23_04_2005_870.json<- as.data.frame(t(unlist(read_json("reden_23_04_2005_870.json"))))
reden_23_04_2018_106.json<- as.data.frame(t(unlist(read_json("reden_23_04_2018_106.json"))))
reden_23_05_2006_839.json<- as.data.frame(t(unlist(read_json("reden_23_05_2006_839.json"))))
reden_23_05_2007_815.json<- as.data.frame(t(unlist(read_json("reden_23_05_2007_815.json"))))
reden_23_05_2011_605.json<- as.data.frame(t(unlist(read_json("reden_23_05_2011_605.json"))))
reden_23_05_2011_606.json<- as.data.frame(t(unlist(read_json("reden_23_05_2011_606.json"))))
reden_23_05_2013_518.json<- as.data.frame(t(unlist(read_json("reden_23_05_2013_518.json"))))
reden_23_05_2013_519.json<- as.data.frame(t(unlist(read_json("reden_23_05_2013_519.json"))))
reden_23_05_2017_221.json<- as.data.frame(t(unlist(read_json("reden_23_05_2017_221.json"))))
reden_23_05_2019_33.json<- as.data.frame(t(unlist(read_json("reden_23_05_2019_33.json"))))
reden_23_06_2006_838.json<- as.data.frame(t(unlist(read_json("reden_23_06_2006_838.json"))))
reden_23_06_2009_722.json<- as.data.frame(t(unlist(read_json("reden_23_06_2009_722.json"))))
reden_23_06_2016_317.json<- as.data.frame(t(unlist(read_json("reden_23_06_2016_317.json"))))
reden_23_07_2014_448.json<- as.data.frame(t(unlist(read_json("reden_23_07_2014_448.json"))))
reden_23_07_2015_387.json<- as.data.frame(t(unlist(read_json("reden_23_07_2015_387.json"))))
reden_23_08_2018_89.json<- as.data.frame(t(unlist(read_json("reden_23_08_2018_89.json"))))
reden_23_09_2015_379.json<- as.data.frame(t(unlist(read_json("reden_23_09_2015_379.json"))))
reden_23_09_2019_986.json<- as.data.frame(t(unlist(read_json("reden_23_09_2019_986.json"))))
reden_23_10_2013_491.json<- as.data.frame(t(unlist(read_json("reden_23_10_2013_491.json"))))
reden_23_10_2017_181.json<- as.data.frame(t(unlist(read_json("reden_23_10_2017_181.json"))))
reden_23_10_2019_975.json<- as.data.frame(t(unlist(read_json("reden_23_10_2019_975.json"))))
reden_23_11_2015_363.json<- as.data.frame(t(unlist(read_json("reden_23_11_2015_363.json"))))
reden_23_11_2017_161.json<- as.data.frame(t(unlist(read_json("reden_23_11_2017_161.json"))))
reden_23_11_2017_162.json<- as.data.frame(t(unlist(read_json("reden_23_11_2017_162.json"))))
reden_23_12_2016_278.json<- as.data.frame(t(unlist(read_json("reden_23_12_2016_278.json"))))
reden_24_01_2012_566.json<- as.data.frame(t(unlist(read_json("reden_24_01_2012_566.json"))))
reden_24_01_2013_530.json<- as.data.frame(t(unlist(read_json("reden_24_01_2013_530.json"))))
reden_24_01_2018_148.json<- as.data.frame(t(unlist(read_json("reden_24_01_2018_148.json"))))
reden_24_01_2019_55.json<- as.data.frame(t(unlist(read_json("reden_24_01_2019_55.json"))))
reden_24_02_2011_625.json<- as.data.frame(t(unlist(read_json("reden_24_02_2011_625.json"))))
reden_24_02_2016_342.json<- as.data.frame(t(unlist(read_json("reden_24_02_2016_342.json"))))
reden_24_02_2017_259.json<- as.data.frame(t(unlist(read_json("reden_24_02_2017_259.json"))))
reden_24_03_2016_338.json<- as.data.frame(t(unlist(read_json("reden_24_03_2016_338.json"))))
reden_24_04_2013_521.json<- as.data.frame(t(unlist(read_json("reden_24_04_2013_521.json"))))
reden_24_04_2017_239.json<- as.data.frame(t(unlist(read_json("reden_24_04_2017_239.json"))))
reden_24_04_2018_104.json<- as.data.frame(t(unlist(read_json("reden_24_04_2018_104.json"))))
reden_24_04_2018_105.json<- as.data.frame(t(unlist(read_json("reden_24_04_2018_105.json"))))
reden_24_05_2013_517.json<- as.data.frame(t(unlist(read_json("reden_24_05_2013_517.json"))))
reden_24_05_2017_220.json<- as.data.frame(t(unlist(read_json("reden_24_05_2017_220.json"))))
reden_24_05_2019_32.json<- as.data.frame(t(unlist(read_json("reden_24_05_2019_32.json"))))
reden_24_07_2014_447.json<- as.data.frame(t(unlist(read_json("reden_24_07_2014_447.json"))))
reden_24_08_2011_597.json<- as.data.frame(t(unlist(read_json("reden_24_08_2011_597.json"))))
reden_24_09_2009_714.json<- as.data.frame(t(unlist(read_json("reden_24_09_2009_714.json"))))
reden_24_09_2009_715.json<- as.data.frame(t(unlist(read_json("reden_24_09_2009_715.json"))))
reden_24_09_2018_79.json<- as.data.frame(t(unlist(read_json("reden_24_09_2018_79.json"))))
reden_24_10_2001_1.json<- as.data.frame(t(unlist(read_json("reden_24_10_2001_1.json"))))
reden_24_10_2001_2.json<- as.data.frame(t(unlist(read_json("reden_24_10_2001_2.json"))))
reden_24_10_2001_3.json<- as.data.frame(t(unlist(read_json("reden_24_10_2001_3.json"))))
reden_24_10_2001_4.json<- as.data.frame(t(unlist(read_json("reden_24_10_2001_4.json"))))
reden_24_10_2001_5.json<- as.data.frame(t(unlist(read_json("reden_24_10_2001_5.json"))))
reden_24_10_2001_6.json<- as.data.frame(t(unlist(read_json("reden_24_10_2001_6.json"))))
reden_24_10_2001_7.json<- as.data.frame(t(unlist(read_json("reden_24_10_2001_7.json"))))
reden_24_10_2001_8.json<- as.data.frame(t(unlist(read_json("reden_24_10_2001_8.json"))))
reden_24_10_2001_9.json<- as.data.frame(t(unlist(read_json("reden_24_10_2001_9.json"))))
reden_24_10_2001_10.json<- as.data.frame(t(unlist(read_json("reden_24_10_2001_10.json"))))
reden_24_10_2001_11.json<- as.data.frame(t(unlist(read_json("reden_24_10_2001_11.json"))))
reden_24_10_2001_12.json<- as.data.frame(t(unlist(read_json("reden_24_10_2001_12.json"))))
reden_24_10_2001_13.json<- as.data.frame(t(unlist(read_json("reden_24_10_2001_13.json"))))
reden_24_10_2001_14.json<- as.data.frame(t(unlist(read_json("reden_24_10_2001_14.json"))))
reden_24_10_2001_15.json<- as.data.frame(t(unlist(read_json("reden_24_10_2001_15.json"))))
reden_24_10_2013_490.json<- as.data.frame(t(unlist(read_json("reden_24_10_2013_490.json"))))
reden_24_10_2016_300.json<- as.data.frame(t(unlist(read_json("reden_24_10_2016_300.json"))))
reden_24_10_2019_974.json<- as.data.frame(t(unlist(read_json("reden_24_10_2019_974.json"))))
reden_24_11_2010_646.json<- as.data.frame(t(unlist(read_json("reden_24_11_2010_646.json"))))
reden_24_11_2011_573.json<- as.data.frame(t(unlist(read_json("reden_24_11_2011_573.json"))))
reden_24_11_2014_430.json<- as.data.frame(t(unlist(read_json("reden_24_11_2014_430.json"))))
reden_24_11_2015_361.json<- as.data.frame(t(unlist(read_json("reden_24_11_2015_361.json"))))
reden_24_11_2015_362.json<- as.data.frame(t(unlist(read_json("reden_24_11_2015_362.json"))))
reden_25_01_2007_829.json<- as.data.frame(t(unlist(read_json("reden_25_01_2007_829.json"))))
reden_25_01_2015_419.json<- as.data.frame(t(unlist(read_json("reden_25_01_2015_419.json"))))
reden_25_01_2016_351.json<- as.data.frame(t(unlist(read_json("reden_25_01_2016_351.json"))))
reden_25_01_2017_275.json<- as.data.frame(t(unlist(read_json("reden_25_01_2017_275.json"))))
reden_25_01_2017_276.json<- as.data.frame(t(unlist(read_json("reden_25_01_2017_276.json"))))
reden_25_01_2018_147.json<- as.data.frame(t(unlist(read_json("reden_25_01_2018_147.json"))))
reden_25_02_2008_787.json<- as.data.frame(t(unlist(read_json("reden_25_02_2008_787.json"))))
reden_25_02_2013_523.json<- as.data.frame(t(unlist(read_json("reden_25_02_2013_523.json"))))
reden_25_02_2019_46.json<- as.data.frame(t(unlist(read_json("reden_25_02_2019_46.json"))))
reden_25_03_2015_406.json<- as.data.frame(t(unlist(read_json("reden_25_03_2015_406.json"))))
reden_25_03_2017_248.json<- as.data.frame(t(unlist(read_json("reden_25_03_2017_248.json"))))
reden_25_04_2008_776.json<- as.data.frame(t(unlist(read_json("reden_25_04_2008_776.json"))))
reden_25_04_2010_685.json<- as.data.frame(t(unlist(read_json("reden_25_04_2010_685.json"))))
reden_25_04_2017_236.json<- as.data.frame(t(unlist(read_json("reden_25_04_2017_236.json"))))
reden_25_04_2017_237.json<- as.data.frame(t(unlist(read_json("reden_25_04_2017_237.json"))))
reden_25_04_2017_238.json<- as.data.frame(t(unlist(read_json("reden_25_04_2017_238.json"))))
reden_25_05_2009_728.json<- as.data.frame(t(unlist(read_json("reden_25_05_2009_728.json"))))
reden_25_05_2017_219.json<- as.data.frame(t(unlist(read_json("reden_25_05_2017_219.json"))))
reden_25_05_2018_98.json<- as.data.frame(t(unlist(read_json("reden_25_05_2018_98.json"))))
reden_25_06_2008_766.json<- as.data.frame(t(unlist(read_json("reden_25_06_2008_766.json"))))
reden_25_06_2013_510.json<- as.data.frame(t(unlist(read_json("reden_25_06_2013_510.json"))))
reden_25_06_2015_393.json<- as.data.frame(t(unlist(read_json("reden_25_06_2015_393.json"))))
reden_25_06_2015_394.json<- as.data.frame(t(unlist(read_json("reden_25_06_2015_394.json"))))
reden_25_08_2018_88.json<- as.data.frame(t(unlist(read_json("reden_25_08_2018_88.json"))))
reden_25_09_2008_760.json<- as.data.frame(t(unlist(read_json("reden_25_09_2008_760.json"))))
reden_25_09_2013_496.json<- as.data.frame(t(unlist(read_json("reden_25_09_2013_496.json"))))
reden_25_09_2017_186.json<- as.data.frame(t(unlist(read_json("reden_25_09_2017_186.json"))))
reden_25_10_2005_859.json<- as.data.frame(t(unlist(read_json("reden_25_10_2005_859.json"))))
reden_25_10_2010_658.json<- as.data.frame(t(unlist(read_json("reden_25_10_2010_658.json"))))
reden_25_11_2009_700.json<- as.data.frame(t(unlist(read_json("reden_25_11_2009_700.json"))))
reden_25_11_2010_644.json<- as.data.frame(t(unlist(read_json("reden_25_11_2010_644.json"))))
reden_25_11_2010_645.json<- as.data.frame(t(unlist(read_json("reden_25_11_2010_645.json"))))
reden_25_11_2013_476.json<- as.data.frame(t(unlist(read_json("reden_25_11_2013_476.json"))))
reden_25_11_2014_428.json<- as.data.frame(t(unlist(read_json("reden_25_11_2014_428.json"))))
reden_25_11_2014_429.json<- as.data.frame(t(unlist(read_json("reden_25_11_2014_429.json"))))
reden_25_11_2015_359.json<- as.data.frame(t(unlist(read_json("reden_25_11_2015_359.json"))))
reden_25_11_2015_360.json<- as.data.frame(t(unlist(read_json("reden_25_11_2015_360.json"))))
reden_26_01_2005_874.json<- as.data.frame(t(unlist(read_json("reden_26_01_2005_874.json"))))
reden_26_01_2005_875.json<- as.data.frame(t(unlist(read_json("reden_26_01_2005_875.json"))))
reden_26_01_2005_876.json<- as.data.frame(t(unlist(read_json("reden_26_01_2005_876.json"))))
reden_26_01_2009_746.json<- as.data.frame(t(unlist(read_json("reden_26_01_2009_746.json"))))
reden_26_01_2010_692.json<- as.data.frame(t(unlist(read_json("reden_26_01_2010_692.json"))))
reden_26_01_2011_636.json<- as.data.frame(t(unlist(read_json("reden_26_01_2011_636.json"))))
reden_26_01_2015_417.json<- as.data.frame(t(unlist(read_json("reden_26_01_2015_417.json"))))
reden_26_01_2015_418.json<- as.data.frame(t(unlist(read_json("reden_26_01_2015_418.json"))))
reden_26_01_2017_271.json<- as.data.frame(t(unlist(read_json("reden_26_01_2017_271.json"))))
reden_26_01_2017_272.json<- as.data.frame(t(unlist(read_json("reden_26_01_2017_272.json"))))
reden_26_01_2017_273.json<- as.data.frame(t(unlist(read_json("reden_26_01_2017_273.json"))))
reden_26_01_2017_274.json<- as.data.frame(t(unlist(read_json("reden_26_01_2017_274.json"))))
reden_26_02_2015_410.json<- as.data.frame(t(unlist(read_json("reden_26_02_2015_410.json"))))
reden_26_02_2018_130.json<- as.data.frame(t(unlist(read_json("reden_26_02_2018_130.json"))))
reden_26_03_2004_1.json<- as.data.frame(t(unlist(read_json("reden_26_03_2004_1.json"))))
reden_26_03_2004_2.json<- as.data.frame(t(unlist(read_json("reden_26_03_2004_2.json"))))
reden_26_03_2004_3.json<- as.data.frame(t(unlist(read_json("reden_26_03_2004_3.json"))))
reden_26_03_2004_4.json<- as.data.frame(t(unlist(read_json("reden_26_03_2004_4.json"))))
reden_26_03_2004_5.json<- as.data.frame(t(unlist(read_json("reden_26_03_2004_5.json"))))
reden_26_03_2004_6.json<- as.data.frame(t(unlist(read_json("reden_26_03_2004_6.json"))))
reden_26_03_2004_7.json<- as.data.frame(t(unlist(read_json("reden_26_03_2004_7.json"))))
reden_26_03_2004_8.json<- as.data.frame(t(unlist(read_json("reden_26_03_2004_8.json"))))
reden_26_03_2014_461.json<- as.data.frame(t(unlist(read_json("reden_26_03_2014_461.json"))))
reden_26_03_2018_119.json<- as.data.frame(t(unlist(read_json("reden_26_03_2018_119.json"))))
reden_26_04_2010_684.json<- as.data.frame(t(unlist(read_json("reden_26_04_2010_684.json"))))
reden_26_04_2012_560.json<- as.data.frame(t(unlist(read_json("reden_26_04_2012_560.json"))))
reden_26_04_2016_333.json<- as.data.frame(t(unlist(read_json("reden_26_04_2016_333.json"))))
reden_26_05_2011_603.json<- as.data.frame(t(unlist(read_json("reden_26_05_2011_603.json"))))
reden_26_05_2011_604.json<- as.data.frame(t(unlist(read_json("reden_26_05_2011_604.json"))))
reden_26_08_2013_502.json<- as.data.frame(t(unlist(read_json("reden_26_08_2013_502.json"))))
reden_26_09_2006_836.json<- as.data.frame(t(unlist(read_json("reden_26_09_2006_836.json"))))
reden_26_09_2007_806.json<- as.data.frame(t(unlist(read_json("reden_26_09_2007_806.json"))))
reden_26_09_2008_759.json<- as.data.frame(t(unlist(read_json("reden_26_09_2008_759.json"))))
reden_26_09_2011_588.json<- as.data.frame(t(unlist(read_json("reden_26_09_2011_588.json"))))
reden_26_09_2013_495.json<- as.data.frame(t(unlist(read_json("reden_26_09_2013_495.json"))))
reden_26_09_2019_985.json<- as.data.frame(t(unlist(read_json("reden_26_09_2019_985.json"))))
reden_26_10_2005_858.json<- as.data.frame(t(unlist(read_json("reden_26_10_2005_858.json"))))
reden_26_10_2006_834.json<- as.data.frame(t(unlist(read_json("reden_26_10_2006_834.json"))))
reden_26_10_2013_489.json<- as.data.frame(t(unlist(read_json("reden_26_10_2013_489.json"))))
reden_26_10_2014_439.json<- as.data.frame(t(unlist(read_json("reden_26_10_2014_439.json"))))
reden_26_10_2015_372.json<- as.data.frame(t(unlist(read_json("reden_26_10_2015_372.json"))))
reden_26_11_2008_750.json<- as.data.frame(t(unlist(read_json("reden_26_11_2008_750.json"))))
reden_26_11_2009_698.json<- as.data.frame(t(unlist(read_json("reden_26_11_2009_698.json"))))
reden_26_11_2009_699.json<- as.data.frame(t(unlist(read_json("reden_26_11_2009_699.json"))))
reden_26_11_2013_475.json<- as.data.frame(t(unlist(read_json("reden_26_11_2013_475.json"))))
reden_27_01_2011_634.json<- as.data.frame(t(unlist(read_json("reden_27_01_2011_634.json"))))
reden_27_01_2011_635.json<- as.data.frame(t(unlist(read_json("reden_27_01_2011_635.json"))))
reden_27_01_2014_469.json<- as.data.frame(t(unlist(read_json("reden_27_01_2014_469.json"))))
reden_27_01_2016_350.json<- as.data.frame(t(unlist(read_json("reden_27_01_2016_350.json"))))
reden_27_02_2008_786.json<- as.data.frame(t(unlist(read_json("reden_27_02_2008_786.json"))))
reden_27_02_2014_463.json<- as.data.frame(t(unlist(read_json("reden_27_02_2014_463.json"))))
reden_27_02_2018_128.json<- as.data.frame(t(unlist(read_json("reden_27_02_2018_128.json"))))
reden_27_02_2018_129.json<- as.data.frame(t(unlist(read_json("reden_27_02_2018_129.json"))))
reden_27_02_2019_45.json<- as.data.frame(t(unlist(read_json("reden_27_02_2019_45.json"))))
reden_27_05_2010_677.json<- as.data.frame(t(unlist(read_json("reden_27_05_2010_677.json"))))
reden_27_05_2011_602.json<- as.data.frame(t(unlist(read_json("reden_27_05_2011_602.json"))))
reden_27_06_2001_1.json<- as.data.frame(t(unlist(read_json("reden_27_06_2001_1.json"))))
reden_27_06_2001_2.json<- as.data.frame(t(unlist(read_json("reden_27_06_2001_2.json"))))
reden_27_06_2001_3.json<- as.data.frame(t(unlist(read_json("reden_27_06_2001_3.json"))))
reden_27_06_2001_4.json<- as.data.frame(t(unlist(read_json("reden_27_06_2001_4.json"))))
reden_27_06_2001_5.json<- as.data.frame(t(unlist(read_json("reden_27_06_2001_5.json"))))
reden_27_06_2001_6.json<- as.data.frame(t(unlist(read_json("reden_27_06_2001_6.json"))))
reden_27_06_2001_7.json<- as.data.frame(t(unlist(read_json("reden_27_06_2001_7.json"))))
reden_27_06_2001_8.json<- as.data.frame(t(unlist(read_json("reden_27_06_2001_8.json"))))
reden_27_06_2001_9.json<- as.data.frame(t(unlist(read_json("reden_27_06_2001_9.json"))))
reden_27_06_2001_10.json<- as.data.frame(t(unlist(read_json("reden_27_06_2001_10.json"))))
reden_27_06_2001_11.json<- as.data.frame(t(unlist(read_json("reden_27_06_2001_11.json"))))
reden_27_06_2001_12.json<- as.data.frame(t(unlist(read_json("reden_27_06_2001_12.json"))))
reden_27_06_2001_13.json<- as.data.frame(t(unlist(read_json("reden_27_06_2001_13.json"))))
reden_27_06_2001_14.json<- as.data.frame(t(unlist(read_json("reden_27_06_2001_14.json"))))
reden_27_06_2001_15.json<- as.data.frame(t(unlist(read_json("reden_27_06_2001_15.json"))))
reden_27_06_2001_16.json<- as.data.frame(t(unlist(read_json("reden_27_06_2001_16.json"))))
reden_27_06_2001_17.json<- as.data.frame(t(unlist(read_json("reden_27_06_2001_17.json"))))
reden_27_06_2001_18.json<- as.data.frame(t(unlist(read_json("reden_27_06_2001_18.json"))))
reden_27_06_2001_19.json<- as.data.frame(t(unlist(read_json("reden_27_06_2001_19.json"))))
reden_27_06_2001_20.json<- as.data.frame(t(unlist(read_json("reden_27_06_2001_20.json"))))
reden_27_06_2001_21.json<- as.data.frame(t(unlist(read_json("reden_27_06_2001_21.json"))))
reden_27_06_2001_22.json<- as.data.frame(t(unlist(read_json("reden_27_06_2001_22.json"))))
reden_27_06_2001_23.json<- as.data.frame(t(unlist(read_json("reden_27_06_2001_23.json"))))
reden_27_06_2001_24.json<- as.data.frame(t(unlist(read_json("reden_27_06_2001_24.json"))))
reden_27_06_2001_25.json<- as.data.frame(t(unlist(read_json("reden_27_06_2001_25.json"))))
reden_27_06_2001_26.json<- as.data.frame(t(unlist(read_json("reden_27_06_2001_26.json"))))
reden_27_06_2013_508.json<- as.data.frame(t(unlist(read_json("reden_27_06_2013_508.json"))))
reden_27_06_2013_509.json<- as.data.frame(t(unlist(read_json("reden_27_06_2013_509.json"))))
reden_27_09_2012_548.json<- as.data.frame(t(unlist(read_json("reden_27_09_2012_548.json"))))
reden_27_09_2016_307.json<- as.data.frame(t(unlist(read_json("reden_27_09_2016_307.json"))))
reden_27_09_2019_984.json<- as.data.frame(t(unlist(read_json("reden_27_09_2019_984.json"))))
reden_27_10_2011_583.json<- as.data.frame(t(unlist(read_json("reden_27_10_2011_583.json"))))
reden_27_10_2016_299.json<- as.data.frame(t(unlist(read_json("reden_27_10_2016_299.json"))))
reden_27_10_2017_180.json<- as.data.frame(t(unlist(read_json("reden_27_10_2017_180.json"))))
reden_27_11_2014_427.json<- as.data.frame(t(unlist(read_json("reden_27_11_2014_427.json"))))
reden_28_01_2009_745.json<- as.data.frame(t(unlist(read_json("reden_28_01_2009_745.json"))))
reden_28_01_2014_468.json<- as.data.frame(t(unlist(read_json("reden_28_01_2014_468.json"))))
reden_28_01_2015_414.json<- as.data.frame(t(unlist(read_json("reden_28_01_2015_414.json"))))
reden_28_01_2015_415.json<- as.data.frame(t(unlist(read_json("reden_28_01_2015_415.json"))))
reden_28_01_2015_416.json<- as.data.frame(t(unlist(read_json("reden_28_01_2015_416.json"))))
reden_28_01_2016_348.json<- as.data.frame(t(unlist(read_json("reden_28_01_2016_348.json"))))
reden_28_01_2016_349.json<- as.data.frame(t(unlist(read_json("reden_28_01_2016_349.json"))))
reden_28_02_2007_826.json<- as.data.frame(t(unlist(read_json("reden_28_02_2007_826.json"))))
reden_28_02_2007_827.json<- as.data.frame(t(unlist(read_json("reden_28_02_2007_827.json"))))
reden_28_02_2012_563.json<- as.data.frame(t(unlist(read_json("reden_28_02_2012_563.json"))))
reden_28_02_2018_127.json<- as.data.frame(t(unlist(read_json("reden_28_02_2018_127.json"))))
reden_28_03_2007_822.json<- as.data.frame(t(unlist(read_json("reden_28_03_2007_822.json"))))
reden_28_03_2008_783.json<- as.data.frame(t(unlist(read_json("reden_28_03_2008_783.json"))))
reden_28_03_2014_460.json<- as.data.frame(t(unlist(read_json("reden_28_03_2014_460.json"))))
reden_28_03_2017_247.json<- as.data.frame(t(unlist(read_json("reden_28_03_2017_247.json"))))
reden_28_03_2018_118.json<- as.data.frame(t(unlist(read_json("reden_28_03_2018_118.json"))))
reden_28_04_2005_869.json<- as.data.frame(t(unlist(read_json("reden_28_04_2005_869.json"))))
reden_28_04_2006_844.json<- as.data.frame(t(unlist(read_json("reden_28_04_2006_844.json"))))
reden_28_04_2010_683.json<- as.data.frame(t(unlist(read_json("reden_28_04_2010_683.json"))))
reden_28_04_2012_559.json<- as.data.frame(t(unlist(read_json("reden_28_04_2012_559.json"))))
reden_28_04_2015_405.json<- as.data.frame(t(unlist(read_json("reden_28_04_2015_405.json"))))
reden_28_05_2005_868.json<- as.data.frame(t(unlist(read_json("reden_28_05_2005_868.json"))))
reden_28_05_2009_727.json<- as.data.frame(t(unlist(read_json("reden_28_05_2009_727.json"))))
reden_28_05_2010_676.json<- as.data.frame(t(unlist(read_json("reden_28_05_2010_676.json"))))
reden_28_05_2013_516.json<- as.data.frame(t(unlist(read_json("reden_28_05_2013_516.json"))))
reden_28_06_2007_809.json<- as.data.frame(t(unlist(read_json("reden_28_06_2007_809.json"))))
reden_28_06_2010_672.json<- as.data.frame(t(unlist(read_json("reden_28_06_2010_672.json"))))
reden_28_08_2017_199.json<- as.data.frame(t(unlist(read_json("reden_28_08_2017_199.json"))))
reden_28_10_2003_1.json<- as.data.frame(t(unlist(read_json("reden_28_10_2003_1.json"))))
reden_28_10_2003_2.json<- as.data.frame(t(unlist(read_json("reden_28_10_2003_2.json"))))
reden_28_10_2003_3.json<- as.data.frame(t(unlist(read_json("reden_28_10_2003_3.json"))))
reden_28_10_2003_4.json<- as.data.frame(t(unlist(read_json("reden_28_10_2003_4.json"))))
reden_28_10_2003_5.json<- as.data.frame(t(unlist(read_json("reden_28_10_2003_5.json"))))
reden_28_10_2003_6.json<- as.data.frame(t(unlist(read_json("reden_28_10_2003_6.json"))))
reden_28_10_2003_7.json<- as.data.frame(t(unlist(read_json("reden_28_10_2003_7.json"))))
reden_28_10_2003_8.json<- as.data.frame(t(unlist(read_json("reden_28_10_2003_8.json"))))
reden_28_10_2003_9.json<- as.data.frame(t(unlist(read_json("reden_28_10_2003_9.json"))))
reden_28_10_2003_10.json<- as.data.frame(t(unlist(read_json("reden_28_10_2003_10.json"))))
reden_28_10_2010_655.json<- as.data.frame(t(unlist(read_json("reden_28_10_2010_655.json"))))
reden_28_10_2010_656.json<- as.data.frame(t(unlist(read_json("reden_28_10_2010_656.json"))))
reden_28_10_2010_657.json<- as.data.frame(t(unlist(read_json("reden_28_10_2010_657.json"))))
reden_28_11_2013_474.json<- as.data.frame(t(unlist(read_json("reden_28_11_2013_474.json"))))
reden_28_11_2014_426.json<- as.data.frame(t(unlist(read_json("reden_28_11_2014_426.json"))))
reden_28_11_2017_160.json<- as.data.frame(t(unlist(read_json("reden_28_11_2017_160.json"))))
reden_28_11_2018_63.json<- as.data.frame(t(unlist(read_json("reden_28_11_2018_63.json"))))
reden_28_11_2019_957.json<- as.data.frame(t(unlist(read_json("reden_28_11_2019_957.json"))))
reden_29_01_2018_146.json<- as.data.frame(t(unlist(read_json("reden_29_01_2018_146.json"))))
reden_29_03_1999_1.json<- as.data.frame(t(unlist(read_json("reden_29_03_1999_1.json"))))
reden_29_03_1999_2.json<- as.data.frame(t(unlist(read_json("reden_29_03_1999_2.json"))))
reden_29_03_1999_3.json<- as.data.frame(t(unlist(read_json("reden_29_03_1999_3.json"))))
reden_29_03_1999_4.json<- as.data.frame(t(unlist(read_json("reden_29_03_1999_4.json"))))
reden_29_03_1999_5.json<- as.data.frame(t(unlist(read_json("reden_29_03_1999_5.json"))))
reden_29_03_1999_6.json<- as.data.frame(t(unlist(read_json("reden_29_03_1999_6.json"))))
reden_29_03_1999_7.json<- as.data.frame(t(unlist(read_json("reden_29_03_1999_7.json"))))
reden_29_03_1999_8.json<- as.data.frame(t(unlist(read_json("reden_29_03_1999_8.json"))))
reden_29_03_1999_9.json<- as.data.frame(t(unlist(read_json("reden_29_03_1999_9.json"))))
reden_29_03_2012_561.json<- as.data.frame(t(unlist(read_json("reden_29_03_2012_561.json"))))
reden_29_03_2018_117.json<- as.data.frame(t(unlist(read_json("reden_29_03_2018_117.json"))))
reden_29_04_2009_733.json<- as.data.frame(t(unlist(read_json("reden_29_04_2009_733.json"))))
reden_29_04_2016_332.json<- as.data.frame(t(unlist(read_json("reden_29_04_2016_332.json"))))
reden_29_05_2007_814.json<- as.data.frame(t(unlist(read_json("reden_29_05_2007_814.json"))))
reden_29_05_2017_218.json<- as.data.frame(t(unlist(read_json("reden_29_05_2017_218.json"))))
reden_29_05_2019_30.json<- as.data.frame(t(unlist(read_json("reden_29_05_2019_30.json"))))
reden_29_05_2019_31.json<- as.data.frame(t(unlist(read_json("reden_29_05_2019_31.json"))))
reden_29_06_2011_599.json<- as.data.frame(t(unlist(read_json("reden_29_06_2011_599.json"))))
reden_29_06_2017_207.json<- as.data.frame(t(unlist(read_json("reden_29_06_2017_207.json"))))
reden_29_06_2017_208.json<- as.data.frame(t(unlist(read_json("reden_29_06_2017_208.json"))))
reden_29_08_2013_500.json<- as.data.frame(t(unlist(read_json("reden_29_08_2013_500.json"))))
reden_29_08_2013_501.json<- as.data.frame(t(unlist(read_json("reden_29_08_2013_501.json"))))
reden_29_08_2016_312.json<- as.data.frame(t(unlist(read_json("reden_29_08_2016_312.json"))))
reden_29_08_2016_313.json<- as.data.frame(t(unlist(read_json("reden_29_08_2016_313.json"))))
reden_29_08_2017_198.json<- as.data.frame(t(unlist(read_json("reden_29_08_2017_198.json"))))
reden_29_08_2019_20.json<- as.data.frame(t(unlist(read_json("reden_29_08_2019_20.json"))))
reden_29_08_2019_21.json<- as.data.frame(t(unlist(read_json("reden_29_08_2019_21.json"))))
reden_29_09_2006_835.json<- as.data.frame(t(unlist(read_json("reden_29_09_2006_835.json"))))
reden_29_09_2010_664.json<- as.data.frame(t(unlist(read_json("reden_29_09_2010_664.json"))))
reden_29_09_2010_665.json<- as.data.frame(t(unlist(read_json("reden_29_09_2010_665.json"))))
reden_29_09_2014_444.json<- as.data.frame(t(unlist(read_json("reden_29_09_2014_444.json"))))
reden_29_09_2015_378.json<- as.data.frame(t(unlist(read_json("reden_29_09_2015_378.json"))))
reden_29_09_2016_306.json<- as.data.frame(t(unlist(read_json("reden_29_09_2016_306.json"))))
reden_29_10_2009_708.json<- as.data.frame(t(unlist(read_json("reden_29_10_2009_708.json"))))
reden_29_10_2019_972.json<- as.data.frame(t(unlist(read_json("reden_29_10_2019_972.json"))))
reden_29_10_2019_973.json<- as.data.frame(t(unlist(read_json("reden_29_10_2019_973.json"))))
reden_29_11_2007_796.json<- as.data.frame(t(unlist(read_json("reden_29_11_2007_796.json"))))
reden_29_11_2012_536.json<- as.data.frame(t(unlist(read_json("reden_29_11_2012_536.json"))))
reden_29_11_2012_537.json<- as.data.frame(t(unlist(read_json("reden_29_11_2012_537.json"))))
reden_29_11_2017_157.json<- as.data.frame(t(unlist(read_json("reden_29_11_2017_157.json"))))
reden_29_11_2017_158.json<- as.data.frame(t(unlist(read_json("reden_29_11_2017_158.json"))))
reden_29_11_2017_159.json<- as.data.frame(t(unlist(read_json("reden_29_11_2017_159.json"))))
reden_30_01_2008_792.json<- as.data.frame(t(unlist(read_json("reden_30_01_2008_792.json"))))
reden_30_01_2013_528.json<- as.data.frame(t(unlist(read_json("reden_30_01_2013_528.json"))))
reden_30_01_2013_529.json<- as.data.frame(t(unlist(read_json("reden_30_01_2013_529.json"))))
reden_30_01_2018_145.json<- as.data.frame(t(unlist(read_json("reden_30_01_2018_145.json"))))
reden_30_03_2009_735.json<- as.data.frame(t(unlist(read_json("reden_30_03_2009_735.json"))))
reden_30_03_2017_246.json<- as.data.frame(t(unlist(read_json("reden_30_03_2017_246.json"))))
reden_30_04_2009_732.json<- as.data.frame(t(unlist(read_json("reden_30_04_2009_732.json"))))
reden_30_05_2008_772.json<- as.data.frame(t(unlist(read_json("reden_30_05_2008_772.json"))))
reden_30_05_2008_773.json<- as.data.frame(t(unlist(read_json("reden_30_05_2008_773.json"))))
reden_30_05_2016_327.json<- as.data.frame(t(unlist(read_json("reden_30_05_2016_327.json"))))
reden_30_05_2017_217.json<- as.data.frame(t(unlist(read_json("reden_30_05_2017_217.json"))))
reden_30_06_2005_860.json<- as.data.frame(t(unlist(read_json("reden_30_06_2005_860.json"))))
reden_30_06_2009_721.json<- as.data.frame(t(unlist(read_json("reden_30_06_2009_721.json"))))
reden_30_08_1999_1.json<- as.data.frame(t(unlist(read_json("reden_30_08_1999_1.json"))))
reden_30_08_1999_2.json<- as.data.frame(t(unlist(read_json("reden_30_08_1999_2.json"))))
reden_30_08_1999_3.json<- as.data.frame(t(unlist(read_json("reden_30_08_1999_3.json"))))
reden_30_08_2013_499.json<- as.data.frame(t(unlist(read_json("reden_30_08_2013_499.json"))))
reden_30_08_2017_197.json<- as.data.frame(t(unlist(read_json("reden_30_08_2017_197.json"))))
reden_30_08_2018_86.json<- as.data.frame(t(unlist(read_json("reden_30_08_2018_86.json"))))
reden_30_08_2018_87.json<- as.data.frame(t(unlist(read_json("reden_30_08_2018_87.json"))))
reden_30_09_2004_1.json<- as.data.frame(t(unlist(read_json("reden_30_09_2004_1.json"))))
reden_30_09_2004_2.json<- as.data.frame(t(unlist(read_json("reden_30_09_2004_2.json"))))
reden_30_09_2004_3.json<- as.data.frame(t(unlist(read_json("reden_30_09_2004_3.json"))))
reden_30_09_2004_4.json<- as.data.frame(t(unlist(read_json("reden_30_09_2004_4.json"))))
reden_30_09_2004_5.json<- as.data.frame(t(unlist(read_json("reden_30_09_2004_5.json"))))
reden_30_09_2004_6.json<- as.data.frame(t(unlist(read_json("reden_30_09_2004_6.json"))))
reden_30_09_2004_7.json<- as.data.frame(t(unlist(read_json("reden_30_09_2004_7.json"))))
reden_30_09_2009_712.json<- as.data.frame(t(unlist(read_json("reden_30_09_2009_712.json"))))
reden_30_09_2009_713.json<- as.data.frame(t(unlist(read_json("reden_30_09_2009_713.json"))))
reden_30_09_2014_443.json<- as.data.frame(t(unlist(read_json("reden_30_09_2014_443.json"))))
reden_30_10_2007_803.json<- as.data.frame(t(unlist(read_json("reden_30_10_2007_803.json"))))
reden_30_10_2013_488.json<- as.data.frame(t(unlist(read_json("reden_30_10_2013_488.json"))))
reden_30_10_2017_179.json<- as.data.frame(t(unlist(read_json("reden_30_10_2017_179.json"))))
reden_30_10_2019_971.json<- as.data.frame(t(unlist(read_json("reden_30_10_2019_971.json"))))
reden_30_11_2009_697.json<- as.data.frame(t(unlist(read_json("reden_30_11_2009_697.json"))))
reden_30_11_2016_285.json<- as.data.frame(t(unlist(read_json("reden_30_11_2016_285.json"))))
reden_30_11_2017_156.json<- as.data.frame(t(unlist(read_json("reden_30_11_2017_156.json"))))
reden_31_01_2008_791.json<- as.data.frame(t(unlist(read_json("reden_31_01_2008_791.json"))))
reden_31_01_2017_270.json<- as.data.frame(t(unlist(read_json("reden_31_01_2017_270.json"))))
reden_31_01_2018_144.json<- as.data.frame(t(unlist(read_json("reden_31_01_2018_144.json"))))
reden_31_01_2019_54.json<- as.data.frame(t(unlist(read_json("reden_31_01_2019_54.json"))))
reden_31_03_2006_845.json<- as.data.frame(t(unlist(read_json("reden_31_03_2006_845.json"))))
reden_31_03_2017_245.json<- as.data.frame(t(unlist(read_json("reden_31_03_2017_245.json"))))
reden_31_05_2010_675.json<- as.data.frame(t(unlist(read_json("reden_31_05_2010_675.json"))))
reden_31_05_2017_216.json<- as.data.frame(t(unlist(read_json("reden_31_05_2017_216.json"))))
reden_31_05_2019_29.json<- as.data.frame(t(unlist(read_json("reden_31_05_2019_29.json"))))
reden_31_08_2015_386.json<- as.data.frame(t(unlist(read_json("reden_31_08_2015_386.json"))))
reden_31_10_2007_802.json<- as.data.frame(t(unlist(read_json("reden_31_10_2007_802.json"))))
reden_31_10_2017_178.json<- as.data.frame(t(unlist(read_json("reden_31_10_2017_178.json"))))



Master_2 <- bind_rows(reden_01_02_2008_790.json,
          reden_01_02_2012_565.json,
          reden_01_02_2017_269.json,
          reden_01_03_2017_258.json,
          reden_01_04_2019_42.json,
          reden_01_04_2019_43.json,
          reden_01_06_2005_867.json,
          reden_01_06_2015_400.json,
          reden_01_06_2016_325.json,
          reden_01_06_2016_326.json,
          reden_01_07_2010_671.json,
          reden_01_07_2015_391.json,
          reden_01_07_2015_392.json,
          reden_01_07_2016_316.json,
          reden_01_09_2011_596.json,
          reden_01_10_2012_547.json,
          reden_01_10_2013_494.json,
          reden_01_10_2015_377.json,
          reden_01_10_2019_982.json,
          reden_01_10_2019_983.json,
          reden_01_11_2007_801.json,
          reden_01_11_2019_970.json,
          reden_01_12_2014_424.json,
          reden_01_12_2014_425.json,
          reden_02_02_2010_691.json,
          reden_02_02_2011_632.json,
          reden_02_02_2011_633.json,
          reden_02_02_2017_268.json,
          reden_02_03_2011_624.json,
          reden_02_05_2011_611.json,
          reden_02_05_2011_612.json,
          reden_02_05_2016_331.json,
          reden_02_05_2018_103.json,
          reden_02_05_2019_41.json,
          reden_02_07_2013_507.json,
          reden_02_10_2015_376.json,
          reden_02_10_2016_305.json,
          reden_02_10_2017_185.json,
          reden_02_11_2007_800.json,
          reden_02_12_2003_1.json,
          reden_02_12_2003_2.json,
          reden_02_12_2003_3.json,
          reden_02_12_2003_4.json,
          reden_02_12_2003_5.json,
          reden_02_12_2003_6.json,
          reden_02_12_2003_7.json,
          reden_02_12_2003_8.json,
          reden_02_12_2003_9.json,
          reden_02_12_2003_10.json,
          reden_02_12_2010_642.json,
          reden_02_12_2010_643.json,
          reden_02_12_2015_358.json,
          reden_03_02_2017_267.json,
          reden_03_03_2016_341.json,
          reden_03_04_2017_242.json,
          reden_03_04_2017_243.json,
          reden_03_04_2017_244.json,
          reden_03_05_2007_820.json,
          reden_03_05_2019_40.json,
          reden_03_06_2005_866.json,
          reden_03_06_2007_813.json,
          reden_03_06_2008_771.json,
          reden_03_07_2007_808.json,
          reden_03_07_2013_506.json,
          reden_03_07_2014_451.json,
          reden_03_09_2018_84.json,
          reden_03_09_2018_85.json,
          reden_03_11_2006_833.json,
          reden_03_11_2009_706.json,
          reden_03_11_2009_707.json,
          reden_03_11_2010_654.json,
          reden_03_11_2016_298.json,
          reden_03_11_2017_177.json,
          reden_03_12_1999_1.json,
          reden_03_12_1999_2.json,
          reden_03_12_1999_3.json,
          reden_03_12_1999_4.json,
          reden_03_12_2009_696.json,
          reden_03_12_2013_473.json,
          reden_03_12_2014_423.json,
          reden_03_12_2015_357.json,
          reden_03_12_2018_62.json,
          reden_04_02_2013_527.json,
          reden_04_02_2015_413.json,
          reden_04_02_2016_347.json,
          reden_04_03_2011_623.json,
          reden_04_05_2007_819.json,
          reden_04_05_2009_731.json,
          reden_04_05_2010_682.json,
          reden_04_05_2015_404.json,
          reden_04_05_2017_234.json,
          reden_04_05_2017_235.json,
          reden_04_05_2018_100.json,
          reden_04_05_2018_101.json,
          reden_04_05_2018_102.json,
          reden_04_07_2012_555.json,
          reden_04_09_2009_718.json,
          reden_04_09_2009_719.json,
          reden_04_09_2014_446.json,
          reden_04_10_2011_587.json,
          reden_04_11_2008_757.json,
          reden_04_11_2014_438.json,
          reden_04_11_2019_968.json,
          reden_04_11_2019_969.json,
          reden_04_12_2012_535.json,
          reden_04_12_2015_356.json,
          reden_04_12_2019_955.json,
          reden_04_12_2019_956.json,
          reden_05_02_2018_143.json,
          reden_05_03_2006_850.json,
          reden_05_03_2018_124.json,
          reden_05_03_2018_125.json,
          reden_05_03_2018_126.json,
          reden_05_04_2011_617.json,
          reden_05_04_2018_116.json,
          reden_05_05_2006_841.json,
          reden_05_05_2006_842.json,
          reden_05_05_2006_843.json,
          reden_05_05_2010_681.json,
          reden_05_05_2015_403.json,
          reden_05_06_2009_726.json,
          reden_05_06_2018_97.json,
          reden_05_07_2012_554.json,
          reden_05_07_2018_92.json,
          reden_05_09_2011_595.json,
          reden_05_09_2013_498.json,
          reden_05_09_2016_311.json,
          reden_05_09_2019_992.json,
          reden_05_10_2010_663.json,
          reden_05_11_2010_653.json,
          reden_05_11_2018_76.json,
          reden_05_12_2002_1.json,
          reden_05_12_2002_2.json,
          reden_05_12_2002_3.json,
          reden_05_12_2002_4.json,
          reden_05_12_2002_5.json,
          reden_05_12_2002_6.json,
          reden_05_12_2002_7.json,
          reden_05_12_2002_8.json,
          reden_05_12_2002_9.json,
          reden_05_12_2002_10.json,
          reden_05_12_2002_11.json,
          reden_05_12_2002_12.json,
          reden_05_12_2002_13.json,
          reden_05_12_2002_14.json,
          reden_05_12_2002_15.json,
          reden_05_12_2016_284.json,
          reden_05_12_2017_155.json,
          reden_05_12_2019_953.json,
          reden_05_12_2019_954.json,
          reden_06_02_2007_828.json,
          reden_06_02_2014_467.json,
          reden_06_02_2017_266.json,
          reden_06_02_2018_141.json,
          reden_06_02_2018_142.json,
          reden_06_03_2017_257.json,
          reden_06_04_2017_241.json,
          reden_06_05_2019_38.json,
          reden_06_05_2019_39.json,
          reden_06_06_2005_865.json,
          reden_06_06_2007_812.json,
          reden_06_06_2008_770.json,
          reden_06_06_2018_96.json,
          reden_06_07_2006_837.json,
          reden_06_07_2017_206.json,
          reden_06_09_2011_592.json,
          reden_06_09_2011_593.json,
          reden_06_09_2011_594.json,
          reden_06_11_2013_487.json,
          reden_06_12_2012_534.json,
          reden_07_02_2011_631.json,
          reden_07_02_2017_265.json,
          reden_07_02_2019_52.json,
          reden_07_02_2019_53.json,
          reden_07_03_2008_785.json,
          reden_07_03_2017_256.json,
          reden_07_03_2018_123.json,
          reden_07_04_2008_782.json,
          reden_07_04_2014_459.json,
          reden_07_05_2007_818.json,
          reden_07_06_2005_864.json,
          reden_07_06_2017_215.json,
          reden_07_09_2015_385.json,
          reden_07_09_2016_310.json,
          reden_07_09_2017_195.json,
          reden_07_09_2017_196.json,
          reden_07_11_2014_437.json,
          reden_07_12_2016_283.json,
          reden_07_12_2018_60.json,
          reden_07_12_2018_61.json,
          reden_08_01_2009_747.json,
          reden_08_02_2012_564.json,
          reden_08_02_2018_138.json,
          reden_08_02_2018_139.json,
          reden_08_02_2018_140.json,
          reden_08_02_2019_50.json,
          reden_08_02_2019_51.json,
          reden_08_03_2006_849.json,
          reden_08_03_2011_622.json,
          reden_08_03_2018_122.json,
          reden_08_04_2014_458.json,
          reden_08_04_2016_337.json,
          reden_08_05_2019_37.json,
          reden_08_06_2005_862.json,
          reden_08_06_2005_863.json,
          reden_08_06_2009_725.json,
          reden_08_06_2016_323.json,
          reden_08_06_2016_324.json,
          reden_08_07_2009_720.json,
          reden_08_07_2015_390.json,
          reden_08_07_2017_205.json,
          reden_08_09_2009_717.json,
          reden_08_09_2010_670.json,
          reden_08_09_2017_194.json,
          reden_08_10_2012_546.json,
          reden_08_10_2013_493.json,
          reden_08_10_2019_981.json,
          reden_08_11_2010_652.json,
          reden_08_11_2011_582.json,
          reden_08_11_2017_176.json,
          reden_08_12_2005_854.json,
          reden_08_12_2006_832.json,
          reden_09_03_2005_872.json,
          reden_09_03_2006_848.json,
          reden_09_03_2007_825.json,
          reden_09_03_2010_690.json,
          reden_09_03_2011_621.json,
          reden_09_03_2015_409.json,
          reden_09_03_2017_255.json,
          reden_09_05_2007_817.json,
          reden_09_06_2010_674.json,
          reden_09_07_2013_505.json,
          reden_09_07_2014_450.json,
          reden_09_07_2015_389.json,
          reden_09_07_2019_24.json,
          reden_09_09_2014_445.json,
          reden_09_10_2008_758.json,
          reden_09_10_2014_442.json,
          reden_09_11_2005_857.json,
          reden_09_11_2007_798.json,
          reden_09_11_2007_799.json,
          reden_09_11_2012_543.json,
          reden_09_11_2016_296.json,
          reden_09_11_2016_297.json,
          reden_09_11_2017_175.json,
          reden_09_11_2018_75.json,
          reden_09_12_2009_695.json,
          reden_10_01_2006_853.json,
          reden_10_02_2009_744.json,
          reden_10_02_2011_628.json,
          reden_10_02_2011_629.json,
          reden_10_02_2011_630.json,
          reden_10_02_2017_264.json,
          reden_10_03_2009_740.json,
          reden_10_03_2010_688.json,
          reden_10_03_2010_689.json,
          reden_10_03_2011_620.json,
          reden_10_03_2016_340.json,
          reden_10_04_2018_115.json,
          reden_10_05_2016_330.json,
          reden_10_05_2017_233.json,
          reden_10_06_2008_769.json,
          reden_10_06_2009_724.json,
          reden_10_06_2013_514.json,
          reden_10_06_2013_515.json,
          reden_10_06_2016_322.json,
          reden_10_07_2002_1.json,
          reden_10_07_2002_2.json,
          reden_10_07_2002_3.json,
          reden_10_07_2002_4.json,
          reden_10_07_2002_5.json,
          reden_10_07_2019_23.json,
          reden_10_09_2008_764.json,
          reden_10_09_2019_989.json,
          reden_10_09_2019_990.json,
          reden_10_09_2019_991.json,
          reden_10_10_2012_544.json,
          reden_10_10_2012_545.json,
          reden_10_10_2016_304.json,
          reden_10_11_2005_856.json,
          reden_10_11_2011_581.json,
          reden_10_11_2016_293.json,
          reden_10_11_2016_294.json,
          reden_10_11_2016_295.json,
          reden_10_11_2017_174.json,
          reden_10_12_2008_749.json,
          reden_11_01_2011_640.json,
          reden_11_02_2009_743.json,
          reden_11_02_2013_525.json,
          reden_11_02_2013_526.json,
          reden_11_02_2014_466.json,
          reden_11_02_2016_346.json,
          reden_11_03_2008_784.json,
          reden_11_04_2011_616.json,
          reden_11_04_2018_113.json,
          reden_11_04_2018_114.json,
          reden_11_05_2006_840.json,
          reden_11_05_2016_328.json,
          reden_11_05_2016_329.json,
          reden_11_05_2017_232.json,
          reden_11_06_2014_453.json,
          reden_11_06_2015_399.json,
          reden_11_06_2016_321.json,
          reden_11_07_2011_598.json,
          reden_11_07_2013_504.json,
          reden_11_09_2012_552.json,
          reden_11_09_2015_384.json,
          reden_11_09_2018_83.json,
          reden_11_10_2007_805.json,
          reden_11_10_2017_183.json,
          reden_11_10_2017_184.json,
          reden_11_11_2008_756.json,
          reden_11_11_2009_705.json,
          reden_11_11_2013_486.json,
          reden_11_11_2015_370.json,
          reden_11_11_2015_371.json,
          reden_11_11_2019_967.json,
          reden_11_12_2008_748.json,
          reden_12_01_2018_152.json,
          reden_12_02_2015_411.json,
          reden_12_02_2015_412.json,
          reden_12_02_2019_49.json,
          reden_12_03_2010_687.json,
          reden_12_03_2015_408.json,
          reden_12_04_2018_110.json,
          reden_12_04_2018_111.json,
          reden_12_04_2018_112.json,
          reden_12_05_2009_730.json,
          reden_12_05_2011_609.json,
          reden_12_05_2011_610.json,
          reden_12_06_2008_768.json,
          reden_12_06_2012_557.json,
          reden_12_06_2014_452.json,
          reden_12_07_2018_91.json,
          reden_12_10_2007_804.json,
          reden_12_10_2010_661.json,
          reden_12_10_2010_662.json,
          reden_12_11_2014_436.json,
          reden_12_11_2015_369.json,
          reden_12_11_2019_966.json,
          reden_12_12_2000_1.json,
          reden_12_12_2000_2.json,
          reden_12_12_2000_3.json,
          reden_12_12_2000_4.json,
          reden_12_12_2000_5.json,
          reden_12_12_2000_6.json,
          reden_12_12_2000_7.json,
          reden_12_12_2000_8.json,
          reden_12_12_2000_9.json,
          reden_12_12_2000_10.json,
          reden_12_12_2000_11.json,
          reden_12_12_2000_12.json,
          reden_12_12_2000_13.json,
          reden_12_12_2000_14.json,
          reden_12_12_2000_15.json,
          reden_12_12_2000_16.json,
          reden_12_12_2000_17.json,
          reden_12_12_2000_18.json,
          reden_12_12_2000_19.json,
          reden_12_12_2000_20.json,
          reden_12_12_2012_533.json,
          reden_13_01_2015_421.json,
          reden_13_01_2015_422.json,
          reden_13_03_2002_1.json,
          reden_13_03_2002_2.json,
          reden_13_03_2002_3.json,
          reden_13_03_2002_4.json,
          reden_13_03_2002_5.json,
          reden_13_03_2002_6.json,
          reden_13_03_2002_7.json,
          reden_13_03_2007_824.json,
          reden_13_04_2011_614.json,
          reden_13_04_2011_615.json,
          reden_13_04_2016_336.json,
          reden_13_05_2009_729.json,
          reden_13_05_2015_402.json,
          reden_13_06_2000_1.json,
          reden_13_06_2000_2.json,
          reden_13_06_2000_3.json,
          reden_13_06_2000_4.json,
          reden_13_06_2000_5.json,
          reden_13_06_2000_6.json,
          reden_13_06_2000_7.json,
          reden_13_06_2000_8.json,
          reden_13_06_2000_9.json,
          reden_13_06_2008_767.json,
          reden_13_06_2013_513.json,
          reden_13_06_2016_319.json,
          reden_13_06_2016_320.json,
          reden_13_06_2017_214.json,
          reden_13_06_2019_28.json,
          reden_13_07_2016_315.json,
          reden_13_07_2017_204.json,
          reden_13_09_2011_590.json,
          reden_13_09_2011_591.json,
          reden_13_09_2019_988.json,
          reden_13_10_2014_441.json,
          reden_13_10_2015_375.json,
          reden_13_10_2016_303.json,
          reden_13_11_2008_755.json,
          reden_13_11_2013_485.json,
          reden_13_11_2017_173.json,
          reden_13_11_2018_74.json,
          reden_13_12_2004_1.json,
          reden_13_12_2004_2.json,
          reden_13_12_2004_3.json,
          reden_13_12_2004_4.json,
          reden_13_12_2004_5.json,
          reden_13_12_2004_6.json,
          reden_13_12_2004_7.json,
          reden_13_12_2004_8.json,
          reden_13_12_2004_9.json,
          reden_13_12_2004_10.json,
          reden_13_12_2004_11.json,
          reden_13_12_2004_12.json,
          reden_13_12_2004_13.json,
          reden_13_12_2004_14.json,
          reden_13_12_2004_15.json,
          reden_13_12_2004_16.json,
          reden_13_12_2006_831.json,
          reden_13_12_2007_795.json,
          reden_13_12_2018_59.json,
          reden_14_01_2011_639.json,
          reden_14_01_2016_355.json,
          reden_14_02_2008_789.json,
          reden_14_02_2014_465.json,
          reden_14_02_2018_135.json,
          reden_14_02_2018_136.json,
          reden_14_02_2018_137.json,
          reden_14_02_2019_48.json,
          reden_14_03_2006_847.json,
          reden_14_03_2012_562.json,
          reden_14_04_2005_871.json,
          reden_14_04_2011_613.json,
          reden_14_05_2010_680.json,
          reden_14_05_2014_457.json,
          reden_14_06_2007_810.json,
          reden_14_06_2007_811.json,
          reden_14_06_2012_556.json,
          reden_14_06_2017_213.json,
          reden_14_07_2016_314.json,
          reden_14_08_2008_765.json,
          reden_14_08_2017_202.json,
          reden_14_09_2010_669.json,
          reden_14_09_2017_193.json,
          reden_14_10_2010_660.json,
          reden_14_10_2019_980.json,
          reden_14_11_2011_580.json,
          reden_14_11_2012_541.json,
          reden_14_11_2012_542.json,
          reden_14_11_2013_481.json,
          reden_14_11_2013_482.json,
          reden_14_11_2013_483.json,
          reden_14_11_2013_484.json,
          reden_14_11_2017_172.json,
          reden_14_11_2018_70.json,
          reden_14_11_2018_71.json,
          reden_14_11_2018_72.json,
          reden_14_11_2018_73.json,
          reden_14_12_2011_572.json,
          reden_14_12_2017_154.json,
          reden_14_12_2018_58.json,
          reden_15_01_2008_794.json,
          reden_15_01_2014_472.json,
          reden_15_01_2018_151.json,
          reden_15_01_2019_56.json,
          reden_15_01_2019_57.json,
          reden_15_02_2018_133.json,
          reden_15_02_2018_134.json,
          reden_15_03_2007_823.json,
          reden_15_03_2017_253.json,
          reden_15_03_2017_254.json,
          reden_15_03_2018_121.json,
          reden_15_04_2003_1.json,
          reden_15_04_2003_2.json,
          reden_15_04_2003_3.json,
          reden_15_04_2003_4.json,
          reden_15_04_2003_5.json,
          reden_15_04_2003_6.json,
          reden_15_04_2003_7.json,
          reden_15_04_2008_781.json,
          reden_15_04_2009_734.json,
          reden_15_05_2013_520.json,
          reden_15_05_2017_231.json,
          reden_15_05_2019_36.json,
          reden_15_06_2015_397.json,
          reden_15_06_2015_398.json,
          reden_15_06_2016_318.json,
          reden_15_07_2015_388.json,
          reden_15_08_2017_201.json,
          reden_15_09_2015_383.json,
          reden_15_09_2016_309.json,
          reden_15_10_2009_711.json,
          reden_15_10_2015_374.json,
          reden_15_11_2010_650.json,
          reden_15_11_2010_651.json,
          reden_15_11_2011_579.json,
          reden_15_11_2016_292.json,
          reden_15_11_2017_170.json,
          reden_15_11_2017_171.json,
          reden_15_11_2018_69.json,
          reden_16_01_2008_793.json,
          reden_16_01_2014_470.json,
          reden_16_01_2014_471.json,
          reden_16_01_2015_420.json,
          reden_16_01_2017_277.json,
          reden_16_01_2018_150.json,
          reden_16_02_2017_263.json,
          reden_16_03_2017_252.json,
          reden_16_04_2018_109.json,
          reden_16_05_2007_816.json,
          reden_16_05_2008_775.json,
          reden_16_05_2019_34.json,
          reden_16_05_2019_35.json,
          reden_16_06_2005_861.json,
          reden_16_06_2009_723.json,
          reden_16_07_2003_1.json,
          reden_16_07_2003_2.json,
          reden_16_07_2003_3.json,
          reden_16_07_2003_4.json,
          reden_16_07_2003_5.json,
          reden_16_07_2003_6.json,
          reden_16_07_2003_7.json,
          reden_16_07_2003_8.json,
          reden_16_07_2003_9.json,
          reden_16_09_2008_763.json,
          reden_16_09_2010_668.json,
          reden_16_09_2012_551.json,
          reden_16_09_2015_382.json,
          reden_16_10_2009_710.json,
          reden_16_10_2019_978.json,
          reden_16_10_2019_979.json,
          reden_16_11_2009_702.json,
          reden_16_11_2009_703.json,
          reden_16_11_2009_704.json,
          reden_16_11_2010_649.json,
          reden_16_11_2011_577.json,
          reden_16_11_2011_578.json,
          reden_16_11_2016_289.json,
          reden_16_11_2016_290.json,
          reden_16_11_2016_291.json,
          reden_16_11_2018_68.json,
          reden_16_12_2016_280.json,
          reden_16_12_2016_281.json,
          reden_16_12_2016_282.json,
          reden_17_01_2005_877.json,
          reden_17_01_2012_570.json,
          reden_17_01_2013_532.json,
          reden_17_02_2009_742.json,
          reden_17_02_2016_345.json,
          reden_17_03_2006_846.json,
          reden_17_03_2009_739.json,
          reden_17_03_2014_462.json,
          reden_17_04_2008_780.json,
          reden_17_04_2018_108.json,
          reden_17_05_2011_608.json,
          reden_17_05_2017_227.json,
          reden_17_05_2017_228.json,
          reden_17_05_2017_229.json,
          reden_17_05_2017_230.json,
          reden_17_06_2010_673.json,
          reden_17_06_2011_601.json,
          reden_17_06_2019_27.json,
          reden_17_08_2019_22.json,
          reden_17_09_2008_761.json,
          reden_17_09_2008_762.json,
          reden_17_09_2010_667.json,
          reden_17_10_2013_492.json,
          reden_17_10_2014_440.json,
          reden_17_10_2016_302.json,
          reden_17_10_2018_77.json,
          reden_17_10_2018_78.json,
          reden_17_10_2019_976.json,
          reden_17_10_2019_977.json,
          reden_17_11_2008_753.json,
          reden_17_11_2008_754.json,
          reden_17_11_2009_701.json,
          reden_17_11_2010_648.json,
          reden_17_11_2014_435.json,
          reden_17_11_2015_368.json,
          reden_17_11_2017_167.json,
          reden_17_11_2017_168.json,
          reden_17_11_2017_169.json,
          reden_17_12_2001_1.json,
          reden_17_12_2001_2.json,
          reden_17_12_2001_3.json,
          reden_17_12_2001_4.json,
          reden_17_12_2001_5.json,
          reden_17_12_2001_6.json,
          reden_17_12_2001_7.json,
          reden_17_12_2001_8.json,
          reden_17_12_2001_9.json,
          reden_17_12_2001_10.json,
          reden_17_12_2010_641.json,
          reden_18_01_2006_852.json,
          reden_18_01_2011_638.json,
          reden_18_01_2012_569.json,
          reden_18_01_2016_353.json,
          reden_18_01_2016_354.json,
          reden_18_02_2008_788.json,
          reden_18_02_2013_524.json,
          reden_18_02_2014_464.json,
          reden_18_03_2013_522.json,
          reden_18_03_2015_407.json,
          reden_18_04_2007_821.json,
          reden_18_04_2008_779.json,
          reden_18_05_2010_679.json,
          reden_18_05_2017_224.json,
          reden_18_05_2017_225.json,
          reden_18_05_2017_226.json,
          reden_18_05_2018_99.json,
          reden_18_06_2013_512.json,
          reden_18_06_2015_396.json,
          reden_18_07_2014_449.json,
          reden_18_09_2012_550.json,
          reden_18_09_2015_381.json,
          reden_18_09_2017_192.json,
          reden_18_09_2018_82.json,
          reden_18_09_2019_987.json,
          reden_18_11_2005_855.json,
          reden_18_11_2008_752.json,
          reden_18_11_2011_576.json,
          reden_18_11_2014_434.json,
          reden_18_11_2015_367.json,
          reden_18_11_2016_288.json,
          reden_18_11_2019_965.json,
          reden_19_01_2007_830.json,
          reden_19_01_2011_637.json,
          reden_19_01_2018_149.json,
          reden_19_02_2019_47.json,
          reden_19_03_2009_738.json,
          reden_19_03_2019_44.json,
          reden_19_05_2010_678.json,
          reden_19_05_2014_455.json,
          reden_19_05_2014_456.json,
          reden_19_06_2017_211.json,
          reden_19_06_2017_212.json,
          reden_19_08_2013_503.json,
          reden_19_09_2009_716.json,
          reden_19_09_2013_497.json,
          reden_19_09_2018_81.json,
          reden_19_10_2010_659.json,
          reden_19_10_2011_586.json,
          reden_19_10_2015_373.json,
          reden_19_10_2016_301.json,
          reden_19_10_2017_182.json,
          reden_19_11_2007_797.json,
          reden_19_11_2012_539.json,
          reden_19_11_2012_540.json,
          reden_19_11_2013_480.json,
          reden_19_11_2014_433.json,
          reden_19_11_2015_366.json,
          reden_19_11_2018_66.json,
          reden_19_11_2018_67.json,
          reden_19_11_2019_964.json,
          reden_19_12_2017_153.json,
          reden_20_01_2010_694.json,
          reden_20_02_2006_851.json,
          reden_20_02_2018_132.json,
          reden_20_03_2009_737.json,
          reden_20_03_2017_250.json,
          reden_20_03_2017_251.json,
          reden_20_03_2018_120.json,
          reden_20_04_2016_335.json,
          reden_20_04_2017_240.json,
          reden_20_04_2018_107.json,
          reden_20_05_2011_607.json,
          reden_20_06_2011_600.json,
          reden_20_06_2013_511.json,
          reden_20_06_2018_95.json,
          reden_20_08_2018_90.json,
          reden_20_09_2012_549.json,
          reden_20_09_2017_189.json,
          reden_20_09_2017_190.json,
          reden_20_09_2017_191.json,
          reden_20_09_2018_80.json,
          reden_20_10_2011_584.json,
          reden_20_10_2011_585.json,
          reden_20_11_2013_479.json,
          reden_20_11_2014_432.json,
          reden_20_11_2015_365.json,
          reden_20_11_2018_65.json,
          reden_20_11_2019_963.json,
          reden_20_12_2011_571.json,
          reden_21_01_2010_693.json,
          reden_21_01_2013_531.json,
          reden_21_02_2011_627.json,
          reden_21_02_2018_131.json,
          reden_21_04_2008_778.json,
          reden_21_04_2016_334.json,
          reden_21_05_2012_558.json,
          reden_21_06_2017_209.json,
          reden_21_06_2017_210.json,
          reden_21_06_2018_93.json,
          reden_21_06_2018_94.json,
          reden_21_06_2019_25.json,
          reden_21_06_2019_26.json,
          reden_21_07_2017_203.json,
          reden_21_08_2017_200.json,
          reden_21_09_2007_807.json,
          reden_21_09_2015_380.json,
          reden_21_09_2017_188.json,
          reden_21_11_2008_751.json,
          reden_21_11_2012_538.json,
          reden_21_11_2013_478.json,
          reden_21_11_2014_431.json,
          reden_21_11_2017_165.json,
          reden_21_11_2017_166.json,
          reden_21_11_2019_962.json,
          reden_22_01_2016_352.json,
          reden_22_02_2017_262.json,
          reden_22_03_2010_686.json,
          reden_22_03_2011_619.json,
          reden_22_03_2017_249.json,
          reden_22_04_2008_777.json,
          reden_22_05_2008_774.json,
          reden_22_05_2014_454.json,
          reden_22_05_2015_401.json,
          reden_22_05_2017_222.json,
          reden_22_05_2017_223.json,
          reden_22_06_2015_395.json,
          reden_22_08_2012_553.json,
          reden_22_09_2010_666.json,
          reden_22_09_2011_589.json,
          reden_22_09_2016_308.json,
          reden_22_09_2017_187.json,
          reden_22_10_2009_709.json,
          reden_22_11_2010_647.json,
          reden_22_11_2011_574.json,
          reden_22_11_2011_575.json,
          reden_22_11_2013_477.json,
          reden_22_11_2015_364.json,
          reden_22_11_2016_286.json,
          reden_22_11_2016_287.json,
          reden_22_11_2017_163.json,
          reden_22_11_2017_164.json,
          reden_22_11_2018_64.json,
          reden_22_11_2019_958.json,
          reden_22_11_2019_959.json,
          reden_22_11_2019_960.json,
          reden_22_11_2019_961.json,
          reden_22_12_2016_279.json,
          reden_23_01_2012_567.json,
          reden_23_02_2005_873.json,
          reden_23_02_2009_741.json,
          reden_23_02_2011_626.json,
          reden_23_02_2016_343.json,
          reden_23_02_2016_344.json,
          reden_23_02_2017_260.json,
          reden_23_02_2017_261.json,
          reden_23_03_2009_736.json,
          reden_23_03_2011_618.json,
          reden_23_03_2016_339.json,
          reden_23_04_2005_870.json,
          reden_23_04_2018_106.json,
          reden_23_05_2006_839.json,
          reden_23_05_2007_815.json,
          reden_23_05_2011_605.json,
          reden_23_05_2011_606.json,
          reden_23_05_2013_518.json,
          reden_23_05_2013_519.json,
          reden_23_05_2017_221.json,
          reden_23_05_2019_33.json,
          reden_23_06_2006_838.json,
          reden_23_06_2009_722.json,
          reden_23_06_2016_317.json,
          reden_23_07_2014_448.json,
          reden_23_07_2015_387.json,
          reden_23_08_2018_89.json,
          reden_23_09_2015_379.json,
          reden_23_09_2019_986.json,
          reden_23_10_2013_491.json,
          reden_23_10_2017_181.json,
          reden_23_10_2019_975.json,
          reden_23_11_2015_363.json,
          reden_23_11_2017_161.json,
          reden_23_11_2017_162.json,
          reden_23_12_2016_278.json,
          reden_24_01_2012_566.json,
          reden_24_01_2013_530.json,
          reden_24_01_2018_148.json,
          reden_24_01_2019_55.json,
          reden_24_02_2011_625.json,
          reden_24_02_2016_342.json,
          reden_24_02_2017_259.json,
          reden_24_03_2016_338.json,
          reden_24_04_2013_521.json,
          reden_24_04_2017_239.json,
          reden_24_04_2018_104.json,
          reden_24_04_2018_105.json,
          reden_24_05_2013_517.json,
          reden_24_05_2017_220.json,
          reden_24_05_2019_32.json,
          reden_24_07_2014_447.json,
          reden_24_08_2011_597.json,
          reden_24_09_2009_714.json,
          reden_24_09_2009_715.json,
          reden_24_09_2018_79.json,
          reden_24_10_2001_1.json,
          reden_24_10_2001_2.json,
          reden_24_10_2001_3.json,
          reden_24_10_2001_4.json,
          reden_24_10_2001_5.json,
          reden_24_10_2001_6.json,
          reden_24_10_2001_7.json,
          reden_24_10_2001_8.json,
          reden_24_10_2001_9.json,
          reden_24_10_2001_10.json,
          reden_24_10_2001_11.json,
          reden_24_10_2001_12.json,
          reden_24_10_2001_13.json,
          reden_24_10_2001_14.json,
          reden_24_10_2001_15.json,
          reden_24_10_2013_490.json,
          reden_24_10_2016_300.json,
          reden_24_10_2019_974.json,
          reden_24_11_2010_646.json,
          reden_24_11_2011_573.json,
          reden_24_11_2014_430.json,
          reden_24_11_2015_361.json,
          reden_24_11_2015_362.json,
          reden_25_01_2007_829.json,
          reden_25_01_2015_419.json,
          reden_25_01_2016_351.json,
          reden_25_01_2017_275.json,
          reden_25_01_2017_276.json,
          reden_25_01_2018_147.json,
          reden_25_02_2008_787.json,
          reden_25_02_2013_523.json,
          reden_25_02_2019_46.json,
          reden_25_03_2015_406.json,
          reden_25_03_2017_248.json,
          reden_25_04_2008_776.json,
          reden_25_04_2010_685.json,
          reden_25_04_2017_236.json,
          reden_25_04_2017_237.json,
          reden_25_04_2017_238.json,
          reden_25_05_2009_728.json,
          reden_25_05_2017_219.json,
          reden_25_05_2018_98.json,
          reden_25_06_2008_766.json,
          reden_25_06_2013_510.json,
          reden_25_06_2015_393.json,
          reden_25_06_2015_394.json,
          reden_25_08_2018_88.json,
          reden_25_09_2008_760.json,
          reden_25_09_2013_496.json,
          reden_25_09_2017_186.json,
          reden_25_10_2005_859.json,
          reden_25_10_2010_658.json,
          reden_25_11_2009_700.json,
          reden_25_11_2010_644.json,
          reden_25_11_2010_645.json,
          reden_25_11_2013_476.json,
          reden_25_11_2014_428.json,
          reden_25_11_2014_429.json,
          reden_25_11_2015_359.json,
          reden_25_11_2015_360.json,
          reden_26_01_2005_874.json,
          reden_26_01_2005_875.json,
          reden_26_01_2005_876.json,
          reden_26_01_2009_746.json,
          reden_26_01_2010_692.json,
          reden_26_01_2011_636.json,
          reden_26_01_2015_417.json,
          reden_26_01_2015_418.json,
          reden_26_01_2017_271.json,
          reden_26_01_2017_272.json,
          reden_26_01_2017_273.json,
          reden_26_01_2017_274.json,
          reden_26_02_2015_410.json,
          reden_26_02_2018_130.json,
          reden_26_03_2004_1.json,
          reden_26_03_2004_2.json,
          reden_26_03_2004_3.json,
          reden_26_03_2004_4.json,
          reden_26_03_2004_5.json,
          reden_26_03_2004_6.json,
          reden_26_03_2004_7.json,
          reden_26_03_2004_8.json,
          reden_26_03_2014_461.json,
          reden_26_03_2018_119.json,
          reden_26_04_2010_684.json,
          reden_26_04_2012_560.json,
          reden_26_04_2016_333.json,
          reden_26_05_2011_603.json,
          reden_26_05_2011_604.json,
          reden_26_08_2013_502.json,
          reden_26_09_2006_836.json,
          reden_26_09_2007_806.json,
          reden_26_09_2008_759.json,
          reden_26_09_2011_588.json,
          reden_26_09_2013_495.json,
          reden_26_09_2019_985.json,
          reden_26_10_2005_858.json,
          reden_26_10_2006_834.json,
          reden_26_10_2013_489.json,
          reden_26_10_2014_439.json,
          reden_26_10_2015_372.json,
          reden_26_11_2008_750.json,
          reden_26_11_2009_698.json,
          reden_26_11_2009_699.json,
          reden_26_11_2013_475.json,
          reden_27_01_2011_634.json,
          reden_27_01_2011_635.json,
          reden_27_01_2014_469.json,
          reden_27_01_2016_350.json,
          reden_27_02_2008_786.json,
          reden_27_02_2014_463.json,
          reden_27_02_2018_128.json,
          reden_27_02_2018_129.json,
          reden_27_02_2019_45.json,
          reden_27_05_2010_677.json,
          reden_27_05_2011_602.json,
          reden_27_06_2001_1.json,
          reden_27_06_2001_2.json,
          reden_27_06_2001_3.json,
          reden_27_06_2001_4.json,
          reden_27_06_2001_5.json,
          reden_27_06_2001_6.json,
          reden_27_06_2001_7.json,
          reden_27_06_2001_8.json,
          reden_27_06_2001_9.json,
          reden_27_06_2001_10.json,
          reden_27_06_2001_11.json,
          reden_27_06_2001_12.json,
          reden_27_06_2001_13.json,
          reden_27_06_2001_14.json,
          reden_27_06_2001_15.json,
          reden_27_06_2001_16.json,
          reden_27_06_2001_17.json,
          reden_27_06_2001_18.json,
          reden_27_06_2001_19.json,
          reden_27_06_2001_20.json,
          reden_27_06_2001_21.json,
          reden_27_06_2001_22.json,
          reden_27_06_2001_23.json,
          reden_27_06_2001_24.json,
          reden_27_06_2001_25.json,
          reden_27_06_2001_26.json,
          reden_27_06_2013_508.json,
          reden_27_06_2013_509.json,
          reden_27_09_2012_548.json,
          reden_27_09_2016_307.json,
          reden_27_09_2019_984.json,
          reden_27_10_2011_583.json,
          reden_27_10_2016_299.json,
          reden_27_10_2017_180.json,
          reden_27_11_2014_427.json,
          reden_28_01_2009_745.json,
          reden_28_01_2014_468.json,
          reden_28_01_2015_414.json,
          reden_28_01_2015_415.json,
          reden_28_01_2015_416.json,
          reden_28_01_2016_348.json,
          reden_28_01_2016_349.json,
          reden_28_02_2007_826.json,
          reden_28_02_2007_827.json,
          reden_28_02_2012_563.json,
          reden_28_02_2018_127.json,
          reden_28_03_2007_822.json,
          reden_28_03_2008_783.json,
          reden_28_03_2014_460.json,
          reden_28_03_2017_247.json,
          reden_28_03_2018_118.json,
          reden_28_04_2005_869.json,
          reden_28_04_2006_844.json,
          reden_28_04_2010_683.json,
          reden_28_04_2012_559.json,
          reden_28_04_2015_405.json,
          reden_28_05_2005_868.json,
          reden_28_05_2009_727.json,
          reden_28_05_2010_676.json,
          reden_28_05_2013_516.json,
          reden_28_06_2007_809.json,
          reden_28_06_2010_672.json,
          reden_28_08_2017_199.json,
          reden_28_10_2003_1.json,
          reden_28_10_2003_2.json,
          reden_28_10_2003_3.json,
          reden_28_10_2003_4.json,
          reden_28_10_2003_5.json,
          reden_28_10_2003_6.json,
          reden_28_10_2003_7.json,
          reden_28_10_2003_8.json,
          reden_28_10_2003_9.json,
          reden_28_10_2003_10.json,
          reden_28_10_2010_655.json,
          reden_28_10_2010_656.json,
          reden_28_10_2010_657.json,
          reden_28_11_2013_474.json,
          reden_28_11_2014_426.json,
          reden_28_11_2017_160.json,
          reden_28_11_2018_63.json,
          reden_28_11_2019_957.json,
          reden_29_01_2018_146.json,
          reden_29_03_1999_1.json,
          reden_29_03_1999_2.json,
          reden_29_03_1999_3.json,
          reden_29_03_1999_4.json,
          reden_29_03_1999_5.json,
          reden_29_03_1999_6.json,
          reden_29_03_1999_7.json,
          reden_29_03_1999_8.json,
          reden_29_03_1999_9.json,
          reden_29_03_2012_561.json,
          reden_29_03_2018_117.json,
          reden_29_04_2009_733.json,
          reden_29_04_2016_332.json,
          reden_29_05_2007_814.json,
          reden_29_05_2017_218.json,
          reden_29_05_2019_30.json,
          reden_29_05_2019_31.json,
          reden_29_06_2011_599.json,
          reden_29_06_2017_207.json,
          reden_29_06_2017_208.json,
          reden_29_08_2013_500.json,
          reden_29_08_2013_501.json,
          reden_29_08_2016_312.json,
          reden_29_08_2016_313.json,
          reden_29_08_2017_198.json,
          reden_29_08_2019_20.json,
          reden_29_08_2019_21.json,
          reden_29_09_2006_835.json,
          reden_29_09_2010_664.json,
          reden_29_09_2010_665.json,
          reden_29_09_2014_444.json,
          reden_29_09_2015_378.json,
          reden_29_09_2016_306.json,
          reden_29_10_2009_708.json,
          reden_29_10_2019_972.json,
          reden_29_10_2019_973.json,
          reden_29_11_2007_796.json,
          reden_29_11_2012_536.json,
          reden_29_11_2012_537.json,
          reden_29_11_2017_157.json,
          reden_29_11_2017_158.json,
          reden_29_11_2017_159.json,
          reden_30_01_2008_792.json,
          reden_30_01_2013_528.json,
          reden_30_01_2013_529.json,
          reden_30_01_2018_145.json,
          reden_30_03_2009_735.json,
          reden_30_03_2017_246.json,
          reden_30_04_2009_732.json,
          reden_30_05_2008_772.json,
          reden_30_05_2008_773.json,
          reden_30_05_2016_327.json,
          reden_30_05_2017_217.json,
          reden_30_06_2005_860.json,
          reden_30_06_2009_721.json,
          reden_30_08_1999_1.json,
          reden_30_08_1999_2.json,
          reden_30_08_1999_3.json,
          reden_30_08_2013_499.json,
          reden_30_08_2017_197.json,
          reden_30_08_2018_86.json,
          reden_30_08_2018_87.json,
          reden_30_09_2004_1.json,
          reden_30_09_2004_2.json,
          reden_30_09_2004_3.json,
          reden_30_09_2004_4.json,
          reden_30_09_2004_5.json,
          reden_30_09_2004_6.json,
          reden_30_09_2004_7.json,
          reden_30_09_2009_712.json,
          reden_30_09_2009_713.json,
          reden_30_09_2014_443.json,
          reden_30_10_2007_803.json,
          reden_30_10_2013_488.json,
          reden_30_10_2017_179.json,
          reden_30_10_2019_971.json,
          reden_30_11_2009_697.json,
          reden_30_11_2016_285.json,
          reden_30_11_2017_156.json,
          reden_31_01_2008_791.json,
          reden_31_01_2017_270.json,
          reden_31_01_2018_144.json,
          reden_31_01_2019_54.json,
          reden_31_03_2006_845.json,
          reden_31_03_2017_245.json,
          reden_31_05_2010_675.json,
          reden_31_05_2017_216.json,
          reden_31_05_2019_29.json,
          reden_31_08_2015_386.json,
          reden_31_10_2007_802.json,
          reden_31_10_2017_178.json)

Master_2 <- do.call(rbind,mget(ls(pattern = ".json")))

Master_8 <- do.call(bind_rows,mget(ls(pattern = "8 variables")))

length(Master_2)


##
## Single out by number of columns 
##


table(is.na(Master_2$PDF_TEXT9))


Data_Names <- as.data.frame(colnames(Master_2))
#write.csv(Data_Names, file = "Data_Names.csv")
Master_2$TEXT <- paste(Master_2$TEXT,
                       Master_2$PDF_TEXT1,
                       Master_2$PDF_TEXT2,
                       Master_2$PDF_TEXT3,
                       Master_2$PDF_TEXT4,
                       Master_2$PDF_TEXT5,
                       Master_2$PDF_TEXT6,
                       Master_2$PDF_TEXT7,
                       Master_2$PDF_TEXT8,
                       Master_2$PDF_TEXT9,
                       Master_2$PDF_TEXT10,
                       Master_2$PDF_TEXT11,
                       Master_2$PDF_TEXT12,
                       Master_2$PDF_TEXT13,
                       Master_2$PDF_TEXT14,
                       Master_2$PDF_TEXT15,
                       Master_2$PDF_TEXT16,
                       Master_2$PDF_TEXT17,
                       Master_2$PDF_TEXT18,
                       Master_2$PDF_TEXT19,
                       Master_2$PDF_TEXT20,
                       Master_2$PDF_TEXT21,
                       Master_2$PDF_TEXT22,
                       Master_2$PDF_TEXT23,
                       Master_2$PDF_TEXT24,
                       Master_2$PDF_TEXT25,
                       Master_2$PDF_TEXT26,
                       Master_2$PDF_TEXT27,
                       Master_2$PDF_TEXT28,
                       Master_2$PDF_TEXT29,
                       Master_2$PDF_TEXT30,
                       Master_2$PDF_TEXT31,
                       Master_2$PDF_TEXT32,
                       Master_2$PDF_TEXT33,
                       Master_2$PDF_TEXT34,
                       Master_2$PDF_TEXT35,
                       Master_2$PDF_TEXT36,
                       Master_2$PDF_TEXT37)
colnames(Master_2)
Master_3 <- Master_2[,c("AUTHOR", "TITLE", "DATE", "TEXT")]

#write.csv(Master_3, file = "Master_Concatenated.csv")

Master_9 <- reden_01_02_2008_790.json
Master_8 <- reden_02_12_2003_1.json
Master_9 <- as.data.frame(ifelse(reden_01_02_2008_790.json$Col_Num== 9, rbind(reden_01_02_2008_790.json, Master_8),rbind(Master_8)))


reden_01_02_2008_790.json$Col_Num <- paste(length(reden_01_02_2008_790.json))
reden_01_02_2012_565.json$Col_Num <- paste(length(reden_01_02_2012_565.json))
reden_01_02_2017_269.json$Col_Num <- paste(length(reden_01_02_2017_269.json))
reden_01_03_2017_258.json$Col_Num <- paste(length(reden_01_03_2017_258.json))
reden_01_04_2019_42.json$Col_Num <- paste(length(reden_01_04_2019_42.json))
reden_01_04_2019_43.json$Col_Num <- paste(length(reden_01_04_2019_43.json))
reden_01_06_2005_867.json$Col_Num <- paste(length(reden_01_06_2005_867.json))
reden_01_06_2015_400.json$Col_Num <- paste(length(reden_01_06_2015_400.json))
reden_01_06_2016_325.json$Col_Num <- paste(length(reden_01_06_2016_325.json))
reden_01_06_2016_326.json$Col_Num <- paste(length(reden_01_06_2016_326.json))
reden_01_07_2010_671.json$Col_Num <- paste(length(reden_01_07_2010_671.json))
reden_01_07_2015_391.json$Col_Num <- paste(length(reden_01_07_2015_391.json))
reden_01_07_2015_392.json$Col_Num <- paste(length(reden_01_07_2015_392.json))
reden_01_07_2016_316.json$Col_Num <- paste(length(reden_01_07_2016_316.json))
reden_01_09_2011_596.json$Col_Num <- paste(length(reden_01_09_2011_596.json))
reden_01_10_2012_547.json$Col_Num <- paste(length(reden_01_10_2012_547.json))
reden_01_10_2013_494.json$Col_Num <- paste(length(reden_01_10_2013_494.json))
reden_01_10_2015_377.json$Col_Num <- paste(length(reden_01_10_2015_377.json))
reden_01_10_2019_982.json$Col_Num <- paste(length(reden_01_10_2019_982.json))
reden_01_10_2019_983.json$Col_Num <- paste(length(reden_01_10_2019_983.json))
reden_01_11_2007_801.json$Col_Num <- paste(length(reden_01_11_2007_801.json))
reden_01_11_2019_970.json$Col_Num <- paste(length(reden_01_11_2019_970.json))
reden_01_12_2014_424.json$Col_Num <- paste(length(reden_01_12_2014_424.json))
reden_01_12_2014_425.json$Col_Num <- paste(length(reden_01_12_2014_425.json))
reden_02_02_2010_691.json$Col_Num <- paste(length(reden_02_02_2010_691.json))
reden_02_02_2011_632.json$Col_Num <- paste(length(reden_02_02_2011_632.json))
reden_02_02_2011_633.json$Col_Num <- paste(length(reden_02_02_2011_633.json))
reden_02_02_2017_268.json$Col_Num <- paste(length(reden_02_02_2017_268.json))
reden_02_03_2011_624.json$Col_Num <- paste(length(reden_02_03_2011_624.json))
reden_02_05_2011_611.json$Col_Num <- paste(length(reden_02_05_2011_611.json))
reden_02_05_2011_612.json$Col_Num <- paste(length(reden_02_05_2011_612.json))
reden_02_05_2016_331.json$Col_Num <- paste(length(reden_02_05_2016_331.json))
reden_02_05_2018_103.json$Col_Num <- paste(length(reden_02_05_2018_103.json))
reden_02_05_2019_41.json$Col_Num <- paste(length(reden_02_05_2019_41.json))
reden_02_07_2013_507.json$Col_Num <- paste(length(reden_02_07_2013_507.json))
reden_02_10_2015_376.json$Col_Num <- paste(length(reden_02_10_2015_376.json))
reden_02_10_2016_305.json$Col_Num <- paste(length(reden_02_10_2016_305.json))
reden_02_10_2017_185.json$Col_Num <- paste(length(reden_02_10_2017_185.json))
reden_02_11_2007_800.json$Col_Num <- paste(length(reden_02_11_2007_800.json))
reden_02_12_2003_1.json$Col_Num <- paste(length(reden_02_12_2003_1.json))
reden_02_12_2003_2.json$Col_Num <- paste(length(reden_02_12_2003_2.json))
reden_02_12_2003_3.json$Col_Num <- paste(length(reden_02_12_2003_3.json))
reden_02_12_2003_4.json$Col_Num <- paste(length(reden_02_12_2003_4.json))
reden_02_12_2003_5.json$Col_Num <- paste(length(reden_02_12_2003_5.json))
reden_02_12_2003_6.json$Col_Num <- paste(length(reden_02_12_2003_6.json))
reden_02_12_2003_7.json$Col_Num <- paste(length(reden_02_12_2003_7.json))
reden_02_12_2003_8.json$Col_Num <- paste(length(reden_02_12_2003_8.json))
reden_02_12_2003_9.json$Col_Num <- paste(length(reden_02_12_2003_9.json))
reden_02_12_2003_10.json$Col_Num <- paste(length(reden_02_12_2003_10.json))
reden_02_12_2010_642.json$Col_Num <- paste(length(reden_02_12_2010_642.json))
reden_02_12_2010_643.json$Col_Num <- paste(length(reden_02_12_2010_643.json))
reden_02_12_2015_358.json$Col_Num <- paste(length(reden_02_12_2015_358.json))
reden_03_02_2017_267.json$Col_Num <- paste(length(reden_03_02_2017_267.json))
reden_03_03_2016_341.json$Col_Num <- paste(length(reden_03_03_2016_341.json))
reden_03_04_2017_242.json$Col_Num <- paste(length(reden_03_04_2017_242.json))
reden_03_04_2017_243.json$Col_Num <- paste(length(reden_03_04_2017_243.json))
reden_03_04_2017_244.json$Col_Num <- paste(length(reden_03_04_2017_244.json))
reden_03_05_2007_820.json$Col_Num <- paste(length(reden_03_05_2007_820.json))
reden_03_05_2019_40.json$Col_Num <- paste(length(reden_03_05_2019_40.json))
reden_03_06_2005_866.json$Col_Num <- paste(length(reden_03_06_2005_866.json))
reden_03_06_2007_813.json$Col_Num <- paste(length(reden_03_06_2007_813.json))
reden_03_06_2008_771.json$Col_Num <- paste(length(reden_03_06_2008_771.json))
reden_03_07_2007_808.json$Col_Num <- paste(length(reden_03_07_2007_808.json))
reden_03_07_2013_506.json$Col_Num <- paste(length(reden_03_07_2013_506.json))
reden_03_07_2014_451.json$Col_Num <- paste(length(reden_03_07_2014_451.json))
reden_03_09_2018_84.json$Col_Num <- paste(length(reden_03_09_2018_84.json))
reden_03_09_2018_85.json$Col_Num <- paste(length(reden_03_09_2018_85.json))
reden_03_11_2006_833.json$Col_Num <- paste(length(reden_03_11_2006_833.json))
reden_03_11_2009_706.json$Col_Num <- paste(length(reden_03_11_2009_706.json))
reden_03_11_2009_707.json$Col_Num <- paste(length(reden_03_11_2009_707.json))
reden_03_11_2010_654.json$Col_Num <- paste(length(reden_03_11_2010_654.json))
reden_03_11_2016_298.json$Col_Num <- paste(length(reden_03_11_2016_298.json))
reden_03_11_2017_177.json$Col_Num <- paste(length(reden_03_11_2017_177.json))
reden_03_12_1999_1.json$Col_Num <- paste(length(reden_03_12_1999_1.json))
reden_03_12_1999_2.json$Col_Num <- paste(length(reden_03_12_1999_2.json))
reden_03_12_1999_3.json$Col_Num <- paste(length(reden_03_12_1999_3.json))
reden_03_12_1999_4.json$Col_Num <- paste(length(reden_03_12_1999_4.json))
reden_03_12_2009_696.json$Col_Num <- paste(length(reden_03_12_2009_696.json))
reden_03_12_2013_473.json$Col_Num <- paste(length(reden_03_12_2013_473.json))
reden_03_12_2014_423.json$Col_Num <- paste(length(reden_03_12_2014_423.json))
reden_03_12_2015_357.json$Col_Num <- paste(length(reden_03_12_2015_357.json))
reden_03_12_2018_62.json$Col_Num <- paste(length(reden_03_12_2018_62.json))
reden_04_02_2013_527.json$Col_Num <- paste(length(reden_04_02_2013_527.json))
reden_04_02_2015_413.json$Col_Num <- paste(length(reden_04_02_2015_413.json))
reden_04_02_2016_347.json$Col_Num <- paste(length(reden_04_02_2016_347.json))
reden_04_03_2011_623.json$Col_Num <- paste(length(reden_04_03_2011_623.json))
reden_04_05_2007_819.json$Col_Num <- paste(length(reden_04_05_2007_819.json))
reden_04_05_2009_731.json$Col_Num <- paste(length(reden_04_05_2009_731.json))
reden_04_05_2010_682.json$Col_Num <- paste(length(reden_04_05_2010_682.json))
reden_04_05_2015_404.json$Col_Num <- paste(length(reden_04_05_2015_404.json))
reden_04_05_2017_234.json$Col_Num <- paste(length(reden_04_05_2017_234.json))
reden_04_05_2017_235.json$Col_Num <- paste(length(reden_04_05_2017_235.json))
reden_04_05_2018_100.json$Col_Num <- paste(length(reden_04_05_2018_100.json))
reden_04_05_2018_101.json$Col_Num <- paste(length(reden_04_05_2018_101.json))
reden_04_05_2018_102.json$Col_Num <- paste(length(reden_04_05_2018_102.json))
reden_04_07_2012_555.json$Col_Num <- paste(length(reden_04_07_2012_555.json))
reden_04_09_2009_718.json$Col_Num <- paste(length(reden_04_09_2009_718.json))
reden_04_09_2009_719.json$Col_Num <- paste(length(reden_04_09_2009_719.json))
reden_04_09_2014_446.json$Col_Num <- paste(length(reden_04_09_2014_446.json))
reden_04_10_2011_587.json$Col_Num <- paste(length(reden_04_10_2011_587.json))
reden_04_11_2008_757.json$Col_Num <- paste(length(reden_04_11_2008_757.json))
reden_04_11_2014_438.json$Col_Num <- paste(length(reden_04_11_2014_438.json))
reden_04_11_2019_968.json$Col_Num <- paste(length(reden_04_11_2019_968.json))
reden_04_11_2019_969.json$Col_Num <- paste(length(reden_04_11_2019_969.json))
reden_04_12_2012_535.json$Col_Num <- paste(length(reden_04_12_2012_535.json))
reden_04_12_2015_356.json$Col_Num <- paste(length(reden_04_12_2015_356.json))
reden_04_12_2019_955.json$Col_Num <- paste(length(reden_04_12_2019_955.json))
reden_04_12_2019_956.json$Col_Num <- paste(length(reden_04_12_2019_956.json))
reden_05_02_2018_143.json$Col_Num <- paste(length(reden_05_02_2018_143.json))
reden_05_03_2006_850.json$Col_Num <- paste(length(reden_05_03_2006_850.json))
reden_05_03_2018_124.json$Col_Num <- paste(length(reden_05_03_2018_124.json))
reden_05_03_2018_125.json$Col_Num <- paste(length(reden_05_03_2018_125.json))
reden_05_03_2018_126.json$Col_Num <- paste(length(reden_05_03_2018_126.json))
reden_05_04_2011_617.json$Col_Num <- paste(length(reden_05_04_2011_617.json))
reden_05_04_2018_116.json$Col_Num <- paste(length(reden_05_04_2018_116.json))
reden_05_05_2006_841.json$Col_Num <- paste(length(reden_05_05_2006_841.json))
reden_05_05_2006_842.json$Col_Num <- paste(length(reden_05_05_2006_842.json))
reden_05_05_2006_843.json$Col_Num <- paste(length(reden_05_05_2006_843.json))
reden_05_05_2010_681.json$Col_Num <- paste(length(reden_05_05_2010_681.json))
reden_05_05_2015_403.json$Col_Num <- paste(length(reden_05_05_2015_403.json))
reden_05_06_2009_726.json$Col_Num <- paste(length(reden_05_06_2009_726.json))
reden_05_06_2018_97.json$Col_Num <- paste(length(reden_05_06_2018_97.json))
reden_05_07_2012_554.json$Col_Num <- paste(length(reden_05_07_2012_554.json))
reden_05_07_2018_92.json$Col_Num <- paste(length(reden_05_07_2018_92.json))
reden_05_09_2011_595.json$Col_Num <- paste(length(reden_05_09_2011_595.json))
reden_05_09_2013_498.json$Col_Num <- paste(length(reden_05_09_2013_498.json))
reden_05_09_2016_311.json$Col_Num <- paste(length(reden_05_09_2016_311.json))
reden_05_09_2019_992.json$Col_Num <- paste(length(reden_05_09_2019_992.json))
reden_05_10_2010_663.json$Col_Num <- paste(length(reden_05_10_2010_663.json))
reden_05_11_2010_653.json$Col_Num <- paste(length(reden_05_11_2010_653.json))
reden_05_11_2018_76.json$Col_Num <- paste(length(reden_05_11_2018_76.json))
reden_05_12_2002_1.json$Col_Num <- paste(length(reden_05_12_2002_1.json))
reden_05_12_2002_2.json$Col_Num <- paste(length(reden_05_12_2002_2.json))
reden_05_12_2002_3.json$Col_Num <- paste(length(reden_05_12_2002_3.json))
reden_05_12_2002_4.json$Col_Num <- paste(length(reden_05_12_2002_4.json))
reden_05_12_2002_5.json$Col_Num <- paste(length(reden_05_12_2002_5.json))
reden_05_12_2002_6.json$Col_Num <- paste(length(reden_05_12_2002_6.json))
reden_05_12_2002_7.json$Col_Num <- paste(length(reden_05_12_2002_7.json))
reden_05_12_2002_8.json$Col_Num <- paste(length(reden_05_12_2002_8.json))
reden_05_12_2002_9.json$Col_Num <- paste(length(reden_05_12_2002_9.json))
reden_05_12_2002_10.json$Col_Num <- paste(length(reden_05_12_2002_10.json))
reden_05_12_2002_11.json$Col_Num <- paste(length(reden_05_12_2002_11.json))
reden_05_12_2002_12.json$Col_Num <- paste(length(reden_05_12_2002_12.json))
reden_05_12_2002_13.json$Col_Num <- paste(length(reden_05_12_2002_13.json))
reden_05_12_2002_14.json$Col_Num <- paste(length(reden_05_12_2002_14.json))
reden_05_12_2002_15.json$Col_Num <- paste(length(reden_05_12_2002_15.json))
reden_05_12_2016_284.json$Col_Num <- paste(length(reden_05_12_2016_284.json))
reden_05_12_2017_155.json$Col_Num <- paste(length(reden_05_12_2017_155.json))
reden_05_12_2019_953.json$Col_Num <- paste(length(reden_05_12_2019_953.json))
reden_05_12_2019_954.json$Col_Num <- paste(length(reden_05_12_2019_954.json))
reden_06_02_2007_828.json$Col_Num <- paste(length(reden_06_02_2007_828.json))
reden_06_02_2014_467.json$Col_Num <- paste(length(reden_06_02_2014_467.json))
reden_06_02_2017_266.json$Col_Num <- paste(length(reden_06_02_2017_266.json))
reden_06_02_2018_141.json$Col_Num <- paste(length(reden_06_02_2018_141.json))
reden_06_02_2018_142.json$Col_Num <- paste(length(reden_06_02_2018_142.json))
reden_06_03_2017_257.json$Col_Num <- paste(length(reden_06_03_2017_257.json))
reden_06_04_2017_241.json$Col_Num <- paste(length(reden_06_04_2017_241.json))
reden_06_05_2019_38.json$Col_Num <- paste(length(reden_06_05_2019_38.json))
reden_06_05_2019_39.json$Col_Num <- paste(length(reden_06_05_2019_39.json))
reden_06_06_2005_865.json$Col_Num <- paste(length(reden_06_06_2005_865.json))
reden_06_06_2007_812.json$Col_Num <- paste(length(reden_06_06_2007_812.json))
reden_06_06_2008_770.json$Col_Num <- paste(length(reden_06_06_2008_770.json))
reden_06_06_2018_96.json$Col_Num <- paste(length(reden_06_06_2018_96.json))
reden_06_07_2006_837.json$Col_Num <- paste(length(reden_06_07_2006_837.json))
reden_06_07_2017_206.json$Col_Num <- paste(length(reden_06_07_2017_206.json))
reden_06_09_2011_592.json$Col_Num <- paste(length(reden_06_09_2011_592.json))
reden_06_09_2011_593.json$Col_Num <- paste(length(reden_06_09_2011_593.json))
reden_06_09_2011_594.json$Col_Num <- paste(length(reden_06_09_2011_594.json))
reden_06_11_2013_487.json$Col_Num <- paste(length(reden_06_11_2013_487.json))
reden_06_12_2012_534.json$Col_Num <- paste(length(reden_06_12_2012_534.json))
reden_07_02_2011_631.json$Col_Num <- paste(length(reden_07_02_2011_631.json))
reden_07_02_2017_265.json$Col_Num <- paste(length(reden_07_02_2017_265.json))
reden_07_02_2019_52.json$Col_Num <- paste(length(reden_07_02_2019_52.json))
reden_07_02_2019_53.json$Col_Num <- paste(length(reden_07_02_2019_53.json))
reden_07_03_2008_785.json$Col_Num <- paste(length(reden_07_03_2008_785.json))
reden_07_03_2017_256.json$Col_Num <- paste(length(reden_07_03_2017_256.json))
reden_07_03_2018_123.json$Col_Num <- paste(length(reden_07_03_2018_123.json))
reden_07_04_2008_782.json$Col_Num <- paste(length(reden_07_04_2008_782.json))
reden_07_04_2014_459.json$Col_Num <- paste(length(reden_07_04_2014_459.json))
reden_07_05_2007_818.json$Col_Num <- paste(length(reden_07_05_2007_818.json))
reden_07_06_2005_864.json$Col_Num <- paste(length(reden_07_06_2005_864.json))
reden_07_06_2017_215.json$Col_Num <- paste(length(reden_07_06_2017_215.json))
reden_07_09_2015_385.json$Col_Num <- paste(length(reden_07_09_2015_385.json))
reden_07_09_2016_310.json$Col_Num <- paste(length(reden_07_09_2016_310.json))
reden_07_09_2017_195.json$Col_Num <- paste(length(reden_07_09_2017_195.json))
reden_07_09_2017_196.json$Col_Num <- paste(length(reden_07_09_2017_196.json))
reden_07_11_2014_437.json$Col_Num <- paste(length(reden_07_11_2014_437.json))
reden_07_12_2016_283.json$Col_Num <- paste(length(reden_07_12_2016_283.json))
reden_07_12_2018_60.json$Col_Num <- paste(length(reden_07_12_2018_60.json))
reden_07_12_2018_61.json$Col_Num <- paste(length(reden_07_12_2018_61.json))
reden_08_01_2009_747.json$Col_Num <- paste(length(reden_08_01_2009_747.json))
reden_08_02_2012_564.json$Col_Num <- paste(length(reden_08_02_2012_564.json))
reden_08_02_2018_138.json$Col_Num <- paste(length(reden_08_02_2018_138.json))
reden_08_02_2018_139.json$Col_Num <- paste(length(reden_08_02_2018_139.json))
reden_08_02_2018_140.json$Col_Num <- paste(length(reden_08_02_2018_140.json))
reden_08_02_2019_50.json$Col_Num <- paste(length(reden_08_02_2019_50.json))
reden_08_02_2019_51.json$Col_Num <- paste(length(reden_08_02_2019_51.json))
reden_08_03_2006_849.json$Col_Num <- paste(length(reden_08_03_2006_849.json))
reden_08_03_2011_622.json$Col_Num <- paste(length(reden_08_03_2011_622.json))
reden_08_03_2018_122.json$Col_Num <- paste(length(reden_08_03_2018_122.json))
reden_08_04_2014_458.json$Col_Num <- paste(length(reden_08_04_2014_458.json))
reden_08_04_2016_337.json$Col_Num <- paste(length(reden_08_04_2016_337.json))
reden_08_05_2019_37.json$Col_Num <- paste(length(reden_08_05_2019_37.json))
reden_08_06_2005_862.json$Col_Num <- paste(length(reden_08_06_2005_862.json))
reden_08_06_2005_863.json$Col_Num <- paste(length(reden_08_06_2005_863.json))
reden_08_06_2009_725.json$Col_Num <- paste(length(reden_08_06_2009_725.json))
reden_08_06_2016_323.json$Col_Num <- paste(length(reden_08_06_2016_323.json))
reden_08_06_2016_324.json$Col_Num <- paste(length(reden_08_06_2016_324.json))
reden_08_07_2009_720.json$Col_Num <- paste(length(reden_08_07_2009_720.json))
reden_08_07_2015_390.json$Col_Num <- paste(length(reden_08_07_2015_390.json))
reden_08_07_2017_205.json$Col_Num <- paste(length(reden_08_07_2017_205.json))
reden_08_09_2009_717.json$Col_Num <- paste(length(reden_08_09_2009_717.json))
reden_08_09_2010_670.json$Col_Num <- paste(length(reden_08_09_2010_670.json))
reden_08_09_2017_194.json$Col_Num <- paste(length(reden_08_09_2017_194.json))
reden_08_10_2012_546.json$Col_Num <- paste(length(reden_08_10_2012_546.json))
reden_08_10_2013_493.json$Col_Num <- paste(length(reden_08_10_2013_493.json))
reden_08_10_2019_981.json$Col_Num <- paste(length(reden_08_10_2019_981.json))
reden_08_11_2010_652.json$Col_Num <- paste(length(reden_08_11_2010_652.json))
reden_08_11_2011_582.json$Col_Num <- paste(length(reden_08_11_2011_582.json))
reden_08_11_2017_176.json$Col_Num <- paste(length(reden_08_11_2017_176.json))
reden_08_12_2005_854.json$Col_Num <- paste(length(reden_08_12_2005_854.json))
reden_08_12_2006_832.json$Col_Num <- paste(length(reden_08_12_2006_832.json))
reden_09_03_2005_872.json$Col_Num <- paste(length(reden_09_03_2005_872.json))
reden_09_03_2006_848.json$Col_Num <- paste(length(reden_09_03_2006_848.json))
reden_09_03_2007_825.json$Col_Num <- paste(length(reden_09_03_2007_825.json))
reden_09_03_2010_690.json$Col_Num <- paste(length(reden_09_03_2010_690.json))
reden_09_03_2011_621.json$Col_Num <- paste(length(reden_09_03_2011_621.json))
reden_09_03_2015_409.json$Col_Num <- paste(length(reden_09_03_2015_409.json))
reden_09_03_2017_255.json$Col_Num <- paste(length(reden_09_03_2017_255.json))
reden_09_05_2007_817.json$Col_Num <- paste(length(reden_09_05_2007_817.json))
reden_09_06_2010_674.json$Col_Num <- paste(length(reden_09_06_2010_674.json))
reden_09_07_2013_505.json$Col_Num <- paste(length(reden_09_07_2013_505.json))
reden_09_07_2014_450.json$Col_Num <- paste(length(reden_09_07_2014_450.json))
reden_09_07_2015_389.json$Col_Num <- paste(length(reden_09_07_2015_389.json))
reden_09_07_2019_24.json$Col_Num <- paste(length(reden_09_07_2019_24.json))
reden_09_09_2014_445.json$Col_Num <- paste(length(reden_09_09_2014_445.json))
reden_09_10_2008_758.json$Col_Num <- paste(length(reden_09_10_2008_758.json))
reden_09_10_2014_442.json$Col_Num <- paste(length(reden_09_10_2014_442.json))
reden_09_11_2005_857.json$Col_Num <- paste(length(reden_09_11_2005_857.json))
reden_09_11_2007_798.json$Col_Num <- paste(length(reden_09_11_2007_798.json))
reden_09_11_2007_799.json$Col_Num <- paste(length(reden_09_11_2007_799.json))
reden_09_11_2012_543.json$Col_Num <- paste(length(reden_09_11_2012_543.json))
reden_09_11_2016_296.json$Col_Num <- paste(length(reden_09_11_2016_296.json))
reden_09_11_2016_297.json$Col_Num <- paste(length(reden_09_11_2016_297.json))
reden_09_11_2017_175.json$Col_Num <- paste(length(reden_09_11_2017_175.json))
reden_09_11_2018_75.json$Col_Num <- paste(length(reden_09_11_2018_75.json))
reden_09_12_2009_695.json$Col_Num <- paste(length(reden_09_12_2009_695.json))
reden_10_01_2006_853.json$Col_Num <- paste(length(reden_10_01_2006_853.json))
reden_10_02_2009_744.json$Col_Num <- paste(length(reden_10_02_2009_744.json))
reden_10_02_2011_628.json$Col_Num <- paste(length(reden_10_02_2011_628.json))
reden_10_02_2011_629.json$Col_Num <- paste(length(reden_10_02_2011_629.json))
reden_10_02_2011_630.json$Col_Num <- paste(length(reden_10_02_2011_630.json))
reden_10_02_2017_264.json$Col_Num <- paste(length(reden_10_02_2017_264.json))
reden_10_03_2009_740.json$Col_Num <- paste(length(reden_10_03_2009_740.json))
reden_10_03_2010_688.json$Col_Num <- paste(length(reden_10_03_2010_688.json))
reden_10_03_2010_689.json$Col_Num <- paste(length(reden_10_03_2010_689.json))
reden_10_03_2011_620.json$Col_Num <- paste(length(reden_10_03_2011_620.json))
reden_10_03_2016_340.json$Col_Num <- paste(length(reden_10_03_2016_340.json))
reden_10_04_2018_115.json$Col_Num <- paste(length(reden_10_04_2018_115.json))
reden_10_05_2016_330.json$Col_Num <- paste(length(reden_10_05_2016_330.json))
reden_10_05_2017_233.json$Col_Num <- paste(length(reden_10_05_2017_233.json))
reden_10_06_2008_769.json$Col_Num <- paste(length(reden_10_06_2008_769.json))
reden_10_06_2009_724.json$Col_Num <- paste(length(reden_10_06_2009_724.json))
reden_10_06_2013_514.json$Col_Num <- paste(length(reden_10_06_2013_514.json))
reden_10_06_2013_515.json$Col_Num <- paste(length(reden_10_06_2013_515.json))
reden_10_06_2016_322.json$Col_Num <- paste(length(reden_10_06_2016_322.json))
reden_10_07_2002_1.json$Col_Num <- paste(length(reden_10_07_2002_1.json))
reden_10_07_2002_2.json$Col_Num <- paste(length(reden_10_07_2002_2.json))
reden_10_07_2002_3.json$Col_Num <- paste(length(reden_10_07_2002_3.json))
reden_10_07_2002_4.json$Col_Num <- paste(length(reden_10_07_2002_4.json))
reden_10_07_2002_5.json$Col_Num <- paste(length(reden_10_07_2002_5.json))
reden_10_07_2019_23.json$Col_Num <- paste(length(reden_10_07_2019_23.json))
reden_10_09_2008_764.json$Col_Num <- paste(length(reden_10_09_2008_764.json))
reden_10_09_2019_989.json$Col_Num <- paste(length(reden_10_09_2019_989.json))
reden_10_09_2019_990.json$Col_Num <- paste(length(reden_10_09_2019_990.json))
reden_10_09_2019_991.json$Col_Num <- paste(length(reden_10_09_2019_991.json))
reden_10_10_2012_544.json$Col_Num <- paste(length(reden_10_10_2012_544.json))
reden_10_10_2012_545.json$Col_Num <- paste(length(reden_10_10_2012_545.json))
reden_10_10_2016_304.json$Col_Num <- paste(length(reden_10_10_2016_304.json))
reden_10_11_2005_856.json$Col_Num <- paste(length(reden_10_11_2005_856.json))
reden_10_11_2011_581.json$Col_Num <- paste(length(reden_10_11_2011_581.json))
reden_10_11_2016_293.json$Col_Num <- paste(length(reden_10_11_2016_293.json))
reden_10_11_2016_294.json$Col_Num <- paste(length(reden_10_11_2016_294.json))
reden_10_11_2016_295.json$Col_Num <- paste(length(reden_10_11_2016_295.json))
reden_10_11_2017_174.json$Col_Num <- paste(length(reden_10_11_2017_174.json))
reden_10_12_2008_749.json$Col_Num <- paste(length(reden_10_12_2008_749.json))
reden_11_01_2011_640.json$Col_Num <- paste(length(reden_11_01_2011_640.json))
reden_11_02_2009_743.json$Col_Num <- paste(length(reden_11_02_2009_743.json))
reden_11_02_2013_525.json$Col_Num <- paste(length(reden_11_02_2013_525.json))
reden_11_02_2013_526.json$Col_Num <- paste(length(reden_11_02_2013_526.json))
reden_11_02_2014_466.json$Col_Num <- paste(length(reden_11_02_2014_466.json))
reden_11_02_2016_346.json$Col_Num <- paste(length(reden_11_02_2016_346.json))
reden_11_03_2008_784.json$Col_Num <- paste(length(reden_11_03_2008_784.json))
reden_11_04_2011_616.json$Col_Num <- paste(length(reden_11_04_2011_616.json))
reden_11_04_2018_113.json$Col_Num <- paste(length(reden_11_04_2018_113.json))
reden_11_04_2018_114.json$Col_Num <- paste(length(reden_11_04_2018_114.json))
reden_11_05_2006_840.json$Col_Num <- paste(length(reden_11_05_2006_840.json))
reden_11_05_2016_328.json$Col_Num <- paste(length(reden_11_05_2016_328.json))
reden_11_05_2016_329.json$Col_Num <- paste(length(reden_11_05_2016_329.json))
reden_11_05_2017_232.json$Col_Num <- paste(length(reden_11_05_2017_232.json))
reden_11_06_2014_453.json$Col_Num <- paste(length(reden_11_06_2014_453.json))
reden_11_06_2015_399.json$Col_Num <- paste(length(reden_11_06_2015_399.json))
reden_11_06_2016_321.json$Col_Num <- paste(length(reden_11_06_2016_321.json))
reden_11_07_2011_598.json$Col_Num <- paste(length(reden_11_07_2011_598.json))
reden_11_07_2013_504.json$Col_Num <- paste(length(reden_11_07_2013_504.json))
reden_11_09_2012_552.json$Col_Num <- paste(length(reden_11_09_2012_552.json))
reden_11_09_2015_384.json$Col_Num <- paste(length(reden_11_09_2015_384.json))
reden_11_09_2018_83.json$Col_Num <- paste(length(reden_11_09_2018_83.json))
reden_11_10_2007_805.json$Col_Num <- paste(length(reden_11_10_2007_805.json))
reden_11_10_2017_183.json$Col_Num <- paste(length(reden_11_10_2017_183.json))
reden_11_10_2017_184.json$Col_Num <- paste(length(reden_11_10_2017_184.json))
reden_11_11_2008_756.json$Col_Num <- paste(length(reden_11_11_2008_756.json))
reden_11_11_2009_705.json$Col_Num <- paste(length(reden_11_11_2009_705.json))
reden_11_11_2013_486.json$Col_Num <- paste(length(reden_11_11_2013_486.json))
reden_11_11_2015_370.json$Col_Num <- paste(length(reden_11_11_2015_370.json))
reden_11_11_2015_371.json$Col_Num <- paste(length(reden_11_11_2015_371.json))
reden_11_11_2019_967.json$Col_Num <- paste(length(reden_11_11_2019_967.json))
reden_11_12_2008_748.json$Col_Num <- paste(length(reden_11_12_2008_748.json))
reden_12_01_2018_152.json$Col_Num <- paste(length(reden_12_01_2018_152.json))
reden_12_02_2015_411.json$Col_Num <- paste(length(reden_12_02_2015_411.json))
reden_12_02_2015_412.json$Col_Num <- paste(length(reden_12_02_2015_412.json))
reden_12_02_2019_49.json$Col_Num <- paste(length(reden_12_02_2019_49.json))
reden_12_03_2010_687.json$Col_Num <- paste(length(reden_12_03_2010_687.json))
reden_12_03_2015_408.json$Col_Num <- paste(length(reden_12_03_2015_408.json))
reden_12_04_2018_110.json$Col_Num <- paste(length(reden_12_04_2018_110.json))
reden_12_04_2018_111.json$Col_Num <- paste(length(reden_12_04_2018_111.json))
reden_12_04_2018_112.json$Col_Num <- paste(length(reden_12_04_2018_112.json))
reden_12_05_2009_730.json$Col_Num <- paste(length(reden_12_05_2009_730.json))
reden_12_05_2011_609.json$Col_Num <- paste(length(reden_12_05_2011_609.json))
reden_12_05_2011_610.json$Col_Num <- paste(length(reden_12_05_2011_610.json))
reden_12_06_2008_768.json$Col_Num <- paste(length(reden_12_06_2008_768.json))
reden_12_06_2012_557.json$Col_Num <- paste(length(reden_12_06_2012_557.json))
reden_12_06_2014_452.json$Col_Num <- paste(length(reden_12_06_2014_452.json))
reden_12_07_2018_91.json$Col_Num <- paste(length(reden_12_07_2018_91.json))
reden_12_10_2007_804.json$Col_Num <- paste(length(reden_12_10_2007_804.json))
reden_12_10_2010_661.json$Col_Num <- paste(length(reden_12_10_2010_661.json))
reden_12_10_2010_662.json$Col_Num <- paste(length(reden_12_10_2010_662.json))
reden_12_11_2014_436.json$Col_Num <- paste(length(reden_12_11_2014_436.json))
reden_12_11_2015_369.json$Col_Num <- paste(length(reden_12_11_2015_369.json))
reden_12_11_2019_966.json$Col_Num <- paste(length(reden_12_11_2019_966.json))
reden_12_12_2000_1.json$Col_Num <- paste(length(reden_12_12_2000_1.json))
reden_12_12_2000_2.json$Col_Num <- paste(length(reden_12_12_2000_2.json))
reden_12_12_2000_3.json$Col_Num <- paste(length(reden_12_12_2000_3.json))
reden_12_12_2000_4.json$Col_Num <- paste(length(reden_12_12_2000_4.json))
reden_12_12_2000_5.json$Col_Num <- paste(length(reden_12_12_2000_5.json))
reden_12_12_2000_6.json$Col_Num <- paste(length(reden_12_12_2000_6.json))
reden_12_12_2000_7.json$Col_Num <- paste(length(reden_12_12_2000_7.json))
reden_12_12_2000_8.json$Col_Num <- paste(length(reden_12_12_2000_8.json))
reden_12_12_2000_9.json$Col_Num <- paste(length(reden_12_12_2000_9.json))
reden_12_12_2000_10.json$Col_Num <- paste(length(reden_12_12_2000_10.json))
reden_12_12_2000_11.json$Col_Num <- paste(length(reden_12_12_2000_11.json))
reden_12_12_2000_12.json$Col_Num <- paste(length(reden_12_12_2000_12.json))
reden_12_12_2000_13.json$Col_Num <- paste(length(reden_12_12_2000_13.json))
reden_12_12_2000_14.json$Col_Num <- paste(length(reden_12_12_2000_14.json))
reden_12_12_2000_15.json$Col_Num <- paste(length(reden_12_12_2000_15.json))
reden_12_12_2000_16.json$Col_Num <- paste(length(reden_12_12_2000_16.json))
reden_12_12_2000_17.json$Col_Num <- paste(length(reden_12_12_2000_17.json))
reden_12_12_2000_18.json$Col_Num <- paste(length(reden_12_12_2000_18.json))
reden_12_12_2000_19.json$Col_Num <- paste(length(reden_12_12_2000_19.json))
reden_12_12_2000_20.json$Col_Num <- paste(length(reden_12_12_2000_20.json))
reden_12_12_2012_533.json$Col_Num <- paste(length(reden_12_12_2012_533.json))
reden_13_01_2015_421.json$Col_Num <- paste(length(reden_13_01_2015_421.json))
reden_13_01_2015_422.json$Col_Num <- paste(length(reden_13_01_2015_422.json))
reden_13_03_2002_1.json$Col_Num <- paste(length(reden_13_03_2002_1.json))
reden_13_03_2002_2.json$Col_Num <- paste(length(reden_13_03_2002_2.json))
reden_13_03_2002_3.json$Col_Num <- paste(length(reden_13_03_2002_3.json))
reden_13_03_2002_4.json$Col_Num <- paste(length(reden_13_03_2002_4.json))
reden_13_03_2002_5.json$Col_Num <- paste(length(reden_13_03_2002_5.json))
reden_13_03_2002_6.json$Col_Num <- paste(length(reden_13_03_2002_6.json))
reden_13_03_2002_7.json$Col_Num <- paste(length(reden_13_03_2002_7.json))
reden_13_03_2007_824.json$Col_Num <- paste(length(reden_13_03_2007_824.json))
reden_13_04_2011_614.json$Col_Num <- paste(length(reden_13_04_2011_614.json))
reden_13_04_2011_615.json$Col_Num <- paste(length(reden_13_04_2011_615.json))
reden_13_04_2016_336.json$Col_Num <- paste(length(reden_13_04_2016_336.json))
reden_13_05_2009_729.json$Col_Num <- paste(length(reden_13_05_2009_729.json))
reden_13_05_2015_402.json$Col_Num <- paste(length(reden_13_05_2015_402.json))
reden_13_06_2000_1.json$Col_Num <- paste(length(reden_13_06_2000_1.json))
reden_13_06_2000_2.json$Col_Num <- paste(length(reden_13_06_2000_2.json))
reden_13_06_2000_3.json$Col_Num <- paste(length(reden_13_06_2000_3.json))
reden_13_06_2000_4.json$Col_Num <- paste(length(reden_13_06_2000_4.json))
reden_13_06_2000_5.json$Col_Num <- paste(length(reden_13_06_2000_5.json))
reden_13_06_2000_6.json$Col_Num <- paste(length(reden_13_06_2000_6.json))
reden_13_06_2000_7.json$Col_Num <- paste(length(reden_13_06_2000_7.json))
reden_13_06_2000_8.json$Col_Num <- paste(length(reden_13_06_2000_8.json))
reden_13_06_2000_9.json$Col_Num <- paste(length(reden_13_06_2000_9.json))
reden_13_06_2008_767.json$Col_Num <- paste(length(reden_13_06_2008_767.json))
reden_13_06_2013_513.json$Col_Num <- paste(length(reden_13_06_2013_513.json))
reden_13_06_2016_319.json$Col_Num <- paste(length(reden_13_06_2016_319.json))
reden_13_06_2016_320.json$Col_Num <- paste(length(reden_13_06_2016_320.json))
reden_13_06_2017_214.json$Col_Num <- paste(length(reden_13_06_2017_214.json))
reden_13_06_2019_28.json$Col_Num <- paste(length(reden_13_06_2019_28.json))
reden_13_07_2016_315.json$Col_Num <- paste(length(reden_13_07_2016_315.json))
reden_13_07_2017_204.json$Col_Num <- paste(length(reden_13_07_2017_204.json))
reden_13_09_2011_590.json$Col_Num <- paste(length(reden_13_09_2011_590.json))
reden_13_09_2011_591.json$Col_Num <- paste(length(reden_13_09_2011_591.json))
reden_13_09_2019_988.json$Col_Num <- paste(length(reden_13_09_2019_988.json))
reden_13_10_2014_441.json$Col_Num <- paste(length(reden_13_10_2014_441.json))
reden_13_10_2015_375.json$Col_Num <- paste(length(reden_13_10_2015_375.json))
reden_13_10_2016_303.json$Col_Num <- paste(length(reden_13_10_2016_303.json))
reden_13_11_2008_755.json$Col_Num <- paste(length(reden_13_11_2008_755.json))
reden_13_11_2013_485.json$Col_Num <- paste(length(reden_13_11_2013_485.json))
reden_13_11_2017_173.json$Col_Num <- paste(length(reden_13_11_2017_173.json))
reden_13_11_2018_74.json$Col_Num <- paste(length(reden_13_11_2018_74.json))
reden_13_12_2004_1.json$Col_Num <- paste(length(reden_13_12_2004_1.json))
reden_13_12_2004_2.json$Col_Num <- paste(length(reden_13_12_2004_2.json))
reden_13_12_2004_3.json$Col_Num <- paste(length(reden_13_12_2004_3.json))
reden_13_12_2004_4.json$Col_Num <- paste(length(reden_13_12_2004_4.json))
reden_13_12_2004_5.json$Col_Num <- paste(length(reden_13_12_2004_5.json))
reden_13_12_2004_6.json$Col_Num <- paste(length(reden_13_12_2004_6.json))
reden_13_12_2004_7.json$Col_Num <- paste(length(reden_13_12_2004_7.json))
reden_13_12_2004_8.json$Col_Num <- paste(length(reden_13_12_2004_8.json))
reden_13_12_2004_9.json$Col_Num <- paste(length(reden_13_12_2004_9.json))
reden_13_12_2004_10.json$Col_Num <- paste(length(reden_13_12_2004_10.json))
reden_13_12_2004_11.json$Col_Num <- paste(length(reden_13_12_2004_11.json))
reden_13_12_2004_12.json$Col_Num <- paste(length(reden_13_12_2004_12.json))
reden_13_12_2004_13.json$Col_Num <- paste(length(reden_13_12_2004_13.json))
reden_13_12_2004_14.json$Col_Num <- paste(length(reden_13_12_2004_14.json))
reden_13_12_2004_15.json$Col_Num <- paste(length(reden_13_12_2004_15.json))
reden_13_12_2004_16.json$Col_Num <- paste(length(reden_13_12_2004_16.json))
reden_13_12_2006_831.json$Col_Num <- paste(length(reden_13_12_2006_831.json))
reden_13_12_2007_795.json$Col_Num <- paste(length(reden_13_12_2007_795.json))
reden_13_12_2018_59.json$Col_Num <- paste(length(reden_13_12_2018_59.json))
reden_14_01_2011_639.json$Col_Num <- paste(length(reden_14_01_2011_639.json))
reden_14_01_2016_355.json$Col_Num <- paste(length(reden_14_01_2016_355.json))
reden_14_02_2008_789.json$Col_Num <- paste(length(reden_14_02_2008_789.json))
reden_14_02_2014_465.json$Col_Num <- paste(length(reden_14_02_2014_465.json))
reden_14_02_2018_135.json$Col_Num <- paste(length(reden_14_02_2018_135.json))
reden_14_02_2018_136.json$Col_Num <- paste(length(reden_14_02_2018_136.json))
reden_14_02_2018_137.json$Col_Num <- paste(length(reden_14_02_2018_137.json))
reden_14_02_2019_48.json$Col_Num <- paste(length(reden_14_02_2019_48.json))
reden_14_03_2006_847.json$Col_Num <- paste(length(reden_14_03_2006_847.json))
reden_14_03_2012_562.json$Col_Num <- paste(length(reden_14_03_2012_562.json))
reden_14_04_2005_871.json$Col_Num <- paste(length(reden_14_04_2005_871.json))
reden_14_04_2011_613.json$Col_Num <- paste(length(reden_14_04_2011_613.json))
reden_14_05_2010_680.json$Col_Num <- paste(length(reden_14_05_2010_680.json))
reden_14_05_2014_457.json$Col_Num <- paste(length(reden_14_05_2014_457.json))
reden_14_06_2007_810.json$Col_Num <- paste(length(reden_14_06_2007_810.json))
reden_14_06_2007_811.json$Col_Num <- paste(length(reden_14_06_2007_811.json))
reden_14_06_2012_556.json$Col_Num <- paste(length(reden_14_06_2012_556.json))
reden_14_06_2017_213.json$Col_Num <- paste(length(reden_14_06_2017_213.json))
reden_14_07_2016_314.json$Col_Num <- paste(length(reden_14_07_2016_314.json))
reden_14_08_2008_765.json$Col_Num <- paste(length(reden_14_08_2008_765.json))
reden_14_08_2017_202.json$Col_Num <- paste(length(reden_14_08_2017_202.json))
reden_14_09_2010_669.json$Col_Num <- paste(length(reden_14_09_2010_669.json))
reden_14_09_2017_193.json$Col_Num <- paste(length(reden_14_09_2017_193.json))
reden_14_10_2010_660.json$Col_Num <- paste(length(reden_14_10_2010_660.json))
reden_14_10_2019_980.json$Col_Num <- paste(length(reden_14_10_2019_980.json))
reden_14_11_2011_580.json$Col_Num <- paste(length(reden_14_11_2011_580.json))
reden_14_11_2012_541.json$Col_Num <- paste(length(reden_14_11_2012_541.json))
reden_14_11_2012_542.json$Col_Num <- paste(length(reden_14_11_2012_542.json))
reden_14_11_2013_481.json$Col_Num <- paste(length(reden_14_11_2013_481.json))
reden_14_11_2013_482.json$Col_Num <- paste(length(reden_14_11_2013_482.json))
reden_14_11_2013_483.json$Col_Num <- paste(length(reden_14_11_2013_483.json))
reden_14_11_2013_484.json$Col_Num <- paste(length(reden_14_11_2013_484.json))
reden_14_11_2017_172.json$Col_Num <- paste(length(reden_14_11_2017_172.json))
reden_14_11_2018_70.json$Col_Num <- paste(length(reden_14_11_2018_70.json))
reden_14_11_2018_71.json$Col_Num <- paste(length(reden_14_11_2018_71.json))
reden_14_11_2018_72.json$Col_Num <- paste(length(reden_14_11_2018_72.json))
reden_14_11_2018_73.json$Col_Num <- paste(length(reden_14_11_2018_73.json))
reden_14_12_2011_572.json$Col_Num <- paste(length(reden_14_12_2011_572.json))
reden_14_12_2017_154.json$Col_Num <- paste(length(reden_14_12_2017_154.json))
reden_14_12_2018_58.json$Col_Num <- paste(length(reden_14_12_2018_58.json))
reden_15_01_2008_794.json$Col_Num <- paste(length(reden_15_01_2008_794.json))
reden_15_01_2014_472.json$Col_Num <- paste(length(reden_15_01_2014_472.json))
reden_15_01_2018_151.json$Col_Num <- paste(length(reden_15_01_2018_151.json))
reden_15_01_2019_56.json$Col_Num <- paste(length(reden_15_01_2019_56.json))
reden_15_01_2019_57.json$Col_Num <- paste(length(reden_15_01_2019_57.json))
reden_15_02_2018_133.json$Col_Num <- paste(length(reden_15_02_2018_133.json))
reden_15_02_2018_134.json$Col_Num <- paste(length(reden_15_02_2018_134.json))
reden_15_03_2007_823.json$Col_Num <- paste(length(reden_15_03_2007_823.json))
reden_15_03_2017_253.json$Col_Num <- paste(length(reden_15_03_2017_253.json))
reden_15_03_2017_254.json$Col_Num <- paste(length(reden_15_03_2017_254.json))
reden_15_03_2018_121.json$Col_Num <- paste(length(reden_15_03_2018_121.json))
reden_15_04_2003_1.json$Col_Num <- paste(length(reden_15_04_2003_1.json))
reden_15_04_2003_2.json$Col_Num <- paste(length(reden_15_04_2003_2.json))
reden_15_04_2003_3.json$Col_Num <- paste(length(reden_15_04_2003_3.json))
reden_15_04_2003_4.json$Col_Num <- paste(length(reden_15_04_2003_4.json))
reden_15_04_2003_5.json$Col_Num <- paste(length(reden_15_04_2003_5.json))
reden_15_04_2003_6.json$Col_Num <- paste(length(reden_15_04_2003_6.json))
reden_15_04_2003_7.json$Col_Num <- paste(length(reden_15_04_2003_7.json))
reden_15_04_2008_781.json$Col_Num <- paste(length(reden_15_04_2008_781.json))
reden_15_04_2009_734.json$Col_Num <- paste(length(reden_15_04_2009_734.json))
reden_15_05_2013_520.json$Col_Num <- paste(length(reden_15_05_2013_520.json))
reden_15_05_2017_231.json$Col_Num <- paste(length(reden_15_05_2017_231.json))
reden_15_05_2019_36.json$Col_Num <- paste(length(reden_15_05_2019_36.json))
reden_15_06_2015_397.json$Col_Num <- paste(length(reden_15_06_2015_397.json))
reden_15_06_2015_398.json$Col_Num <- paste(length(reden_15_06_2015_398.json))
reden_15_06_2016_318.json$Col_Num <- paste(length(reden_15_06_2016_318.json))
reden_15_07_2015_388.json$Col_Num <- paste(length(reden_15_07_2015_388.json))
reden_15_08_2017_201.json$Col_Num <- paste(length(reden_15_08_2017_201.json))
reden_15_09_2015_383.json$Col_Num <- paste(length(reden_15_09_2015_383.json))
reden_15_09_2016_309.json$Col_Num <- paste(length(reden_15_09_2016_309.json))
reden_15_10_2009_711.json$Col_Num <- paste(length(reden_15_10_2009_711.json))
reden_15_10_2015_374.json$Col_Num <- paste(length(reden_15_10_2015_374.json))
reden_15_11_2010_650.json$Col_Num <- paste(length(reden_15_11_2010_650.json))
reden_15_11_2010_651.json$Col_Num <- paste(length(reden_15_11_2010_651.json))
reden_15_11_2011_579.json$Col_Num <- paste(length(reden_15_11_2011_579.json))
reden_15_11_2016_292.json$Col_Num <- paste(length(reden_15_11_2016_292.json))
reden_15_11_2017_170.json$Col_Num <- paste(length(reden_15_11_2017_170.json))
reden_15_11_2017_171.json$Col_Num <- paste(length(reden_15_11_2017_171.json))
reden_15_11_2018_69.json$Col_Num <- paste(length(reden_15_11_2018_69.json))
reden_16_01_2008_793.json$Col_Num <- paste(length(reden_16_01_2008_793.json))
reden_16_01_2014_470.json$Col_Num <- paste(length(reden_16_01_2014_470.json))
reden_16_01_2014_471.json$Col_Num <- paste(length(reden_16_01_2014_471.json))
reden_16_01_2015_420.json$Col_Num <- paste(length(reden_16_01_2015_420.json))
reden_16_01_2017_277.json$Col_Num <- paste(length(reden_16_01_2017_277.json))
reden_16_01_2018_150.json$Col_Num <- paste(length(reden_16_01_2018_150.json))
reden_16_02_2017_263.json$Col_Num <- paste(length(reden_16_02_2017_263.json))
reden_16_03_2017_252.json$Col_Num <- paste(length(reden_16_03_2017_252.json))
reden_16_04_2018_109.json$Col_Num <- paste(length(reden_16_04_2018_109.json))
reden_16_05_2007_816.json$Col_Num <- paste(length(reden_16_05_2007_816.json))
reden_16_05_2008_775.json$Col_Num <- paste(length(reden_16_05_2008_775.json))
reden_16_05_2019_34.json$Col_Num <- paste(length(reden_16_05_2019_34.json))
reden_16_05_2019_35.json$Col_Num <- paste(length(reden_16_05_2019_35.json))
reden_16_06_2005_861.json$Col_Num <- paste(length(reden_16_06_2005_861.json))
reden_16_06_2009_723.json$Col_Num <- paste(length(reden_16_06_2009_723.json))
reden_16_07_2003_1.json$Col_Num <- paste(length(reden_16_07_2003_1.json))
reden_16_07_2003_2.json$Col_Num <- paste(length(reden_16_07_2003_2.json))
reden_16_07_2003_3.json$Col_Num <- paste(length(reden_16_07_2003_3.json))
reden_16_07_2003_4.json$Col_Num <- paste(length(reden_16_07_2003_4.json))
reden_16_07_2003_5.json$Col_Num <- paste(length(reden_16_07_2003_5.json))
reden_16_07_2003_6.json$Col_Num <- paste(length(reden_16_07_2003_6.json))
reden_16_07_2003_7.json$Col_Num <- paste(length(reden_16_07_2003_7.json))
reden_16_07_2003_8.json$Col_Num <- paste(length(reden_16_07_2003_8.json))
reden_16_07_2003_9.json$Col_Num <- paste(length(reden_16_07_2003_9.json))
reden_16_09_2008_763.json$Col_Num <- paste(length(reden_16_09_2008_763.json))
reden_16_09_2010_668.json$Col_Num <- paste(length(reden_16_09_2010_668.json))
reden_16_09_2012_551.json$Col_Num <- paste(length(reden_16_09_2012_551.json))
reden_16_09_2015_382.json$Col_Num <- paste(length(reden_16_09_2015_382.json))
reden_16_10_2009_710.json$Col_Num <- paste(length(reden_16_10_2009_710.json))
reden_16_10_2019_978.json$Col_Num <- paste(length(reden_16_10_2019_978.json))
reden_16_10_2019_979.json$Col_Num <- paste(length(reden_16_10_2019_979.json))
reden_16_11_2009_702.json$Col_Num <- paste(length(reden_16_11_2009_702.json))
reden_16_11_2009_703.json$Col_Num <- paste(length(reden_16_11_2009_703.json))
reden_16_11_2009_704.json$Col_Num <- paste(length(reden_16_11_2009_704.json))
reden_16_11_2010_649.json$Col_Num <- paste(length(reden_16_11_2010_649.json))
reden_16_11_2011_577.json$Col_Num <- paste(length(reden_16_11_2011_577.json))
reden_16_11_2011_578.json$Col_Num <- paste(length(reden_16_11_2011_578.json))
reden_16_11_2016_289.json$Col_Num <- paste(length(reden_16_11_2016_289.json))
reden_16_11_2016_290.json$Col_Num <- paste(length(reden_16_11_2016_290.json))
reden_16_11_2016_291.json$Col_Num <- paste(length(reden_16_11_2016_291.json))
reden_16_11_2018_68.json$Col_Num <- paste(length(reden_16_11_2018_68.json))
reden_16_12_2016_280.json$Col_Num <- paste(length(reden_16_12_2016_280.json))
reden_16_12_2016_281.json$Col_Num <- paste(length(reden_16_12_2016_281.json))
reden_16_12_2016_282.json$Col_Num <- paste(length(reden_16_12_2016_282.json))
reden_17_01_2005_877.json$Col_Num <- paste(length(reden_17_01_2005_877.json))
reden_17_01_2012_570.json$Col_Num <- paste(length(reden_17_01_2012_570.json))
reden_17_01_2013_532.json$Col_Num <- paste(length(reden_17_01_2013_532.json))
reden_17_02_2009_742.json$Col_Num <- paste(length(reden_17_02_2009_742.json))
reden_17_02_2016_345.json$Col_Num <- paste(length(reden_17_02_2016_345.json))
reden_17_03_2006_846.json$Col_Num <- paste(length(reden_17_03_2006_846.json))
reden_17_03_2009_739.json$Col_Num <- paste(length(reden_17_03_2009_739.json))
reden_17_03_2014_462.json$Col_Num <- paste(length(reden_17_03_2014_462.json))
reden_17_04_2008_780.json$Col_Num <- paste(length(reden_17_04_2008_780.json))
reden_17_04_2018_108.json$Col_Num <- paste(length(reden_17_04_2018_108.json))
reden_17_05_2011_608.json$Col_Num <- paste(length(reden_17_05_2011_608.json))
reden_17_05_2017_227.json$Col_Num <- paste(length(reden_17_05_2017_227.json))
reden_17_05_2017_228.json$Col_Num <- paste(length(reden_17_05_2017_228.json))
reden_17_05_2017_229.json$Col_Num <- paste(length(reden_17_05_2017_229.json))
reden_17_05_2017_230.json$Col_Num <- paste(length(reden_17_05_2017_230.json))
reden_17_06_2010_673.json$Col_Num <- paste(length(reden_17_06_2010_673.json))
reden_17_06_2011_601.json$Col_Num <- paste(length(reden_17_06_2011_601.json))
reden_17_06_2019_27.json$Col_Num <- paste(length(reden_17_06_2019_27.json))
reden_17_08_2019_22.json$Col_Num <- paste(length(reden_17_08_2019_22.json))
reden_17_09_2008_761.json$Col_Num <- paste(length(reden_17_09_2008_761.json))
reden_17_09_2008_762.json$Col_Num <- paste(length(reden_17_09_2008_762.json))
reden_17_09_2010_667.json$Col_Num <- paste(length(reden_17_09_2010_667.json))
reden_17_10_2013_492.json$Col_Num <- paste(length(reden_17_10_2013_492.json))
reden_17_10_2014_440.json$Col_Num <- paste(length(reden_17_10_2014_440.json))
reden_17_10_2016_302.json$Col_Num <- paste(length(reden_17_10_2016_302.json))
reden_17_10_2018_77.json$Col_Num <- paste(length(reden_17_10_2018_77.json))
reden_17_10_2018_78.json$Col_Num <- paste(length(reden_17_10_2018_78.json))
reden_17_10_2019_976.json$Col_Num <- paste(length(reden_17_10_2019_976.json))
reden_17_10_2019_977.json$Col_Num <- paste(length(reden_17_10_2019_977.json))
reden_17_11_2008_753.json$Col_Num <- paste(length(reden_17_11_2008_753.json))
reden_17_11_2008_754.json$Col_Num <- paste(length(reden_17_11_2008_754.json))
reden_17_11_2009_701.json$Col_Num <- paste(length(reden_17_11_2009_701.json))
reden_17_11_2010_648.json$Col_Num <- paste(length(reden_17_11_2010_648.json))
reden_17_11_2014_435.json$Col_Num <- paste(length(reden_17_11_2014_435.json))
reden_17_11_2015_368.json$Col_Num <- paste(length(reden_17_11_2015_368.json))
reden_17_11_2017_167.json$Col_Num <- paste(length(reden_17_11_2017_167.json))
reden_17_11_2017_168.json$Col_Num <- paste(length(reden_17_11_2017_168.json))
reden_17_11_2017_169.json$Col_Num <- paste(length(reden_17_11_2017_169.json))
reden_17_12_2001_1.json$Col_Num <- paste(length(reden_17_12_2001_1.json))
reden_17_12_2001_2.json$Col_Num <- paste(length(reden_17_12_2001_2.json))
reden_17_12_2001_3.json$Col_Num <- paste(length(reden_17_12_2001_3.json))
reden_17_12_2001_4.json$Col_Num <- paste(length(reden_17_12_2001_4.json))
reden_17_12_2001_5.json$Col_Num <- paste(length(reden_17_12_2001_5.json))
reden_17_12_2001_6.json$Col_Num <- paste(length(reden_17_12_2001_6.json))
reden_17_12_2001_7.json$Col_Num <- paste(length(reden_17_12_2001_7.json))
reden_17_12_2001_8.json$Col_Num <- paste(length(reden_17_12_2001_8.json))
reden_17_12_2001_9.json$Col_Num <- paste(length(reden_17_12_2001_9.json))
reden_17_12_2001_10.json$Col_Num <- paste(length(reden_17_12_2001_10.json))
reden_17_12_2010_641.json$Col_Num <- paste(length(reden_17_12_2010_641.json))
reden_18_01_2006_852.json$Col_Num <- paste(length(reden_18_01_2006_852.json))
reden_18_01_2011_638.json$Col_Num <- paste(length(reden_18_01_2011_638.json))
reden_18_01_2012_569.json$Col_Num <- paste(length(reden_18_01_2012_569.json))
reden_18_01_2016_353.json$Col_Num <- paste(length(reden_18_01_2016_353.json))
reden_18_01_2016_354.json$Col_Num <- paste(length(reden_18_01_2016_354.json))
reden_18_02_2008_788.json$Col_Num <- paste(length(reden_18_02_2008_788.json))
reden_18_02_2013_524.json$Col_Num <- paste(length(reden_18_02_2013_524.json))
reden_18_02_2014_464.json$Col_Num <- paste(length(reden_18_02_2014_464.json))
reden_18_03_2013_522.json$Col_Num <- paste(length(reden_18_03_2013_522.json))
reden_18_03_2015_407.json$Col_Num <- paste(length(reden_18_03_2015_407.json))
reden_18_04_2007_821.json$Col_Num <- paste(length(reden_18_04_2007_821.json))
reden_18_04_2008_779.json$Col_Num <- paste(length(reden_18_04_2008_779.json))
reden_18_05_2010_679.json$Col_Num <- paste(length(reden_18_05_2010_679.json))
reden_18_05_2017_224.json$Col_Num <- paste(length(reden_18_05_2017_224.json))
reden_18_05_2017_225.json$Col_Num <- paste(length(reden_18_05_2017_225.json))
reden_18_05_2017_226.json$Col_Num <- paste(length(reden_18_05_2017_226.json))
reden_18_05_2018_99.json$Col_Num <- paste(length(reden_18_05_2018_99.json))
reden_18_06_2013_512.json$Col_Num <- paste(length(reden_18_06_2013_512.json))
reden_18_06_2015_396.json$Col_Num <- paste(length(reden_18_06_2015_396.json))
reden_18_07_2014_449.json$Col_Num <- paste(length(reden_18_07_2014_449.json))
reden_18_09_2012_550.json$Col_Num <- paste(length(reden_18_09_2012_550.json))
reden_18_09_2015_381.json$Col_Num <- paste(length(reden_18_09_2015_381.json))
reden_18_09_2017_192.json$Col_Num <- paste(length(reden_18_09_2017_192.json))
reden_18_09_2018_82.json$Col_Num <- paste(length(reden_18_09_2018_82.json))
reden_18_09_2019_987.json$Col_Num <- paste(length(reden_18_09_2019_987.json))
reden_18_11_2005_855.json$Col_Num <- paste(length(reden_18_11_2005_855.json))
reden_18_11_2008_752.json$Col_Num <- paste(length(reden_18_11_2008_752.json))
reden_18_11_2011_576.json$Col_Num <- paste(length(reden_18_11_2011_576.json))
reden_18_11_2014_434.json$Col_Num <- paste(length(reden_18_11_2014_434.json))
reden_18_11_2015_367.json$Col_Num <- paste(length(reden_18_11_2015_367.json))
reden_18_11_2016_288.json$Col_Num <- paste(length(reden_18_11_2016_288.json))
reden_18_11_2019_965.json$Col_Num <- paste(length(reden_18_11_2019_965.json))
reden_19_01_2007_830.json$Col_Num <- paste(length(reden_19_01_2007_830.json))
reden_19_01_2011_637.json$Col_Num <- paste(length(reden_19_01_2011_637.json))
reden_19_01_2018_149.json$Col_Num <- paste(length(reden_19_01_2018_149.json))
reden_19_02_2019_47.json$Col_Num <- paste(length(reden_19_02_2019_47.json))
reden_19_03_2009_738.json$Col_Num <- paste(length(reden_19_03_2009_738.json))
reden_19_03_2019_44.json$Col_Num <- paste(length(reden_19_03_2019_44.json))
reden_19_05_2010_678.json$Col_Num <- paste(length(reden_19_05_2010_678.json))
reden_19_05_2014_455.json$Col_Num <- paste(length(reden_19_05_2014_455.json))
reden_19_05_2014_456.json$Col_Num <- paste(length(reden_19_05_2014_456.json))
reden_19_06_2017_211.json$Col_Num <- paste(length(reden_19_06_2017_211.json))
reden_19_06_2017_212.json$Col_Num <- paste(length(reden_19_06_2017_212.json))
reden_19_08_2013_503.json$Col_Num <- paste(length(reden_19_08_2013_503.json))
reden_19_09_2009_716.json$Col_Num <- paste(length(reden_19_09_2009_716.json))
reden_19_09_2013_497.json$Col_Num <- paste(length(reden_19_09_2013_497.json))
reden_19_09_2018_81.json$Col_Num <- paste(length(reden_19_09_2018_81.json))
reden_19_10_2010_659.json$Col_Num <- paste(length(reden_19_10_2010_659.json))
reden_19_10_2011_586.json$Col_Num <- paste(length(reden_19_10_2011_586.json))
reden_19_10_2015_373.json$Col_Num <- paste(length(reden_19_10_2015_373.json))
reden_19_10_2016_301.json$Col_Num <- paste(length(reden_19_10_2016_301.json))
reden_19_10_2017_182.json$Col_Num <- paste(length(reden_19_10_2017_182.json))
reden_19_11_2007_797.json$Col_Num <- paste(length(reden_19_11_2007_797.json))
reden_19_11_2012_539.json$Col_Num <- paste(length(reden_19_11_2012_539.json))
reden_19_11_2012_540.json$Col_Num <- paste(length(reden_19_11_2012_540.json))
reden_19_11_2013_480.json$Col_Num <- paste(length(reden_19_11_2013_480.json))
reden_19_11_2014_433.json$Col_Num <- paste(length(reden_19_11_2014_433.json))
reden_19_11_2015_366.json$Col_Num <- paste(length(reden_19_11_2015_366.json))
reden_19_11_2018_66.json$Col_Num <- paste(length(reden_19_11_2018_66.json))
reden_19_11_2018_67.json$Col_Num <- paste(length(reden_19_11_2018_67.json))
reden_19_11_2019_964.json$Col_Num <- paste(length(reden_19_11_2019_964.json))
reden_19_12_2017_153.json$Col_Num <- paste(length(reden_19_12_2017_153.json))
reden_20_01_2010_694.json$Col_Num <- paste(length(reden_20_01_2010_694.json))
reden_20_02_2006_851.json$Col_Num <- paste(length(reden_20_02_2006_851.json))
reden_20_02_2018_132.json$Col_Num <- paste(length(reden_20_02_2018_132.json))
reden_20_03_2009_737.json$Col_Num <- paste(length(reden_20_03_2009_737.json))
reden_20_03_2017_250.json$Col_Num <- paste(length(reden_20_03_2017_250.json))
reden_20_03_2017_251.json$Col_Num <- paste(length(reden_20_03_2017_251.json))
reden_20_03_2018_120.json$Col_Num <- paste(length(reden_20_03_2018_120.json))
reden_20_04_2016_335.json$Col_Num <- paste(length(reden_20_04_2016_335.json))
reden_20_04_2017_240.json$Col_Num <- paste(length(reden_20_04_2017_240.json))
reden_20_04_2018_107.json$Col_Num <- paste(length(reden_20_04_2018_107.json))
reden_20_05_2011_607.json$Col_Num <- paste(length(reden_20_05_2011_607.json))
reden_20_06_2011_600.json$Col_Num <- paste(length(reden_20_06_2011_600.json))
reden_20_06_2013_511.json$Col_Num <- paste(length(reden_20_06_2013_511.json))
reden_20_06_2018_95.json$Col_Num <- paste(length(reden_20_06_2018_95.json))
reden_20_08_2018_90.json$Col_Num <- paste(length(reden_20_08_2018_90.json))
reden_20_09_2012_549.json$Col_Num <- paste(length(reden_20_09_2012_549.json))
reden_20_09_2017_189.json$Col_Num <- paste(length(reden_20_09_2017_189.json))
reden_20_09_2017_190.json$Col_Num <- paste(length(reden_20_09_2017_190.json))
reden_20_09_2017_191.json$Col_Num <- paste(length(reden_20_09_2017_191.json))
reden_20_09_2018_80.json$Col_Num <- paste(length(reden_20_09_2018_80.json))
reden_20_10_2011_584.json$Col_Num <- paste(length(reden_20_10_2011_584.json))
reden_20_10_2011_585.json$Col_Num <- paste(length(reden_20_10_2011_585.json))
reden_20_11_2013_479.json$Col_Num <- paste(length(reden_20_11_2013_479.json))
reden_20_11_2014_432.json$Col_Num <- paste(length(reden_20_11_2014_432.json))
reden_20_11_2015_365.json$Col_Num <- paste(length(reden_20_11_2015_365.json))
reden_20_11_2018_65.json$Col_Num <- paste(length(reden_20_11_2018_65.json))
reden_20_11_2019_963.json$Col_Num <- paste(length(reden_20_11_2019_963.json))
reden_20_12_2011_571.json$Col_Num <- paste(length(reden_20_12_2011_571.json))
reden_21_01_2010_693.json$Col_Num <- paste(length(reden_21_01_2010_693.json))
reden_21_01_2013_531.json$Col_Num <- paste(length(reden_21_01_2013_531.json))
reden_21_02_2011_627.json$Col_Num <- paste(length(reden_21_02_2011_627.json))
reden_21_02_2018_131.json$Col_Num <- paste(length(reden_21_02_2018_131.json))
reden_21_04_2008_778.json$Col_Num <- paste(length(reden_21_04_2008_778.json))
reden_21_04_2016_334.json$Col_Num <- paste(length(reden_21_04_2016_334.json))
reden_21_05_2012_558.json$Col_Num <- paste(length(reden_21_05_2012_558.json))
reden_21_06_2017_209.json$Col_Num <- paste(length(reden_21_06_2017_209.json))
reden_21_06_2017_210.json$Col_Num <- paste(length(reden_21_06_2017_210.json))
reden_21_06_2018_93.json$Col_Num <- paste(length(reden_21_06_2018_93.json))
reden_21_06_2018_94.json$Col_Num <- paste(length(reden_21_06_2018_94.json))
reden_21_06_2019_25.json$Col_Num <- paste(length(reden_21_06_2019_25.json))
reden_21_06_2019_26.json$Col_Num <- paste(length(reden_21_06_2019_26.json))
reden_21_07_2017_203.json$Col_Num <- paste(length(reden_21_07_2017_203.json))
reden_21_08_2017_200.json$Col_Num <- paste(length(reden_21_08_2017_200.json))
reden_21_09_2007_807.json$Col_Num <- paste(length(reden_21_09_2007_807.json))
reden_21_09_2015_380.json$Col_Num <- paste(length(reden_21_09_2015_380.json))
reden_21_09_2017_188.json$Col_Num <- paste(length(reden_21_09_2017_188.json))
reden_21_11_2008_751.json$Col_Num <- paste(length(reden_21_11_2008_751.json))
reden_21_11_2012_538.json$Col_Num <- paste(length(reden_21_11_2012_538.json))
reden_21_11_2013_478.json$Col_Num <- paste(length(reden_21_11_2013_478.json))
reden_21_11_2014_431.json$Col_Num <- paste(length(reden_21_11_2014_431.json))
reden_21_11_2017_165.json$Col_Num <- paste(length(reden_21_11_2017_165.json))
reden_21_11_2017_166.json$Col_Num <- paste(length(reden_21_11_2017_166.json))
reden_21_11_2019_962.json$Col_Num <- paste(length(reden_21_11_2019_962.json))
reden_22_01_2016_352.json$Col_Num <- paste(length(reden_22_01_2016_352.json))
reden_22_02_2017_262.json$Col_Num <- paste(length(reden_22_02_2017_262.json))
reden_22_03_2010_686.json$Col_Num <- paste(length(reden_22_03_2010_686.json))
reden_22_03_2011_619.json$Col_Num <- paste(length(reden_22_03_2011_619.json))
reden_22_03_2017_249.json$Col_Num <- paste(length(reden_22_03_2017_249.json))
reden_22_04_2008_777.json$Col_Num <- paste(length(reden_22_04_2008_777.json))
reden_22_05_2008_774.json$Col_Num <- paste(length(reden_22_05_2008_774.json))
reden_22_05_2014_454.json$Col_Num <- paste(length(reden_22_05_2014_454.json))
reden_22_05_2015_401.json$Col_Num <- paste(length(reden_22_05_2015_401.json))
reden_22_05_2017_222.json$Col_Num <- paste(length(reden_22_05_2017_222.json))
reden_22_05_2017_223.json$Col_Num <- paste(length(reden_22_05_2017_223.json))
reden_22_06_2015_395.json$Col_Num <- paste(length(reden_22_06_2015_395.json))
reden_22_08_2012_553.json$Col_Num <- paste(length(reden_22_08_2012_553.json))
reden_22_09_2010_666.json$Col_Num <- paste(length(reden_22_09_2010_666.json))
reden_22_09_2011_589.json$Col_Num <- paste(length(reden_22_09_2011_589.json))
reden_22_09_2016_308.json$Col_Num <- paste(length(reden_22_09_2016_308.json))
reden_22_09_2017_187.json$Col_Num <- paste(length(reden_22_09_2017_187.json))
reden_22_10_2009_709.json$Col_Num <- paste(length(reden_22_10_2009_709.json))
reden_22_11_2010_647.json$Col_Num <- paste(length(reden_22_11_2010_647.json))
reden_22_11_2011_574.json$Col_Num <- paste(length(reden_22_11_2011_574.json))
reden_22_11_2011_575.json$Col_Num <- paste(length(reden_22_11_2011_575.json))
reden_22_11_2013_477.json$Col_Num <- paste(length(reden_22_11_2013_477.json))
reden_22_11_2015_364.json$Col_Num <- paste(length(reden_22_11_2015_364.json))
reden_22_11_2016_286.json$Col_Num <- paste(length(reden_22_11_2016_286.json))
reden_22_11_2016_287.json$Col_Num <- paste(length(reden_22_11_2016_287.json))
reden_22_11_2017_163.json$Col_Num <- paste(length(reden_22_11_2017_163.json))
reden_22_11_2017_164.json$Col_Num <- paste(length(reden_22_11_2017_164.json))
reden_22_11_2018_64.json$Col_Num <- paste(length(reden_22_11_2018_64.json))
reden_22_11_2019_958.json$Col_Num <- paste(length(reden_22_11_2019_958.json))
reden_22_11_2019_959.json$Col_Num <- paste(length(reden_22_11_2019_959.json))
reden_22_11_2019_960.json$Col_Num <- paste(length(reden_22_11_2019_960.json))
reden_22_11_2019_961.json$Col_Num <- paste(length(reden_22_11_2019_961.json))
reden_22_12_2016_279.json$Col_Num <- paste(length(reden_22_12_2016_279.json))
reden_23_01_2012_567.json$Col_Num <- paste(length(reden_23_01_2012_567.json))
reden_23_02_2005_873.json$Col_Num <- paste(length(reden_23_02_2005_873.json))
reden_23_02_2009_741.json$Col_Num <- paste(length(reden_23_02_2009_741.json))
reden_23_02_2011_626.json$Col_Num <- paste(length(reden_23_02_2011_626.json))
reden_23_02_2016_343.json$Col_Num <- paste(length(reden_23_02_2016_343.json))
reden_23_02_2016_344.json$Col_Num <- paste(length(reden_23_02_2016_344.json))
reden_23_02_2017_260.json$Col_Num <- paste(length(reden_23_02_2017_260.json))
reden_23_02_2017_261.json$Col_Num <- paste(length(reden_23_02_2017_261.json))
reden_23_03_2009_736.json$Col_Num <- paste(length(reden_23_03_2009_736.json))
reden_23_03_2011_618.json$Col_Num <- paste(length(reden_23_03_2011_618.json))
reden_23_03_2016_339.json$Col_Num <- paste(length(reden_23_03_2016_339.json))
reden_23_04_2005_870.json$Col_Num <- paste(length(reden_23_04_2005_870.json))
reden_23_04_2018_106.json$Col_Num <- paste(length(reden_23_04_2018_106.json))
reden_23_05_2006_839.json$Col_Num <- paste(length(reden_23_05_2006_839.json))
reden_23_05_2007_815.json$Col_Num <- paste(length(reden_23_05_2007_815.json))
reden_23_05_2011_605.json$Col_Num <- paste(length(reden_23_05_2011_605.json))
reden_23_05_2011_606.json$Col_Num <- paste(length(reden_23_05_2011_606.json))
reden_23_05_2013_518.json$Col_Num <- paste(length(reden_23_05_2013_518.json))
reden_23_05_2013_519.json$Col_Num <- paste(length(reden_23_05_2013_519.json))
reden_23_05_2017_221.json$Col_Num <- paste(length(reden_23_05_2017_221.json))
reden_23_05_2019_33.json$Col_Num <- paste(length(reden_23_05_2019_33.json))
reden_23_06_2006_838.json$Col_Num <- paste(length(reden_23_06_2006_838.json))
reden_23_06_2009_722.json$Col_Num <- paste(length(reden_23_06_2009_722.json))
reden_23_06_2016_317.json$Col_Num <- paste(length(reden_23_06_2016_317.json))
reden_23_07_2014_448.json$Col_Num <- paste(length(reden_23_07_2014_448.json))
reden_23_07_2015_387.json$Col_Num <- paste(length(reden_23_07_2015_387.json))
reden_23_08_2018_89.json$Col_Num <- paste(length(reden_23_08_2018_89.json))
reden_23_09_2015_379.json$Col_Num <- paste(length(reden_23_09_2015_379.json))
reden_23_09_2019_986.json$Col_Num <- paste(length(reden_23_09_2019_986.json))
reden_23_10_2013_491.json$Col_Num <- paste(length(reden_23_10_2013_491.json))
reden_23_10_2017_181.json$Col_Num <- paste(length(reden_23_10_2017_181.json))
reden_23_10_2019_975.json$Col_Num <- paste(length(reden_23_10_2019_975.json))
reden_23_11_2015_363.json$Col_Num <- paste(length(reden_23_11_2015_363.json))
reden_23_11_2017_161.json$Col_Num <- paste(length(reden_23_11_2017_161.json))
reden_23_11_2017_162.json$Col_Num <- paste(length(reden_23_11_2017_162.json))
reden_23_12_2016_278.json$Col_Num <- paste(length(reden_23_12_2016_278.json))
reden_24_01_2012_566.json$Col_Num <- paste(length(reden_24_01_2012_566.json))
reden_24_01_2013_530.json$Col_Num <- paste(length(reden_24_01_2013_530.json))
reden_24_01_2018_148.json$Col_Num <- paste(length(reden_24_01_2018_148.json))
reden_24_01_2019_55.json$Col_Num <- paste(length(reden_24_01_2019_55.json))
reden_24_02_2011_625.json$Col_Num <- paste(length(reden_24_02_2011_625.json))
reden_24_02_2016_342.json$Col_Num <- paste(length(reden_24_02_2016_342.json))
reden_24_02_2017_259.json$Col_Num <- paste(length(reden_24_02_2017_259.json))
reden_24_03_2016_338.json$Col_Num <- paste(length(reden_24_03_2016_338.json))
reden_24_04_2013_521.json$Col_Num <- paste(length(reden_24_04_2013_521.json))
reden_24_04_2017_239.json$Col_Num <- paste(length(reden_24_04_2017_239.json))
reden_24_04_2018_104.json$Col_Num <- paste(length(reden_24_04_2018_104.json))
reden_24_04_2018_105.json$Col_Num <- paste(length(reden_24_04_2018_105.json))
reden_24_05_2013_517.json$Col_Num <- paste(length(reden_24_05_2013_517.json))
reden_24_05_2017_220.json$Col_Num <- paste(length(reden_24_05_2017_220.json))
reden_24_05_2019_32.json$Col_Num <- paste(length(reden_24_05_2019_32.json))
reden_24_07_2014_447.json$Col_Num <- paste(length(reden_24_07_2014_447.json))
reden_24_08_2011_597.json$Col_Num <- paste(length(reden_24_08_2011_597.json))
reden_24_09_2009_714.json$Col_Num <- paste(length(reden_24_09_2009_714.json))
reden_24_09_2009_715.json$Col_Num <- paste(length(reden_24_09_2009_715.json))
reden_24_09_2018_79.json$Col_Num <- paste(length(reden_24_09_2018_79.json))
reden_24_10_2001_1.json$Col_Num <- paste(length(reden_24_10_2001_1.json))
reden_24_10_2001_2.json$Col_Num <- paste(length(reden_24_10_2001_2.json))
reden_24_10_2001_3.json$Col_Num <- paste(length(reden_24_10_2001_3.json))
reden_24_10_2001_4.json$Col_Num <- paste(length(reden_24_10_2001_4.json))
reden_24_10_2001_5.json$Col_Num <- paste(length(reden_24_10_2001_5.json))
reden_24_10_2001_6.json$Col_Num <- paste(length(reden_24_10_2001_6.json))
reden_24_10_2001_7.json$Col_Num <- paste(length(reden_24_10_2001_7.json))
reden_24_10_2001_8.json$Col_Num <- paste(length(reden_24_10_2001_8.json))
reden_24_10_2001_9.json$Col_Num <- paste(length(reden_24_10_2001_9.json))
reden_24_10_2001_10.json$Col_Num <- paste(length(reden_24_10_2001_10.json))
reden_24_10_2001_11.json$Col_Num <- paste(length(reden_24_10_2001_11.json))
reden_24_10_2001_12.json$Col_Num <- paste(length(reden_24_10_2001_12.json))
reden_24_10_2001_13.json$Col_Num <- paste(length(reden_24_10_2001_13.json))
reden_24_10_2001_14.json$Col_Num <- paste(length(reden_24_10_2001_14.json))
reden_24_10_2001_15.json$Col_Num <- paste(length(reden_24_10_2001_15.json))
reden_24_10_2013_490.json$Col_Num <- paste(length(reden_24_10_2013_490.json))
reden_24_10_2016_300.json$Col_Num <- paste(length(reden_24_10_2016_300.json))
reden_24_10_2019_974.json$Col_Num <- paste(length(reden_24_10_2019_974.json))
reden_24_11_2010_646.json$Col_Num <- paste(length(reden_24_11_2010_646.json))
reden_24_11_2011_573.json$Col_Num <- paste(length(reden_24_11_2011_573.json))
reden_24_11_2014_430.json$Col_Num <- paste(length(reden_24_11_2014_430.json))
reden_24_11_2015_361.json$Col_Num <- paste(length(reden_24_11_2015_361.json))
reden_24_11_2015_362.json$Col_Num <- paste(length(reden_24_11_2015_362.json))
reden_25_01_2007_829.json$Col_Num <- paste(length(reden_25_01_2007_829.json))
reden_25_01_2015_419.json$Col_Num <- paste(length(reden_25_01_2015_419.json))
reden_25_01_2016_351.json$Col_Num <- paste(length(reden_25_01_2016_351.json))
reden_25_01_2017_275.json$Col_Num <- paste(length(reden_25_01_2017_275.json))
reden_25_01_2017_276.json$Col_Num <- paste(length(reden_25_01_2017_276.json))
reden_25_01_2018_147.json$Col_Num <- paste(length(reden_25_01_2018_147.json))
reden_25_02_2008_787.json$Col_Num <- paste(length(reden_25_02_2008_787.json))
reden_25_02_2013_523.json$Col_Num <- paste(length(reden_25_02_2013_523.json))
reden_25_02_2019_46.json$Col_Num <- paste(length(reden_25_02_2019_46.json))
reden_25_03_2015_406.json$Col_Num <- paste(length(reden_25_03_2015_406.json))
reden_25_03_2017_248.json$Col_Num <- paste(length(reden_25_03_2017_248.json))
reden_25_04_2008_776.json$Col_Num <- paste(length(reden_25_04_2008_776.json))
reden_25_04_2010_685.json$Col_Num <- paste(length(reden_25_04_2010_685.json))
reden_25_04_2017_236.json$Col_Num <- paste(length(reden_25_04_2017_236.json))
reden_25_04_2017_237.json$Col_Num <- paste(length(reden_25_04_2017_237.json))
reden_25_04_2017_238.json$Col_Num <- paste(length(reden_25_04_2017_238.json))
reden_25_05_2009_728.json$Col_Num <- paste(length(reden_25_05_2009_728.json))
reden_25_05_2017_219.json$Col_Num <- paste(length(reden_25_05_2017_219.json))
reden_25_05_2018_98.json$Col_Num <- paste(length(reden_25_05_2018_98.json))
reden_25_06_2008_766.json$Col_Num <- paste(length(reden_25_06_2008_766.json))
reden_25_06_2013_510.json$Col_Num <- paste(length(reden_25_06_2013_510.json))
reden_25_06_2015_393.json$Col_Num <- paste(length(reden_25_06_2015_393.json))
reden_25_06_2015_394.json$Col_Num <- paste(length(reden_25_06_2015_394.json))
reden_25_08_2018_88.json$Col_Num <- paste(length(reden_25_08_2018_88.json))
reden_25_09_2008_760.json$Col_Num <- paste(length(reden_25_09_2008_760.json))
reden_25_09_2013_496.json$Col_Num <- paste(length(reden_25_09_2013_496.json))
reden_25_09_2017_186.json$Col_Num <- paste(length(reden_25_09_2017_186.json))
reden_25_10_2005_859.json$Col_Num <- paste(length(reden_25_10_2005_859.json))
reden_25_10_2010_658.json$Col_Num <- paste(length(reden_25_10_2010_658.json))
reden_25_11_2009_700.json$Col_Num <- paste(length(reden_25_11_2009_700.json))
reden_25_11_2010_644.json$Col_Num <- paste(length(reden_25_11_2010_644.json))
reden_25_11_2010_645.json$Col_Num <- paste(length(reden_25_11_2010_645.json))
reden_25_11_2013_476.json$Col_Num <- paste(length(reden_25_11_2013_476.json))
reden_25_11_2014_428.json$Col_Num <- paste(length(reden_25_11_2014_428.json))
reden_25_11_2014_429.json$Col_Num <- paste(length(reden_25_11_2014_429.json))
reden_25_11_2015_359.json$Col_Num <- paste(length(reden_25_11_2015_359.json))
reden_25_11_2015_360.json$Col_Num <- paste(length(reden_25_11_2015_360.json))
reden_26_01_2005_874.json$Col_Num <- paste(length(reden_26_01_2005_874.json))
reden_26_01_2005_875.json$Col_Num <- paste(length(reden_26_01_2005_875.json))
reden_26_01_2005_876.json$Col_Num <- paste(length(reden_26_01_2005_876.json))
reden_26_01_2009_746.json$Col_Num <- paste(length(reden_26_01_2009_746.json))
reden_26_01_2010_692.json$Col_Num <- paste(length(reden_26_01_2010_692.json))
reden_26_01_2011_636.json$Col_Num <- paste(length(reden_26_01_2011_636.json))
reden_26_01_2015_417.json$Col_Num <- paste(length(reden_26_01_2015_417.json))
reden_26_01_2015_418.json$Col_Num <- paste(length(reden_26_01_2015_418.json))
reden_26_01_2017_271.json$Col_Num <- paste(length(reden_26_01_2017_271.json))
reden_26_01_2017_272.json$Col_Num <- paste(length(reden_26_01_2017_272.json))
reden_26_01_2017_273.json$Col_Num <- paste(length(reden_26_01_2017_273.json))
reden_26_01_2017_274.json$Col_Num <- paste(length(reden_26_01_2017_274.json))
reden_26_02_2015_410.json$Col_Num <- paste(length(reden_26_02_2015_410.json))
reden_26_02_2018_130.json$Col_Num <- paste(length(reden_26_02_2018_130.json))
reden_26_03_2004_1.json$Col_Num <- paste(length(reden_26_03_2004_1.json))
reden_26_03_2004_2.json$Col_Num <- paste(length(reden_26_03_2004_2.json))
reden_26_03_2004_3.json$Col_Num <- paste(length(reden_26_03_2004_3.json))
reden_26_03_2004_4.json$Col_Num <- paste(length(reden_26_03_2004_4.json))
reden_26_03_2004_5.json$Col_Num <- paste(length(reden_26_03_2004_5.json))
reden_26_03_2004_6.json$Col_Num <- paste(length(reden_26_03_2004_6.json))
reden_26_03_2004_7.json$Col_Num <- paste(length(reden_26_03_2004_7.json))
reden_26_03_2004_8.json$Col_Num <- paste(length(reden_26_03_2004_8.json))
reden_26_03_2014_461.json$Col_Num <- paste(length(reden_26_03_2014_461.json))
reden_26_03_2018_119.json$Col_Num <- paste(length(reden_26_03_2018_119.json))
reden_26_04_2010_684.json$Col_Num <- paste(length(reden_26_04_2010_684.json))
reden_26_04_2012_560.json$Col_Num <- paste(length(reden_26_04_2012_560.json))
reden_26_04_2016_333.json$Col_Num <- paste(length(reden_26_04_2016_333.json))
reden_26_05_2011_603.json$Col_Num <- paste(length(reden_26_05_2011_603.json))
reden_26_05_2011_604.json$Col_Num <- paste(length(reden_26_05_2011_604.json))
reden_26_08_2013_502.json$Col_Num <- paste(length(reden_26_08_2013_502.json))
reden_26_09_2006_836.json$Col_Num <- paste(length(reden_26_09_2006_836.json))
reden_26_09_2007_806.json$Col_Num <- paste(length(reden_26_09_2007_806.json))
reden_26_09_2008_759.json$Col_Num <- paste(length(reden_26_09_2008_759.json))
reden_26_09_2011_588.json$Col_Num <- paste(length(reden_26_09_2011_588.json))
reden_26_09_2013_495.json$Col_Num <- paste(length(reden_26_09_2013_495.json))
reden_26_09_2019_985.json$Col_Num <- paste(length(reden_26_09_2019_985.json))
reden_26_10_2005_858.json$Col_Num <- paste(length(reden_26_10_2005_858.json))
reden_26_10_2006_834.json$Col_Num <- paste(length(reden_26_10_2006_834.json))
reden_26_10_2013_489.json$Col_Num <- paste(length(reden_26_10_2013_489.json))
reden_26_10_2014_439.json$Col_Num <- paste(length(reden_26_10_2014_439.json))
reden_26_10_2015_372.json$Col_Num <- paste(length(reden_26_10_2015_372.json))
reden_26_11_2008_750.json$Col_Num <- paste(length(reden_26_11_2008_750.json))
reden_26_11_2009_698.json$Col_Num <- paste(length(reden_26_11_2009_698.json))
reden_26_11_2009_699.json$Col_Num <- paste(length(reden_26_11_2009_699.json))
reden_26_11_2013_475.json$Col_Num <- paste(length(reden_26_11_2013_475.json))
reden_27_01_2011_634.json$Col_Num <- paste(length(reden_27_01_2011_634.json))
reden_27_01_2011_635.json$Col_Num <- paste(length(reden_27_01_2011_635.json))
reden_27_01_2014_469.json$Col_Num <- paste(length(reden_27_01_2014_469.json))
reden_27_01_2016_350.json$Col_Num <- paste(length(reden_27_01_2016_350.json))
reden_27_02_2008_786.json$Col_Num <- paste(length(reden_27_02_2008_786.json))
reden_27_02_2014_463.json$Col_Num <- paste(length(reden_27_02_2014_463.json))
reden_27_02_2018_128.json$Col_Num <- paste(length(reden_27_02_2018_128.json))
reden_27_02_2018_129.json$Col_Num <- paste(length(reden_27_02_2018_129.json))
reden_27_02_2019_45.json$Col_Num <- paste(length(reden_27_02_2019_45.json))
reden_27_05_2010_677.json$Col_Num <- paste(length(reden_27_05_2010_677.json))
reden_27_05_2011_602.json$Col_Num <- paste(length(reden_27_05_2011_602.json))
reden_27_06_2001_1.json$Col_Num <- paste(length(reden_27_06_2001_1.json))
reden_27_06_2001_2.json$Col_Num <- paste(length(reden_27_06_2001_2.json))
reden_27_06_2001_3.json$Col_Num <- paste(length(reden_27_06_2001_3.json))
reden_27_06_2001_4.json$Col_Num <- paste(length(reden_27_06_2001_4.json))
reden_27_06_2001_5.json$Col_Num <- paste(length(reden_27_06_2001_5.json))
reden_27_06_2001_6.json$Col_Num <- paste(length(reden_27_06_2001_6.json))
reden_27_06_2001_7.json$Col_Num <- paste(length(reden_27_06_2001_7.json))
reden_27_06_2001_8.json$Col_Num <- paste(length(reden_27_06_2001_8.json))
reden_27_06_2001_9.json$Col_Num <- paste(length(reden_27_06_2001_9.json))
reden_27_06_2001_10.json$Col_Num <- paste(length(reden_27_06_2001_10.json))
reden_27_06_2001_11.json$Col_Num <- paste(length(reden_27_06_2001_11.json))
reden_27_06_2001_12.json$Col_Num <- paste(length(reden_27_06_2001_12.json))
reden_27_06_2001_13.json$Col_Num <- paste(length(reden_27_06_2001_13.json))
reden_27_06_2001_14.json$Col_Num <- paste(length(reden_27_06_2001_14.json))
reden_27_06_2001_15.json$Col_Num <- paste(length(reden_27_06_2001_15.json))
reden_27_06_2001_16.json$Col_Num <- paste(length(reden_27_06_2001_16.json))
reden_27_06_2001_17.json$Col_Num <- paste(length(reden_27_06_2001_17.json))
reden_27_06_2001_18.json$Col_Num <- paste(length(reden_27_06_2001_18.json))
reden_27_06_2001_19.json$Col_Num <- paste(length(reden_27_06_2001_19.json))
reden_27_06_2001_20.json$Col_Num <- paste(length(reden_27_06_2001_20.json))
reden_27_06_2001_21.json$Col_Num <- paste(length(reden_27_06_2001_21.json))
reden_27_06_2001_22.json$Col_Num <- paste(length(reden_27_06_2001_22.json))
reden_27_06_2001_23.json$Col_Num <- paste(length(reden_27_06_2001_23.json))
reden_27_06_2001_24.json$Col_Num <- paste(length(reden_27_06_2001_24.json))
reden_27_06_2001_25.json$Col_Num <- paste(length(reden_27_06_2001_25.json))
reden_27_06_2001_26.json$Col_Num <- paste(length(reden_27_06_2001_26.json))
reden_27_06_2013_508.json$Col_Num <- paste(length(reden_27_06_2013_508.json))
reden_27_06_2013_509.json$Col_Num <- paste(length(reden_27_06_2013_509.json))
reden_27_09_2012_548.json$Col_Num <- paste(length(reden_27_09_2012_548.json))
reden_27_09_2016_307.json$Col_Num <- paste(length(reden_27_09_2016_307.json))
reden_27_09_2019_984.json$Col_Num <- paste(length(reden_27_09_2019_984.json))
reden_27_10_2011_583.json$Col_Num <- paste(length(reden_27_10_2011_583.json))
reden_27_10_2016_299.json$Col_Num <- paste(length(reden_27_10_2016_299.json))
reden_27_10_2017_180.json$Col_Num <- paste(length(reden_27_10_2017_180.json))
reden_27_11_2014_427.json$Col_Num <- paste(length(reden_27_11_2014_427.json))
reden_28_01_2009_745.json$Col_Num <- paste(length(reden_28_01_2009_745.json))
reden_28_01_2014_468.json$Col_Num <- paste(length(reden_28_01_2014_468.json))
reden_28_01_2015_414.json$Col_Num <- paste(length(reden_28_01_2015_414.json))
reden_28_01_2015_415.json$Col_Num <- paste(length(reden_28_01_2015_415.json))
reden_28_01_2015_416.json$Col_Num <- paste(length(reden_28_01_2015_416.json))
reden_28_01_2016_348.json$Col_Num <- paste(length(reden_28_01_2016_348.json))
reden_28_01_2016_349.json$Col_Num <- paste(length(reden_28_01_2016_349.json))
reden_28_02_2007_826.json$Col_Num <- paste(length(reden_28_02_2007_826.json))
reden_28_02_2007_827.json$Col_Num <- paste(length(reden_28_02_2007_827.json))
reden_28_02_2012_563.json$Col_Num <- paste(length(reden_28_02_2012_563.json))
reden_28_02_2018_127.json$Col_Num <- paste(length(reden_28_02_2018_127.json))
reden_28_03_2007_822.json$Col_Num <- paste(length(reden_28_03_2007_822.json))
reden_28_03_2008_783.json$Col_Num <- paste(length(reden_28_03_2008_783.json))
reden_28_03_2014_460.json$Col_Num <- paste(length(reden_28_03_2014_460.json))
reden_28_03_2017_247.json$Col_Num <- paste(length(reden_28_03_2017_247.json))
reden_28_03_2018_118.json$Col_Num <- paste(length(reden_28_03_2018_118.json))
reden_28_04_2005_869.json$Col_Num <- paste(length(reden_28_04_2005_869.json))
reden_28_04_2006_844.json$Col_Num <- paste(length(reden_28_04_2006_844.json))
reden_28_04_2010_683.json$Col_Num <- paste(length(reden_28_04_2010_683.json))
reden_28_04_2012_559.json$Col_Num <- paste(length(reden_28_04_2012_559.json))
reden_28_04_2015_405.json$Col_Num <- paste(length(reden_28_04_2015_405.json))
reden_28_05_2005_868.json$Col_Num <- paste(length(reden_28_05_2005_868.json))
reden_28_05_2009_727.json$Col_Num <- paste(length(reden_28_05_2009_727.json))
reden_28_05_2010_676.json$Col_Num <- paste(length(reden_28_05_2010_676.json))
reden_28_05_2013_516.json$Col_Num <- paste(length(reden_28_05_2013_516.json))
reden_28_06_2007_809.json$Col_Num <- paste(length(reden_28_06_2007_809.json))
reden_28_06_2010_672.json$Col_Num <- paste(length(reden_28_06_2010_672.json))
reden_28_08_2017_199.json$Col_Num <- paste(length(reden_28_08_2017_199.json))
reden_28_10_2003_1.json$Col_Num <- paste(length(reden_28_10_2003_1.json))
reden_28_10_2003_2.json$Col_Num <- paste(length(reden_28_10_2003_2.json))
reden_28_10_2003_3.json$Col_Num <- paste(length(reden_28_10_2003_3.json))
reden_28_10_2003_4.json$Col_Num <- paste(length(reden_28_10_2003_4.json))
reden_28_10_2003_5.json$Col_Num <- paste(length(reden_28_10_2003_5.json))
reden_28_10_2003_6.json$Col_Num <- paste(length(reden_28_10_2003_6.json))
reden_28_10_2003_7.json$Col_Num <- paste(length(reden_28_10_2003_7.json))
reden_28_10_2003_8.json$Col_Num <- paste(length(reden_28_10_2003_8.json))
reden_28_10_2003_9.json$Col_Num <- paste(length(reden_28_10_2003_9.json))
reden_28_10_2003_10.json$Col_Num <- paste(length(reden_28_10_2003_10.json))
reden_28_10_2010_655.json$Col_Num <- paste(length(reden_28_10_2010_655.json))
reden_28_10_2010_656.json$Col_Num <- paste(length(reden_28_10_2010_656.json))
reden_28_10_2010_657.json$Col_Num <- paste(length(reden_28_10_2010_657.json))
reden_28_11_2013_474.json$Col_Num <- paste(length(reden_28_11_2013_474.json))
reden_28_11_2014_426.json$Col_Num <- paste(length(reden_28_11_2014_426.json))
reden_28_11_2017_160.json$Col_Num <- paste(length(reden_28_11_2017_160.json))
reden_28_11_2018_63.json$Col_Num <- paste(length(reden_28_11_2018_63.json))
reden_28_11_2019_957.json$Col_Num <- paste(length(reden_28_11_2019_957.json))
reden_29_01_2018_146.json$Col_Num <- paste(length(reden_29_01_2018_146.json))
reden_29_03_1999_1.json$Col_Num <- paste(length(reden_29_03_1999_1.json))
reden_29_03_1999_2.json$Col_Num <- paste(length(reden_29_03_1999_2.json))
reden_29_03_1999_3.json$Col_Num <- paste(length(reden_29_03_1999_3.json))
reden_29_03_1999_4.json$Col_Num <- paste(length(reden_29_03_1999_4.json))
reden_29_03_1999_5.json$Col_Num <- paste(length(reden_29_03_1999_5.json))
reden_29_03_1999_6.json$Col_Num <- paste(length(reden_29_03_1999_6.json))
reden_29_03_1999_7.json$Col_Num <- paste(length(reden_29_03_1999_7.json))
reden_29_03_1999_8.json$Col_Num <- paste(length(reden_29_03_1999_8.json))
reden_29_03_1999_9.json$Col_Num <- paste(length(reden_29_03_1999_9.json))
reden_29_03_2012_561.json$Col_Num <- paste(length(reden_29_03_2012_561.json))
reden_29_03_2018_117.json$Col_Num <- paste(length(reden_29_03_2018_117.json))
reden_29_04_2009_733.json$Col_Num <- paste(length(reden_29_04_2009_733.json))
reden_29_04_2016_332.json$Col_Num <- paste(length(reden_29_04_2016_332.json))
reden_29_05_2007_814.json$Col_Num <- paste(length(reden_29_05_2007_814.json))
reden_29_05_2017_218.json$Col_Num <- paste(length(reden_29_05_2017_218.json))
reden_29_05_2019_30.json$Col_Num <- paste(length(reden_29_05_2019_30.json))
reden_29_05_2019_31.json$Col_Num <- paste(length(reden_29_05_2019_31.json))
reden_29_06_2011_599.json$Col_Num <- paste(length(reden_29_06_2011_599.json))
reden_29_06_2017_207.json$Col_Num <- paste(length(reden_29_06_2017_207.json))
reden_29_06_2017_208.json$Col_Num <- paste(length(reden_29_06_2017_208.json))
reden_29_08_2013_500.json$Col_Num <- paste(length(reden_29_08_2013_500.json))
reden_29_08_2013_501.json$Col_Num <- paste(length(reden_29_08_2013_501.json))
reden_29_08_2016_312.json$Col_Num <- paste(length(reden_29_08_2016_312.json))
reden_29_08_2016_313.json$Col_Num <- paste(length(reden_29_08_2016_313.json))
reden_29_08_2017_198.json$Col_Num <- paste(length(reden_29_08_2017_198.json))
reden_29_08_2019_20.json$Col_Num <- paste(length(reden_29_08_2019_20.json))
reden_29_08_2019_21.json$Col_Num <- paste(length(reden_29_08_2019_21.json))
reden_29_09_2006_835.json$Col_Num <- paste(length(reden_29_09_2006_835.json))
reden_29_09_2010_664.json$Col_Num <- paste(length(reden_29_09_2010_664.json))
reden_29_09_2010_665.json$Col_Num <- paste(length(reden_29_09_2010_665.json))
reden_29_09_2014_444.json$Col_Num <- paste(length(reden_29_09_2014_444.json))
reden_29_09_2015_378.json$Col_Num <- paste(length(reden_29_09_2015_378.json))
reden_29_09_2016_306.json$Col_Num <- paste(length(reden_29_09_2016_306.json))
reden_29_10_2009_708.json$Col_Num <- paste(length(reden_29_10_2009_708.json))
reden_29_10_2019_972.json$Col_Num <- paste(length(reden_29_10_2019_972.json))
reden_29_10_2019_973.json$Col_Num <- paste(length(reden_29_10_2019_973.json))
reden_29_11_2007_796.json$Col_Num <- paste(length(reden_29_11_2007_796.json))
reden_29_11_2012_536.json$Col_Num <- paste(length(reden_29_11_2012_536.json))
reden_29_11_2012_537.json$Col_Num <- paste(length(reden_29_11_2012_537.json))
reden_29_11_2017_157.json$Col_Num <- paste(length(reden_29_11_2017_157.json))
reden_29_11_2017_158.json$Col_Num <- paste(length(reden_29_11_2017_158.json))
reden_29_11_2017_159.json$Col_Num <- paste(length(reden_29_11_2017_159.json))
reden_30_01_2008_792.json$Col_Num <- paste(length(reden_30_01_2008_792.json))
reden_30_01_2013_528.json$Col_Num <- paste(length(reden_30_01_2013_528.json))
reden_30_01_2013_529.json$Col_Num <- paste(length(reden_30_01_2013_529.json))
reden_30_01_2018_145.json$Col_Num <- paste(length(reden_30_01_2018_145.json))
reden_30_03_2009_735.json$Col_Num <- paste(length(reden_30_03_2009_735.json))
reden_30_03_2017_246.json$Col_Num <- paste(length(reden_30_03_2017_246.json))
reden_30_04_2009_732.json$Col_Num <- paste(length(reden_30_04_2009_732.json))
reden_30_05_2008_772.json$Col_Num <- paste(length(reden_30_05_2008_772.json))
reden_30_05_2008_773.json$Col_Num <- paste(length(reden_30_05_2008_773.json))
reden_30_05_2016_327.json$Col_Num <- paste(length(reden_30_05_2016_327.json))
reden_30_05_2017_217.json$Col_Num <- paste(length(reden_30_05_2017_217.json))
reden_30_06_2005_860.json$Col_Num <- paste(length(reden_30_06_2005_860.json))
reden_30_06_2009_721.json$Col_Num <- paste(length(reden_30_06_2009_721.json))
reden_30_08_1999_1.json$Col_Num <- paste(length(reden_30_08_1999_1.json))
reden_30_08_1999_2.json$Col_Num <- paste(length(reden_30_08_1999_2.json))
reden_30_08_1999_3.json$Col_Num <- paste(length(reden_30_08_1999_3.json))
reden_30_08_2013_499.json$Col_Num <- paste(length(reden_30_08_2013_499.json))
reden_30_08_2017_197.json$Col_Num <- paste(length(reden_30_08_2017_197.json))
reden_30_08_2018_86.json$Col_Num <- paste(length(reden_30_08_2018_86.json))
reden_30_08_2018_87.json$Col_Num <- paste(length(reden_30_08_2018_87.json))
reden_30_09_2004_1.json$Col_Num <- paste(length(reden_30_09_2004_1.json))
reden_30_09_2004_2.json$Col_Num <- paste(length(reden_30_09_2004_2.json))
reden_30_09_2004_3.json$Col_Num <- paste(length(reden_30_09_2004_3.json))
reden_30_09_2004_4.json$Col_Num <- paste(length(reden_30_09_2004_4.json))
reden_30_09_2004_5.json$Col_Num <- paste(length(reden_30_09_2004_5.json))
reden_30_09_2004_6.json$Col_Num <- paste(length(reden_30_09_2004_6.json))
reden_30_09_2004_7.json$Col_Num <- paste(length(reden_30_09_2004_7.json))
reden_30_09_2009_712.json$Col_Num <- paste(length(reden_30_09_2009_712.json))
reden_30_09_2009_713.json$Col_Num <- paste(length(reden_30_09_2009_713.json))
reden_30_09_2014_443.json$Col_Num <- paste(length(reden_30_09_2014_443.json))
reden_30_10_2007_803.json$Col_Num <- paste(length(reden_30_10_2007_803.json))
reden_30_10_2013_488.json$Col_Num <- paste(length(reden_30_10_2013_488.json))
reden_30_10_2017_179.json$Col_Num <- paste(length(reden_30_10_2017_179.json))
reden_30_10_2019_971.json$Col_Num <- paste(length(reden_30_10_2019_971.json))
reden_30_11_2009_697.json$Col_Num <- paste(length(reden_30_11_2009_697.json))
reden_30_11_2016_285.json$Col_Num <- paste(length(reden_30_11_2016_285.json))
reden_30_11_2017_156.json$Col_Num <- paste(length(reden_30_11_2017_156.json))
reden_31_01_2008_791.json$Col_Num <- paste(length(reden_31_01_2008_791.json))
reden_31_01_2017_270.json$Col_Num <- paste(length(reden_31_01_2017_270.json))
reden_31_01_2018_144.json$Col_Num <- paste(length(reden_31_01_2018_144.json))
reden_31_01_2019_54.json$Col_Num <- paste(length(reden_31_01_2019_54.json))
reden_31_03_2006_845.json$Col_Num <- paste(length(reden_31_03_2006_845.json))
reden_31_03_2017_245.json$Col_Num <- paste(length(reden_31_03_2017_245.json))
reden_31_05_2010_675.json$Col_Num <- paste(length(reden_31_05_2010_675.json))
reden_31_05_2017_216.json$Col_Num <- paste(length(reden_31_05_2017_216.json))
reden_31_05_2019_29.json$Col_Num <- paste(length(reden_31_05_2019_29.json))
reden_31_08_2015_386.json$Col_Num <- paste(length(reden_31_08_2015_386.json))
reden_31_10_2007_802.json$Col_Num <- paste(length(reden_31_10_2007_802.json))
reden_31_10_2017_178.json$Col_Num <- paste(length(reden_31_10_2017_178.json))




#write.csv(Master_2, file = "Master_46_Variables.csv")




