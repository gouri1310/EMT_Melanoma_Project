setwd("C:/Users/rajaram/Desktop/CSB Proj/Correlation_Proteosome")
gs=read.csv("C:/Users/rajaram/Desktop/CSB Proj/Correlation_Proteosome/GSE116237_correlation calc.csv")
gs.cor=cor(gs)
df=gs.cor
write.csv(df,"GSE116237_corr_matrix.csv")
library(corrplot)
p.mat<-cor_pmat(gs)
ggcorrplot(gs.cor,
           hc.order = TRUE,
           type = "lower",
           outline.color = "white", p.mat = p.mat, sig.level = 0.05, insig = "pch",  #
           show.diag = TRUE, show.legend = FALSE,title="GSE116237")
