# Split-Apply-Combine - Plyr

setwd("D:/codes/R/dsa/BigDataRAzure/Cap07")
getwd()

install.packages("plyr")
install.packages("gapminder")

library(plyr)
library(gapminder)
?gapminder # dataset - dados de população por país

# Split-Apply-Combine
?ddply
df <- ddply(gapminder, ~ continent,
            summarise, 
            max_le = max(lifeExp))
df
View(df)

?ddply
df2 <- ddply(gapminder, ~ continent,
            summarise, 
            n_uniq_countries = length(unique(country)))
df2
View(df2)

ddply(gapminder, ~ continent, 
      function(x) c(n_uniq_countries = length(unique(x$country))))


ddply(gapminder, ~ continent, 
      summarize,
      min = min(lifeExp), 
      max = max(lifeExp),
      median = median(gdpPercap))


# Usando um dataset do ggplot
library(ggplot2)
data(mpg)
str(mpg)
?mpg

# Trabalhando com um subset do dataset
data <- mpg[,c(1,7:9)]
str(data)
View(data)

# Sumarizando e agregando os dados
ddply(data, .(manufacturer),
      summarise, 
      avgcty = mean(cty))

# Várias funções em uma única chamada
ddply(data, .(manufacturer), 
      summarize, 
      avgcty = mean(cty), 
      sdcty = sd(cty), 
      maxhwy = max(hwy))


# Sumarizando os dados pela combinação de variáveis/fatores
ddply(data, .(manufacturer, drv), 
      summarize, 
      avgcty = mean(cty), 
      sdcty = sd(cty),
      maxhwy = max(hwy))



