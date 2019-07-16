# Importando a biblioteca
install.packages('randomForest')
install.packages('ggplot2')
install.packages('dplyr')
install.packages('devtools')

# Carregando a biblioteca
library(ggplot2)

# Documentação da função
help(mean)
?mean

# Utilizando o SOS para obter documentação da função
install.packages('sos')
library(sos)
findFn('fread')

# Buscar função pelo nome
help.search('randomForest')
??matplot

# Obtendo exemplo de como utilizar função
example('matplot')

# Saindo do RStudio. Pressionar Enter para salvar Workspace
q()
