

#########################################################
##
## Data Import Script
## Sentiment Analysis on Central Bankers
## Client: Moritz Pfiffer
## 8/16/2021
##
#############################################################

setwd("C:\\Users\\salaz\\Desktop\\Moritz\\Interviews_ECB")
library(rjson)
library(dplyr)
#
# Importing Reported Json files
#


Interviews_2004_06_18_335 <- as.data.frame(fromJSON(paste(readLines("Interviews_2004-06-18_335.json"))),asText=TRUE)
Interviews_2004_08_08_334.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2004-08-08_334.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2004_10_09_333.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2004-10-09_333.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2004_10_18_332.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2004-10-18_332.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2004_12_06_331.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2004-12-06_331.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2004_12_08_330.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2004-12-08_330.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2005_01_20_329.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2005-01-20_329.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2005_01_21_328.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2005-01-21_328.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2005_01_27_327.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2005-01-27_327.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2005_02_14_326.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2005-02-14_326.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2005_02_17_325.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2005-02-17_325.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2005_03_16_324.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2005-03-16_324.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2005_03_31_323.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2005-03-31_323.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2005_06_27_321.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2005-06-27_321.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2005_06_27_322.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2005-06-27_322.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2005_08_09_320.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2005-08-09_320.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2005_09_21_319.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2005-09-21_319.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2005_10_14_318.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2005-10-14_318.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2005_11_24_317.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2005-11-24_317.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2005_12_09_316.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2005-12-09_316.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2005_12_15_315.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2005-12-15_315.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2005_12_19_313.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2005-12-19_313.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2005_12_19_314.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2005-12-19_314.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2005_12_23_312.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2005-12-23_312.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2006_01_26_311.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2006-01-26_311.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2006_03_15_310.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2006-03-15_310.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2006_04_11_309.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2006-04-11_309.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2006_06_27_308.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2006-06-27_308.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2006_09_15_307.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2006-09-15_307.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2006_12_18_306.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2006-12-18_306.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2007_02_22_305.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2007-02-22_305.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2007_02_26_304.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2007-02-26_304.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2007_04_02_303.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2007-04-02_303.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2007_05_14_302.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2007-05-14_302.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2007_05_18_301.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2007-05-18_301.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2007_07_25_300.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2007-07-25_300.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2007_08_11_299.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2007-08-11_299.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2007_10_16_298.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2007-10-16_298.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2008_02_11_297.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2008-02-11_297.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2008_04_30_296.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2008-04-30_296.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2008_07_18_295.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2008-07-18_295.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2008_09_23_294.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2008-09-23_294.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2008_11_10_293.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2008-11-10_293.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2008_11_26_292.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2008-11-26_292.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2008_12_15_291.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2008-12-15_291.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2008_12_23_290.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2008-12-23_290.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2008_12_30_289.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2008-12-30_289.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2009_01_23_288.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2009-01-23_288.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2009_02_16_287.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2009-02-16_287.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2009_03_23_286.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2009-03-23_286.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2009_04_09_285.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2009-04-09_285.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2009_04_29_284.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2009-04-29_284.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2009_09_12_283.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2009-09-12_283.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2009_09_27_282.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2009-09-27_282.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2009_10_04_281.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2009-10-04_281.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2009_11_17_280.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2009-11-17_280.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2009_11_25_279.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2009-11-25_279.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2009_11_28_278.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2009-11-28_278.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2009_12_10_277.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2009-12-10_277.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2010_01_23_276.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2010-01-23_276.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2010_01_26_275.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2010-01-26_275.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2010_03_17_274.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2010-03-17_274.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2010_04_09_273.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2010-04-09_273.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2010_04_24_272.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2010-04-24_272.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2010_05_14_271.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2010-05-14_271.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2010_05_15_270.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2010-05-15_270.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2010_05_21_269.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2010-05-21_269.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2010_05_31_268.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2010-05-31_268.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2010_06_24_267.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2010-06-24_267.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2010_07_13_266.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2010-07-13_266.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2010_09_03_265.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2010-09-03_265.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2010_09_10_264.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2010-09-10_264.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2010_10_11_263.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2010-10-11_263.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2010_10_17_262.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2010-10-17_262.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2010_10_29_261.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2010-10-29_261.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2010_11_13_260.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2010-11-13_260.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2011_01_15_259.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2011-01-15_259.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2011_01_23_258.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2011-01-23_258.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2011_02_10_257.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2011-02-10_257.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2011_02_13_256.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2011-02-13_256.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2011_02_14_255.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2011-02-14_255.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2011_02_16_254.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2011-02-16_254.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2011_04_26_253.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2011-04-26_253.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2011_05_15_252.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2011-05-15_252.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2011_05_18_251.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2011-05-18_251.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2011_05_28_250.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2011-05-28_250.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2011_06_16_249.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2011-06-16_249.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2011_07_18_248.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2011-07-18_248.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2011_07_19_247.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2011-07-19_247.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2011_07_22_246.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2011-07-22_246.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2011_07_27_245.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2011-07-27_245.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2011_09_02_244.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2011-09-02_244.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2011_09_20_243.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2011-09-20_243.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2011_09_28_242.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2011-09-28_242.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2011_10_07_241.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2011-10-07_241.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2011_10_11_239.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2011-10-11_239.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2011_10_11_240.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2011-10-11_240.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2011_10_14_238.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2011-10-14_238.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2011_10_18_237.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2011-10-18_237.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2011_10_29_236.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2011-10-29_236.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2011_10_30_235.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2011-10-30_235.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2011_12_19_234.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2011-12-19_234.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2012_02_24_232.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2012-02-24_232.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2012_02_24_233.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2012-02-24_233.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2012_03_23_231.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2012-03-23_231.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2012_07_21_230.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2012-07-21_230.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2012_09_14_229.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2012-09-14_229.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2012_10_08_228.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2012-10-08_228.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2012_10_29_227.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2012-10-29_227.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2012_12_14_226.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2012-12-14_226.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2013_07_18_225.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2013-07-18_225.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2013_07_29_224.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2013-07-29_224.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2013_08_24_223.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2013-08-24_223.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2013_09_12_222.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2013-09-12_222.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2013_09_16_221.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2013-09-16_221.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2013_09_18_220.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2013-09-18_220.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2013_10_06_219.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2013-10-06_219.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2013_10_14_218.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2013-10-14_218.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2013_10_24_217.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2013-10-24_217.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2013_10_25_216.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2013-10-25_216.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2013_11_11_215.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2013-11-11_215.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2013_12_12_213.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2013-12-12_213.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2013_12_12_214.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2013-12-12_214.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2013_12_15_212.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2013-12-15_212.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2013_12_22_211.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2013-12-22_211.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2013_12_30_210.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2013-12-30_210.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2014_01_16_209.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2014-01-16_209.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2014_01_23_208.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2014-01-23_208.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2014_02_12_207.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2014-02-12_207.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2014_02_15_206.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2014-02-15_206.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2014_02_22_205.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2014-02-22_205.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2014_03_11_204.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2014-03-11_204.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2014_04_07_203.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2014-04-07_203.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2014_04_22_202.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2014-04-22_202.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2014_05_15_201.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2014-05-15_201.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2014_05_24_200.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2014-05-24_200.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2014_06_21_199.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2014-06-21_199.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2014_06_28_198.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2014-06-28_198.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2014_06_29_197.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2014-06-29_197.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2014_07_06_196.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2014-07-06_196.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2014_07_13_195.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2014-07-13_195.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2014_07_15_194.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2014-07-15_194.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2014_08_04_193.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2014-08-04_193.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2014_09_05_192.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2014-09-05_192.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2014_09_07_191.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2014-09-07_191.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2014_09_08_190.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2014-09-08_190.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2014_09_10_189.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2014-09-10_189.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2014_09_11_188.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2014-09-11_188.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2014_09_19_187.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2014-09-19_187.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2014_09_24_186.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2014-09-24_186.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2014_09_25_185.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2014-09-25_185.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2014_10_28_184.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2014-10-28_184.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2014_11_03_183.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2014-11-03_183.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2014_11_09_182.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2014-11-09_182.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2014_12_16_181.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2014-12-16_181.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2014_12_17_180.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2014-12-17_180.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2014_12_19_179.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2014-12-19_179.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2014_12_22_178.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2014-12-22_178.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2014_12_31_177.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2014-12-31_177.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2015_01_02_175.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2015-01-02_175.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2015_01_02_176.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2015-01-02_176.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2015_01_10_174.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2015-01-10_174.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2015_01_13_173.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2015-01-13_173.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2015_01_15_172.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2015-01-15_172.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2015_01_16_170.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2015-01-16_170.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2015_01_16_171.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2015-01-16_171.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2015_01_26_169.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2015-01-26_169.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2015_01_29_168.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2015-01-29_168.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2015_01_31_167.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2015-01-31_167.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2015_02_05_166.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2015-02-05_166.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2015_02_16_165.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2015-02-16_165.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2015_03_08_164.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2015-03-08_164.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2015_03_25_163.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2015-03-25_163.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2015_04_02_162.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2015-04-02_162.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2015_04_08_161.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2015-04-08_161.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2015_04_22_160.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2015-04-22_160.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2015_05_04_159.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2015-05-04_159.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2015_05_07_158.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2015-05-07_158.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2015_05_19_157.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2015-05-19_157.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2015_06_10_156.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2015-06-10_156.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2015_06_13_155.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2015-06-13_155.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2015_06_29_154.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2015-06-29_154.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2015_07_27_153.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2015-07-27_153.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2015_08_14_152.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2015-08-14_152.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2015_09_11_151.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2015-09-11_151.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2015_09_16_150.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2015-09-16_150.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2015_09_19_149.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2015-09-19_149.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2015_10_06_148.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2015-10-06_148.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2015_10_11_147.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2015-10-11_147.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2015_10_12_146.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2015-10-12_146.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2015_10_14_145.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2015-10-14_145.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2015_10_29_144.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2015-10-29_144.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2015_10_31_143.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2015-10-31_143.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2015_11_04_142.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2015-11-04_142.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2015_11_11_141.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2015-11-11_141.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2015_11_15_140.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2015-11-15_140.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2015_11_17_139.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2015-11-17_139.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2015_12_10_138.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2015-12-10_138.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2015_12_21_137.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2015-12-21_137.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2015_12_29_136.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2015-12-29_136.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2015_12_30_135.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2015-12-30_135.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2016_01_06_134.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2016-01-06_134.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2016_01_13_133.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2016-01-13_133.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2016_01_30_132.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2016-01-30_132.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2016_02_02_131.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2016-02-02_131.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2016_02_11_130.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2016-02-11_130.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2016_02_13_129.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2016-02-13_129.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2016_03_11_127.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2016-03-11_127.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2016_03_11_128.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2016-03-11_128.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2016_03_18_126.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2016-03-18_126.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2016_03_30_125.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2016-03-30_125.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2016_04_27_124.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2016-04-27_124.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2016_04_28_123.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2016-04-28_123.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2016_04_29_122.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2016-04-29_122.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2016_05_01_121.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2016-05-01_121.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2016_05_05_120.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2016-05-05_120.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2016_05_19_118.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2016-05-19_118.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2016_05_19_119.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2016-05-19_119.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2016_05_23_117.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2016-05-23_117.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2016_06_09_116.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2016-06-09_116.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2016_07_01_115.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2016-07-01_115.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2016_07_05_114.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2016-07-05_114.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2016_07_18_113.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2016-07-18_113.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2016_08_16_112.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2016-08-16_112.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2016_09_07_111.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2016-09-07_111.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2016_09_20_110.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2016-09-20_110.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2016_09_26_109.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2016-09-26_109.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2016_09_30_107.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2016-09-30_107.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2016_09_30_108.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2016-09-30_108.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2016_11_02_106.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2016-11-02_106.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2016_11_08_105.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2016-11-08_105.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2016_11_11_104.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2016-11-11_104.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2016_11_26_103.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2016-11-26_103.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2016_11_30_102.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2016-11-30_102.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2016_12_09_101.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2016-12-09_101.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2016_12_12_100.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2016-12-12_100.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2016_12_13_99.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2016-12-13_99.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2016_12_14_98.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2016-12-14_98.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2016_12_20_97.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2016-12-20_97.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2016_12_31_96.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2016-12-31_96.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2017_01_20_95.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2017-01-20_95.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2017_01_23_94.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2017-01-23_94.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2017_02_07_93.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2017-02-07_93.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2017_02_19_92.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2017-02-19_92.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2017_03_24_90.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2017-03-24_90.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2017_03_24_91.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2017-03-24_91.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2017_04_03_89.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2017-04-03_89.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2017_05_11_88.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2017-05-11_88.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2017_05_18_87.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2017-05-18_87.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2017_05_23_86.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2017-05-23_86.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2017_06_12_85.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2017-06-12_85.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2017_06_22_84.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2017-06-22_84.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2017_06_28_83.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2017-06-28_83.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2017_07_04_82.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2017-07-04_82.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2017_07_05_81.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2017-07-05_81.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2017_07_07_80.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2017-07-07_80.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2017_07_08_79.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2017-07-08_79.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2017_07_29_78.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2017-07-29_78.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2017_08_23_77.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2017-08-23_77.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2017_09_01_76.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2017-09-01_76.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2017_09_12_75.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2017-09-12_75.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2017_09_16_74.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2017-09-16_74.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2017_09_20_73.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2017-09-20_73.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2017_09_28_72.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2017-09-28_72.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2017_10_29_71.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2017-10-29_71.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2017_11_09_70.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2017-11-09_70.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2017_11_21_69.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2017-11-21_69.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2017_12_29_68.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2017-12-29_68.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2017_12_30_67.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2017-12-30_67.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2018_01_17_66.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2018-01-17_66.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2018_01_31_65.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2018-01-31_65.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2018_02_08_63.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2018-02-08_63.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2018_02_08_64.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2018-02-08_64.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2018_03_12_62.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2018-03-12_62.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2018_03_13_61.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2018-03-13_61.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2018_03_14_60.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2018-03-14_60.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2018_03_16_59.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2018-03-16_59.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2018_03_28_58.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2018-03-28_58.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2018_04_06_57.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2018-04-06_57.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2018_04_10_56.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2018-04-10_56.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2018_04_26_54.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2018-04-26_54.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2018_04_26_55.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2018-04-26_55.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2018_05_16_53.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2018-05-16_53.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2018_05_18_52.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2018-05-18_52.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2018_05_23_51.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2018-05-23_51.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2018_05_29_50.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2018-05-29_50.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2018_06_15_49.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2018-06-15_49.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2018_06_23_48.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2018-06-23_48.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2018_06_25_47.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2018-06-25_47.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2018_07_09_46.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2018-07-09_46.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2018_08_05_45.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2018-08-05_45.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2018_09_05_44.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2018-09-05_44.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2018_10_01_43.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2018-10-01_43.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2018_11_02_42.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2018-11-02_42.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2018_11_22_41.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2018-11-22_41.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2018_11_26_40.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2018-11-26_40.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2018_12_30_39.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2018-12-30_39.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2019_01_07_38.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2019-01-07_38.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2019_01_09_37.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2019-01-09_37.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2019_01_16_36.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2019-01-16_36.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2019_01_17_35.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2019-01-17_35.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2019_01_25_34.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2019-01-25_34.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2019_02_01_33.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2019-02-01_33.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2019_02_07_32.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2019-02-07_32.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2019_02_18_31.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2019-02-18_31.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2019_02_19_30.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2019-02-19_30.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2019_03_11_29.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2019-03-11_29.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2019_03_12_28.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2019-03-12_28.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2019_03_29_27.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2019-03-29_27.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2019_04_01_26.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2019-04-01_26.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2019_04_02_25.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2019-04-02_25.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2019_04_23_24.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2019-04-23_24.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2019_05_08_23.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2019-05-08_23.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2019_05_31_21.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2019-05-31_21.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2019_05_31_22.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2019-05-31_22.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2019_06_15_20.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2019-06-15_20.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2019_06_17_19.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2019-06-17_19.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2019_07_02_18.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2019-07-02_18.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2019_07_08_17.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2019-07-08_17.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2019_07_09_16.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2019-07-09_16.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2019_08_30_15.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2019-08-30_15.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2019_09_19_14.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2019-09-19_14.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2019_09_26_13.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2019-09-26_13.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2019_09_30_11.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2019-09-30_11.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2019_09_30_12.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2019-09-30_12.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2019_10_09_10.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2019-10-09_10.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2019_10_17_9.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2019-10-17_9.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2019_10_26_8.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2019-10-26_8.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2019_11_12_7.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2019-11-12_7.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2019_11_20_5.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2019-11-20_5.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2019_11_20_6.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2019-11-20_6.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2019_11_23_4.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2019-11-23_4.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2019_12_02_3.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2019-12-02_3.json"))), encoding= "UTF-8",asText=TRUE)
Interviews_2019_12_16_2.json<- as.data.frame(fromJSON(paste(readLines("Interviews_2019-12-16_2.json"))), encoding= "UTF-8",asText=TRUE)

Master_5 <- do.call(rbind,mget(ls(pattern = ".json")))

colnames(Master_5)

Master_5$RECORD_ID <- NULL

rownames(Master_5) <- NULL
#write.csv(Master_5, file = "Master_Interviews_ECB_08222021.csv")



Master <- bind_rows(Interviews_2004_06_18_335.json,
Interviews_2004_08_08_334.json,
Interviews_2004_10_09_333.json,
Interviews_2004_10_18_332.json,
Interviews_2004_12_06_331.json,
Interviews_2004_12_08_330.json,
Interviews_2005_01_20_329.json,
Interviews_2005_01_21_328.json,
Interviews_2005_01_27_327.json,
Interviews_2005_02_14_326.json,
Interviews_2005_02_17_325.json,
Interviews_2005_03_16_324.json,
Interviews_2005_03_31_323.json,
Interviews_2005_06_27_321.json,
Interviews_2005_06_27_322.json,
Interviews_2005_08_09_320.json,
Interviews_2005_09_21_319.json,
Interviews_2005_10_14_318.json,
Interviews_2005_11_24_317.json,
Interviews_2005_12_09_316.json,
Interviews_2005_12_15_315.json,
Interviews_2005_12_19_313.json,
Interviews_2005_12_19_314.json,
Interviews_2005_12_23_312.json,
Interviews_2006_01_26_311.json,
Interviews_2006_03_15_310.json,
Interviews_2006_04_11_309.json,
Interviews_2006_06_27_308.json,
Interviews_2006_09_15_307.json,
Interviews_2006_12_18_306.json,
Interviews_2007_02_22_305.json,
Interviews_2007_02_26_304.json,
Interviews_2007_04_02_303.json,
Interviews_2007_05_14_302.json,
Interviews_2007_05_18_301.json,
Interviews_2007_07_25_300.json,
Interviews_2007_08_11_299.json,
Interviews_2007_10_16_298.json,
Interviews_2008_02_11_297.json,
Interviews_2008_04_30_296.json,
Interviews_2008_07_18_295.json,
Interviews_2008_09_23_294.json,
Interviews_2008_11_10_293.json,
Interviews_2008_11_26_292.json,
Interviews_2008_12_15_291.json,
Interviews_2008_12_23_290.json,
Interviews_2008_12_30_289.json,
Interviews_2009_01_23_288.json,
Interviews_2009_02_16_287.json,
Interviews_2009_03_23_286.json,
Interviews_2009_04_09_285.json,
Interviews_2009_04_29_284.json,
Interviews_2009_09_12_283.json,
Interviews_2009_09_27_282.json,
Interviews_2009_10_04_281.json,
Interviews_2009_11_17_280.json,
Interviews_2009_11_25_279.json,
Interviews_2009_11_28_278.json,
Interviews_2009_12_10_277.json,
Interviews_2010_01_23_276.json,
Interviews_2010_01_26_275.json,
Interviews_2010_03_17_274.json,
Interviews_2010_04_09_273.json,
Interviews_2010_04_24_272.json,
Interviews_2010_05_14_271.json,
Interviews_2010_05_15_270.json,
Interviews_2010_05_21_269.json,
Interviews_2010_05_31_268.json,
Interviews_2010_06_24_267.json,
Interviews_2010_07_13_266.json,
Interviews_2010_09_03_265.json,
Interviews_2010_09_10_264.json,
Interviews_2010_10_11_263.json,
Interviews_2010_10_17_262.json,
Interviews_2010_10_29_261.json,
Interviews_2010_11_13_260.json,
Interviews_2011_01_15_259.json,
Interviews_2011_01_23_258.json,
Interviews_2011_02_10_257.json,
Interviews_2011_02_13_256.json,
Interviews_2011_02_14_255.json,
Interviews_2011_02_16_254.json,
Interviews_2011_04_26_253.json,
Interviews_2011_05_15_252.json,
Interviews_2011_05_18_251.json,
Interviews_2011_05_28_250.json,
Interviews_2011_06_16_249.json,
Interviews_2011_07_18_248.json,
Interviews_2011_07_19_247.json,
Interviews_2011_07_22_246.json,
Interviews_2011_07_27_245.json,
Interviews_2011_09_02_244.json,
Interviews_2011_09_20_243.json,
Interviews_2011_09_28_242.json,
Interviews_2011_10_07_241.json,
Interviews_2011_10_11_239.json,
Interviews_2011_10_11_240.json,
Interviews_2011_10_14_238.json,
Interviews_2011_10_18_237.json,
Interviews_2011_10_29_236.json,
Interviews_2011_10_30_235.json,
Interviews_2011_12_19_234.json,
Interviews_2012_02_24_232.json,
Interviews_2012_02_24_233.json,
Interviews_2012_03_23_231.json,
Interviews_2012_07_21_230.json,
Interviews_2012_09_14_229.json,
Interviews_2012_10_08_228.json,
Interviews_2012_10_29_227.json,
Interviews_2012_12_14_226.json,
Interviews_2013_07_18_225.json,
Interviews_2013_07_29_224.json,
Interviews_2013_08_24_223.json,
Interviews_2013_09_12_222.json,
Interviews_2013_09_16_221.json,
Interviews_2013_09_18_220.json,
Interviews_2013_10_06_219.json,
Interviews_2013_10_14_218.json,
Interviews_2013_10_24_217.json,
Interviews_2013_10_25_216.json,
Interviews_2013_11_11_215.json,
Interviews_2013_12_12_213.json,
Interviews_2013_12_12_214.json,
Interviews_2013_12_15_212.json,
Interviews_2013_12_22_211.json,
Interviews_2013_12_30_210.json,
Interviews_2014_01_16_209.json,
Interviews_2014_01_23_208.json,
Interviews_2014_02_12_207.json,
Interviews_2014_02_15_206.json,
Interviews_2014_02_22_205.json,
Interviews_2014_03_11_204.json,
Interviews_2014_04_07_203.json,
Interviews_2014_04_22_202.json,
Interviews_2014_05_15_201.json,
Interviews_2014_05_24_200.json,
Interviews_2014_06_21_199.json,
Interviews_2014_06_28_198.json,
Interviews_2014_06_29_197.json,
Interviews_2014_07_06_196.json,
Interviews_2014_07_13_195.json,
Interviews_2014_07_15_194.json,
Interviews_2014_08_04_193.json,
Interviews_2014_09_05_192.json,
Interviews_2014_09_07_191.json,
Interviews_2014_09_08_190.json,
Interviews_2014_09_10_189.json,
Interviews_2014_09_11_188.json,
Interviews_2014_09_19_187.json,
Interviews_2014_09_24_186.json,
Interviews_2014_09_25_185.json,
Interviews_2014_10_28_184.json,
Interviews_2014_11_03_183.json,
Interviews_2014_11_09_182.json,
Interviews_2014_12_16_181.json,
Interviews_2014_12_17_180.json,
Interviews_2014_12_19_179.json,
Interviews_2014_12_22_178.json,
Interviews_2014_12_31_177.json,
Interviews_2015_01_02_175.json,
Interviews_2015_01_02_176.json,
Interviews_2015_01_10_174.json,
Interviews_2015_01_13_173.json,
Interviews_2015_01_15_172.json,
Interviews_2015_01_16_170.json,
Interviews_2015_01_16_171.json,
Interviews_2015_01_26_169.json,
Interviews_2015_01_29_168.json,
Interviews_2015_01_31_167.json,
Interviews_2015_02_05_166.json,
Interviews_2015_02_16_165.json,
Interviews_2015_03_08_164.json,
Interviews_2015_03_25_163.json,
Interviews_2015_04_02_162.json,
Interviews_2015_04_08_161.json,
Interviews_2015_04_22_160.json,
Interviews_2015_05_04_159.json,
Interviews_2015_05_07_158.json,
Interviews_2015_05_19_157.json,
Interviews_2015_06_10_156.json,
Interviews_2015_06_13_155.json,
Interviews_2015_06_29_154.json,
Interviews_2015_07_27_153.json,
Interviews_2015_08_14_152.json,
Interviews_2015_09_11_151.json,
Interviews_2015_09_16_150.json,
Interviews_2015_09_19_149.json,
Interviews_2015_10_06_148.json,
Interviews_2015_10_11_147.json,
Interviews_2015_10_12_146.json,
Interviews_2015_10_14_145.json,
Interviews_2015_10_29_144.json,
Interviews_2015_10_31_143.json,
Interviews_2015_11_04_142.json,
Interviews_2015_11_11_141.json,
Interviews_2015_11_15_140.json,
Interviews_2015_11_17_139.json,
Interviews_2015_12_10_138.json,
Interviews_2015_12_21_137.json,
Interviews_2015_12_29_136.json,
Interviews_2015_12_30_135.json,
Interviews_2016_01_06_134.json,
Interviews_2016_01_13_133.json,
Interviews_2016_01_30_132.json,
Interviews_2016_02_02_131.json,
Interviews_2016_02_11_130.json,
Interviews_2016_02_13_129.json,
Interviews_2016_03_11_127.json,
Interviews_2016_03_11_128.json,
Interviews_2016_03_18_126.json,
Interviews_2016_03_30_125.json,
Interviews_2016_04_27_124.json,
Interviews_2016_04_28_123.json,
Interviews_2016_04_29_122.json,
Interviews_2016_05_01_121.json,
Interviews_2016_05_05_120.json,
Interviews_2016_05_19_118.json,
Interviews_2016_05_19_119.json,
Interviews_2016_05_23_117.json,
Interviews_2016_06_09_116.json,
Interviews_2016_07_01_115.json,
Interviews_2016_07_05_114.json,
Interviews_2016_07_18_113.json,
Interviews_2016_08_16_112.json,
Interviews_2016_09_07_111.json,
Interviews_2016_09_20_110.json,
Interviews_2016_09_26_109.json,
Interviews_2016_09_30_107.json,
Interviews_2016_09_30_108.json,
Interviews_2016_11_02_106.json,
Interviews_2016_11_08_105.json,
Interviews_2016_11_11_104.json,
Interviews_2016_11_26_103.json,
Interviews_2016_11_30_102.json,
Interviews_2016_12_09_101.json,
Interviews_2016_12_12_100.json,
Interviews_2016_12_13_99.json,
Interviews_2016_12_14_98.json,
Interviews_2016_12_20_97.json,
Interviews_2016_12_31_96.json,
Interviews_2017_01_20_95.json,
Interviews_2017_01_23_94.json,
Interviews_2017_02_07_93.json,
Interviews_2017_02_19_92.json,
Interviews_2017_03_24_90.json,
Interviews_2017_03_24_91.json,
Interviews_2017_04_03_89.json,
Interviews_2017_05_11_88.json,
Interviews_2017_05_18_87.json,
Interviews_2017_05_23_86.json,
Interviews_2017_06_12_85.json,
Interviews_2017_06_22_84.json,
Interviews_2017_06_28_83.json,
Interviews_2017_07_04_82.json,
Interviews_2017_07_05_81.json,
Interviews_2017_07_07_80.json,
Interviews_2017_07_08_79.json,
Interviews_2017_07_29_78.json,
Interviews_2017_08_23_77.json,
Interviews_2017_09_01_76.json,
Interviews_2017_09_12_75.json,
Interviews_2017_09_16_74.json,
Interviews_2017_09_20_73.json,
Interviews_2017_09_28_72.json,
Interviews_2017_10_29_71.json,
Interviews_2017_11_09_70.json,
Interviews_2017_11_21_69.json,
Interviews_2017_12_29_68.json,
Interviews_2017_12_30_67.json,
Interviews_2018_01_17_66.json,
Interviews_2018_01_31_65.json,
Interviews_2018_02_08_63.json,
Interviews_2018_02_08_64.json,
Interviews_2018_03_12_62.json,
Interviews_2018_03_13_61.json,
Interviews_2018_03_14_60.json,
Interviews_2018_03_16_59.json,
Interviews_2018_03_28_58.json,
Interviews_2018_04_06_57.json,
Interviews_2018_04_10_56.json,
Interviews_2018_04_26_54.json,
Interviews_2018_04_26_55.json,
Interviews_2018_05_16_53.json,
Interviews_2018_05_18_52.json,
Interviews_2018_05_23_51.json,
Interviews_2018_05_29_50.json,
Interviews_2018_06_15_49.json,
Interviews_2018_06_23_48.json,
Interviews_2018_06_25_47.json,
Interviews_2018_07_09_46.json,
Interviews_2018_08_05_45.json,
Interviews_2018_09_05_44.json,
Interviews_2018_10_01_43.json,
Interviews_2018_11_02_42.json,
Interviews_2018_11_22_41.json,
Interviews_2018_11_26_40.json,
Interviews_2018_12_30_39.json,
Interviews_2019_01_07_38.json,
Interviews_2019_01_09_37.json,
Interviews_2019_01_16_36.json,
Interviews_2019_01_17_35.json,
Interviews_2019_01_25_34.json,
Interviews_2019_02_01_33.json,
Interviews_2019_02_07_32.json,
Interviews_2019_02_18_31.json,
Interviews_2019_02_19_30.json,
Interviews_2019_03_11_29.json,
Interviews_2019_03_12_28.json,
Interviews_2019_03_29_27.json,
Interviews_2019_04_01_26.json,
Interviews_2019_04_02_25.json,
Interviews_2019_04_23_24.json,
Interviews_2019_05_08_23.json,
Interviews_2019_05_31_21.json,
Interviews_2019_05_31_22.json,
Interviews_2019_06_15_20.json,
Interviews_2019_06_17_19.json,
Interviews_2019_07_02_18.json,
Interviews_2019_07_08_17.json,
Interviews_2019_07_09_16.json,
Interviews_2019_08_30_15.json,
Interviews_2019_09_19_14.json,
Interviews_2019_09_26_13.json,
Interviews_2019_09_30_11.json,
Interviews_2019_09_30_12.json,
Interviews_2019_10_09_10.json,
Interviews_2019_10_17_9.json,
Interviews_2019_10_26_8.json,
Interviews_2019_11_12_7.json,
Interviews_2019_11_20_5.json,
Interviews_2019_11_20_6.json,
Interviews_2019_11_23_4.json,
Interviews_2019_12_02_3.json,
Interviews_2019_12_16_2.json)




rm(Interviews_2004_06_18_335.json,
  Interviews_2004_08_08_334.json,
  Interviews_2004_10_09_333.json,
  Interviews_2004_10_18_332.json,
  Interviews_2004_12_06_331.json,
  Interviews_2004_12_08_330.json,
  Interviews_2005_01_20_329.json,
  Interviews_2005_01_21_328.json,
  Interviews_2005_01_27_327.json,
  Interviews_2005_02_14_326.json,
  Interviews_2005_02_17_325.json,
  Interviews_2005_03_16_324.json,
  Interviews_2005_03_31_323.json,
  Interviews_2005_06_27_321.json,
  Interviews_2005_06_27_322.json,
  Interviews_2005_08_09_320.json,
  Interviews_2005_09_21_319.json,
  Interviews_2005_10_14_318.json,
  Interviews_2005_11_24_317.json,
  Interviews_2005_12_09_316.json,
  Interviews_2005_12_15_315.json,
  Interviews_2005_12_19_313.json,
  Interviews_2005_12_19_314.json,
  Interviews_2005_12_23_312.json,
  Interviews_2006_01_26_311.json,
  Interviews_2006_03_15_310.json,
  Interviews_2006_04_11_309.json,
  Interviews_2006_06_27_308.json,
  Interviews_2006_09_15_307.json,
  Interviews_2006_12_18_306.json,
  Interviews_2007_02_22_305.json,
  Interviews_2007_02_26_304.json,
  Interviews_2007_04_02_303.json,
  Interviews_2007_05_14_302.json,
  Interviews_2007_05_18_301.json,
  Interviews_2007_07_25_300.json,
  Interviews_2007_08_11_299.json,
  Interviews_2007_10_16_298.json,
  Interviews_2008_02_11_297.json,
  Interviews_2008_04_30_296.json,
  Interviews_2008_07_18_295.json,
  Interviews_2008_09_23_294.json,
  Interviews_2008_11_10_293.json,
  Interviews_2008_11_26_292.json,
  Interviews_2008_12_15_291.json,
  Interviews_2008_12_23_290.json,
  Interviews_2008_12_30_289.json,
  Interviews_2009_01_23_288.json,
  Interviews_2009_02_16_287.json,
  Interviews_2009_03_23_286.json,
  Interviews_2009_04_09_285.json,
  Interviews_2009_04_29_284.json,
  Interviews_2009_09_12_283.json,
  Interviews_2009_09_27_282.json,
  Interviews_2009_10_04_281.json,
  Interviews_2009_11_17_280.json,
  Interviews_2009_11_25_279.json,
  Interviews_2009_11_28_278.json,
  Interviews_2009_12_10_277.json,
  Interviews_2010_01_23_276.json,
  Interviews_2010_01_26_275.json,
  Interviews_2010_03_17_274.json,
  Interviews_2010_04_09_273.json,
  Interviews_2010_04_24_272.json,
  Interviews_2010_05_14_271.json,
  Interviews_2010_05_15_270.json,
  Interviews_2010_05_21_269.json,
  Interviews_2010_05_31_268.json,
  Interviews_2010_06_24_267.json,
  Interviews_2010_07_13_266.json,
  Interviews_2010_09_03_265.json,
  Interviews_2010_09_10_264.json,
  Interviews_2010_10_11_263.json,
  Interviews_2010_10_17_262.json,
  Interviews_2010_10_29_261.json,
  Interviews_2010_11_13_260.json,
  Interviews_2011_01_15_259.json,
  Interviews_2011_01_23_258.json,
  Interviews_2011_02_10_257.json,
  Interviews_2011_02_13_256.json,
  Interviews_2011_02_14_255.json,
  Interviews_2011_02_16_254.json,
  Interviews_2011_04_26_253.json,
  Interviews_2011_05_15_252.json,
  Interviews_2011_05_18_251.json,
  Interviews_2011_05_28_250.json,
  Interviews_2011_06_16_249.json,
  Interviews_2011_07_18_248.json,
  Interviews_2011_07_19_247.json,
  Interviews_2011_07_22_246.json,
  Interviews_2011_07_27_245.json,
  Interviews_2011_09_02_244.json,
  Interviews_2011_09_20_243.json,
  Interviews_2011_09_28_242.json,
  Interviews_2011_10_07_241.json,
  Interviews_2011_10_11_239.json,
  Interviews_2011_10_11_240.json,
  Interviews_2011_10_14_238.json,
  Interviews_2011_10_18_237.json,
  Interviews_2011_10_29_236.json,
  Interviews_2011_10_30_235.json,
  Interviews_2011_12_19_234.json,
  Interviews_2012_02_24_232.json,
  Interviews_2012_02_24_233.json,
  Interviews_2012_03_23_231.json,
  Interviews_2012_07_21_230.json,
  Interviews_2012_09_14_229.json,
  Interviews_2012_10_08_228.json,
  Interviews_2012_10_29_227.json,
  Interviews_2012_12_14_226.json,
  Interviews_2013_07_18_225.json,
  Interviews_2013_07_29_224.json,
  Interviews_2013_08_24_223.json,
  Interviews_2013_09_12_222.json,
  Interviews_2013_09_16_221.json,
  Interviews_2013_09_18_220.json,
  Interviews_2013_10_06_219.json,
  Interviews_2013_10_14_218.json,
  Interviews_2013_10_24_217.json,
  Interviews_2013_10_25_216.json,
  Interviews_2013_11_11_215.json,
  Interviews_2013_12_12_213.json,
  Interviews_2013_12_12_214.json,
  Interviews_2013_12_15_212.json,
  Interviews_2013_12_22_211.json,
  Interviews_2013_12_30_210.json,
  Interviews_2014_01_16_209.json,
  Interviews_2014_01_23_208.json,
  Interviews_2014_02_12_207.json,
  Interviews_2014_02_15_206.json,
  Interviews_2014_02_22_205.json,
  Interviews_2014_03_11_204.json,
  Interviews_2014_04_07_203.json,
  Interviews_2014_04_22_202.json,
  Interviews_2014_05_15_201.json,
  Interviews_2014_05_24_200.json,
  Interviews_2014_06_21_199.json,
  Interviews_2014_06_28_198.json,
  Interviews_2014_06_29_197.json,
  Interviews_2014_07_06_196.json,
  Interviews_2014_07_13_195.json,
  Interviews_2014_07_15_194.json,
  Interviews_2014_08_04_193.json,
  Interviews_2014_09_05_192.json,
  Interviews_2014_09_07_191.json,
  Interviews_2014_09_08_190.json,
  Interviews_2014_09_10_189.json,
  Interviews_2014_09_11_188.json,
  Interviews_2014_09_19_187.json,
  Interviews_2014_09_24_186.json,
  Interviews_2014_09_25_185.json,
  Interviews_2014_10_28_184.json,
  Interviews_2014_11_03_183.json,
  Interviews_2014_11_09_182.json,
  Interviews_2014_12_16_181.json,
  Interviews_2014_12_17_180.json,
  Interviews_2014_12_19_179.json,
  Interviews_2014_12_22_178.json,
  Interviews_2014_12_31_177.json,
  Interviews_2015_01_02_175.json,
  Interviews_2015_01_02_176.json,
  Interviews_2015_01_10_174.json,
  Interviews_2015_01_13_173.json,
  Interviews_2015_01_15_172.json,
  Interviews_2015_01_16_170.json,
  Interviews_2015_01_16_171.json,
  Interviews_2015_01_26_169.json,
  Interviews_2015_01_29_168.json,
  Interviews_2015_01_31_167.json,
  Interviews_2015_02_05_166.json,
  Interviews_2015_02_16_165.json,
  Interviews_2015_03_08_164.json,
  Interviews_2015_03_25_163.json,
  Interviews_2015_04_02_162.json,
  Interviews_2015_04_08_161.json,
  Interviews_2015_04_22_160.json,
  Interviews_2015_05_04_159.json,
  Interviews_2015_05_07_158.json,
  Interviews_2015_05_19_157.json,
  Interviews_2015_06_10_156.json,
  Interviews_2015_06_13_155.json,
  Interviews_2015_06_29_154.json,
  Interviews_2015_07_27_153.json,
  Interviews_2015_08_14_152.json,
  Interviews_2015_09_11_151.json,
  Interviews_2015_09_16_150.json,
  Interviews_2015_09_19_149.json,
  Interviews_2015_10_06_148.json,
  Interviews_2015_10_11_147.json,
  Interviews_2015_10_12_146.json,
  Interviews_2015_10_14_145.json,
  Interviews_2015_10_29_144.json,
  Interviews_2015_10_31_143.json,
  Interviews_2015_11_04_142.json,
  Interviews_2015_11_11_141.json,
  Interviews_2015_11_15_140.json,
  Interviews_2015_11_17_139.json,
  Interviews_2015_12_10_138.json,
  Interviews_2015_12_21_137.json,
  Interviews_2015_12_29_136.json,
  Interviews_2015_12_30_135.json,
  Interviews_2016_01_06_134.json,
  Interviews_2016_01_13_133.json,
  Interviews_2016_01_30_132.json,
  Interviews_2016_02_02_131.json,
  Interviews_2016_02_11_130.json,
  Interviews_2016_02_13_129.json,
  Interviews_2016_03_11_127.json,
  Interviews_2016_03_11_128.json,
  Interviews_2016_03_18_126.json,
  Interviews_2016_03_30_125.json,
  Interviews_2016_04_27_124.json,
  Interviews_2016_04_28_123.json,
  Interviews_2016_04_29_122.json,
  Interviews_2016_05_01_121.json,
  Interviews_2016_05_05_120.json,
  Interviews_2016_05_19_118.json,
  Interviews_2016_05_19_119.json,
  Interviews_2016_05_23_117.json,
  Interviews_2016_06_09_116.json,
  Interviews_2016_07_01_115.json,
  Interviews_2016_07_05_114.json,
  Interviews_2016_07_18_113.json,
  Interviews_2016_08_16_112.json,
  Interviews_2016_09_07_111.json,
  Interviews_2016_09_20_110.json,
  Interviews_2016_09_26_109.json,
  Interviews_2016_09_30_107.json,
  Interviews_2016_09_30_108.json,
  Interviews_2016_11_02_106.json,
  Interviews_2016_11_08_105.json,
  Interviews_2016_11_11_104.json,
  Interviews_2016_11_26_103.json,
  Interviews_2016_11_30_102.json,
  Interviews_2016_12_09_101.json,
  Interviews_2016_12_12_100.json,
  Interviews_2016_12_13_99.json,
  Interviews_2016_12_14_98.json,
  Interviews_2016_12_20_97.json,
  Interviews_2016_12_31_96.json,
  Interviews_2017_01_20_95.json,
  Interviews_2017_01_23_94.json,
  Interviews_2017_02_07_93.json,
  Interviews_2017_02_19_92.json,
  Interviews_2017_03_24_90.json,
  Interviews_2017_03_24_91.json,
  Interviews_2017_04_03_89.json,
  Interviews_2017_05_11_88.json,
  Interviews_2017_05_18_87.json,
  Interviews_2017_05_23_86.json,
  Interviews_2017_06_12_85.json,
  Interviews_2017_06_22_84.json,
  Interviews_2017_06_28_83.json,
  Interviews_2017_07_04_82.json,
  Interviews_2017_07_05_81.json,
  Interviews_2017_07_07_80.json,
  Interviews_2017_07_08_79.json,
  Interviews_2017_07_29_78.json,
  Interviews_2017_08_23_77.json,
  Interviews_2017_09_01_76.json,
  Interviews_2017_09_12_75.json,
  Interviews_2017_09_16_74.json,
  Interviews_2017_09_20_73.json,
  Interviews_2017_09_28_72.json,
  Interviews_2017_10_29_71.json,
  Interviews_2017_11_09_70.json,
  Interviews_2017_11_21_69.json,
  Interviews_2017_12_29_68.json,
  Interviews_2017_12_30_67.json,
  Interviews_2018_01_17_66.json,
  Interviews_2018_01_31_65.json,
  Interviews_2018_02_08_63.json,
  Interviews_2018_02_08_64.json,
  Interviews_2018_03_12_62.json,
  Interviews_2018_03_13_61.json,
  Interviews_2018_03_14_60.json,
  Interviews_2018_03_16_59.json,
  Interviews_2018_03_28_58.json,
  Interviews_2018_04_06_57.json,
  Interviews_2018_04_10_56.json,
  Interviews_2018_04_26_54.json,
  Interviews_2018_04_26_55.json,
  Interviews_2018_05_16_53.json,
  Interviews_2018_05_18_52.json,
  Interviews_2018_05_23_51.json,
  Interviews_2018_05_29_50.json,
  Interviews_2018_06_15_49.json,
  Interviews_2018_06_23_48.json,
  Interviews_2018_06_25_47.json,
  Interviews_2018_07_09_46.json,
  Interviews_2018_08_05_45.json,
  Interviews_2018_09_05_44.json,
  Interviews_2018_10_01_43.json,
  Interviews_2018_11_02_42.json,
  Interviews_2018_11_22_41.json,
  Interviews_2018_11_26_40.json,
  Interviews_2018_12_30_39.json,
  Interviews_2019_01_07_38.json,
  Interviews_2019_01_09_37.json,
  Interviews_2019_01_16_36.json,
  Interviews_2019_01_17_35.json,
  Interviews_2019_01_25_34.json,
  Interviews_2019_02_01_33.json,
  Interviews_2019_02_07_32.json,
  Interviews_2019_02_18_31.json,
  Interviews_2019_02_19_30.json,
  Interviews_2019_03_11_29.json,
  Interviews_2019_03_12_28.json,
  Interviews_2019_03_29_27.json,
  Interviews_2019_04_01_26.json,
  Interviews_2019_04_02_25.json,
  Interviews_2019_04_23_24.json,
  Interviews_2019_05_08_23.json,
  Interviews_2019_05_31_21.json,
  Interviews_2019_05_31_22.json,
  Interviews_2019_06_15_20.json,
  Interviews_2019_06_17_19.json,
  Interviews_2019_07_02_18.json,
  Interviews_2019_07_08_17.json,
  Interviews_2019_07_09_16.json,
  Interviews_2019_08_30_15.json,
  Interviews_2019_09_19_14.json,
  Interviews_2019_09_26_13.json,
  Interviews_2019_09_30_11.json,
  Interviews_2019_09_30_12.json,
  Interviews_2019_10_09_10.json,
  Interviews_2019_10_17_9.json,
  Interviews_2019_10_26_8.json,
  Interviews_2019_11_12_7.json,
  Interviews_2019_11_20_5.json,
  Interviews_2019_11_20_6.json,
  Interviews_2019_11_23_4.json,
  Interviews_2019_12_02_3.json,
  Interviews_2019_12_16_2.json)

#write.csv(Master, file = "Master_Interviews_ECB.csv")










