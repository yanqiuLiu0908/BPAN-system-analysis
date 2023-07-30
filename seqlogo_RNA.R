#loading package
library(ggplot2)
library(ggseqlogo)
library(stringr)
library(ggsci)
library(tidyverse)
library(seqinr)
library(Biostrings)
library(patchwork)

setwd("/home/yanqiuLiu/project/RIP_Pull_down/2.stats")
getwd()
#Read data, data remove sequence name
seq1 <- read.table('all/seqlogo/sAG_seqkit15_subseq15.fa',header = F)
seq2 <- read.table('all/seqlogo/sAO_seqkit15_subseq15.fa',header = F)
seq3 <- read.table('all/seqlogo/sAOG_seqkit15_subseq15.fa',header = F)

head(seq1)


motif1 <- as.vector(seq1)
motif2 <- as.vector(seq2)
motif3 <- as.vector(seq3)
motif4 <- as.vector(seq4)


p1 <- ggseqlogo(motif1, method = 'prob',seq_type='RNA')+
  theme_classic()+
  scale_y_continuous(labels = scales::percent)+
  ggtitle("AG_assigned")


p2 <- ggseqlogo(motif2, method = 'prob',seq_type='RNA')+
  theme_classic()+
  scale_y_continuous(labels = scales::percent)+
  ggtitle("AO_assigned")

p3 <- ggseqlogo(motif3, method = 'prob',seq_type='RNA')+
  theme_classic()+
  scale_y_continuous(labels = scales::percent)+
  ggtitle("AOG_assigned")

p1|p2|p3


