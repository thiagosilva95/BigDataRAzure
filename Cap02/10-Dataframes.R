df = data.frame()
df

class(df)

nomes = character()
idades = numeric()
itens = numeric()
codigos = integer()
df = data.frame(c(nomes, idades, itens, codigos))
df

pais = c("Portugal", "Inglaterra", "Irlanda", "Egito", "Brasil")
nome = c("Bruno", "Tiago", "Amanda", "Bianca", "Marta")
altura = c(1.88, 1.76, 1.53, 1.69, 1.68)
codigo = c(5001, 2183, 4702,7965,8890)

# Criamos um dataframe de diversos vetores
pesquisa = data.frame(pais, nome, altura, codigo)
pesquisa
# Adicionamos um novo vetor a um dataframe existente
olhos = c("Verde", "Azul", "Azul", "Castanho", "Castanho")
pesq = cbind(pesquisa, olhos)
pesq


#Informações sobre o dataframe
str(pesq)
dim(pesq)
length(pesq)

#Obtendo um vetor de um dataframe
pesq$pais

# Extrair valor
pesq[1,1]

# Número de linhas
nrow(pesq)

# Número colunas
ncol(pesq)

#Primeiros elementos do dataframe
head(pesq)
head(mtcars)

# Ultimos elementos
tail(mtcars)

# Filtro para um subset de dados que atendem a um critério
pesq[altura < 1.60,]
pesq[altura < 1.60,c('codigo', 'olhos')]
pesq

# Dataframe nomeados
names(pesq) <- c("Pais", "Nome", "Altura", "Código", "Olhos")
pesq

colnames(pesq) <- c("Var1","Var2","Var3","Var4","Var5")
rownames(pesq) <- c("Obs ","Obs 2","Obs 3","Obs 4","Obs 5")
pesq

# Carregando arquivo csv
?read.csv
pacientes <- data.frame(read.csv(file = "pacientes.csv", header = TRUE, sep = ","))

# Visualizando o dataset
View(pacientes)
head(pacientes)
summary(pacientes)

pacientes$Diabete

# Histograma
hist(pacientes$Idade)

# Megeando data
dataset_final = merge(pesq, pacientes)
dataset_final
