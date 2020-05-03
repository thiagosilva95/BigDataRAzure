# Remodelagem de dados usando tidyr

setwd("D:/codes/R/dsa/BigDataRAzure/Cap07")
getwd()

# Instalando os pacotes
install.packages("tidyr")
install.packages("ggplot2")
library(tidyr)
library(ggplot2)

# Dados em notas de disciplinas
dados <- data.frame(
  Nome = c("Geografia", "Literatura", "Biologia"),
  Regiao_A = c(97, 80, 84),
  Regiao_B = c(86, 90, 91)
)
dados

?gather
dados %>%
  gather(Regiao, NotaFinal, Regiao_A:Regiao_B)

# Criando dados
set.seed(10)
df1 <- data.frame(
  id = 1:4,
  acao = sample(rep(c("controle", "tratamento"), each = 2)),
  work.T1 = runif(4),
  home.T1 = runif(4),
  work.T2 = runif(4),
  home.T2 = runif(4)
)
df1

# Reshape 1
df1_organizado <- df1 %>% 
  gather(key, time, -id, -acao)

head(df1_organizado, 8)

# Reshape 2
df1_organizado2 <- df1_organizado %>%
  separate(key, into = c("localidade", "tempo"), sep = "\\.")

df1_organizado2

# Mais um exemplo
set.seed(1)
df3 <- data.frame(
  participante = c("p1", "p2", "p3", "p4", "p5", "p6"), 
  info = c("g1m", "g1m", "g1f", "g2m", "g2m", "g2m"),
  day1score = rnorm(n = 6, mean = 80, sd = 15), 
  day2score = rnorm(n = 6, mean = 88, sd = 8)
)

print(df3)

# Reshape dos dados
df3 %>%
  gather(day, score, c(day1score, day2score)) # transforma colunas em linhas


df3 %>%
  gather(day, score, c(day1score, day2score)) %>%
   spread(day, score) # oposto do gather, volta a forma origem

df3 %>%
  gather(day, score, c(day1score, day2score)) %>%
  separate(col = info, into = c("group", "gender"), sep = 2)

df3 %>%
  gather(day, score, c(day1score, day2score)) %>%
  separate(col = info, into = c("group", "gender"), sep = 2) %>%
  unite(infoAgain, group, gender) # Oposto do separate, unifica colunas

df3 %>%
  gather(day, score, c(day1score, day2score)) %>%
  separate(col = info, into = c("group", "gender"), sep = 2) %>%
  ggplot(aes(x = day, y = score)) +
  geom_point() +
  facet_wrap(~ group) +
  geom_smooth(method = "lm", aes(group = 1), se = F)















