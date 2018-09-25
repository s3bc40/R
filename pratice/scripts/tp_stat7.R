data <- load("donnees/Chapitre7.RData")
print(data)
head(performanceF)
names(tailleF)
names(tailleG)

# Ensemble des noms presents dans l'etude
union(names(tailleG), names(performanceG)) #  les noms pour lesquels nous disposons a la fois de mesures de taille et de performance
union(names(tailleF), names(performanceF))
length(union(names(tailleG), names(performanceG)))
length(union(names(tailleF), names(performanceF)))

# Noms en communs
communG <- intersect(names(tailleG), names(performanceG))
communF <- intersect(names(tailleF), names(performanceF))

# Nom present que dans un seul ensemble
setdiff(names(tailleG), names(performanceG)) # ! comparaison asymetrique (xy != yx)
setdiff(names(performanceG), names(tailleG)) # element de perf qui n'est pas dans taille

# Operateur %in%
names(tailleF)%in%names(performanceF)
test <- tailleF[names(tailleF)%in%names(performanceF)]

# Ordonner vecteurs de maniere reciproque
tailleG2 <- tailleG[communG]
performanceG2 <- performanceG[communG]
tailleF2 <- tailleF[communF]
performanceF2 <- performanceF[communF]
tailleG2
tailleF2
performanceG2
performanceF2

## Trie avec order
tailleG2_tri <- tailleG2[order(tailleG2)]
performanceG2_tri <- performanceG2[order(tailleG2)]
tailleF2_tri <- tailleF2[order(tailleF2)]
performanceF2_tri <- performanceF2[order(tailleF2)]

# Correlation et regression lineaire
cor(tailleG2_tri,performanceG2_tri) # independance ou pas 
cor(tailleF2_tri, performanceF2_tri)

## Regression lineaire : relation affine de type y = ax +b
lm(performanceG2_tri~tailleG2_tri)

#Test statistiques 
## H0 , p-value, alpha = 0.05 :  difference entre nos deux series de donnees n'a que 5% de chances d'etre due au hasard. Si la p-value est comprise entre 0 et 0.05 on dit que l'on rejete l'hypothese nulle
###=========== Test de correlation===============###
#### H0 : Le coeff de correaltion est egal a 0 ####
?cor.test
cor.test(tailleG2_tri, performanceG2_tri)
cor.test(tailleF2_tri, performanceF2_tri)

#### Nous pouvons donc conclure que, autant pour les filles que pour les garçons, on observe une legère correlation positive entre taille et performance en saut en hauteur mais que cette correlation n'est pas signicativement differente de 0.

###=========== Test des medianes ===============###
median(performanceG2_tri)
median(performanceF2_tri)
?wilcox.test
wilcox.test(performanceF2_tri, performanceG2_tri)
#### Cette valeur est bien inferieure a notre seuil de 0.05 ce qui nous permet donc de rejeter l'hypothèse nulle. Le resultat de ce test nous apprend donc qu'il existe une difference significative de performances en saut en hauteur entre les groupes de garçons et de filles etudies.