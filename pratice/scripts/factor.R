# Creation d'un facteur
notes <- factor(c("A","C","B","C","F","D","E","F"),levels=c("A","B","C","D","E","F")) #levels par défaut
notes

# Manipulation des facteurs
names(notes)<- c("DM1","DS1","DS2","DM2","DS3","DS4","DS5","DM5")
notes
length(notes)
notes[3]
notes[c("DS2","DS4")]
notes[1:4]
levels(notes)
levels(notes) <- c(levels(notes),"G")
notes
head(notes,n = 3)
tail(notes,n = 3)

# Facteur à vecteur
vecteur <- 3:8
facteur<-as.factor(vecteur)
facteur
is.vector(vecteur)
is.factor(facteur)

## Probleme possible
note2 <- factor(c(15,11,9,10))
note2
as.numeric(note2)

## Solution
as.numeric(as.character(note2))
