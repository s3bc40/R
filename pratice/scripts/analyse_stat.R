# Principe du Recyclage
poids <- c(85,78,54,98,66,78,77,62,89,92,76,77,55,68,71,72,99,102,54,66,98,75,82,83,75)
poids <- poids + 1
print(poids)
poids <- poids - c(1,0) # soustraction aux index impairs
print(poids)
sqrt(poids)

# Maitriser vecteur
length(poids)
poids <- poids[2:length(poids)] # permet d'eliminer la premiere entree
poids
head(poids)
tail(poids)
poids <- head(poids,length(poids)-1) # permet d'eliminer le dernier

# Trier vecteurs
sort(poids)
sort(poids,decreasing = TRUE)
sort(tolower(c("A","B","C","a","b","c")))
sort(c(TRUE, FALSE, T, F))
order(poids)
poids <- poids[order(poids)]
rank(poids) # determiner les rangs

# Distribution vecteur
mean(poids)
sum(poids)/length(poids)
median(poids)
poids2 <- c(poids, rep(NA,5))
mean(poids2)
median(poids2)
mean(poids2,na.rm = T)
median(poids2, na.rm = T)

## Dipersion d'une distribution
min(poids)
max(poids)
quantile(poids) # Les quantiles sont les valeurs permettant de separer une distribution ordonnee de valeurs en q sous-distributions.
?quantile
quantile(poids, probs = seq(0,1,0.1)) # les 10-quantiles
summary(poids)
var(poids) #  la moyenne des carres moins le carre des moyennes
sd(poids)
