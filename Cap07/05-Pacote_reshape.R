# Remodelando dados com reshape

setwd("D:/codes/R/dsa/BigDataRAzure/Cap07")
getwd()

# Pivot (transposta da matriz)
mtcars
t(mtcars)


# Reshape
head(iris)
str(iris)
library(lattice)
?lattice

# Distribuindo valores verticalmente (long)
iris_modif <- reshape(iris, 
                      varying = 1:4,
                      v.names = "Medidas",
                      timevar = "Dimensoes",
                      times = names(iris)[1:4],
                      idvar = "ID", 
                      direction = "long")
View(iris_modif)
View(iris)

bwplot(Medidas ~ Species | Dimensoes, data = iris_modif)

iris_modif_sp <- reshape(iris, 
                      varying = list(c(1,3), c(2,4)),
                      v.names = c("Comprimento", "Largura"),
                      timevar = "Parte",
                      times = c("Speal", "Petal"),
                      idvar = "ID", 
                      direction = "long")
View(iris_modif_sp)

# Gráfico de dispersão
xyplot(Comprimento ~ Largura | Species, groups = Parte,
       data = iris_modif_sp, auto.key = list(space="Right"))


xyplot(Comprimento ~ Largura | Parte, groups = Species,
       data = iris_modif_sp, auto.key = list(space="Right"))

# Reshape2
install.packages("reshape2")
library(reshape2)

# Criando um dataframe
df = data.frame(nome = c("Zico", "Pele"), 
                chuteira = c(40, 42),
                idade = c(34,NA),
                peso = c(93, NA),
                altura = c(175, 178))

df

# "Derretendo" o dataframe - Função metl()
df_wide = melt(df, id = c("nome", "chuteira"))
df_wide

# Removendo NA
df_wide = melt(df, id = c("nome", "chuteira"), na.rm = TRUE)
df_wide

# "Esticando" o dataframe
dcast(df_wide, formula = chuteira + nome ~ variable)
dcast(df_wide, formula = nome + chuteira  ~ variable)
dcast(df_wide, formula = nome  ~ variable)
dcast(df_wide, formula = ...  ~ variable)

# Aplicando o reshape2
names(airquality) <- tolower(names(airquality))
head(airquality)
dim(airquality)

# Função melt() - wide
?melt
df_wide <- melt(airquality)
class(df_wide)
head(df_wide)
dim(df_wide)
tail(df_wide) # visualizar as últimas linhas

# Inserindo mais duas variáveis
df_wide <- melt(airquality, id.vars = c("month", "day"))
head(df_wide)

df_wide <- melt(airquality, id.vars = c("month", "day"),
                variable.name = "climate_variable", 
                value.name = "climate_value")

head(df_wide)

# Função dcast() - long
df_wide <- melt(airquality, id.vars = c("month", "day"))
View(df_wide)
df_long <- dcast(df_wide, month + day ~ variable)
View(df_long)
head(airquality)











