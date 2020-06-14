#This script is for exploring the google data

plot(AT14) 
plot(AT19) 

plot(CZ14) 
plot(CZ19) 

plot(DE14) 
plot(DE19) 

plot(DK14) 
plot(DK19) 

plot(EE14) 
plot(EE19) 

plot(ES14) 
plot(ES19) 

plot(FI14) 
plot(FI19) 

plot(FR14) 
plot(FR19) 

plot(GB14) 
plot(GB19) 

plot(HR14) 
plot(HR19) 

plot(HU14) 
plot(HU19) 

plot(IE14) 
plot(IE19) 

plot(IT14) 
plot(IT19) 

plot(LU14) 
plot(LU19) 

plot(LV14) 
plot(LV19) 

plot(NL14) 
plot(NL19)

plot(PL14) 
plot(PL19) 

plot(PT14) 
plot(PT19) 

plot(RO14) 
plot(RO19) 

plot(SE14) 
plot(SE19) 

plot(SI14) 
plot(SI19) 

plot(SK14) 
plot(SK19)

#A plotting of all objects which shows that there are several different trends, varying with as well ...
# ... keyword combinations, time, trends pr keyword during the two months.

GtestRigtig <- 
  rbind(AT14IOT, AT19IOT, CZ14IOT, CZ19IOT, DE14IOT, DE19IOT, DK14IOT, DK19IOT, 
        EE14IOT, EE19IOT, ES14IOT, ES19IOT, FI14IOT, FI19IOT, FR14IOT, FR19IOT, 
        GB14IOT, GB19IOT, HR14IOT, HR19IOT, HU14IOT, HU19IOT, IE14IOT, IE19IOT, 
        IT14IOT, IT19IOT, LU14IOT, LU19IOT, LV14IOT, LV19IOT, NL14IOT, NL19IOT,
        PL14IOT, PL19IOT, PT14IOT, PT19IOT, RO14IOT, RO19IOT, SE14IOT, SE19IOT, 
        SI14IOT, SI19IOT, SK14IOT, SK19IOT) %>% 
  spread(key = keyword, value = hits)



#Jeg skal lave split-apply-combine på en måde, så jeg har en variabel... 
#... for hvert lands tre keywords, der summer deres hits  

# Evt skal det være så jeg har en opsummering af hits seperat for keywords