# Importando Dados de Softwares Estatísticos (SAS, STATA, SPSS) 

setwd("D:/codes/R/dsa/BigDataRAzure/Cap07")
getwd()

# Instalando o pacote
install.packages("haven")
library(haven)

# SAS
vendas <- read_sas("vendas.sas")
vendas
class(vendas)
View(vendas)

# STADTA
df_stata <- read_dta("mov.dta")
df_stata
class(df_stata)
View(df_stata)

# Pacote Foreign
install.packages("foreign")
library(foreign)

# Stata
florida <- read.dta("florida.dta")
florida
class(florida)

# SPSS
# http://cw.routledge.com/textbooks/9780415372985/resources/datasets.asp

dados <- read.spss("international.sav")
head(dados)
class(dados)
df <- data.frame(dados)
df
head(df)
View(df)

# Criando um bloxpot
boxplot(df$gdp)

# Se você estiver familiarizado com estatística, você vai ter ouvido falar de Correlação. 
# É uma medida para avaliar a dependência linear entre duas variáveis. 
# Ela pode variar entre -1 e 1; 
# Se próximo de 1, significa que há uma forte associação positiva entre as variáveis. 
# Se próximo de -1, existe uma forte associação negativa: 
# Quando a correlação entre duas variáveis é 0, essas variáveis são possivelmente independentes: 
# Ou seja, não há nenhuma associação entre X e Y.

# Coeficiente de Correlação. Indica uma associação negativa entre GDP e alfabetização feminina
cor(df$gdp, df$f_illit)


# **** Importante ****
# Correlação não implica causalidade
# A correlação, isto é, a ligação entre dois eventos, não implica 
# necessariamente uma relação de causalidade, ou seja, que um dos 
# eventos tenha causado a ocorrência do outro. A correlação pode 
# no entanto indicar possíveis causas ou áreas para um estudo mais 
# aprofundado, ou por outras palavras, a correlação pode ser uma 
# pista.



















