num1 <- 7
num1

class(num1)
mode(num1)
typeof(num1)

num2 = 16.82
num2
mode(num2)
typeof(num2)

# Integer
is.integer(num2)
is.integer(num1)
y = as.integer((num2))
y

as.integer('3.17')
as.integer('joe')
as.integer(TRUE)

char1 = 'A'
char1

char2 = "cientista"
char2

char3 = c("Data", "Science", "Academy")
char3
mode(char3)
typeof(char3)
class(char3)

# Complex
compl = 2.5 + 4i
compl
mode(compl)
typeof(compl)

sqrt(-1)
sqrt(-1+0i)
sqrt(as.complex(-1))

x = 1; y=2
z = x > y
z
class(z)

# Operações com 0
5/0
0/5

# Erro
'Joe'/5
