#setwd("pratice/")
print("Ce résultat apapraitra sur l'écran")
print(5*2)

sink("resultats/sortie_essai_sink.txt",append = TRUE)
print("Le résultat est enregistré dans le fichier de sortie.")
print(8*2)

sink()
print("On redirige la sortie à l'écran.")
#source("scripts/essai_sink.R")