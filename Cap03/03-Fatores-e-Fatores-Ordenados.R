getwd()
vec1 <- c("Macho", "Femea", "Femea", "Macho", "Macho")
vec1
fac_vec1 <- factor(vec1)
fac_vec1
class(fac_vec1)
class(vec1)


# Variáveis categóriacas ordinais
# Possuem uma ordem natural
grad <- c("Mestrado", "Doutorado", "Bacharelado", "Mestrado", "Mestrado")
grad
fac_grad <- factor(grad, order = T, levels = c("Doutorado", "Mestrado", "Bacharelado"))
fac_grad
levels(fac_grad)

summary(fac_grad)

data <- c(1,2,2,3,1,2,3,3,1,2,3,3,1)
fdata =factor(data)
fdata

rdata = factor(data, labels = c("I", "II", "III"))
rdata

#Fatores não ordenados
set1 <- c("AA", "B", "BA", "CC", "CA", "AA", "BA", "CC", "CC")
set1

# Transformando os dados

f.set1 <- factor(set1)
f.set1
class(f.set1)
is.ordered(f.set1)

# Fatores ordenados
o.set1 <- factor(set1, levels = c("CA", "BA", "AA", "CC", "B"),
                 ordered = T)
o.set1
is.ordered(o.set1)

as.numeric(o.set1)
table(o.set1)

# Fatores e dataframes
df = read.csv2("etnias.csv", sep = ",")
df

# Variáveis do tipo factor
str(df)

levels(df$Etnia)
summary(df$Etnia)

plot(df$Idade~df$Etnia, xlab = "Etnia", ylab = "Idade", main = "Idade por Etnia")

# Regressão
summary(lm(Idade~Etnia, data = df))
