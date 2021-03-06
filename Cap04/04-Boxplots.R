# Scatterplots (Mostra a rela��o entre duas vari�veis)

setwd("D:/codes/R/dsa/BigDataRAzure/Cap04")
getwd()

set.seed # reproduzir mesmos valores radomicos
x = rnorm(10, 5, 7)
y = rpois(10, 7)
z = rnorm(10, 6, 7)
t = rpois(10, 9)

# Cria o plot
plot(x, y, col = 123, pch = 10, main = "Multi Scatterplot",
     col.main = "red", cex.main = 1.5, xlab = "Vari�vel Independente",
     ylab = "Vari�vel dependente")

# Adiciona outros dados
points(z, t, col = "blue", pch = 4)

# Adiciona outros dados
points(y, t, col = 777, pch = 9)

# Cria legenda 
legend(-6,5.9, legend = c("N�vel 1", "N�vel 2", "N�vel 3"),
       col = c(123, "Blue", 777), pch = c(10, 4, 9),
       cex = 0.65, bty = "n")
