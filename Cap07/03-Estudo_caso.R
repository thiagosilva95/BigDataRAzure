## Estudo de Caso

setwd("D:/codes/R/dsa/BigDataRAzure/Cap07")
getwd()

install.packages("hflights")
library(hflights)
library(dplyr)
?hflights

# Criando um objeto tbl
?tbl_df
flights <- tbl_df(hflights)
flights

# Resumindo os dados
glimpse(flights)

# Visualizando como dataframe
data.frame(head(flights))


# Filtrando os dados com slice
flights[flights$Month == 1 & flights$DayofMonth == 1, ] # condição + todas colunas

# Aplicando filter
filter(flights, Month == 1, DayofMonth == 1)
filter(flights, UniqueCarrier == "AA" | UniqueCarrier == "UA")
filter(flights, UniqueCarrier %in% c("AA", "UA"))

# Select
select(flights, Year:DayofMonth, contains("Taxi"), contains("Delay")) # colunas que contém os nomes

# Organizando os dados
flights %>% 
  select(UniqueCarrier, DepDelay) %>%
  arrange(DepDelay)

flights %>% 
  select(Distance, AirTime) %>%
  mutate(Speed = Distance/AirTime*60)

head(with(flights, tapply(ArrDelay, Dest, mean, na.rm = TRUE)))
head(aggregate(ArrDelay ~ Dest, flights, mean))

flights %>% 
  group_by(Month, DayofMonth) %>%
  tally(sort = TRUE)















