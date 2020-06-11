                      #Data source

#The voter turnout data is downloaded from the International Institute for Democracy and Electoral Assistance
# The downloaded data contains the 22 countries that are to undergo analysis

library(readxl)
VoterDat<- read_excel("Voter turnout data/idea_export_40_5edfe09b20bc6.xls")


               #Data wrangling

#Remove all observations that are not from 2014 and 2019 as well as unecessesary variables (columns)

VoterDat1419 <- VoterDat %>% 
  filter(Year > 2013) %>% 
  select(Country, Year, `Voter Turnout`, `Total vote`, Population, `Compulsory voting`)