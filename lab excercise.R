library(dplyr)
EMDAT <- read_csv("EMDAT.csv")
Bob <- EMDAT %>% 
  select(Year, deaths_all_disasters, injured_all_disasters, homeless_all_disasters) %>%
  rename(Year = Year, Death = deaths_all_disasters, Injury = injured_all_disasters, Homeless = homeless_all_disasters)

death <- Bob %>%
  select(Year, Death) %>%
  arrange(desc(Death)) %>%
  slice(1:10)
  
Injury <- Bob %>%
  select(Year, Injury) %>%
  arrange(desc(Injury)) %>%
  slice(1:10)

Homeless <- Bob %>%
  select(Year, Homeless) %>%
  arrange(desc(Homeless)) %>%
  slice(1:10)

Bobb <- EMDAT %>%
  mutate(death_above_500 = ifelse(deaths_all_disasters > 500, 1, 0))

fjk <- Bobb %>%
  select(Year, death_above_500)

         
         
