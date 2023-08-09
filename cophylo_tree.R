library('ggtree')
library(ape,warn.conflicts = F)


t1 <- read.tree("longB_coor_mafft_fasttree2.nwk")
plot(t1)

t2 <- read.tree("og15_coor_mafft_fasttree2.nwk")
plot(t2)

association <- read.csv("association.csv", header = F)
head(association)

p1<- cophyloplot(t1,t2,assoc=association,
                 use.edge.length = F,space = 80,
                 length.line =0.5,gap = 3, 
                 type = "phylogram",rotate=FALSE,
                 col=c("#E64B35"), lwd = 0.7, lty = 5,
                 show.tip.label = F, font = 3)

