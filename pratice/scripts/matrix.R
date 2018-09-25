mat <- matrix(ncol = 2, nrow = 3)
mat
mat <- matrix(data = 1:6, nrow = 2, ncol = 3, byrow = T)
mat

# Exercice
Pierre <- c(8,9,15)
Nathalie <- c(17,12,13)
Jacques <- c(11,15,7)
Julie <- c(5,12,19)
matrice <- matrix(c(Pierre,Julie,Nathalie,Jacques), nrow = 4, ncol = length(Pierre), byrow = T)
matrice
rownames(matrice) <- c("Pierre","Julie","Nathalie",'Jacques')
colnames(matrice) <- c("Histoire","Biologie","Sport")
matrice

# Indexation
matrice[1,2]
matrice["Julie","Sport"] # si rowname et colname actif
matrice["Nathalie",c("Histoire","Sport")]
matrice[1:2,c(1,2)]        
matrice[2:4,c("Biologie","Histoire")]
matrice[sort(rownames(matrice))[1:3], colnames(matrice)[c(1,3)]]
matrice[,"Histoire"]
matrice[1:2,]
matrice[,] # pareil que matrice
matrice[,"Biologie"]

# Vecteurs
is.vector(matrice["Pierre",])
is.vector(matrice[,"Biologie"])
mean(matrice["Julie",])
is.vector(matrice[1:3,"Sport"])
is.vector(matrice)
is.matrix(matrice)
mean(matrice) # regroupe la matrice en un seul vecteur
