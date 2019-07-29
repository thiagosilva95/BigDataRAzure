vec1 <- c(1001, 1002, 1003, 1004, 1005)
vec2 <- c(0, 1, 1, 0, 2)
vec3 <- c("Verde", "Laranja", "Azul", "Laranja", "Verde")

# Unindo dataframes
df <- data.frame(vec1, vec2, vec3)
df

# Verificando que o R categorizou a última coluna como fator
str(df)

# Verificando os níveis do fator. Os níveis 
levels(df$vec3)

# Criando nova coluna atribuindo labels
df$cat1 <- factor(df$vec3, labels = c("Cor2", "Cor1", "Cor3"))
df

# Internamente inteiros, ordenado ordem alfabética
str(df)
