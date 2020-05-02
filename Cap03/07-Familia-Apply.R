#  apply() - arrays e matrizes
# tapply() - os vetores podem ser divididos em diferentes subsets
# lapply() - vetores e listas
# sapply() - versão amigável da lapply
# vapply() - similar a sapply, com valor de retorno modificado
# rapply() - similar a lapply()
# eapply() - gera uma lista
# mapply() - similar a sapply, multivariada
# by

# Se você estiver trabalhando com os objetos: 

# list, numeric, character (list/vecor) => sapply ou lapply
# matrix, data.frame (agregação por coluna) => by / tapply
# Operações por linha ou operações específicas => apply

# Usando um loop
lista1 <- list(a = (1:20), b = 35:67)
lista1

valor_a = 0
valor_b = 0


sapply(lista1, sum)
sapply(lista1, mean)

x <- matrix(c(20, 13, 65, 32, 45, 12, 76, 49, 82), nr = 3, byrow = T)
x

apply(x, mean)
apply(x, 1, mean) # Valor de marge linha
apply(x, 2, mean) # Valor de marge coluna
apply(x, 1, plot)

# Aplicando apply() a um Dataframe
escola <- data.frame(Aluno = c('Bob', 'Tereza', 'Marta', 'Felipe', 'Zacarias', 'Elton'),
                     Fisica = c(91, 82, 75, 97, 62, 74),
                     Matematica = c(99, 100, 86, 92, 91, 87),
                     Quimica = c(56, 72, 49, 68, 59, 77))
escola
escola$Matematica

# Calculando média por aluno
escola$Media = NA
escola

escola$Media = apply(escola[,c(2,3,4)], 1, mean)
escola
escola$Media = round(escola$Media)
escola

# tapply()
?gl
tabela_basquete <-
  data.frame(equipe = gl(5, 5, labels = paste("Equipe", LETTERS[1:5])),
             jogador = sample(letters, 25),
             num_cestas = floor(runif(25, min=0, max=50)))


View(tabela_basquete)
summary(tabela_basquete)

install.packages('sqldf')
library(sqldf)

sqldf("select equipe, sum(num_cestas) from tabela_basquete group by equipe")

tapply(tabela_basquete$num_cestas, tabela_basquete$equipe, sum)
tapply(tabela_basquete$num_cestas, tabela_basquete$equipe, mean)

# by
?by

dat <- data.frame(species=c(rep(c(1,2,3), each=5)), 
                  petal.length=c(rnorm(5, 4.5, 1), 
                                 rnorm(5, 4.5, 1), 
                                 rnorm(5, 5.5, 1)), 
                  petal.width=c(rnorm(5, 2.5, 1), 
                                rnorm(5, 2.5, 1), 
                                rnorm(5, 4, 1)))

dat$species <- factor(dat$species)
View(dat)

by(dat, dat$species, function(x) {
  # Calcular o comprimento médio da petala para cada espécie
    mean.pl <- mean(x$petal.length)
})

# lapply()
?lapply

lista1 <- list(a = (1:10), b = (45:77))
lista1
lapply(lista1, sum)
sapply(lista1, sum)

# vapply()
?vapply

# A função fivenum() retorna 5 estatísticas do conjunto de dados: (minimum, lower-hinge, median, upper-hinge, maximum) 
# https://stat.ethz.ch/R-manual/R-patched/library/stats/html/fivenum.html
vapply(lista1, 
       fivenum, 
       c(Min. = 0, 
         "1stQu." = 0, 
         Median = 0, 
         "3rd Qu." = 0, 
         Max = 0))
