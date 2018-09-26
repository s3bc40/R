data <- read.table("../donnees/data_expression.txt", header = T)
data
class(data)
focus <- read.table("../donnees/List_gene_focus.txt", header = T)
list_focus <- as.vector(focus[,"id"])
list_focus
filter_list <- data[,"id"] %in% list_focus
data_focus <- data[filter_list,]
data_focus
rownames(data_focus)
data_focus[,1]
rownames(data_focus) <- data_focus[,1]
data_focus
data_focus <- data_focus[,-1]
data_focus
data_focus <- t(data_focus)
data_focus
result_correlation <- cor(data_focus)
result_correlation
library("reshape2")
list_correlation <- melt(result_correlation)
list_correlation
is.list(list_correlation)
str(list_correlation)
?abs
list_correlation <- list_correlation[abs(list_correlation[["value"]])>0.6,]
list_correlation
list_correlation[["Alphabetique"]] <- as.character(list_correlation[,"Var1"])<as.character(list_correlation[,"Var2"])
list_correlation
is.vector(list_correlation[,4]==TRUE)
is.list(list_correlation[,4]==TRUE)
list_correlation <- list_correlation[list_correlation[,4]==TRUE,]
list_correlation
list_correlation <- list_correlation[,c(-3,-4)]
list_correlation["type"] <- "correlation_pair"
list_correlation
data_PPI <- read.table("../donnees/data_PPI.txt", header = T)
data_PPI
colnames(list_correlation)[1]="id1"
colnames(list_correlation)[2]="id2"
colnames(data_PPI)[3]= "type"
id1<-as.vector(list_correlation[,"id1"])
id2<-as.vector(list_correlation[,"id2"])
list_net_gene <- unique(c(id1,id2))
list_net_gene
LISTE <- rbind(list_correlation, data_PPI)
LISTE
write.table (LISTE,"../resultats/LISTE.txt", sep="\t",row.names=FALSE,quote=F)
