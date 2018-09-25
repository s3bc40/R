athletes <- list()
athletes <- list(Didier=c(630, 625, 628, 599, 635, 633, 622), Jules=c(610, 590, 595, 582, 601, 603), Pierre=c(644, 638, 639, 627, 642, 633, 639), Matthieu=c(622, 625, 633, 641, 610), Georges=c(561, 572, 555, 569, 653, 549, 558, 561), Khaled=c(611, 621, 619, 618, 623, 614, 623), Guillaume=c(599, 601, 612, 609, 607, 608, 594), Hermann=c(624, 630, 631, 629, 634, 618, 622), Carlos=c(528, 531, 519, 533, 521), Keith=c(513))
View(athletes)

#Manipulation
names(athletes)
length(athletes)
athletes[["Hermann"]]
athletes[[1]]
athletes[1:2]
athletes$Pierre
athletes[["Guillaume"]][1:3]
is.vector(athletes[["Guillaume"]])

# Traitement en serie
lapply(athletes, min, na.rm=T)
lapply(athletes, max, na.rm=T)
lapply(athletes, length)
lapply(athletes, mean) # lapply ; renvoie des objets de type list donc pas manipulable
sapply(athletes, mean)# sapply ; renvoie des objets de type vecteur, matrice, dataF en fonction des donnees
sort(sapply(athletes, mean), decreasing = T)
sapply(athletes, summary) # renvoie une matrice lisible et manipulable
lapply(athletes, summary) # renvoie une liste peu lisible

# Cas listes heterogenes
test <- cor.test(athletes$Didier, athletes$Pierre) # retourne une liste
is.list(test)
View(test)
test # la vue n est pas sous forme de liste
names(test) # voir la structure
str(test) #voir la structure plus détaillée
test$p.value
