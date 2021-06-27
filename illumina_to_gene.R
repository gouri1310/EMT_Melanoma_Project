#converting illumina probe IDs to gene symbols
setwd("C:/GSE ID Scores")
gse141484_df<-read.csv("C:/GSE ID Scores/GSE141484_non-normalized.csv")
class(gse141484_df)
probe_id=gse141484_df[['ID_REF']]
print(probe_id)
library("illuminaHumanv4.db") 
gene_df=data.frame(Gene=unlist(mget(x = probe_id,envir = illuminaHumanv4SYMBOL)))
print(gene_df)

