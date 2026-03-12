#set operations

A= unique(c(10,20,30,40,50,60,70,80,90))
B= unique(c(70,80,90,100,120,140,160))
C= unique(c(140,160,200,300,400))

#union between set
U= union(A,B)
print(U)

#intersection
I=intersect(A,B)
print(I)

#intersection 3 set
II =intersect(intersect(A,B),C)
print(II)

#ven diagram
library(gplots)
venn(list(A,B,C))

#Random sampling from a data set
X=seq(1,100)
S1=sample(X, 12,replace=FALSE)
print(S1)

# create DNA random seq
S=c("A", "T", "G","C")
Seq = sample(S,40,replace=TRUE)
print(Seq)

# collapse the list to make a DNA segment
DNA_STRING = paste(Seq,collapse="")
print(DNA_STRING) 

# simple coin toss
CT= c("H","T")
toss =sample(CT, 20, replace=TRUE)
print(toss)

#create permutation and combination
library(gtools)
P = c("A","T","G","C")

#permutations of n elements of P taken all at a time
codons <- permutations(n = length(P),r = 3,v = P,repeats.allowed = TRUE)
print(codons) 

com_codons <- combination(n=length(P),r=3,v=P)
print(com_codons)
