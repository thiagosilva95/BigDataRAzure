x = 25
if (x < 30) {
  "Este número é menor que 30"
}
if (x < 7) {
  "Este número é menor que 7"
} else {
  "Este número não é menor que 7"
}

# Ifelse
x = 5
ifelse(x <6, "Correto", NA)

# Rep
rep(rnorm(10), 5)

# Repeat
x = 1
repeat {
  x = x + 3
  if (x > 99) {
    break
  }
  print(x)
}

# For
for (i in 1:20) {
  print(i)
}

# Ignora alguns elementos dentro do loop