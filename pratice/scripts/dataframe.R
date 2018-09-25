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
attach(resultats) # creera pour chaque colonne du tableau de donnees x une variable donc le nom sera le nom de la dite colonne et le contenu les elements de la colonne.
taille
mean(poids)
