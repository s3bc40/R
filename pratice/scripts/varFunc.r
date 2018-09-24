# Déclaration, assignation, fonction
a <- 121 # on déclare a et on lui assigne une valeur
b <- 36
result_a <- sqrt(a)
result_b <- sqrt(b) 

chaine <- "Hello World !"
chaine <- 'Hello World !'
string <- "C'est bien R !"
string <- 'C\'est bien R!'

## Fonction paramètres
log(2)
log(2, base = exp(1))
log(2, base = 2)
log(2, base = 10)

## Booleans 
bool <- 5 == 5
5 != 5
5 <= 5
5 > 4
5 >= 4

## Test type de variable 
is.character(chaine)
is.numeric(a)
is.logical(bool) # opérateur logique boolean
is.logical(a)

## Typer ses variables (R typage implicite)
num = "42"
as.numeric(num)
err = "4K"
#as.numeric(err)
word = 72
as.character(word)
as.integer(3.14)
as.integer("3.14")
as.logical("TRUE")
as.logical("F")
as.logical("Hello")
as.logical(6)
as.logical(-1)
as.logical(0)
as.null("Give me Power !!!")
