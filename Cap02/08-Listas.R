lista_caracter1 = list('A', 'B', 'C')
lista_caracter1
lista_caracter2 = list(c("A", "A"), "B", "C")
lista_caracter2
lista_caracter3 = list(matrix(c("A", "A", "A", "A"), nr = 2), "B", "C")
lista_caracter3

lista1 <- list(1:10, c("Zico", "Ronaldo", "Garrincha"), rnorm(10))
lista1

#Slicing
lista1[1]
lista1[2]
lista1[[2]][1]
lista1[[2]][1] = "Monica"
lista1

names(lista1) <- c("inteiros", "caracteres", "numéricos")
lista1

vec_num = 1:4
vec_char = c("A", "B", "C", "D")
lista2 = list(Numeros = vec_num, Letras = vec_char)
lista2

lista1$caracteres
length(lista1$inteiros)

length(lista1)
lista1$caracteres[1]

lista3 <- c(lista1, lista2)
lista3
