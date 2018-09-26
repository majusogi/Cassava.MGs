R code 

library(gplots)
library(RColorBrewer)

data <- read.csv("merged.csv", sep = ",", header = TRUE )
rnames <- data[,1]
mat_data <- data.matrix(data[,2:ncol(data)]) 
rownames(mat_data) <-rnames


heatmap.2(mat_v, density.info="none", trace="none", col=col, cexCol=0.5, cexRow=1, margins =c(11,11), 
          hclustfun = function(x) hclust(x,method = 'ward.D'), lwid=c(0.5, 2), key=F, lhei = c(0.5, 2))

Omit clustering: 
dendrogram="none"     # only draw a row dendrogram
Colv="NA"            # turn off column clustering

my_palette <- colorRampPalette(c("red", "yellow", "green"))(n = 299)
col=my_palette

heatmap.2(mat_data, density.info="none", trace="none", dendrogram="none", Colv="NA", col=my_palette, cexCol=0.5, cexRow=1, margins =c(11,11), lwid=c(0.5, 2), key=T, lhei = c(0.5, 2))

