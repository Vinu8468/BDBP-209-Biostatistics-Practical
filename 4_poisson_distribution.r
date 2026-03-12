#POISSON DISTRIBUTION IN R

#6TH MARCH 2026

#1. Cumulative probability upto x
#pvalue=ppois(x,mu)
mu=7.0
x=5.0
pvalue=ppois(x,mu)
print(paste("pvalue=",pvalue))
#OUTPUT: "pvalue=0.300708276174361"

#2. Given a cumulative probability, find corresponding x.
#x=qpois(pvalue,mu)
mu=8
pvalue=0.88
x=qpois(pvalue,mu)
print(paste("x=",x))
#OUTPUT: "x=11"

#3. Poisson probability for a x value
#pdens=dpois(x,mu)
mu=8.0
x=5
pdens=dpois(x,mu)
print(paste("pdens=",pdens))
#OUTPUT: "pdens= 0.0916036615925792"

#4. Generate random deviate from a poisson distribution of mean mu
#x=rpois(1,mu)
mu=8
x=rpois(6,mu)
print(x)
#OUTPUT: [1] 7 7 8 4 4 8

#5. Plot a poisson distribution
mu=8
x=seq(0,3*mu)
dens=dpois(x,mu)
plot(x,dens,type="h",col="red")
#If you increase the value of mu, the graph will look like bell shape, numerically it will be similar to gaussian but gaussian is area under the curve and this is still a discrete value. This idea is called continuous approximate for discrete distribution.

#Plot the random d distribution
mu=7
pdens=rpois(1000,mu)
tab=table(pdens)
print(tab)
plot(tab,type="h")
