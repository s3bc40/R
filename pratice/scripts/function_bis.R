#!/usr/bin/Rscript

# Fonctions
age <- 25
nom <- "Philippe"
print(paste("Bonjour je m'appelle", nom,"et j'ai", age,"ans")) #sep=" " par defaut
print(paste("Bonjour j'ai", scan(nmax=1),"ans"))
nchar("Hello World !")
toupper("BoNjoUR")
tolower("bOnJoUR")
substr("Hello World !",1,8) # !! : premier cractere index 1 (contrairement aux autres : 0)

# Exo

variable <- "Bonjour"
print(toupper(substr(variable,2,nchar(variable)-1)))

# Environnement R
var1<-2;var2<-65;var3<-25;var4<-96
ls() #permet de lister les variables
?ls
rm(var3) # remove var3
?q;?quit # quit session
q(save = "no")