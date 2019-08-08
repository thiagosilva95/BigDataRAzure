?sample

args(sample)
args(mean)
args(sd)

# Funções built-in (pacote base do pacote R)
abs(-43)
sum(c(1:5))
mean(c(1:5))
append(c(1:5),6)

# Funções dentro de funções
plot(rnorm(10))

# Criando funções
myFunc <- function(x) {
  x + x
}
myFunc(10)

myFunc2 <- function(a, b) {
  valor = a ^ b
  print(valor)
}

myFunc2(2,2)

jogando_dados <- function() {
  num <- sample(1:6, size = 1)
  num
}
jogando_dados()

# Funções sem número definido de argumentos
