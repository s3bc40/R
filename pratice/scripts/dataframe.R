resultats <- data.frame(taille=c(185,178,165,171,172), poids=c(82,81,55,65,68), QI=c(110,108,125,99,124), sexe=c("M","M","F","F","F"), row.names=c("Paul","Matthieu","Camille","Mireille","Capucine"))
resultats
View(resultats) # to see the data frame other than console
rownames(resultats)
colnames(resultats)
### stringsAsFactors : option de data.frame qui prend un booleen. Utile pour eviter erreurs avec factor

# Manipulation
resultats["Camille","taille"]
resultats[1:3,c("QI","sexe")]
resultats[c("Paul","Capucine"),]
resultats$taille
resultats$sexe
#attach(resultats) # creera pour chaque colonne du tableau de donnees x une variable donc le nom sera le nom de la dite colonne et le contenu les elements de la colonne.
taille
mean(poids)

# Exo TD modelo
ls()
data_mais <- read.table("../donnees/mais.txt",header = T)
View(data_mais)
data_mais$Hauteur
data_mais$Masse
mean(data_mais$Masse,na.rm = T)
summary(data_mais)
data_mais[,]
data_mais[1,2]
data_mais[1,]
data_mais[,2]
data_mais[,3]
data_mais[,2:5]
data_mais = data_mais[c(-1,-3),]
data_mais
mean(data_mais$Hauteur)
correaltion11 <- cor(data_mais[,2], data_mais[,3])
correaltion22 <- cor(data_mais[,2:5])
correaltion22
