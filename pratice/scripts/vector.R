vector("numeric",10)
vector("character",5)
vector("logical", 7)
vecteur <- vector("numeric", length = 20)

# Equivalent plus court
numeric(10)
character(length = 5)
logical(20)

# Saisie au clavier
scan(nmax = 3)
scan()

# Generer des suites d element
1:10
20:10
rep(1,10)
rep("A",10)
rep("TRUE",10)
seq(1,10)
seq(1,10,2) # precision avec le pas

# Concatenation
c(1,2,3)
c("A","B","C")
vecteur1 <- 1:10
vecteur2 <- rep(2,5)
vecteur3 <- c(vecteur1,vecteur2)
print(vecteur3)

# Nommer les elements
poids <- c(77,58,66,82)
names(poids)
names(poids) <- c("Marc","Sophie","Julie","Blaise")
print(poids)

#Indexation
poids[1]
poids["Marc"]
poids[2:4]
poids[c(1,3)]
poids[rep(2,6)]
poids[-(3:4)]

# Indexation bool
vecteur4 <- c(1:12, 8:5, rep(2,4), 8:15, 16:12)
vecteur4
vecteur4>7
vecteur4[vecteur4>7]

#Modifier les elements
poids[c(1,4)] <- c(65,80)
prenoms <- c("Philippe", "Irene", "Pierre", "Paul", "Lucie", "Chloe", "Jacques", "Mathilde")
prenoms[3] <- "Quentin"

# Exo TD2 modelo
v1 <- c(2,36,5,4)
v1
v2 <- c(T,F,F,F)
v2
length(v1)
min(v1)
v1+v2 # booleen considere comme binaire (T = 1, F = 0)
v1*v2
