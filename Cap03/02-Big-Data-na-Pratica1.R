getwd()

# Dataset
#http://berkeleyearth.org/data

install.packages("readr")
install.packages("data.table")
install.packages("dplyr")
install.packages("ggplot2")
library(readr)
library(dplyr)
library(ggplot2)
library(scales)
library(data.table)

# Carregando dados
# Usando read.csv()
system.time((df_teste1 <- read.csv("TemperaturasGlobais/TemperaturasGlobais.csv")))
# Usando read.table()
system.time((df_teste2 <- read.table("TemperaturasGlobais/TemperaturasGlobais.csv")))