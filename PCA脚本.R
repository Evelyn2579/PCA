library("FactoMineR")
library("factoextra")
library("corrplot")

c01exp <- read.table("F:/C01.genes.tpm.results",header=T)
c01exp1 <- c01exp[,1:19]
c01exp <- c01exp1
rownames(c01exp) <- c01exp[,1]
c01exp <- c01exp[,-1]
c01expt = t(c01exp)
res.pca <- PCA(c01expt, graph = FALSE)
eig.val <- get_eigenvalue(res.pca)
eig.val
fviz_eig(res.pca, addlabels = TRUE, ylim = c(0, 30),barfill="#000000",main = "") 
var <- get_pca_var(res.pca) 
ind <- get_pca_ind(res.pca)
fviz_pca_ind(res.pca, col.ind = "cos2", gradient.cols = c("#000000", "#000000"),repel = TRUE)