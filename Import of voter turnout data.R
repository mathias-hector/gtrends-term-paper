                      #Data source

#The voter turnout data is downloaded from the International Institute for Democracy and Electoral Assistance
# The downloaded data contains the 22 countries that are to undergo analysis

library(readxl)
VoterDat<- read_excel("Voter turnout data/idea_export_40_5edfe09b20bc6.xls")


#Remove all observations that are not from 2014 and 2019 as well as unecessesary variables (columns)
VoterDat1419 <- VoterDat %>% 
  filter(Year > 2013) %>% 
  select(Country, Year, `Voter Turnout`, `Total vote`, Population, `Compulsory voting`)




          #Here the needed gtrends objects are collected

#Austria
AT14 <- gtrends(c("die europäische union", "europawahl", "europäisches parlament"), geo = "AT", time = "2014-04-25 2014-05-25", low_search_volume =T)
AT19 <- gtrends(c("die europäische union", "europawahl", "europäisches parlament"), geo = "AT", time = "2019-04-26 2019-05-26", low_search_volume =T)

#Croatia
HR14 <- gtrends(c("europska unija", "izbori za evropski parlament", "europski parlament"), geo = "HR", time = "2014-04-25 2014-05-25", low_search_volume =T)
HR19 <- gtrends(c("europska unija", "izbori za evropski parlament", "europski parlament"), geo = "HR", time = "2019-04-26 2019-05-26", low_search_volume =T)

#Czech Republic
CZ14 <- gtrends(c("evropská unie", "volby do evropského parlamentu", "evropský parlament"), geo = "CZ", time = "2014-04-25 2014-05-25", low_search_volume =T)
CZ19 <- gtrends(c("evropská unie", "volby do evropského parlamentu", "evropský parlament"), geo = "CZ", time = "2019-04-26 2019-05-26", low_search_volume =T)

#Denmark
DK14 <- gtrends(c("den europæiske union", "europa-parlamentsvalget", "europa-parlamentet"), geo = "DK", time = "2014-04-25 2014-05-25", low_search_volume =T)
DK19 <- gtrends(c("den europæiske union", "europa-parlamentsvalget", "europa-parlamentet"), geo = "DK", time = "2019-04-26 2019-05-26", low_search_volume =T)

#Estonia
EE14 <- gtrends(c("euroopa liit", "euroopa parlamendi valimised", "euroopa parlament"), geo = "EE", time = "2014-04-25 2014-05-25", low_search_volume =T)
EE19 <- gtrends(c("euroopa liit", "euroopa parlamendi valimised", "euroopa parlament"), geo = "EE", time = "2019-04-26 2019-05-26", low_search_volume =T)

#Finland
FI14 <- gtrends(c("euroopan unioni", "europarlamenttivaalit", "euroopan parlamentti"), geo = "FI", time = "2014-04-25 2014-05-25", low_search_volume =T)
FI19 <- gtrends(c("euroopan unioni", "europarlamenttivaalit", "euroopan parlamentti"), geo = "FI", time = "2019-04-26 2019-05-26", low_search_volume =T)

#France
FR14 <- gtrends(c("l’union européenne", "élections européennes", "parlement européen"), geo = "FR", time = "2014-04-25 2014-05-25", low_search_volume =T)
FR19 <- gtrends(c("l’union européenne", "élections européennes", "parlement européen"), geo = "FR", time = "2019-04-26 2019-05-26", low_search_volume =T)

#Germany
DE14 <- gtrends(c("die europäische union", "europawahl", "europäisches parlament"), geo = "DE", time = "2014-04-25 2014-05-25", low_search_volume =T)
DE19 <- gtrends(c("die europäische union", "europawahl", "europäisches parlament"), geo = "DE", time = "2019-04-26 2019-05-26", low_search_volume =T)

#Hungary
HU14 <- gtrends(c("az európai unió", "európai parlamenti választás", "európai parlament"), geo = "HU", time = "2014-04-25 2014-05-25", low_search_volume =T)
HU19 <- gtrends(c("az európai unió", "európai parlamenti választás", "európai parlament"), geo = "HU", time = "2019-04-26 2019-05-26", low_search_volume =T)

#Ireland
IE14 <- gtrends(c("the european union", "european parliament election", "european parliament"), geo = "IE", time = "2014-04-25 2014-05-25", low_search_volume =T)
IE19 <- gtrends(c("the european union", "european parliament election", "european parliament"), geo = "IE", time = "2019-04-26 2019-05-26", low_search_volume =T)

#Italy
IT14 <- gtrends(c("l’unione europea", "elezioni europee", "parlamento europeo"), geo = "IT", time = "2014-04-25 2014-05-25", low_search_volume =T)
IT19 <- gtrends(c("l’unione europea", "elezioni europee", "parlamento europeo"), geo = "IT", time = "2019-04-26 2019-05-26", low_search_volume =T)

#Latvia
LV14 <- gtrends(c("eiropas savienība", "eiropas parlamenta vēlēšanas", "eiropas parlaments"), geo = "LV", time = "2014-04-25 2014-05-25", low_search_volume =T)
LV19 <- gtrends(c("eiropas savienība", "eiropas parlamenta vēlēšanas", "eiropas parlaments"), geo = "LV", time = "2019-04-26 2019-05-26", low_search_volume =T)

#Luxembourg
LU14 <- gtrends(c("l’union européenne", "élections européennes", "parlement européen"), geo = "LU", time = "2014-04-25 2014-05-25", low_search_volume =T)
LU19 <- gtrends(c("l’union européenne", "élections européennes", "parlement européen"), geo = "LU", time = "2019-04-26 2019-05-26", low_search_volume =T)

#Netherlands
NL14 <- gtrends(c("de europese unie", "europese parlementsverkiezingen", "europees parlement"), geo = "NL", time = "2014-04-25 2014-05-25", low_search_volume =T)
NL19 <- gtrends(c("de europese unie", "europese parlementsverkiezingen", "europees parlement"), geo = "NL", time = "2019-04-26 2019-05-26", low_search_volume =T)

#Poland
PL14 <- gtrends(c("unia europejska", "wybory do parlamentu europejskiego", "parlament europejski"), geo = "PL", time = "2014-04-25 2014-05-25", low_search_volume =T)
PL19 <- gtrends(c("unia europejska", "wybory do parlamentu europejskiego", "parlament europejski"), geo = "PL", time = "2019-04-26 2019-05-26", low_search_volume =T)

#Portugal
PT14 <- gtrends(c("a união europeia", "eleições parlamentares europeias", "parlamento europeu"), geo = "PT", time = "2014-04-25 2014-05-25", low_search_volume =T)
PT19 <- gtrends(c("a união europeia", "eleições parlamentares europeias", "parlamento europeu"), geo = "PT", time = "2019-04-26 2019-05-26", low_search_volume =T)

#Romania
RO14 <- gtrends(c("uniunea europeană", "alegeri pentru parlamentul european", "parlamentul european"), geo = "RO", time = "2014-04-25 2014-05-25", low_search_volume =T)
RO19 <- gtrends(c("uniunea europeană", "alegeri pentru parlamentul european", "parlamentul european"), geo = "RO", time = "2019-04-26 2019-05-26", low_search_volume =T)

#Slovakia
SK14 <- gtrends(c("európska únia", "voľby do európskeho parlamentu", "európsky parlament"), geo = "SK", time = "2014-04-25 2014-05-25", low_search_volume =T)
SK19 <- gtrends(c("európska únia", "voľby do európskeho parlamentu", "európsky parlament"), geo = "SK", time = "2019-04-26 2019-05-26", low_search_volume =T)

#Slovenia
SI14 <- gtrends(c("evropska unija", "volitve v evropski parlament", "evropski parlament"), geo = "SI", time = "2014-04-25 2014-05-25", low_search_volume =T)
SI19 <- gtrends(c("evropska unija", "volitve v evropski parlament", "evropski parlament"), geo = "SI", time = "2019-04-26 2019-05-26", low_search_volume =T)

#Spain
ES14 <- gtrends(c("la unión europea", "elecciones al parlamento europeo", "parlamento europeo"), geo = "ES", time = "2014-04-25 2014-05-25", low_search_volume =T)
ES19 <- gtrends(c("la unión europea", "elecciones al parlamento europeo", "parlamento europeo"), geo = "ES", time = "2019-04-26 2019-05-26", low_search_volume =T)

#Sweden
SE14 <- gtrends(c("europeiska unionen", "europaparlamentsvalet", "europaparlamentet"), geo = "SE", time = "2014-04-25 2014-05-25", low_search_volume =T)
SE19 <- gtrends(c("europeiska unionen", "europaparlamentsvalet", "europaparlamentet"), geo = "SE", time = "2019-04-26 2019-05-26", low_search_volume =T)

#Great Britain
GB14 <- gtrends(c("the european union", "european parliament election", "european parliament"), geo = "GB", time = "2014-04-25 2014-05-25", low_search_volume =T)
GB19 <- gtrends(c("the european union", "european parliament election", "european parliament"), geo = "GB", time = "2019-04-26 2019-05-26", low_search_volume =T)




                 ## #Data wrangling


AT14IOT <- as_tibble(AT14$interest_over_time)
AT19IOT <- as_tibble(AT19$interest_over_time)

CZ14IOT <- as_tibble(CZ14$interest_over_time)
CZ19IOT <- as_tibble(CZ19$interest_over_time)

DE14IOT <- as_tibble(DE14$interest_over_time)
DE19IOT <- as_tibble(DE19$interest_over_time)

DK14IOT <- as_tibble(DK14$interest_over_time)
DK19IOT <- as_tibble(DK19$interest_over_time)

EE14IOT <- as_tibble(EE14$interest_over_time)
EE19IOT <- as_tibble(EE19$interest_over_time)

ES14IOT <- as_tibble(ES14$interest_over_time)
ES19IOT <- as_tibble(ES19$interest_over_time)

FI14IOT <- as_tibble(FI14$interest_over_time)
FI19IOT <- as_tibble(FI19$interest_over_time)

FR14IOT <- as_tibble(FR14$interest_over_time)
FR19IOT <- as_tibble(FR19$interest_over_time)

GB14IOT <- as_tibble(GB14$interest_over_time)
GB19IOT <- as_tibble(GB19$interest_over_time)

HR14IOT <- as_tibble(HR14$interest_over_time)
HR19IOT <- as_tibble(HR19$interest_over_time)

HU14IOT <- as_tibble(HU14$interest_over_time)
HU19IOT <- as_tibble(HU19$interest_over_time)

IE14IOT <- as_tibble(IE14$interest_over_time)
IE19IOT <- as_tibble(IE19$interest_over_time)

IT14IOT <- as_tibble(IT14$interest_over_time)
IT19IOT <- as_tibble(IT19$interest_over_time)

LU14IOT <- as_tibble(LU14$interest_over_time)
LU19IOT <- as_tibble(LU19$interest_over_time)

LV14IOT <- as_tibble(LV14$interest_over_time)
LV19IOT <- as_tibble(LV19$interest_over_time)

NL14IOT <- as_tibble(NL14$interest_over_time)
NL19IOT <- as_tibble(NL19$interest_over_time)

PL14IOT <- as_tibble(PL14$interest_over_time)
PL19IOT <- as_tibble(PL19$interest_over_time)

PT14IOT <- as_tibble(PT14$interest_over_time)
PT19IOT <- as_tibble(PT19$interest_over_time)

RO14IOT <- as_tibble(RO14$interest_over_time)
RO19IOT <- as_tibble(RO19$interest_over_time)

SE14IOT <- as_tibble(SE14$interest_over_time)
SE19IOT <- as_tibble(SE19$interest_over_time)

SI14IOT <- as_tibble(SI14$interest_over_time)
SI19IOT <- as_tibble(SI19$interest_over_time)

SK14IOT <- as_tibble(SK14$interest_over_time)
SK19IOT <- as_tibble(SK19$interest_over_time)

   # Drop original GT-objects from environmnet (can easily be loaded again if need be)
remove(AT14, AT19, CZ14, CZ19, DE14, DE19, DK14, DK19, 
       EE14, EE19, ES14, ES19, FI14, FI19, FR14, FR19, 
       GB14, GB19, HR14, HR19, HU14, HU19, IE14, IE19, 
       IT14, IT19, LU14, LU19, LV14, LV19, NL14, NL19,
       PL14, PL19, PT14, PT19, RO14, RO19, SE14, SE19, 
       SI14, SI19, SK14, SK19)
