
setwd("D:/codes/R/dsa/BigDataRAzure/Cap07")
getwd()

# Formato dos dados
# tidr

# Transformação dos dados
# dplyr

# Operador de concatenação
# %>%

# Instalando os pacotes
install.packages("readr") # Ler os dados
install.packages("dplyr") # Transformar os dados
library(readr)
library(dplyr)

# Carregando o dataset
sono_df <- read.csv("sono.csv")
View(sono_df)
head(sono_df)
class(sono_df)
str(sono_df)

# Função glimpse() pode ser usada no lugar da função str()
glimpse(sono_df)

# Aplicando mutate
glimpse(mutate(sono_df, peso_libras = sono_total / 0.45359237))

# Contagem e histograma
count(sono_df, cidade)
hist(sono_df$sono_total)


# Amostragem
sample_n(sono_df, size = 10)

# select()
sleepData <- select(sono_df, nome, sono_total)
head(sleepData)
class(sleepData)
select(sono_df, nome)
select(sono_df, nome:cidade) # range de colunas para seleção
select(sono_df, nome:pais)

# filter()
filter(sono_df, sono_total >= 16)
filter(sono_df, sono_total >= 16, peso >= 80)
filter(sono_df, cidade %in% c("Recife", "Curitiba"))

# arrange()
sono_df %>% arrange(cidade) %>% head # Ordenando pela coluna 'Cidade'

sono_df %>%
  select(nome, cidade, sono_total) %>%
  arrange(cidade, sono_total) %>%
  head

sono_df %>%
  select(nome, cidade, sono_total) %>%
  arrange(cidade, sono_total) %>%
  filter(sono_total >= 16)

sono_df %>%
  select(nome, cidade, sono_total) %>%
  arrange(cidade, desc(sono_total)) %>%
  filter(sono_total >= 16)

# mutate()
head(sono_df)
sono_df %>%
  mutate(novo_indice = sono_total / peso) %>%
  head
head(sono_df)

head(sono_df)
sono_df %>%
  mutate(novo_indice = sono_total / peso,
         peso_libras = sono_total / 0.45359237) %>%
  head
head(sono_df)

# summarize()
sono_df %>%
  summarise(media_sono = mean(sono_total))


sono_df %>%
  summarise(media_sono = mean(sono_total),
            min_sono = min(sono_total),
            max_sono = max(sono_total),
            total = n())

sono_df %>%
  group_by(cidade) %>%
  summarise(media_sono = mean(sono_total),
            min_sono = min(sono_total),
            max_sono = max(sono_total),
            total = n())

# Operador %>%

sono_df %>%
  mutate(novo_indice = round(sono_total * peso)) %>%
  arrange(desc(novo_indice)) %>%
  select(cidade, novo_indice)

sono_df
View(sono_df)












