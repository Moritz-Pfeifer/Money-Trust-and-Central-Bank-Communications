

#########################################################
##
## Data Import Script
## Sentiment Analysis on Central Bankers
## Client: Moritz Pfiffer
## 8/16/2021
##
#############################################################

setwd("C:\\Users\\salaz\\Desktop\\Moritz\\Interviews_BB")
library(rjson)
library(dplyr)

#
# Importing Reported Json files
#



interviews_02_10_2018_13.json<- as.data.frame(t(unlist(read_json("interviews_02_10_2018_13.json"))))
interviews_04_04_2019_8.json<- as.data.frame(t(unlist(read_json("interviews_04_04_2019_8.json"))))
interviews_04_11_2018_12.json<- as.data.frame(t(unlist(read_json("interviews_04_11_2018_12.json"))))
interviews_09_07_2019_3.json<- as.data.frame(t(unlist(read_json("interviews_09_07_2019_3.json"))))
interviews_09_11_2018_11.json<- as.data.frame(t(unlist(read_json("interviews_09_11_2018_11.json"))))
interviews_10_09_2018_17.json<- as.data.frame(t(unlist(read_json("interviews_10_09_2018_17.json"))))
interviews_12_07_2019_2.json<- as.data.frame(t(unlist(read_json("interviews_12_07_2019_2.json"))))
interviews_13_05_2019_6.json<- as.data.frame(t(unlist(read_json("interviews_13_05_2019_6.json"))))
interviews_13_11_2018_10.json<- as.data.frame(t(unlist(read_json("interviews_13_11_2018_10.json"))))
interviews_14_09_2019_40.json<- as.data.frame(t(unlist(read_json("interviews_14_09_2019_40.json"))))
interviews_15_04_2019_7.json<- as.data.frame(t(unlist(read_json("interviews_15_04_2019_7.json"))))
interviews_15_09_2018_16.json<- as.data.frame(t(unlist(read_json("interviews_15_09_2018_16.json"))))
interviews_16_12_2019_38.json<- as.data.frame(t(unlist(read_json("interviews_16_12_2019_38.json"))))
interviews_17_05_2019_5.json<- as.data.frame(t(unlist(read_json("interviews_17_05_2019_5.json"))))
interviews_17_09_2018_15.json<- as.data.frame(t(unlist(read_json("interviews_17_09_2018_15.json"))))
interviews_19_08_2018_18.json<- as.data.frame(t(unlist(read_json("interviews_19_08_2018_18.json"))))
interviews_21_09_2018_14.json<- as.data.frame(t(unlist(read_json("interviews_21_09_2018_14.json"))))
interviews_23_06_2019_4.json<- as.data.frame(t(unlist(read_json("interviews_23_06_2019_4.json"))))
interviews_23_12_2018_9.json<- as.data.frame(t(unlist(read_json("interviews_23_12_2018_9.json"))))
interviews_25_08_2019_1.json<- as.data.frame(t(unlist(read_json("interviews_25_08_2019_1.json"))))
interviews_27_07_2012_19.json<- as.data.frame(t(unlist(read_json("interviews_27_07_2012_19.json"))))
interviews_28_10_2019_39.json<- as.data.frame(t(unlist(read_json("interviews_28_10_2019_39.json"))))
interviews_1999_01_14_1.json<- as.data.frame(t(unlist(read_json("interviews_1999_01_14_1.json"))))
interviews_1999_01_15_2.json<- as.data.frame(t(unlist(read_json("interviews_1999_01_15_2.json"))))
interviews_1999_01_19_3.json<- as.data.frame(t(unlist(read_json("interviews_1999_01_19_3.json"))))
interviews_1999_01_24_5.json<- as.data.frame(t(unlist(read_json("interviews_1999_01_24_5.json"))))
interviews_1999_01_27_7.json<- as.data.frame(t(unlist(read_json("interviews_1999_01_27_7.json"))))
interviews_1999_02_7_8.json<- as.data.frame(t(unlist(read_json("interviews_1999_02_7_8.json"))))
interviews_1999_02_26_12.json<- as.data.frame(t(unlist(read_json("interviews_1999_02_26_12.json"))))
interviews_1999_02_27_11.json<- as.data.frame(t(unlist(read_json("interviews_1999_02_27_11.json"))))
interviews_1999_04_3_13.json<- as.data.frame(t(unlist(read_json("interviews_1999_04_3_13.json"))))
interviews_1999_04_13_17.json<- as.data.frame(t(unlist(read_json("interviews_1999_04_13_17.json"))))
interviews_1999_04_20_19.json<- as.data.frame(t(unlist(read_json("interviews_1999_04_20_19.json"))))
interviews_1999_04_30_20.json<- as.data.frame(t(unlist(read_json("interviews_1999_04_30_20.json"))))
interviews_1999_04_30_21.json<- as.data.frame(t(unlist(read_json("interviews_1999_04_30_21.json"))))
interviews_1999_05_1_23.json<- as.data.frame(t(unlist(read_json("interviews_1999_05_1_23.json"))))
interviews_1999_05_14_26.json<- as.data.frame(t(unlist(read_json("interviews_1999_05_14_26.json"))))
interviews_1999_05_15_28.json<- as.data.frame(t(unlist(read_json("interviews_1999_05_15_28.json"))))
interviews_1999_06_1_29.json<- as.data.frame(t(unlist(read_json("interviews_1999_06_1_29.json"))))
interviews_1999_08_18_34.json<- as.data.frame(t(unlist(read_json("interviews_1999_08_18_34.json"))))
interviews_1999_08_20_35.json<- as.data.frame(t(unlist(read_json("interviews_1999_08_20_35.json"))))
interviews_1999_08_27_39.json<- as.data.frame(t(unlist(read_json("interviews_1999_08_27_39.json"))))
interviews_1999_09_1_38.json<- as.data.frame(t(unlist(read_json("interviews_1999_09_1_38.json"))))
interviews_1999_09_2_40.json<- as.data.frame(t(unlist(read_json("interviews_1999_09_2_40.json"))))
interviews_1999_09_2_41.json<- as.data.frame(t(unlist(read_json("interviews_1999_09_2_41.json"))))
interviews_1999_09_5_44.json<- as.data.frame(t(unlist(read_json("interviews_1999_09_5_44.json"))))
interviews_1999_09_9_43.json<- as.data.frame(t(unlist(read_json("interviews_1999_09_9_43.json"))))
interviews_1999_09_11_45.json<- as.data.frame(t(unlist(read_json("interviews_1999_09_11_45.json"))))
interviews_1999_11_16_46.json<- as.data.frame(t(unlist(read_json("interviews_1999_11_16_46.json"))))
interviews_1999_12_29_52.json<- as.data.frame(t(unlist(read_json("interviews_1999_12_29_52.json"))))
interviews_2000_01_1_66.json<- as.data.frame(t(unlist(read_json("interviews_2000_01_1_66.json"))))
interviews_2000_01_1_81.json<- as.data.frame(t(unlist(read_json("interviews_2000_01_1_81.json"))))
interviews_2000_01_1_87.json<- as.data.frame(t(unlist(read_json("interviews_2000_01_1_87.json"))))
interviews_2000_01_2_50.json<- as.data.frame(t(unlist(read_json("interviews_2000_01_2_50.json"))))
interviews_2000_01_10_53.json<- as.data.frame(t(unlist(read_json("interviews_2000_01_10_53.json"))))
interviews_2000_01_19_55.json<- as.data.frame(t(unlist(read_json("interviews_2000_01_19_55.json"))))
interviews_2000_02_21_62.json<- as.data.frame(t(unlist(read_json("interviews_2000_02_21_62.json"))))
interviews_2000_02_22_64.json<- as.data.frame(t(unlist(read_json("interviews_2000_02_22_64.json"))))
interviews_2000_02_28_65.json<- as.data.frame(t(unlist(read_json("interviews_2000_02_28_65.json"))))
interviews_2000_03_17_68.json<- as.data.frame(t(unlist(read_json("interviews_2000_03_17_68.json"))))
interviews_2000_04_11_71.json<- as.data.frame(t(unlist(read_json("interviews_2000_04_11_71.json"))))
interviews_2000_04_18_73.json<- as.data.frame(t(unlist(read_json("interviews_2000_04_18_73.json"))))
interviews_2000_04_19_72.json<- as.data.frame(t(unlist(read_json("interviews_2000_04_19_72.json"))))
interviews_2000_05_1_77.json<- as.data.frame(t(unlist(read_json("interviews_2000_05_1_77.json"))))
interviews_2000_05_2_78.json<- as.data.frame(t(unlist(read_json("interviews_2000_05_2_78.json"))))
interviews_2000_05_6_80.json<- as.data.frame(t(unlist(read_json("interviews_2000_05_6_80.json"))))
interviews_2000_05_8_79.json<- as.data.frame(t(unlist(read_json("interviews_2000_05_8_79.json"))))
interviews_2000_06_19_84.json<- as.data.frame(t(unlist(read_json("interviews_2000_06_19_84.json"))))
interviews_2000_07_31_88.json<- as.data.frame(t(unlist(read_json("interviews_2000_07_31_88.json"))))
interviews_2000_08_4_89.json<- as.data.frame(t(unlist(read_json("interviews_2000_08_4_89.json"))))
interviews_2000_08_30_91.json<- as.data.frame(t(unlist(read_json("interviews_2000_08_30_91.json"))))
interviews_2000_09_3_93.json<- as.data.frame(t(unlist(read_json("interviews_2000_09_3_93.json"))))
interviews_2000_09_6_92.json<- as.data.frame(t(unlist(read_json("interviews_2000_09_6_92.json"))))
interviews_2000_09_7_94.json<- as.data.frame(t(unlist(read_json("interviews_2000_09_7_94.json"))))
interviews_2000_09_11_95.json<- as.data.frame(t(unlist(read_json("interviews_2000_09_11_95.json"))))
interviews_2000_09_21_98.json<- as.data.frame(t(unlist(read_json("interviews_2000_09_21_98.json"))))
interviews_2000_09_24_96.json<- as.data.frame(t(unlist(read_json("interviews_2000_09_24_96.json"))))
interviews_2000_09_26_97.json<- as.data.frame(t(unlist(read_json("interviews_2000_09_26_97.json"))))
interviews_2000_09_27_99.json<- as.data.frame(t(unlist(read_json("interviews_2000_09_27_99.json"))))
interviews_2001_01_24_103.json<- as.data.frame(t(unlist(read_json("interviews_2001_01_24_103.json"))))
interviews_2001_03_4_105.json<- as.data.frame(t(unlist(read_json("interviews_2001_03_4_105.json"))))
interviews_2001_04_26_108.json<- as.data.frame(t(unlist(read_json("interviews_2001_04_26_108.json"))))
interviews_2001_05_2_109.json<- as.data.frame(t(unlist(read_json("interviews_2001_05_2_109.json"))))
interviews_2001_05_12_110.json<- as.data.frame(t(unlist(read_json("interviews_2001_05_12_110.json"))))
interviews_2001_05_25_111.json<- as.data.frame(t(unlist(read_json("interviews_2001_05_25_111.json"))))
interviews_2001_06_12_112.json<- as.data.frame(t(unlist(read_json("interviews_2001_06_12_112.json"))))
interviews_2001_06_26_113.json<- as.data.frame(t(unlist(read_json("interviews_2001_06_26_113.json"))))
interviews_2001_08_23_118.json<- as.data.frame(t(unlist(read_json("interviews_2001_08_23_118.json"))))
interviews_2001_08_28_119.json<- as.data.frame(t(unlist(read_json("interviews_2001_08_28_119.json"))))
interviews_2001_09_5_120.json<- as.data.frame(t(unlist(read_json("interviews_2001_09_5_120.json"))))
interviews_2001_09_25_121.json<- as.data.frame(t(unlist(read_json("interviews_2001_09_25_121.json"))))
interviews_2001_10_1_123.json<- as.data.frame(t(unlist(read_json("interviews_2001_10_1_123.json"))))
interviews_2001_10_17_124.json<- as.data.frame(t(unlist(read_json("interviews_2001_10_17_124.json"))))
interviews_2001_10_26_125.json<- as.data.frame(t(unlist(read_json("interviews_2001_10_26_125.json"))))
interviews_2001_11_8_128.json<- as.data.frame(t(unlist(read_json("interviews_2001_11_8_128.json"))))
interviews_2001_11_9_127.json<- as.data.frame(t(unlist(read_json("interviews_2001_11_9_127.json"))))
interviews_2001_11_14_130.json<- as.data.frame(t(unlist(read_json("interviews_2001_11_14_130.json"))))
interviews_2001_11_16_129.json<- as.data.frame(t(unlist(read_json("interviews_2001_11_16_129.json"))))
interviews_2001_11_22_132.json<- as.data.frame(t(unlist(read_json("interviews_2001_11_22_132.json"))))
interviews_2001_11_29_133.json<- as.data.frame(t(unlist(read_json("interviews_2001_11_29_133.json"))))
interviews_2001_12_1_131.json<- as.data.frame(t(unlist(read_json("interviews_2001_12_1_131.json"))))
interviews_2001_12_1_134.json<- as.data.frame(t(unlist(read_json("interviews_2001_12_1_134.json"))))
interviews_2001_12_4_135.json<- as.data.frame(t(unlist(read_json("interviews_2001_12_4_135.json"))))
interviews_2001_12_24_136.json<- as.data.frame(t(unlist(read_json("interviews_2001_12_24_136.json"))))
interviews_2002_01_1_185.json<- as.data.frame(t(unlist(read_json("interviews_2002_01_1_185.json"))))
interviews_2002_01_1_198.json<- as.data.frame(t(unlist(read_json("interviews_2002_01_1_198.json"))))
interviews_2002_02_15_139.json<- as.data.frame(t(unlist(read_json("interviews_2002_02_15_139.json"))))
interviews_2002_02_27_142.json<- as.data.frame(t(unlist(read_json("interviews_2002_02_27_142.json"))))
interviews_2002_03_2_143.json<- as.data.frame(t(unlist(read_json("interviews_2002_03_2_143.json"))))
interviews_2002_03_22_145.json<- as.data.frame(t(unlist(read_json("interviews_2002_03_22_145.json"))))
interviews_2002_04_10_146.json<- as.data.frame(t(unlist(read_json("interviews_2002_04_10_146.json"))))
interviews_2002_04_11_147.json<- as.data.frame(t(unlist(read_json("interviews_2002_04_11_147.json"))))
interviews_2002_05_12_150.json<- as.data.frame(t(unlist(read_json("interviews_2002_05_12_150.json"))))
interviews_2002_06_22_157.json<- as.data.frame(t(unlist(read_json("interviews_2002_06_22_157.json"))))
interviews_2002_07_13_159.json<- as.data.frame(t(unlist(read_json("interviews_2002_07_13_159.json"))))
interviews_2002_08_9_166.json<- as.data.frame(t(unlist(read_json("interviews_2002_08_9_166.json"))))
interviews_2002_08_15_167.json<- as.data.frame(t(unlist(read_json("interviews_2002_08_15_167.json"))))
interviews_2002_08_15_170.json<- as.data.frame(t(unlist(read_json("interviews_2002_08_15_170.json"))))
interviews_2002_08_21_169.json<- as.data.frame(t(unlist(read_json("interviews_2002_08_21_169.json"))))
interviews_2002_08_21_171.json<- as.data.frame(t(unlist(read_json("interviews_2002_08_21_171.json"))))
interviews_2002_08_22_172.json<- as.data.frame(t(unlist(read_json("interviews_2002_08_22_172.json"))))
interviews_2002_08_26_175.json<- as.data.frame(t(unlist(read_json("interviews_2002_08_26_175.json"))))
interviews_2002_08_30_176.json<- as.data.frame(t(unlist(read_json("interviews_2002_08_30_176.json"))))
interviews_2002_09_20_178.json<- as.data.frame(t(unlist(read_json("interviews_2002_09_20_178.json"))))
interviews_2002_10_20_187.json<- as.data.frame(t(unlist(read_json("interviews_2002_10_20_187.json"))))
interviews_2002_10_23_186.json<- as.data.frame(t(unlist(read_json("interviews_2002_10_23_186.json"))))
interviews_2002_10_30_190.json<- as.data.frame(t(unlist(read_json("interviews_2002_10_30_190.json"))))
interviews_2002_11_15_192.json<- as.data.frame(t(unlist(read_json("interviews_2002_11_15_192.json"))))
interviews_2002_12_1_194.json<- as.data.frame(t(unlist(read_json("interviews_2002_12_1_194.json"))))
interviews_2002_12_2_195.json<- as.data.frame(t(unlist(read_json("interviews_2002_12_2_195.json"))))
interviews_2002_12_11_196.json<- as.data.frame(t(unlist(read_json("interviews_2002_12_11_196.json"))))
interviews_2002_12_17_199.json<- as.data.frame(t(unlist(read_json("interviews_2002_12_17_199.json"))))
interviews_2002_12_31_204.json<- as.data.frame(t(unlist(read_json("interviews_2002_12_31_204.json"))))
interviews_2003_01_1_200.json<- as.data.frame(t(unlist(read_json("interviews_2003_01_1_200.json"))))
interviews_2003_01_2_205.json<- as.data.frame(t(unlist(read_json("interviews_2003_01_2_205.json"))))
interviews_2003_01_3_206.json<- as.data.frame(t(unlist(read_json("interviews_2003_01_3_206.json"))))
interviews_2003_01_20_208.json<- as.data.frame(t(unlist(read_json("interviews_2003_01_20_208.json"))))
interviews_2003_02_5_213.json<- as.data.frame(t(unlist(read_json("interviews_2003_02_5_213.json"))))
interviews_2003_02_7_215.json<- as.data.frame(t(unlist(read_json("interviews_2003_02_7_215.json"))))
interviews_2003_03_10_217.json<- as.data.frame(t(unlist(read_json("interviews_2003_03_10_217.json"))))
interviews_2003_03_18_220.json<- as.data.frame(t(unlist(read_json("interviews_2003_03_18_220.json"))))
interviews_2003_03_23_219.json<- as.data.frame(t(unlist(read_json("interviews_2003_03_23_219.json"))))
interviews_2003_03_29_223.json<- as.data.frame(t(unlist(read_json("interviews_2003_03_29_223.json"))))
interviews_2003_05_2_228.json<- as.data.frame(t(unlist(read_json("interviews_2003_05_2_228.json"))))
interviews_2003_05_14_230.json<- as.data.frame(t(unlist(read_json("interviews_2003_05_14_230.json"))))
interviews_2003_05_21_232.json<- as.data.frame(t(unlist(read_json("interviews_2003_05_21_232.json"))))
interviews_2003_05_22_234.json<- as.data.frame(t(unlist(read_json("interviews_2003_05_22_234.json"))))
interviews_2003_06_12_236.json<- as.data.frame(t(unlist(read_json("interviews_2003_06_12_236.json"))))
interviews_2003_06_26_238.json<- as.data.frame(t(unlist(read_json("interviews_2003_06_26_238.json"))))
interviews_2003_07_16_239.json<- as.data.frame(t(unlist(read_json("interviews_2003_07_16_239.json"))))
interviews_2003_07_25_243.json<- as.data.frame(t(unlist(read_json("interviews_2003_07_25_243.json"))))
interviews_2003_07_31_242.json<- as.data.frame(t(unlist(read_json("interviews_2003_07_31_242.json"))))
interviews_2003_08_5_246.json<- as.data.frame(t(unlist(read_json("interviews_2003_08_5_246.json"))))
interviews_2003_08_11_250.json<- as.data.frame(t(unlist(read_json("interviews_2003_08_11_250.json"))))
interviews_2003_08_15_252.json<- as.data.frame(t(unlist(read_json("interviews_2003_08_15_252.json"))))
interviews_2003_09_18_256.json<- as.data.frame(t(unlist(read_json("interviews_2003_09_18_256.json"))))
interviews_2003_09_18_257.json<- as.data.frame(t(unlist(read_json("interviews_2003_09_18_257.json"))))
interviews_2003_10_13_260.json<- as.data.frame(t(unlist(read_json("interviews_2003_10_13_260.json"))))
interviews_2003_10_22_262.json<- as.data.frame(t(unlist(read_json("interviews_2003_10_22_262.json"))))
interviews_2003_10_25_261.json<- as.data.frame(t(unlist(read_json("interviews_2003_10_25_261.json"))))
interviews_2003_11_7_265.json<- as.data.frame(t(unlist(read_json("interviews_2003_11_7_265.json"))))
interviews_2003_11_18_266.json<- as.data.frame(t(unlist(read_json("interviews_2003_11_18_266.json"))))
interviews_2003_11_27_267.json<- as.data.frame(t(unlist(read_json("interviews_2003_11_27_267.json"))))
interviews_2003_12_8_269.json<- as.data.frame(t(unlist(read_json("interviews_2003_12_8_269.json"))))
interviews_2003_12_31_274.json<- as.data.frame(t(unlist(read_json("interviews_2003_12_31_274.json"))))
interviews_2004_01_8_275.json<- as.data.frame(t(unlist(read_json("interviews_2004_01_8_275.json"))))
interviews_2004_01_21_276.json<- as.data.frame(t(unlist(read_json("interviews_2004_01_21_276.json"))))
interviews_2004_01_30_277.json<- as.data.frame(t(unlist(read_json("interviews_2004_01_30_277.json"))))
interviews_2004_02_3_278.json<- as.data.frame(t(unlist(read_json("interviews_2004_02_3_278.json"))))
interviews_2004_02_4_279.json<- as.data.frame(t(unlist(read_json("interviews_2004_02_4_279.json"))))
interviews_2004_02_9_280.json<- as.data.frame(t(unlist(read_json("interviews_2004_02_9_280.json"))))
interviews_2004_03_11_284.json<- as.data.frame(t(unlist(read_json("interviews_2004_03_11_284.json"))))
interviews_2004_03_29_287.json<- as.data.frame(t(unlist(read_json("interviews_2004_03_29_287.json"))))
interviews_2004_06_18_296.json<- as.data.frame(t(unlist(read_json("interviews_2004_06_18_296.json"))))
interviews_2004_06_24_299.json<- as.data.frame(t(unlist(read_json("interviews_2004_06_24_299.json"))))
interviews_2004_07_5_298.json<- as.data.frame(t(unlist(read_json("interviews_2004_07_5_298.json"))))
interviews_2004_07_10_301.json<- as.data.frame(t(unlist(read_json("interviews_2004_07_10_301.json"))))
interviews_2004_07_22_302.json<- as.data.frame(t(unlist(read_json("interviews_2004_07_22_302.json"))))
interviews_2004_07_31_307.json<- as.data.frame(t(unlist(read_json("interviews_2004_07_31_307.json"))))
interviews_2004_11_19_314.json<- as.data.frame(t(unlist(read_json("interviews_2004_11_19_314.json"))))
interviews_2004_12_21_317.json<- as.data.frame(t(unlist(read_json("interviews_2004_12_21_317.json"))))
interviews_2005_01_10_321.json<- as.data.frame(t(unlist(read_json("interviews_2005_01_10_321.json"))))
interviews_2005_02_10_326.json<- as.data.frame(t(unlist(read_json("interviews_2005_02_10_326.json"))))
interviews_2005_02_27_328.json<- as.data.frame(t(unlist(read_json("interviews_2005_02_27_328.json"))))
interviews_2005_02_28_329.json<- as.data.frame(t(unlist(read_json("interviews_2005_02_28_329.json"))))
interviews_2005_04_12_334.json<- as.data.frame(t(unlist(read_json("interviews_2005_04_12_334.json"))))
interviews_2005_04_18_335.json<- as.data.frame(t(unlist(read_json("interviews_2005_04_18_335.json"))))
interviews_2005_05_24_340.json<- as.data.frame(t(unlist(read_json("interviews_2005_05_24_340.json"))))
interviews_2005_06_16_345.json<- as.data.frame(t(unlist(read_json("interviews_2005_06_16_345.json"))))
interviews_2005_06_26_348.json<- as.data.frame(t(unlist(read_json("interviews_2005_06_26_348.json"))))
interviews_2005_07_16_349.json<- as.data.frame(t(unlist(read_json("interviews_2005_07_16_349.json"))))
interviews_2005_08_4_354.json<- as.data.frame(t(unlist(read_json("interviews_2005_08_4_354.json"))))
interviews_2005_09_25_363.json<- as.data.frame(t(unlist(read_json("interviews_2005_09_25_363.json"))))
interviews_2005_09_26_362.json<- as.data.frame(t(unlist(read_json("interviews_2005_09_26_362.json"))))
interviews_2005_09_26_364.json<- as.data.frame(t(unlist(read_json("interviews_2005_09_26_364.json"))))
interviews_2005_09_26_369.json<- as.data.frame(t(unlist(read_json("interviews_2005_09_26_369.json"))))
interviews_2005_09_26_371.json<- as.data.frame(t(unlist(read_json("interviews_2005_09_26_371.json"))))
interviews_2005_10_1_365.json<- as.data.frame(t(unlist(read_json("interviews_2005_10_1_365.json"))))
interviews_2005_10_17_373.json<- as.data.frame(t(unlist(read_json("interviews_2005_10_17_373.json"))))
interviews_2005_11_4_376.json<- as.data.frame(t(unlist(read_json("interviews_2005_11_4_376.json"))))
interviews_2005_12_4_379.json<- as.data.frame(t(unlist(read_json("interviews_2005_12_4_379.json"))))
interviews_2005_12_9_380.json<- as.data.frame(t(unlist(read_json("interviews_2005_12_9_380.json"))))
interviews_2006_01_27_389.json<- as.data.frame(t(unlist(read_json("interviews_2006_01_27_389.json"))))
interviews_2006_02_10_392.json<- as.data.frame(t(unlist(read_json("interviews_2006_02_10_392.json"))))
interviews_2006_02_17_395.json<- as.data.frame(t(unlist(read_json("interviews_2006_02_17_395.json"))))
interviews_2006_02_22_394.json<- as.data.frame(t(unlist(read_json("interviews_2006_02_22_394.json"))))
interviews_2006_04_24_402.json<- as.data.frame(t(unlist(read_json("interviews_2006_04_24_402.json"))))
interviews_2006_04_27_405.json<- as.data.frame(t(unlist(read_json("interviews_2006_04_27_405.json"))))
interviews_2006_04_30_404.json<- as.data.frame(t(unlist(read_json("interviews_2006_04_30_404.json"))))
interviews_2006_07_11_411.json<- as.data.frame(t(unlist(read_json("interviews_2006_07_11_411.json"))))
interviews_2006_07_21_413.json<- as.data.frame(t(unlist(read_json("interviews_2006_07_21_413.json"))))
interviews_2006_08_1_414.json<- as.data.frame(t(unlist(read_json("interviews_2006_08_1_414.json"))))
interviews_2006_08_22_417.json<- as.data.frame(t(unlist(read_json("interviews_2006_08_22_417.json"))))
interviews_2006_08_23_418.json<- as.data.frame(t(unlist(read_json("interviews_2006_08_23_418.json"))))
interviews_2006_09_18_421.json<- as.data.frame(t(unlist(read_json("interviews_2006_09_18_421.json"))))
interviews_2006_09_19_420.json<- as.data.frame(t(unlist(read_json("interviews_2006_09_19_420.json"))))
interviews_2006_09_24_425.json<- as.data.frame(t(unlist(read_json("interviews_2006_09_24_425.json"))))
interviews_2006_09_25_424.json<- as.data.frame(t(unlist(read_json("interviews_2006_09_25_424.json"))))
interviews_2006_10_12_427.json<- as.data.frame(t(unlist(read_json("interviews_2006_10_12_427.json"))))
interviews_2006_10_18_428.json<- as.data.frame(t(unlist(read_json("interviews_2006_10_18_428.json"))))
interviews_2006_10_25_429.json<- as.data.frame(t(unlist(read_json("interviews_2006_10_25_429.json"))))
interviews_2006_10_25_430.json<- as.data.frame(t(unlist(read_json("interviews_2006_10_25_430.json"))))
interviews_2006_10_30_431.json<- as.data.frame(t(unlist(read_json("interviews_2006_10_30_431.json"))))
interviews_2006_11_29_434.json<- as.data.frame(t(unlist(read_json("interviews_2006_11_29_434.json"))))
interviews_2006_12_1_435.json<- as.data.frame(t(unlist(read_json("interviews_2006_12_1_435.json"))))
interviews_2006_12_15_440.json<- as.data.frame(t(unlist(read_json("interviews_2006_12_15_440.json"))))
interviews_2006_12_22_442.json<- as.data.frame(t(unlist(read_json("interviews_2006_12_22_442.json"))))
interviews_2006_12_23_447.json<- as.data.frame(t(unlist(read_json("interviews_2006_12_23_447.json"))))
interviews_2006_12_29_444.json<- as.data.frame(t(unlist(read_json("interviews_2006_12_29_444.json"))))
interviews_2006_12_30_443.json<- as.data.frame(t(unlist(read_json("interviews_2006_12_30_443.json"))))
interviews_2006_12_30_445.json<- as.data.frame(t(unlist(read_json("interviews_2006_12_30_445.json"))))
interviews_2007_01_11_452.json<- as.data.frame(t(unlist(read_json("interviews_2007_01_11_452.json"))))
interviews_2007_01_29_453.json<- as.data.frame(t(unlist(read_json("interviews_2007_01_29_453.json"))))
interviews_2007_02_6_456.json<- as.data.frame(t(unlist(read_json("interviews_2007_02_6_456.json"))))
interviews_2007_02_14_458.json<- as.data.frame(t(unlist(read_json("interviews_2007_02_14_458.json"))))
interviews_2007_03_1_460.json<- as.data.frame(t(unlist(read_json("interviews_2007_03_1_460.json"))))
interviews_2007_03_16_465.json<- as.data.frame(t(unlist(read_json("interviews_2007_03_16_465.json"))))
interviews_2007_04_20_471.json<- as.data.frame(t(unlist(read_json("interviews_2007_04_20_471.json"))))
interviews_2007_04_24_472.json<- as.data.frame(t(unlist(read_json("interviews_2007_04_24_472.json"))))
interviews_2007_05_29_477.json<- as.data.frame(t(unlist(read_json("interviews_2007_05_29_477.json"))))
interviews_2007_06_16_478.json<- as.data.frame(t(unlist(read_json("interviews_2007_06_16_478.json"))))
interviews_2007_06_28_480.json<- as.data.frame(t(unlist(read_json("interviews_2007_06_28_480.json"))))
interviews_2007_06_30_481.json<- as.data.frame(t(unlist(read_json("interviews_2007_06_30_481.json"))))
interviews_2007_07_10_482.json<- as.data.frame(t(unlist(read_json("interviews_2007_07_10_482.json"))))
interviews_2007_07_24_485.json<- as.data.frame(t(unlist(read_json("interviews_2007_07_24_485.json"))))
interviews_2007_08_1_491.json<- as.data.frame(t(unlist(read_json("interviews_2007_08_1_491.json"))))
interviews_2007_10_1_495.json<- as.data.frame(t(unlist(read_json("interviews_2007_10_1_495.json"))))
interviews_2007_10_6_496.json<- as.data.frame(t(unlist(read_json("interviews_2007_10_6_496.json"))))
interviews_2007_10_15_498.json<- as.data.frame(t(unlist(read_json("interviews_2007_10_15_498.json"))))
interviews_2007_10_18_504.json<- as.data.frame(t(unlist(read_json("interviews_2007_10_18_504.json"))))
interviews_2007_10_21_505.json<- as.data.frame(t(unlist(read_json("interviews_2007_10_21_505.json"))))
interviews_2007_10_23_502.json<- as.data.frame(t(unlist(read_json("interviews_2007_10_23_502.json"))))
interviews_2007_10_23_503.json<- as.data.frame(t(unlist(read_json("interviews_2007_10_23_503.json"))))
interviews_2007_11_22_512.json<- as.data.frame(t(unlist(read_json("interviews_2007_11_22_512.json"))))
interviews_2008_01_23_519.json<- as.data.frame(t(unlist(read_json("interviews_2008_01_23_519.json"))))
interviews_2008_01_26_520.json<- as.data.frame(t(unlist(read_json("interviews_2008_01_26_520.json"))))
interviews_2008_02_7_525.json<- as.data.frame(t(unlist(read_json("interviews_2008_02_7_525.json"))))
interviews_2008_02_11_523.json<- as.data.frame(t(unlist(read_json("interviews_2008_02_11_523.json"))))
interviews_2008_02_11_524.json<- as.data.frame(t(unlist(read_json("interviews_2008_02_11_524.json"))))
interviews_2008_02_11_538.json<- as.data.frame(t(unlist(read_json("interviews_2008_02_11_538.json"))))
interviews_2008_02_11_539.json<- as.data.frame(t(unlist(read_json("interviews_2008_02_11_539.json"))))
interviews_2008_02_15_528.json<- as.data.frame(t(unlist(read_json("interviews_2008_02_15_528.json"))))
interviews_2008_03_6_532.json<- as.data.frame(t(unlist(read_json("interviews_2008_03_6_532.json"))))
interviews_2008_03_19_549.json<- as.data.frame(t(unlist(read_json("interviews_2008_03_19_549.json"))))
interviews_2008_04_2_551.json<- as.data.frame(t(unlist(read_json("interviews_2008_04_2_551.json"))))
interviews_2008_04_15_559.json<- as.data.frame(t(unlist(read_json("interviews_2008_04_15_559.json"))))
interviews_2008_04_20_562.json<- as.data.frame(t(unlist(read_json("interviews_2008_04_20_562.json"))))
interviews_2008_04_21_563.json<- as.data.frame(t(unlist(read_json("interviews_2008_04_21_563.json"))))
interviews_2008_04_23_564.json<- as.data.frame(t(unlist(read_json("interviews_2008_04_23_564.json"))))
interviews_2008_05_16_567.json<- as.data.frame(t(unlist(read_json("interviews_2008_05_16_567.json"))))
interviews_2008_05_26_570.json<- as.data.frame(t(unlist(read_json("interviews_2008_05_26_570.json"))))
interviews_2008_05_27_569.json<- as.data.frame(t(unlist(read_json("interviews_2008_05_27_569.json"))))
interviews_2008_06_23_575.json<- as.data.frame(t(unlist(read_json("interviews_2008_06_23_575.json"))))
interviews_2008_07_4_580.json<- as.data.frame(t(unlist(read_json("interviews_2008_07_4_580.json"))))
interviews_2008_07_4_596.json<- as.data.frame(t(unlist(read_json("interviews_2008_07_4_596.json"))))
interviews_2008_08_9_587.json<- as.data.frame(t(unlist(read_json("interviews_2008_08_9_587.json"))))
interviews_2008_08_13_586.json<- as.data.frame(t(unlist(read_json("interviews_2008_08_13_586.json"))))
interviews_2008_11_3_614.json<- as.data.frame(t(unlist(read_json("interviews_2008_11_3_614.json"))))
interviews_2008_11_22_620.json<- as.data.frame(t(unlist(read_json("interviews_2008_11_22_620.json"))))
interviews_2008_11_26_619.json<- as.data.frame(t(unlist(read_json("interviews_2008_11_26_619.json"))))
interviews_2008_12_4_624.json<- as.data.frame(t(unlist(read_json("interviews_2008_12_4_624.json"))))
interviews_2008_12_12_625.json<- as.data.frame(t(unlist(read_json("interviews_2008_12_12_625.json"))))
interviews_2008_12_18_630.json<- as.data.frame(t(unlist(read_json("interviews_2008_12_18_630.json"))))
interviews_2008_12_18_631.json<- as.data.frame(t(unlist(read_json("interviews_2008_12_18_631.json"))))
interviews_2009_01_26_640.json<- as.data.frame(t(unlist(read_json("interviews_2009_01_26_640.json"))))
interviews_2009_01_31_642.json<- as.data.frame(t(unlist(read_json("interviews_2009_01_31_642.json"))))
interviews_2009_02_13_646.json<- as.data.frame(t(unlist(read_json("interviews_2009_02_13_646.json"))))
interviews_2009_02_25_647.json<- as.data.frame(t(unlist(read_json("interviews_2009_02_25_647.json"))))
interviews_2009_04_2_656.json<- as.data.frame(t(unlist(read_json("interviews_2009_04_2_656.json"))))
interviews_2009_04_24_661.json<- as.data.frame(t(unlist(read_json("interviews_2009_04_24_661.json"))))
interviews_2009_04_27_660.json<- as.data.frame(t(unlist(read_json("interviews_2009_04_27_660.json"))))
interviews_2009_05_15_664.json<- as.data.frame(t(unlist(read_json("interviews_2009_05_15_664.json"))))
interviews_2009_05_18_663.json<- as.data.frame(t(unlist(read_json("interviews_2009_05_18_663.json"))))
interviews_2009_06_3_666.json<- as.data.frame(t(unlist(read_json("interviews_2009_06_3_666.json"))))
interviews_2009_08_17_676.json<- as.data.frame(t(unlist(read_json("interviews_2009_08_17_676.json"))))
interviews_2009_08_20_678.json<- as.data.frame(t(unlist(read_json("interviews_2009_08_20_678.json"))))
interviews_2009_09_1_680.json<- as.data.frame(t(unlist(read_json("interviews_2009_09_1_680.json"))))
interviews_2009_09_12_681.json<- as.data.frame(t(unlist(read_json("interviews_2009_09_12_681.json"))))
interviews_2009_09_24_684.json<- as.data.frame(t(unlist(read_json("interviews_2009_09_24_684.json"))))
interviews_2009_10_1_687.json<- as.data.frame(t(unlist(read_json("interviews_2009_10_1_687.json"))))
interviews_2009_10_5_685.json<- as.data.frame(t(unlist(read_json("interviews_2009_10_5_685.json"))))
interviews_2009_10_5_686.json<- as.data.frame(t(unlist(read_json("interviews_2009_10_5_686.json"))))
interviews_2009_10_6_689.json<- as.data.frame(t(unlist(read_json("interviews_2009_10_6_689.json"))))
interviews_2009_11_13_694.json<- as.data.frame(t(unlist(read_json("interviews_2009_11_13_694.json"))))
interviews_2009_12_4_696.json<- as.data.frame(t(unlist(read_json("interviews_2009_12_4_696.json"))))
interviews_2009_12_11_697.json<- as.data.frame(t(unlist(read_json("interviews_2009_12_11_697.json"))))
interviews_2009_12_21_699.json<- as.data.frame(t(unlist(read_json("interviews_2009_12_21_699.json"))))
interviews_2009_12_30_701.json<- as.data.frame(t(unlist(read_json("interviews_2009_12_30_701.json"))))
interviews_2010_01_26_705.json<- as.data.frame(t(unlist(read_json("interviews_2010_01_26_705.json"))))
interviews_2010_02_5_712.json<- as.data.frame(t(unlist(read_json("interviews_2010_02_5_712.json"))))
interviews_2010_02_6_709.json<- as.data.frame(t(unlist(read_json("interviews_2010_02_6_709.json"))))
interviews_2010_02_22_715.json<- as.data.frame(t(unlist(read_json("interviews_2010_02_22_715.json"))))
interviews_2010_03_8_720.json<- as.data.frame(t(unlist(read_json("interviews_2010_03_8_720.json"))))
interviews_2010_03_17_724.json<- as.data.frame(t(unlist(read_json("interviews_2010_03_17_724.json"))))
interviews_2010_04_7_730.json<- as.data.frame(t(unlist(read_json("interviews_2010_04_7_730.json"))))
interviews_2010_04_10_732.json<- as.data.frame(t(unlist(read_json("interviews_2010_04_10_732.json"))))
interviews_2010_04_26_735.json<- as.data.frame(t(unlist(read_json("interviews_2010_04_26_735.json"))))
interviews_2010_04_29_739.json<- as.data.frame(t(unlist(read_json("interviews_2010_04_29_739.json"))))
interviews_2010_04_29_740.json<- as.data.frame(t(unlist(read_json("interviews_2010_04_29_740.json"))))
interviews_2010_05_11_741.json<- as.data.frame(t(unlist(read_json("interviews_2010_05_11_741.json"))))
interviews_2010_08_14_792.json<- as.data.frame(t(unlist(read_json("interviews_2010_08_14_792.json"))))
interviews_2010_10_21_765.json<- as.data.frame(t(unlist(read_json("interviews_2010_10_21_765.json"))))
interviews_2010_11_26_771.json<- as.data.frame(t(unlist(read_json("interviews_2010_11_26_771.json"))))
interviews_2010_12_1_770.json<- as.data.frame(t(unlist(read_json("interviews_2010_12_1_770.json"))))
interviews_2010_12_15_776.json<- as.data.frame(t(unlist(read_json("interviews_2010_12_15_776.json"))))
interviews_2011_01_01_860.json<- as.data.frame(t(unlist(read_json("interviews_2011_01_01_860.json"))))
interviews_2011_01_18_801.json<- as.data.frame(t(unlist(read_json("interviews_2011_01_18_801.json"))))
interviews_2011_02_3_808.json<- as.data.frame(t(unlist(read_json("interviews_2011_02_3_808.json"))))
interviews_2011_02_7_809.json<- as.data.frame(t(unlist(read_json("interviews_2011_02_7_809.json"))))
interviews_2011_02_14_811.json<- as.data.frame(t(unlist(read_json("interviews_2011_02_14_811.json"))))
interviews_2011_02_25_816.json<- as.data.frame(t(unlist(read_json("interviews_2011_02_25_816.json"))))
interviews_2011_03_10_819.json<- as.data.frame(t(unlist(read_json("interviews_2011_03_10_819.json"))))
interviews_2011_03_14_820.json<- as.data.frame(t(unlist(read_json("interviews_2011_03_14_820.json"))))
interviews_2011_03_15_824.json<- as.data.frame(t(unlist(read_json("interviews_2011_03_15_824.json"))))
interviews_2011_03_18_822.json<- as.data.frame(t(unlist(read_json("interviews_2011_03_18_822.json"))))
interviews_2011_03_30_828.json<- as.data.frame(t(unlist(read_json("interviews_2011_03_30_828.json"))))
interviews_2011_04_10_830.json<- as.data.frame(t(unlist(read_json("interviews_2011_04_10_830.json"))))
interviews_2011_04_12_831.json<- as.data.frame(t(unlist(read_json("interviews_2011_04_12_831.json"))))
interviews_2011_04_13_832.json<- as.data.frame(t(unlist(read_json("interviews_2011_04_13_832.json"))))
interviews_2011_04_17_838.json<- as.data.frame(t(unlist(read_json("interviews_2011_04_17_838.json"))))
interviews_2011_04_27_837.json<- as.data.frame(t(unlist(read_json("interviews_2011_04_27_837.json"))))
interviews_2011_05_10_843.json<- as.data.frame(t(unlist(read_json("interviews_2011_05_10_843.json"))))
interviews_2011_05_26_848.json<- as.data.frame(t(unlist(read_json("interviews_2011_05_26_848.json"))))
interviews_2011_06_8_852.json<- as.data.frame(t(unlist(read_json("interviews_2011_06_8_852.json"))))
interviews_2011_06_12_854.json<- as.data.frame(t(unlist(read_json("interviews_2011_06_12_854.json"))))
interviews_2011_06_21_855.json<- as.data.frame(t(unlist(read_json("interviews_2011_06_21_855.json"))))
interviews_2011_06_29_857.json<- as.data.frame(t(unlist(read_json("interviews_2011_06_29_857.json"))))
interviews_2011_07_14_863.json<- as.data.frame(t(unlist(read_json("interviews_2011_07_14_863.json"))))
interviews_2011_07_21_870.json<- as.data.frame(t(unlist(read_json("interviews_2011_07_21_870.json"))))
interviews_2011_09_7_882.json<- as.data.frame(t(unlist(read_json("interviews_2011_09_7_882.json"))))
interviews_2011_09_19_885.json<- as.data.frame(t(unlist(read_json("interviews_2011_09_19_885.json"))))
interviews_2011_09_26_888.json<- as.data.frame(t(unlist(read_json("interviews_2011_09_26_888.json"))))
interviews_2011_10_13_896.json<- as.data.frame(t(unlist(read_json("interviews_2011_10_13_896.json"))))
interviews_2011_10_14_895.json<- as.data.frame(t(unlist(read_json("interviews_2011_10_14_895.json"))))
interviews_2011_10_17_897.json<- as.data.frame(t(unlist(read_json("interviews_2011_10_17_897.json"))))
interviews_2011_10_23_899.json<- as.data.frame(t(unlist(read_json("interviews_2011_10_23_899.json"))))
interviews_2011_11_26_906.json<- as.data.frame(t(unlist(read_json("interviews_2011_11_26_906.json"))))
interviews_2011_11_28_907.json<- as.data.frame(t(unlist(read_json("interviews_2011_11_28_907.json"))))
interviews_2011_12_11_910.json<- as.data.frame(t(unlist(read_json("interviews_2011_12_11_910.json"))))
interviews_2011_12_12_911.json<- as.data.frame(t(unlist(read_json("interviews_2011_12_12_911.json"))))
interviews_2011_12_20_912.json<- as.data.frame(t(unlist(read_json("interviews_2011_12_20_912.json"))))
interviews_2011_12_23_916.json<- as.data.frame(t(unlist(read_json("interviews_2011_12_23_916.json"))))
interviews_2011_12_30_921.json<- as.data.frame(t(unlist(read_json("interviews_2011_12_30_921.json"))))
interviews_2012_01_01_977.json<- as.data.frame(t(unlist(read_json("interviews_2012_01_01_977.json"))))
interviews_2012_01_2_919.json<- as.data.frame(t(unlist(read_json("interviews_2012_01_2_919.json"))))
interviews_2012_01_2_920.json<- as.data.frame(t(unlist(read_json("interviews_2012_01_2_920.json"))))
interviews_2012_01_21_925.json<- as.data.frame(t(unlist(read_json("interviews_2012_01_21_925.json"))))
interviews_2012_02_1_929.json<- as.data.frame(t(unlist(read_json("interviews_2012_02_1_929.json"))))
interviews_2012_02_6_933.json<- as.data.frame(t(unlist(read_json("interviews_2012_02_6_933.json"))))
interviews_2012_02_15_934.json<- as.data.frame(t(unlist(read_json("interviews_2012_02_15_934.json"))))
interviews_2012_02_18_935.json<- as.data.frame(t(unlist(read_json("interviews_2012_02_18_935.json"))))
interviews_2012_02_27_939.json<- as.data.frame(t(unlist(read_json("interviews_2012_02_27_939.json"))))
interviews_2012_03_2_941.json<- as.data.frame(t(unlist(read_json("interviews_2012_03_2_941.json"))))
interviews_2012_03_13_942.json<- as.data.frame(t(unlist(read_json("interviews_2012_03_13_942.json"))))
interviews_2012_03_14_945.json<- as.data.frame(t(unlist(read_json("interviews_2012_03_14_945.json"))))
interviews_2012_03_19_947.json<- as.data.frame(t(unlist(read_json("interviews_2012_03_19_947.json"))))
interviews_2012_03_20_946.json<- as.data.frame(t(unlist(read_json("interviews_2012_03_20_946.json"))))
interviews_2012_04_23_952.json<- as.data.frame(t(unlist(read_json("interviews_2012_04_23_952.json"))))
interviews_2012_04_23_953.json<- as.data.frame(t(unlist(read_json("interviews_2012_04_23_953.json"))))
interviews_2012_05_5_956.json<- as.data.frame(t(unlist(read_json("interviews_2012_05_5_956.json"))))
interviews_2012_05_12_958.json<- as.data.frame(t(unlist(read_json("interviews_2012_05_12_958.json"))))
interviews_2012_05_13_959.json<- as.data.frame(t(unlist(read_json("interviews_2012_05_13_959.json"))))
interviews_2012_05_18_963.json<- as.data.frame(t(unlist(read_json("interviews_2012_05_18_963.json"))))
interviews_2012_05_20_962.json<- as.data.frame(t(unlist(read_json("interviews_2012_05_20_962.json"))))
interviews_2012_06_2_964.json<- as.data.frame(t(unlist(read_json("interviews_2012_06_2_964.json"))))
interviews_2012_06_22_969.json<- as.data.frame(t(unlist(read_json("interviews_2012_06_22_969.json"))))
interviews_2012_07_2_971.json<- as.data.frame(t(unlist(read_json("interviews_2012_07_2_971.json"))))
interviews_2012_08_14_979.json<- as.data.frame(t(unlist(read_json("interviews_2012_08_14_979.json"))))
interviews_2012_09_1_985.json<- as.data.frame(t(unlist(read_json("interviews_2012_09_1_985.json"))))
interviews_2012_09_26_992.json<- as.data.frame(t(unlist(read_json("interviews_2012_09_26_992.json"))))
interviews_2012_09_28_994.json<- as.data.frame(t(unlist(read_json("interviews_2012_09_28_994.json"))))
interviews_2012_10_4_996.json<- as.data.frame(t(unlist(read_json("interviews_2012_10_4_996.json"))))
interviews_2012_10_15_998.json<- as.data.frame(t(unlist(read_json("interviews_2012_10_15_998.json"))))
interviews_2012_10_23_1000.json<- as.data.frame(t(unlist(read_json("interviews_2012_10_23_1000.json"))))
interviews_2012_10_27_1004.json<- as.data.frame(t(unlist(read_json("interviews_2012_10_27_1004.json"))))
interviews_2012_11_2_1006.json<- as.data.frame(t(unlist(read_json("interviews_2012_11_2_1006.json"))))
interviews_2012_11_10_1008.json<- as.data.frame(t(unlist(read_json("interviews_2012_11_10_1008.json"))))
interviews_2012_11_10_1009.json<- as.data.frame(t(unlist(read_json("interviews_2012_11_10_1009.json"))))
interviews_2012_11_29_1014.json<- as.data.frame(t(unlist(read_json("interviews_2012_11_29_1014.json"))))
interviews_2012_12_8_1013.json<- as.data.frame(t(unlist(read_json("interviews_2012_12_8_1013.json"))))
interviews_2012_12_9_1015.json<- as.data.frame(t(unlist(read_json("interviews_2012_12_9_1015.json"))))
interviews_2012_12_22_1017.json<- as.data.frame(t(unlist(read_json("interviews_2012_12_22_1017.json"))))
interviews_2012_12_30_1018.json<- as.data.frame(t(unlist(read_json("interviews_2012_12_30_1018.json"))))
interviews_2013_01_01_1071.json<- as.data.frame(t(unlist(read_json("interviews_2013_01_01_1071.json"))))
interviews_2013_01_17_1021.json<- as.data.frame(t(unlist(read_json("interviews_2013_01_17_1021.json"))))
interviews_2013_01_28_1023.json<- as.data.frame(t(unlist(read_json("interviews_2013_01_28_1023.json"))))
interviews_2013_01_31_1024.json<- as.data.frame(t(unlist(read_json("interviews_2013_01_31_1024.json"))))
interviews_2013_02_5_1026.json<- as.data.frame(t(unlist(read_json("interviews_2013_02_5_1026.json"))))
interviews_2013_03_18_1030.json<- as.data.frame(t(unlist(read_json("interviews_2013_03_18_1030.json"))))
interviews_2013_03_21_1032.json<- as.data.frame(t(unlist(read_json("interviews_2013_03_21_1032.json"))))
interviews_2013_03_26_1031.json<- as.data.frame(t(unlist(read_json("interviews_2013_03_26_1031.json"))))
interviews_2013_04_15_1038.json<- as.data.frame(t(unlist(read_json("interviews_2013_04_15_1038.json"))))
interviews_2013_04_15_1039.json<- as.data.frame(t(unlist(read_json("interviews_2013_04_15_1039.json"))))
interviews_2013_04_17_1042.json<- as.data.frame(t(unlist(read_json("interviews_2013_04_17_1042.json"))))
interviews_2013_04_18_1043.json<- as.data.frame(t(unlist(read_json("interviews_2013_04_18_1043.json"))))
interviews_2013_04_22_1044.json<- as.data.frame(t(unlist(read_json("interviews_2013_04_22_1044.json"))))
interviews_2013_05_9_1046.json<- as.data.frame(t(unlist(read_json("interviews_2013_05_9_1046.json"))))
interviews_2013_05_19_1047.json<- as.data.frame(t(unlist(read_json("interviews_2013_05_19_1047.json"))))
interviews_2013_05_21_1048.json<- as.data.frame(t(unlist(read_json("interviews_2013_05_21_1048.json"))))
interviews_2013_05_23_1049.json<- as.data.frame(t(unlist(read_json("interviews_2013_05_23_1049.json"))))
interviews_2013_06_21_1056.json<- as.data.frame(t(unlist(read_json("interviews_2013_06_21_1056.json"))))
interviews_2013_06_24_1054.json<- as.data.frame(t(unlist(read_json("interviews_2013_06_24_1054.json"))))
interviews_2013_07_18_1060.json<- as.data.frame(t(unlist(read_json("interviews_2013_07_18_1060.json"))))
interviews_2013_08_14_1069.json<- as.data.frame(t(unlist(read_json("interviews_2013_08_14_1069.json"))))
interviews_2013_08_26_1072.json<- as.data.frame(t(unlist(read_json("interviews_2013_08_26_1072.json"))))
interviews_2013_09_7_1074.json<- as.data.frame(t(unlist(read_json("interviews_2013_09_7_1074.json"))))
interviews_2013_09_29_1079.json<- as.data.frame(t(unlist(read_json("interviews_2013_09_29_1079.json"))))
interviews_2013_10_23_1085.json<- as.data.frame(t(unlist(read_json("interviews_2013_10_23_1085.json"))))
interviews_2013_11_4_1091.json<- as.data.frame(t(unlist(read_json("interviews_2013_11_4_1091.json"))))
interviews_2013_11_17_1095.json<- as.data.frame(t(unlist(read_json("interviews_2013_11_17_1095.json"))))
interviews_2013_11_21_1097.json<- as.data.frame(t(unlist(read_json("interviews_2013_11_21_1097.json"))))
interviews_2013_11_25_1098.json<- as.data.frame(t(unlist(read_json("interviews_2013_11_25_1098.json"))))
interviews_2013_12_4_1105.json<- as.data.frame(t(unlist(read_json("interviews_2013_12_4_1105.json"))))
interviews_2013_12_8_1101.json<- as.data.frame(t(unlist(read_json("interviews_2013_12_8_1101.json"))))
interviews_2013_12_21_1111.json<- as.data.frame(t(unlist(read_json("interviews_2013_12_21_1111.json"))))
interviews_2013_12_28_1112.json<- as.data.frame(t(unlist(read_json("interviews_2013_12_28_1112.json"))))
interviews_2014_01_01_1115.json<- as.data.frame(t(unlist(read_json("interviews_2014_01_01_1115.json"))))
interviews_2014_01_07_1118.json<- as.data.frame(t(unlist(read_json("interviews_2014_01_07_1118.json"))))
interviews_2014_01_31_1123.json<- as.data.frame(t(unlist(read_json("interviews_2014_01_31_1123.json"))))
interviews_2014_02_19_1124.json<- as.data.frame(t(unlist(read_json("interviews_2014_02_19_1124.json"))))
interviews_2014_02_19_1126.json<- as.data.frame(t(unlist(read_json("interviews_2014_02_19_1126.json"))))
interviews_2014_02_24_1127.json<- as.data.frame(t(unlist(read_json("interviews_2014_02_24_1127.json"))))
interviews_2014_02_26_1130.json<- as.data.frame(t(unlist(read_json("interviews_2014_02_26_1130.json"))))
interviews_2014_03_20_1134.json<- as.data.frame(t(unlist(read_json("interviews_2014_03_20_1134.json"))))
interviews_2014_03_21_1135.json<- as.data.frame(t(unlist(read_json("interviews_2014_03_21_1135.json"))))
interviews_2014_03_25_1133.json<- as.data.frame(t(unlist(read_json("interviews_2014_03_25_1133.json"))))
interviews_2014_04_14_1137.json<- as.data.frame(t(unlist(read_json("interviews_2014_04_14_1137.json"))))
interviews_2014_05_18_1140.json<- as.data.frame(t(unlist(read_json("interviews_2014_05_18_1140.json"))))
interviews_2014_05_22_1142.json<- as.data.frame(t(unlist(read_json("interviews_2014_05_22_1142.json"))))
interviews_2014_06_26_1148.json<- as.data.frame(t(unlist(read_json("interviews_2014_06_26_1148.json"))))
interviews_2014_07_13_1153.json<- as.data.frame(t(unlist(read_json("interviews_2014_07_13_1153.json"))))
interviews_2014_07_14_1154.json<- as.data.frame(t(unlist(read_json("interviews_2014_07_14_1154.json"))))
interviews_2014_07_30_1156.json<- as.data.frame(t(unlist(read_json("interviews_2014_07_30_1156.json"))))
interviews_2014_08_14_1161.json<- as.data.frame(t(unlist(read_json("interviews_2014_08_14_1161.json"))))
interviews_2014_08_22_1162.json<- as.data.frame(t(unlist(read_json("interviews_2014_08_22_1162.json"))))
interviews_2014_09_15_1165.json<- as.data.frame(t(unlist(read_json("interviews_2014_09_15_1165.json"))))
interviews_2014_09_22_1169.json<- as.data.frame(t(unlist(read_json("interviews_2014_09_22_1169.json"))))
interviews_2014_09_25_1173.json<- as.data.frame(t(unlist(read_json("interviews_2014_09_25_1173.json"))))
interviews_2014_10_11_1178.json<- as.data.frame(t(unlist(read_json("interviews_2014_10_11_1178.json"))))
interviews_2014_10_13_1180.json<- as.data.frame(t(unlist(read_json("interviews_2014_10_13_1180.json"))))
interviews_2014_10_27_1184.json<- as.data.frame(t(unlist(read_json("interviews_2014_10_27_1184.json"))))
interviews_2014_11_8_1186.json<- as.data.frame(t(unlist(read_json("interviews_2014_11_8_1186.json"))))
interviews_2014_11_10_1187.json<- as.data.frame(t(unlist(read_json("interviews_2014_11_10_1187.json"))))
interviews_2014_11_14_1188.json<- as.data.frame(t(unlist(read_json("interviews_2014_11_14_1188.json"))))
interviews_2014_12_28_1192.json<- as.data.frame(t(unlist(read_json("interviews_2014_12_28_1192.json"))))
interviews_2015_01_2_1193.json<- as.data.frame(t(unlist(read_json("interviews_2015_01_2_1193.json"))))
interviews_2015_01_25_1199.json<- as.data.frame(t(unlist(read_json("interviews_2015_01_25_1199.json"))))
interviews_2015_01_28_1200.json<- as.data.frame(t(unlist(read_json("interviews_2015_01_28_1200.json"))))
interviews_2015_01_28_1201.json<- as.data.frame(t(unlist(read_json("interviews_2015_01_28_1201.json"))))
interviews_2015_02_5_1204.json<- as.data.frame(t(unlist(read_json("interviews_2015_02_5_1204.json"))))
interviews_2015_02_9_1205.json<- as.data.frame(t(unlist(read_json("interviews_2015_02_9_1205.json"))))
interviews_2015_02_25_1207.json<- as.data.frame(t(unlist(read_json("interviews_2015_02_25_1207.json"))))
interviews_2015_02_26_1208.json<- as.data.frame(t(unlist(read_json("interviews_2015_02_26_1208.json"))))
interviews_2015_03_11_1212.json<- as.data.frame(t(unlist(read_json("interviews_2015_03_11_1212.json"))))
interviews_2015_03_16_1213.json<- as.data.frame(t(unlist(read_json("interviews_2015_03_16_1213.json"))))
interviews_2015_03_28_1216.json<- as.data.frame(t(unlist(read_json("interviews_2015_03_28_1216.json"))))
interviews_2015_03_28_1218.json<- as.data.frame(t(unlist(read_json("interviews_2015_03_28_1218.json"))))
interviews_2015_05_8_1227.json<- as.data.frame(t(unlist(read_json("interviews_2015_05_8_1227.json"))))
interviews_2015_05_8_1228.json<- as.data.frame(t(unlist(read_json("interviews_2015_05_8_1228.json"))))
interviews_2015_06_1_1229.json<- as.data.frame(t(unlist(read_json("interviews_2015_06_1_1229.json"))))
interviews_2015_06_13_1234.json<- as.data.frame(t(unlist(read_json("interviews_2015_06_13_1234.json"))))
interviews_2015_06_18_1236.json<- as.data.frame(t(unlist(read_json("interviews_2015_06_18_1236.json"))))
interviews_2015_07_25_1242.json<- as.data.frame(t(unlist(read_json("interviews_2015_07_25_1242.json"))))
interviews_2015_08_1_1243.json<- as.data.frame(t(unlist(read_json("interviews_2015_08_1_1243.json"))))
interviews_2015_08_25_1246.json<- as.data.frame(t(unlist(read_json("interviews_2015_08_25_1246.json"))))
interviews_2015_09_4_1249.json<- as.data.frame(t(unlist(read_json("interviews_2015_09_4_1249.json"))))
interviews_2015_09_14_1251.json<- as.data.frame(t(unlist(read_json("interviews_2015_09_14_1251.json"))))
interviews_2015_09_21_1255.json<- as.data.frame(t(unlist(read_json("interviews_2015_09_21_1255.json"))))
interviews_2015_10_2_1258.json<- as.data.frame(t(unlist(read_json("interviews_2015_10_2_1258.json"))))
interviews_2015_10_9_1260.json<- as.data.frame(t(unlist(read_json("interviews_2015_10_9_1260.json"))))
interviews_2015_10_15_1082.json<- as.data.frame(t(unlist(read_json("interviews_2015_10_15_1082.json"))))
interviews_2015_11_2_1266.json<- as.data.frame(t(unlist(read_json("interviews_2015_11_2_1266.json"))))
interviews_2015_11_9_1268.json<- as.data.frame(t(unlist(read_json("interviews_2015_11_9_1268.json"))))
interviews_2015_11_18_1272.json<- as.data.frame(t(unlist(read_json("interviews_2015_11_18_1272.json"))))
interviews_2015_11_21_1273.json<- as.data.frame(t(unlist(read_json("interviews_2015_11_21_1273.json"))))
interviews_2015_11_26_1274.json<- as.data.frame(t(unlist(read_json("interviews_2015_11_26_1274.json"))))
interviews_2015_12_9_1276.json<- as.data.frame(t(unlist(read_json("interviews_2015_12_9_1276.json"))))
interviews_2015_12_10_1278.json<- as.data.frame(t(unlist(read_json("interviews_2015_12_10_1278.json"))))
interviews_2015_12_15_1277.json<- as.data.frame(t(unlist(read_json("interviews_2015_12_15_1277.json"))))
interviews_2015_12_23_1282.json<- as.data.frame(t(unlist(read_json("interviews_2015_12_23_1282.json"))))
interviews_2016_01_15_1288.json<- as.data.frame(t(unlist(read_json("interviews_2016_01_15_1288.json"))))
interviews_2016_01_29_1291.json<- as.data.frame(t(unlist(read_json("interviews_2016_01_29_1291.json"))))
interviews_2016_02_4_1293.json<- as.data.frame(t(unlist(read_json("interviews_2016_02_4_1293.json"))))
interviews_2016_02_26_1299.json<- as.data.frame(t(unlist(read_json("interviews_2016_02_26_1299.json"))))
interviews_2016_03_1_1300.json<- as.data.frame(t(unlist(read_json("interviews_2016_03_1_1300.json"))))
interviews_2016_03_19_1302.json<- as.data.frame(t(unlist(read_json("interviews_2016_03_19_1302.json"))))
interviews_2016_03_30_1306.json<- as.data.frame(t(unlist(read_json("interviews_2016_03_30_1306.json"))))
interviews_2016_04_9_1308.json<- as.data.frame(t(unlist(read_json("interviews_2016_04_9_1308.json"))))
interviews_2016_04_19_1309.json<- as.data.frame(t(unlist(read_json("interviews_2016_04_19_1309.json"))))
interviews_2016_04_29_1330.json<- as.data.frame(t(unlist(read_json("interviews_2016_04_29_1330.json"))))
interviews_2016_05_17_1335.json<- as.data.frame(t(unlist(read_json("interviews_2016_05_17_1335.json"))))
interviews_2016_06_3_1326.json<- as.data.frame(t(unlist(read_json("interviews_2016_06_3_1326.json"))))
interviews_2016_07_2_1349.json<- as.data.frame(t(unlist(read_json("interviews_2016_07_2_1349.json"))))
interviews_2016_07_22_1355.json<- as.data.frame(t(unlist(read_json("interviews_2016_07_22_1355.json"))))
interviews_2016_07_29_1357.json<- as.data.frame(t(unlist(read_json("interviews_2016_07_29_1357.json"))))
interviews_2016_08_1_1356.json<- as.data.frame(t(unlist(read_json("interviews_2016_08_1_1356.json"))))
interviews_2016_08_4_1358.json<- as.data.frame(t(unlist(read_json("interviews_2016_08_4_1358.json"))))
interviews_2016_08_6_1359.json<- as.data.frame(t(unlist(read_json("interviews_2016_08_6_1359.json"))))
interviews_2016_08_26_1362.json<- as.data.frame(t(unlist(read_json("interviews_2016_08_26_1362.json"))))
interviews_2016_09_2_1363.json<- as.data.frame(t(unlist(read_json("interviews_2016_09_2_1363.json"))))
interviews_2016_09_19_1368.json<- as.data.frame(t(unlist(read_json("interviews_2016_09_19_1368.json"))))
interviews_2016_10_11_1373.json<- as.data.frame(t(unlist(read_json("interviews_2016_10_11_1373.json"))))
interviews_2016_10_27_1378.json<- as.data.frame(t(unlist(read_json("interviews_2016_10_27_1378.json"))))
interviews_2016_11_3_1381.json<- as.data.frame(t(unlist(read_json("interviews_2016_11_3_1381.json"))))
interviews_2016_11_17_1383.json<- as.data.frame(t(unlist(read_json("interviews_2016_11_17_1383.json"))))
interviews_2016_11_25_1385.json<- as.data.frame(t(unlist(read_json("interviews_2016_11_25_1385.json"))))
interviews_2016_11_29_1387.json<- as.data.frame(t(unlist(read_json("interviews_2016_11_29_1387.json"))))
interviews_2016_12_6_1388.json<- as.data.frame(t(unlist(read_json("interviews_2016_12_6_1388.json"))))
interviews_2016_12_11_1390.json<- as.data.frame(t(unlist(read_json("interviews_2016_12_11_1390.json"))))
interviews_2016_12_19_1392.json<- as.data.frame(t(unlist(read_json("interviews_2016_12_19_1392.json"))))
interviews_2016_12_27_1395.json<- as.data.frame(t(unlist(read_json("interviews_2016_12_27_1395.json"))))
interviews_2017_01_20_1406.json<- as.data.frame(t(unlist(read_json("interviews_2017_01_20_1406.json"))))
interviews_2017_01_30_1409.json<- as.data.frame(t(unlist(read_json("interviews_2017_01_30_1409.json"))))
interviews_2017_02_8_1410.json<- as.data.frame(t(unlist(read_json("interviews_2017_02_8_1410.json"))))
interviews_2017_02_16_1414.json<- as.data.frame(t(unlist(read_json("interviews_2017_02_16_1414.json"))))
interviews_2017_02_16_1415.json<- as.data.frame(t(unlist(read_json("interviews_2017_02_16_1415.json"))))
interviews_2017_02_26_1417.json<- as.data.frame(t(unlist(read_json("interviews_2017_02_26_1417.json"))))
interviews_2017_03_14_1421.json<- as.data.frame(t(unlist(read_json("interviews_2017_03_14_1421.json"))))
interviews_2017_03_16_1424.json<- as.data.frame(t(unlist(read_json("interviews_2017_03_16_1424.json"))))
interviews_2017_03_29_1425.json<- as.data.frame(t(unlist(read_json("interviews_2017_03_29_1425.json"))))
interviews_2017_04_6_1429.json<- as.data.frame(t(unlist(read_json("interviews_2017_04_6_1429.json"))))
interviews_2017_04_8_1430.json<- as.data.frame(t(unlist(read_json("interviews_2017_04_8_1430.json"))))
interviews_2017_04_19_1432.json<- as.data.frame(t(unlist(read_json("interviews_2017_04_19_1432.json"))))
interviews_2017_05_20_1443.json<- as.data.frame(t(unlist(read_json("interviews_2017_05_20_1443.json"))))
interviews_2017_06_13_1450.json<- as.data.frame(t(unlist(read_json("interviews_2017_06_13_1450.json"))))
interviews_2017_06_22_1457.json<- as.data.frame(t(unlist(read_json("interviews_2017_06_22_1457.json"))))
interviews_2017_06_25_1454.json<- as.data.frame(t(unlist(read_json("interviews_2017_06_25_1454.json"))))
interviews_2017_06_28_1458.json<- as.data.frame(t(unlist(read_json("interviews_2017_06_28_1458.json"))))
interviews_2017_07_24_1476.json<- as.data.frame(t(unlist(read_json("interviews_2017_07_24_1476.json"))))
interviews_2017_07_31_1477.json<- as.data.frame(t(unlist(read_json("interviews_2017_07_31_1477.json"))))
interviews_2017_08_19_1481.json<- as.data.frame(t(unlist(read_json("interviews_2017_08_19_1481.json"))))
interviews_2017_08_24_1459.json<- as.data.frame(t(unlist(read_json("interviews_2017_08_24_1459.json"))))
interviews_2017_10_11_1467.json<- as.data.frame(t(unlist(read_json("interviews_2017_10_11_1467.json"))))
interviews_2017_10_13_1469.json<- as.data.frame(t(unlist(read_json("interviews_2017_10_13_1469.json"))))
interviews_2017_10_17_1471.json<- as.data.frame(t(unlist(read_json("interviews_2017_10_17_1471.json"))))
interviews_2017_11_3_1485.json<- as.data.frame(t(unlist(read_json("interviews_2017_11_3_1485.json"))))
interviews_2017_11_11_1487.json<- as.data.frame(t(unlist(read_json("interviews_2017_11_11_1487.json"))))
interviews_2017_12_1_1491.json<- as.data.frame(t(unlist(read_json("interviews_2017_12_1_1491.json"))))
interviews_2017_12_8_1493.json<- as.data.frame(t(unlist(read_json("interviews_2017_12_8_1493.json"))))
interviews_2017_12_12_1494.json<- as.data.frame(t(unlist(read_json("interviews_2017_12_12_1494.json"))))
interviews_2017_12_23_1499.json<- as.data.frame(t(unlist(read_json("interviews_2017_12_23_1499.json"))))
interviews_2018_01_7_1501.json<- as.data.frame(t(unlist(read_json("interviews_2018_01_7_1501.json"))))
interviews_2018_01_17_1503.json<- as.data.frame(t(unlist(read_json("interviews_2018_01_17_1503.json"))))
interviews_2018_01_27_1508.json<- as.data.frame(t(unlist(read_json("interviews_2018_01_27_1508.json"))))
interviews_2018_02_19_1516.json<- as.data.frame(t(unlist(read_json("interviews_2018_02_19_1516.json"))))
interviews_2018_03_14_1518.json<- as.data.frame(t(unlist(read_json("interviews_2018_03_14_1518.json"))))
interviews_2018_03_19_1519.json<- as.data.frame(t(unlist(read_json("interviews_2018_03_19_1519.json"))))
interviews_2018_03_27_1522.json<- as.data.frame(t(unlist(read_json("interviews_2018_03_27_1522.json"))))
interviews_2018_03_29_1524.json<- as.data.frame(t(unlist(read_json("interviews_2018_03_29_1524.json"))))
interviews_2018_04_24_1528.json<- as.data.frame(t(unlist(read_json("interviews_2018_04_24_1528.json"))))
interviews_2018_04_28_1529.json<- as.data.frame(t(unlist(read_json("interviews_2018_04_28_1529.json"))))
interviews_2018_04_28_1531.json<- as.data.frame(t(unlist(read_json("interviews_2018_04_28_1531.json"))))
interviews_2018_04_30_1530.json<- as.data.frame(t(unlist(read_json("interviews_2018_04_30_1530.json"))))
interviews_2018_05_19_1535.json<- as.data.frame(t(unlist(read_json("interviews_2018_05_19_1535.json"))))
interviews_2018_06_20_1550.json<- as.data.frame(t(unlist(read_json("interviews_2018_06_20_1550.json"))))
interviews_2018_08_19_1565.json<- as.data.frame(t(unlist(read_json("interviews_2018_08_19_1565.json"))))
interviews_2018_08_25_1567.json<- as.data.frame(t(unlist(read_json("interviews_2018_08_25_1567.json"))))
interviews_2018_09_10_1574.json<- as.data.frame(t(unlist(read_json("interviews_2018_09_10_1574.json"))))
interviews_2018_09_15_1578.json<- as.data.frame(t(unlist(read_json("interviews_2018_09_15_1578.json"))))
interviews_2018_09_17_1576.json<- as.data.frame(t(unlist(read_json("interviews_2018_09_17_1576.json"))))
interviews_2018_09_21_1580.json<- as.data.frame(t(unlist(read_json("interviews_2018_09_21_1580.json"))))
interviews_2018_10_2_1582.json<- as.data.frame(t(unlist(read_json("interviews_2018_10_2_1582.json"))))
interviews_2018_11_4_1593.json<- as.data.frame(t(unlist(read_json("interviews_2018_11_4_1593.json"))))
interviews_2018_11_13_1596.json<- as.data.frame(t(unlist(read_json("interviews_2018_11_13_1596.json"))))




Master_1 <- bind_rows(interviews_02_10_2018_13.json,
                      interviews_04_04_2019_8.json,
                      interviews_04_11_2018_12.json,
                      interviews_09_07_2019_3.json,
                      interviews_09_11_2018_11.json,
                      interviews_10_09_2018_17.json,
                      interviews_12_07_2019_2.json,
                      interviews_13_05_2019_6.json,
                      interviews_13_11_2018_10.json,
                      interviews_14_09_2019_40.json,
                      interviews_15_04_2019_7.json,
                      interviews_15_09_2018_16.json,
                      interviews_16_12_2019_38.json,
                      interviews_17_05_2019_5.json,
                      interviews_17_09_2018_15.json,
                      interviews_19_08_2018_18.json,
                      interviews_21_09_2018_14.json,
                      interviews_23_06_2019_4.json,
                      interviews_23_12_2018_9.json,
                      interviews_25_08_2019_1.json,
                      interviews_27_07_2012_19.json,
                      interviews_28_10_2019_39.json,
                      interviews_1999_01_14_1.json,
                      interviews_1999_01_15_2.json,
                      interviews_1999_01_19_3.json,
                      interviews_1999_01_24_5.json,
                      interviews_1999_01_27_7.json,
                      interviews_1999_02_7_8.json,
                      interviews_1999_02_26_12.json,
                      interviews_1999_02_27_11.json,
                      interviews_1999_04_3_13.json,
                      interviews_1999_04_13_17.json,
                      interviews_1999_04_20_19.json,
                      interviews_1999_04_30_20.json,
                      interviews_1999_04_30_21.json,
                      interviews_1999_05_1_23.json,
                      interviews_1999_05_14_26.json,
                      interviews_1999_05_15_28.json,
                      interviews_1999_06_1_29.json,
                      interviews_1999_08_18_34.json,
                      interviews_1999_08_20_35.json,
                      interviews_1999_08_27_39.json,
                      interviews_1999_09_1_38.json,
                      interviews_1999_09_2_40.json,
                      interviews_1999_09_2_41.json,
                      interviews_1999_09_5_44.json,
                      interviews_1999_09_9_43.json,
                      interviews_1999_09_11_45.json,
                      interviews_1999_11_16_46.json,
                      interviews_1999_12_29_52.json,
                      interviews_2000_01_1_66.json,
                      interviews_2000_01_1_81.json,
                      interviews_2000_01_1_87.json,
                      interviews_2000_01_2_50.json,
                      interviews_2000_01_10_53.json,
                      interviews_2000_01_19_55.json,
                      interviews_2000_02_21_62.json,
                      interviews_2000_02_22_64.json,
                      interviews_2000_02_28_65.json,
                      interviews_2000_03_17_68.json,
                      interviews_2000_04_11_71.json,
                      interviews_2000_04_18_73.json,
                      interviews_2000_04_19_72.json,
                      interviews_2000_05_1_77.json,
                      interviews_2000_05_2_78.json,
                      interviews_2000_05_6_80.json,
                      interviews_2000_05_8_79.json,
                      interviews_2000_06_19_84.json,
                      interviews_2000_07_31_88.json,
                      interviews_2000_08_4_89.json,
                      interviews_2000_08_30_91.json,
                      interviews_2000_09_3_93.json,
                      interviews_2000_09_6_92.json,
                      interviews_2000_09_7_94.json,
                      interviews_2000_09_11_95.json,
                      interviews_2000_09_21_98.json,
                      interviews_2000_09_24_96.json,
                      interviews_2000_09_26_97.json,
                      interviews_2000_09_27_99.json,
                      interviews_2001_01_24_103.json,
                      interviews_2001_03_4_105.json,
                      interviews_2001_04_26_108.json,
                      interviews_2001_05_2_109.json,
                      interviews_2001_05_12_110.json,
                      interviews_2001_05_25_111.json,
                      interviews_2001_06_12_112.json,
                      interviews_2001_06_26_113.json,
                      interviews_2001_08_23_118.json,
                      interviews_2001_08_28_119.json,
                      interviews_2001_09_5_120.json,
                      interviews_2001_09_25_121.json,
                      interviews_2001_10_1_123.json,
                      interviews_2001_10_17_124.json,
                      interviews_2001_10_26_125.json,
                      interviews_2001_11_8_128.json,
                      interviews_2001_11_9_127.json,
                      interviews_2001_11_14_130.json,
                      interviews_2001_11_16_129.json,
                      interviews_2001_11_22_132.json,
                      interviews_2001_11_29_133.json,
                      interviews_2001_12_1_131.json,
                      interviews_2001_12_1_134.json,
                      interviews_2001_12_4_135.json,
                      interviews_2001_12_24_136.json,
                      interviews_2002_01_1_185.json,
                      interviews_2002_01_1_198.json,
                      interviews_2002_02_15_139.json,
                      interviews_2002_02_27_142.json,
                      interviews_2002_03_2_143.json,
                      interviews_2002_03_22_145.json,
                      interviews_2002_04_10_146.json,
                      interviews_2002_04_11_147.json,
                      interviews_2002_05_12_150.json,
                      interviews_2002_06_22_157.json,
                      interviews_2002_07_13_159.json,
                      interviews_2002_08_9_166.json,
                      interviews_2002_08_15_167.json,
                      interviews_2002_08_15_170.json,
                      interviews_2002_08_21_169.json,
                      interviews_2002_08_21_171.json,
                      interviews_2002_08_22_172.json,
                      interviews_2002_08_26_175.json,
                      interviews_2002_08_30_176.json,
                      interviews_2002_09_20_178.json,
                      interviews_2002_10_20_187.json,
                      interviews_2002_10_23_186.json,
                      interviews_2002_10_30_190.json,
                      interviews_2002_11_15_192.json,
                      interviews_2002_12_1_194.json,
                      interviews_2002_12_2_195.json,
                      interviews_2002_12_11_196.json,
                      interviews_2002_12_17_199.json,
                      interviews_2002_12_31_204.json,
                      interviews_2003_01_1_200.json,
                      interviews_2003_01_2_205.json,
                      interviews_2003_01_3_206.json,
                      interviews_2003_01_20_208.json,
                      interviews_2003_02_5_213.json,
                      interviews_2003_02_7_215.json,
                      interviews_2003_03_10_217.json,
                      interviews_2003_03_18_220.json,
                      interviews_2003_03_23_219.json,
                      interviews_2003_03_29_223.json,
                      interviews_2003_05_2_228.json,
                      interviews_2003_05_14_230.json,
                      interviews_2003_05_21_232.json,
                      interviews_2003_05_22_234.json,
                      interviews_2003_06_12_236.json,
                      interviews_2003_06_26_238.json,
                      interviews_2003_07_16_239.json,
                      interviews_2003_07_25_243.json,
                      interviews_2003_07_31_242.json,
                      interviews_2003_08_5_246.json,
                      interviews_2003_08_11_250.json,
                      interviews_2003_08_15_252.json,
                      interviews_2003_09_18_256.json,
                      interviews_2003_09_18_257.json,
                      interviews_2003_10_13_260.json,
                      interviews_2003_10_22_262.json,
                      interviews_2003_10_25_261.json,
                      interviews_2003_11_7_265.json,
                      interviews_2003_11_18_266.json,
                      interviews_2003_11_27_267.json,
                      interviews_2003_12_8_269.json,
                      interviews_2003_12_31_274.json,
                      interviews_2004_01_8_275.json,
                      interviews_2004_01_21_276.json,
                      interviews_2004_01_30_277.json,
                      interviews_2004_02_3_278.json,
                      interviews_2004_02_4_279.json,
                      interviews_2004_02_9_280.json,
                      interviews_2004_03_11_284.json,
                      interviews_2004_03_29_287.json,
                      interviews_2004_06_18_296.json,
                      interviews_2004_06_24_299.json,
                      interviews_2004_07_5_298.json,
                      interviews_2004_07_10_301.json,
                      interviews_2004_07_22_302.json,
                      interviews_2004_07_31_307.json,
                      interviews_2004_11_19_314.json,
                      interviews_2004_12_21_317.json,
                      interviews_2005_01_10_321.json,
                      interviews_2005_02_10_326.json,
                      interviews_2005_02_27_328.json,
                      interviews_2005_02_28_329.json,
                      interviews_2005_04_12_334.json,
                      interviews_2005_04_18_335.json,
                      interviews_2005_05_24_340.json,
                      interviews_2005_06_16_345.json,
                      interviews_2005_06_26_348.json,
                      interviews_2005_07_16_349.json,
                      interviews_2005_08_4_354.json,
                      interviews_2005_09_25_363.json,
                      interviews_2005_09_26_362.json,
                      interviews_2005_09_26_364.json,
                      interviews_2005_09_26_369.json,
                      interviews_2005_09_26_371.json,
                      interviews_2005_10_1_365.json,
                      interviews_2005_10_17_373.json,
                      interviews_2005_11_4_376.json,
                      interviews_2005_12_4_379.json,
                      interviews_2005_12_9_380.json,
                      interviews_2006_01_27_389.json,
                      interviews_2006_02_10_392.json,
                      interviews_2006_02_17_395.json,
                      interviews_2006_02_22_394.json,
                      interviews_2006_04_24_402.json,
                      interviews_2006_04_27_405.json,
                      interviews_2006_04_30_404.json,
                      interviews_2006_07_11_411.json,
                      interviews_2006_07_21_413.json,
                      interviews_2006_08_1_414.json,
                      interviews_2006_08_22_417.json,
                      interviews_2006_08_23_418.json,
                      interviews_2006_09_18_421.json,
                      interviews_2006_09_19_420.json,
                      interviews_2006_09_24_425.json,
                      interviews_2006_09_25_424.json,
                      interviews_2006_10_12_427.json,
                      interviews_2006_10_18_428.json,
                      interviews_2006_10_25_429.json,
                      interviews_2006_10_25_430.json,
                      interviews_2006_10_30_431.json,
                      interviews_2006_11_29_434.json,
                      interviews_2006_12_1_435.json,
                      interviews_2006_12_15_440.json,
                      interviews_2006_12_22_442.json,
                      interviews_2006_12_23_447.json,
                      interviews_2006_12_29_444.json,
                      interviews_2006_12_30_443.json,
                      interviews_2006_12_30_445.json,
                      interviews_2007_01_11_452.json,
                      interviews_2007_01_29_453.json,
                      interviews_2007_02_6_456.json,
                      interviews_2007_02_14_458.json,
                      interviews_2007_03_1_460.json,
                      interviews_2007_03_16_465.json,
                      interviews_2007_04_20_471.json,
                      interviews_2007_04_24_472.json,
                      interviews_2007_05_29_477.json,
                      interviews_2007_06_16_478.json,
                      interviews_2007_06_28_480.json,
                      interviews_2007_06_30_481.json,
                      interviews_2007_07_10_482.json,
                      interviews_2007_07_24_485.json,
                      interviews_2007_08_1_491.json,
                      interviews_2007_10_1_495.json,
                      interviews_2007_10_6_496.json,
                      interviews_2007_10_15_498.json,
                      interviews_2007_10_18_504.json,
                      interviews_2007_10_21_505.json,
                      interviews_2007_10_23_502.json,
                      interviews_2007_10_23_503.json,
                      interviews_2007_11_22_512.json,
                      interviews_2008_01_23_519.json,
                      interviews_2008_01_26_520.json,
                      interviews_2008_02_7_525.json,
                      interviews_2008_02_11_523.json,
                      interviews_2008_02_11_524.json,
                      interviews_2008_02_11_538.json,
                      interviews_2008_02_11_539.json,
                      interviews_2008_02_15_528.json,
                      interviews_2008_03_6_532.json,
                      interviews_2008_03_19_549.json,
                      interviews_2008_04_2_551.json,
                      interviews_2008_04_15_559.json,
                      interviews_2008_04_20_562.json,
                      interviews_2008_04_21_563.json,
                      interviews_2008_04_23_564.json,
                      interviews_2008_05_16_567.json,
                      interviews_2008_05_26_570.json,
                      interviews_2008_05_27_569.json,
                      interviews_2008_06_23_575.json,
                      interviews_2008_07_4_580.json,
                      interviews_2008_07_4_596.json,
                      interviews_2008_08_9_587.json,
                      interviews_2008_08_13_586.json,
                      interviews_2008_11_3_614.json,
                      interviews_2008_11_22_620.json,
                      interviews_2008_11_26_619.json,
                      interviews_2008_12_4_624.json,
                      interviews_2008_12_12_625.json,
                      interviews_2008_12_18_630.json,
                      interviews_2008_12_18_631.json,
                      interviews_2009_01_26_640.json,
                      interviews_2009_01_31_642.json,
                      interviews_2009_02_13_646.json,
                      interviews_2009_02_25_647.json,
                      interviews_2009_04_2_656.json,
                      interviews_2009_04_24_661.json,
                      interviews_2009_04_27_660.json,
                      interviews_2009_05_15_664.json,
                      interviews_2009_05_18_663.json,
                      interviews_2009_06_3_666.json,
                      interviews_2009_08_17_676.json,
                      interviews_2009_08_20_678.json,
                      interviews_2009_09_1_680.json,
                      interviews_2009_09_12_681.json,
                      interviews_2009_09_24_684.json,
                      interviews_2009_10_1_687.json,
                      interviews_2009_10_5_685.json,
                      interviews_2009_10_5_686.json,
                      interviews_2009_10_6_689.json,
                      interviews_2009_11_13_694.json,
                      interviews_2009_12_4_696.json,
                      interviews_2009_12_11_697.json,
                      interviews_2009_12_21_699.json,
                      interviews_2009_12_30_701.json,
                      interviews_2010_01_26_705.json,
                      interviews_2010_02_5_712.json,
                      interviews_2010_02_6_709.json,
                      interviews_2010_02_22_715.json,
                      interviews_2010_03_8_720.json,
                      interviews_2010_03_17_724.json,
                      interviews_2010_04_7_730.json,
                      interviews_2010_04_10_732.json,
                      interviews_2010_04_26_735.json,
                      interviews_2010_04_29_739.json,
                      interviews_2010_04_29_740.json,
                      interviews_2010_05_11_741.json,
                      interviews_2010_08_14_792.json,
                      interviews_2010_10_21_765.json,
                      interviews_2010_11_26_771.json,
                      interviews_2010_12_1_770.json,
                      interviews_2010_12_15_776.json,
                      interviews_2011_01_01_860.json,
                      interviews_2011_01_18_801.json,
                      interviews_2011_02_3_808.json,
                      interviews_2011_02_7_809.json,
                      interviews_2011_02_14_811.json,
                      interviews_2011_02_25_816.json,
                      interviews_2011_03_10_819.json,
                      interviews_2011_03_14_820.json,
                      interviews_2011_03_15_824.json,
                      interviews_2011_03_18_822.json,
                      interviews_2011_03_30_828.json,
                      interviews_2011_04_10_830.json,
                      interviews_2011_04_12_831.json,
                      interviews_2011_04_13_832.json,
                      interviews_2011_04_17_838.json,
                      interviews_2011_04_27_837.json,
                      interviews_2011_05_10_843.json,
                      interviews_2011_05_26_848.json,
                      interviews_2011_06_8_852.json,
                      interviews_2011_06_12_854.json,
                      interviews_2011_06_21_855.json,
                      interviews_2011_06_29_857.json,
                      interviews_2011_07_14_863.json,
                      interviews_2011_07_21_870.json,
                      interviews_2011_09_7_882.json,
                      interviews_2011_09_19_885.json,
                      interviews_2011_09_26_888.json,
                      interviews_2011_10_13_896.json,
                      interviews_2011_10_14_895.json,
                      interviews_2011_10_17_897.json,
                      interviews_2011_10_23_899.json,
                      interviews_2011_11_26_906.json,
                      interviews_2011_11_28_907.json,
                      interviews_2011_12_11_910.json,
                      interviews_2011_12_12_911.json,
                      interviews_2011_12_20_912.json,
                      interviews_2011_12_23_916.json,
                      interviews_2011_12_30_921.json,
                      interviews_2012_01_01_977.json,
                      interviews_2012_01_2_919.json,
                      interviews_2012_01_2_920.json,
                      interviews_2012_01_21_925.json,
                      interviews_2012_02_1_929.json,
                      interviews_2012_02_6_933.json,
                      interviews_2012_02_15_934.json,
                      interviews_2012_02_18_935.json,
                      interviews_2012_02_27_939.json,
                      interviews_2012_03_2_941.json,
                      interviews_2012_03_13_942.json,
                      interviews_2012_03_14_945.json,
                      interviews_2012_03_19_947.json,
                      interviews_2012_03_20_946.json,
                      interviews_2012_04_23_952.json,
                      interviews_2012_04_23_953.json,
                      interviews_2012_05_5_956.json,
                      interviews_2012_05_12_958.json,
                      interviews_2012_05_13_959.json,
                      interviews_2012_05_18_963.json,
                      interviews_2012_05_20_962.json,
                      interviews_2012_06_2_964.json,
                      interviews_2012_06_22_969.json,
                      interviews_2012_07_2_971.json,
                      interviews_2012_08_14_979.json,
                      interviews_2012_09_1_985.json,
                      interviews_2012_09_26_992.json,
                      interviews_2012_09_28_994.json,
                      interviews_2012_10_4_996.json,
                      interviews_2012_10_15_998.json,
                      interviews_2012_10_23_1000.json,
                      interviews_2012_10_27_1004.json,
                      interviews_2012_11_2_1006.json,
                      interviews_2012_11_10_1008.json,
                      interviews_2012_11_10_1009.json,
                      interviews_2012_11_29_1014.json,
                      interviews_2012_12_8_1013.json,
                      interviews_2012_12_9_1015.json,
                      interviews_2012_12_22_1017.json,
                      interviews_2012_12_30_1018.json,
                      interviews_2013_01_01_1071.json,
                      interviews_2013_01_17_1021.json,
                      interviews_2013_01_28_1023.json,
                      interviews_2013_01_31_1024.json,
                      interviews_2013_02_5_1026.json,
                      interviews_2013_03_18_1030.json,
                      interviews_2013_03_21_1032.json,
                      interviews_2013_03_26_1031.json,
                      interviews_2013_04_15_1038.json,
                      interviews_2013_04_15_1039.json,
                      interviews_2013_04_17_1042.json,
                      interviews_2013_04_18_1043.json,
                      interviews_2013_04_22_1044.json,
                      interviews_2013_05_9_1046.json,
                      interviews_2013_05_19_1047.json,
                      interviews_2013_05_21_1048.json,
                      interviews_2013_05_23_1049.json,
                      interviews_2013_06_21_1056.json,
                      interviews_2013_06_24_1054.json,
                      interviews_2013_07_18_1060.json,
                      interviews_2013_08_14_1069.json,
                      interviews_2013_08_26_1072.json,
                      interviews_2013_09_7_1074.json,
                      interviews_2013_09_29_1079.json,
                      interviews_2013_10_23_1085.json,
                      interviews_2013_11_4_1091.json,
                      interviews_2013_11_17_1095.json,
                      interviews_2013_11_21_1097.json,
                      interviews_2013_11_25_1098.json,
                      interviews_2013_12_4_1105.json,
                      interviews_2013_12_8_1101.json,
                      interviews_2013_12_21_1111.json,
                      interviews_2013_12_28_1112.json,
                      interviews_2014_01_01_1115.json,
                      interviews_2014_01_07_1118.json,
                      interviews_2014_01_31_1123.json,
                      interviews_2014_02_19_1124.json,
                      interviews_2014_02_19_1126.json,
                      interviews_2014_02_24_1127.json,
                      interviews_2014_02_26_1130.json,
                      interviews_2014_03_20_1134.json,
                      interviews_2014_03_21_1135.json,
                      interviews_2014_03_25_1133.json,
                      interviews_2014_04_14_1137.json,
                      interviews_2014_05_18_1140.json,
                      interviews_2014_05_22_1142.json,
                      interviews_2014_06_26_1148.json,
                      interviews_2014_07_13_1153.json,
                      interviews_2014_07_14_1154.json,
                      interviews_2014_07_30_1156.json,
                      interviews_2014_08_14_1161.json,
                      interviews_2014_08_22_1162.json,
                      interviews_2014_09_15_1165.json,
                      interviews_2014_09_22_1169.json,
                      interviews_2014_09_25_1173.json,
                      interviews_2014_10_11_1178.json,
                      interviews_2014_10_13_1180.json,
                      interviews_2014_10_27_1184.json,
                      interviews_2014_11_8_1186.json,
                      interviews_2014_11_10_1187.json,
                      interviews_2014_11_14_1188.json,
                      interviews_2014_12_28_1192.json,
                      interviews_2015_01_2_1193.json,
                      interviews_2015_01_25_1199.json,
                      interviews_2015_01_28_1200.json,
                      interviews_2015_01_28_1201.json,
                      interviews_2015_02_5_1204.json,
                      interviews_2015_02_9_1205.json,
                      interviews_2015_02_25_1207.json,
                      interviews_2015_02_26_1208.json,
                      interviews_2015_03_11_1212.json,
                      interviews_2015_03_16_1213.json,
                      interviews_2015_03_28_1216.json,
                      interviews_2015_03_28_1218.json,
                      interviews_2015_05_8_1227.json,
                      interviews_2015_05_8_1228.json,
                      interviews_2015_06_1_1229.json,
                      interviews_2015_06_13_1234.json,
                      interviews_2015_06_18_1236.json,
                      interviews_2015_07_25_1242.json,
                      interviews_2015_08_1_1243.json,
                      interviews_2015_08_25_1246.json,
                      interviews_2015_09_4_1249.json,
                      interviews_2015_09_14_1251.json,
                      interviews_2015_09_21_1255.json,
                      interviews_2015_10_2_1258.json,
                      interviews_2015_10_9_1260.json,
                      interviews_2015_10_15_1082.json,
                      interviews_2015_11_2_1266.json,
                      interviews_2015_11_9_1268.json,
                      interviews_2015_11_18_1272.json,
                      interviews_2015_11_21_1273.json,
                      interviews_2015_11_26_1274.json,
                      interviews_2015_12_9_1276.json,
                      interviews_2015_12_10_1278.json,
                      interviews_2015_12_15_1277.json,
                      interviews_2015_12_23_1282.json,
                      interviews_2016_01_15_1288.json,
                      interviews_2016_01_29_1291.json,
                      interviews_2016_02_4_1293.json,
                      interviews_2016_02_26_1299.json,
                      interviews_2016_03_1_1300.json,
                      interviews_2016_03_19_1302.json,
                      interviews_2016_03_30_1306.json,
                      interviews_2016_04_9_1308.json,
                      interviews_2016_04_19_1309.json,
                      interviews_2016_04_29_1330.json,
                      interviews_2016_05_17_1335.json,
                      interviews_2016_06_3_1326.json,
                      interviews_2016_07_2_1349.json,
                      interviews_2016_07_22_1355.json,
                      interviews_2016_07_29_1357.json,
                      interviews_2016_08_1_1356.json,
                      interviews_2016_08_4_1358.json,
                      interviews_2016_08_6_1359.json,
                      interviews_2016_08_26_1362.json,
                      interviews_2016_09_2_1363.json,
                      interviews_2016_09_19_1368.json,
                      interviews_2016_10_11_1373.json,
                      interviews_2016_10_27_1378.json,
                      interviews_2016_11_3_1381.json,
                      interviews_2016_11_17_1383.json,
                      interviews_2016_11_25_1385.json,
                      interviews_2016_11_29_1387.json,
                      interviews_2016_12_6_1388.json,
                      interviews_2016_12_11_1390.json,
                      interviews_2016_12_19_1392.json,
                      interviews_2016_12_27_1395.json,
                      interviews_2017_01_20_1406.json,
                      interviews_2017_01_30_1409.json,
                      interviews_2017_02_8_1410.json,
                      interviews_2017_02_16_1414.json,
                      interviews_2017_02_16_1415.json,
                      interviews_2017_02_26_1417.json,
                      interviews_2017_03_14_1421.json,
                      interviews_2017_03_16_1424.json,
                      interviews_2017_03_29_1425.json,
                      interviews_2017_04_6_1429.json,
                      interviews_2017_04_8_1430.json,
                      interviews_2017_04_19_1432.json,
                      interviews_2017_05_20_1443.json,
                      interviews_2017_06_13_1450.json,
                      interviews_2017_06_22_1457.json,
                      interviews_2017_06_25_1454.json,
                      interviews_2017_06_28_1458.json,
                      interviews_2017_07_24_1476.json,
                      interviews_2017_07_31_1477.json,
                      interviews_2017_08_19_1481.json,
                      interviews_2017_08_24_1459.json,
                      interviews_2017_10_11_1467.json,
                      interviews_2017_10_13_1469.json,
                      interviews_2017_10_17_1471.json,
                      interviews_2017_11_3_1485.json,
                      interviews_2017_11_11_1487.json,
                      interviews_2017_12_1_1491.json,
                      interviews_2017_12_8_1493.json,
                      interviews_2017_12_12_1494.json,
                      interviews_2017_12_23_1499.json,
                      interviews_2018_01_7_1501.json,
                      interviews_2018_01_17_1503.json,
                      interviews_2018_01_27_1508.json,
                      interviews_2018_02_19_1516.json,
                      interviews_2018_03_14_1518.json,
                      interviews_2018_03_19_1519.json,
                      interviews_2018_03_27_1522.json,
                      interviews_2018_03_29_1524.json,
                      interviews_2018_04_24_1528.json,
                      interviews_2018_04_28_1529.json,
                      interviews_2018_04_28_1531.json,
                      interviews_2018_04_30_1530.json,
                      interviews_2018_05_19_1535.json,
                      interviews_2018_06_20_1550.json,
                      interviews_2018_08_19_1565.json,
                      interviews_2018_08_25_1567.json,
                      interviews_2018_09_10_1574.json,
                      interviews_2018_09_15_1578.json,
                      interviews_2018_09_17_1576.json,
                      interviews_2018_09_21_1580.json,
                      interviews_2018_10_2_1582.json,
                      interviews_2018_11_4_1593.json,
                      interviews_2018_11_13_1596.json)

colnames(Master_1)

Master_1 <- Master_1[,c("AUTHOR","TITLE","TEXT", "DATE")]
write.csv(Master_1, file = "Master_Interviews_BB_08282021.csv")
