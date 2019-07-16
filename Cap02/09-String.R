texto <- "Isso é uma String"
texto

x = as.character(3.14)
x
class(x)

# Concatenando Strings
nome = "Nelso"; sobrenome = "Mandela"
paste(nome, sobrenome)
cat(nome, sobrenome)

# Formatando a saída
sprintf("A %s é nota %d", "Data Science Academy", 10)

# Extaindo parte da string
texto <- "Isso é uma String"
substr(texto, start = 12, stop = 17)
?substr

# Contando número de caracter
nchar(texto)

# Alterando captalização
tolower("Histogramas e Elementos de Dados")
toupper("Histogramas e Elementos de Dados")

# biblioteca para manipulação de texto
library(stringr)

?strsplit
# Dividindo String em caracteres
strsplit("Histogramas e Elementos de Dados", NULL)

strsplit("Histogramas e Elementos de Dados", " ")

# Trabalhando com String
string1 <- c("Esta é a primeira parte da minha string e será a primeira parte do meu vetor", "Aqui a minha string continua, mas será transformada no segundo vetor")
string1

string2 <- c("Precisamos testar outras strings - @???!$",
            "Análise de Dados em R")

# Adicionando 2 Strings
str_c(c(string1, string2), sep = "")

# Podemos contar quantas vezes um caracter aparece no texto
str_count(string2, "s")

# Localiza a primeira e ultima posicao em que o caracter aparece na string
str_locate_all(string2, "s")

# Substitui a primeira ocorrência de um caracter
str_replace(string2, "\\s", "")

str_replace_all(string2, "\\s", "")

# Detectando padrões nas strings
string1 = "17 jan 2001"
string2 = "1 jan 2001"
padrao <- "jan 20"
grepl(pattern = padrao, x = string1)
grepl(pattern = padrao, x = string2)
