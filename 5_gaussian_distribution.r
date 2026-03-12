#GAUSSIAN DISTRIBUTION

#6TH MARCH

#1. Complete cumulative probabilty upto x
#   Area under curve from: infinity to x
#pvalue=pnorm(x,mu,sigma)
mu=20
sigma=3.0
x=16
pvalue=pnorm(x,mu,sigma)
print(paste("pvalue=", pvalue))
#OUTPUT: "pvalue= 0.0912112197258678"

#2. Given cumulative probability, computng corresponding x
mu=16
sigma=3.0
pvalue=0.7
x=qnorm(pvalue,mu,sigma)
print(paste("x=",x))
#OUTPUT: "x= 17.5732015381241"

#3. For a given x, find probabilty density at x
#pdens=dnorm(x,mu,sigma)
mu=16
sigma=3
x=11
pdens=dnom(x,mu,sigma)
print(paste("pdens=",pdens))
#OUTPUT: "pdens= 0.0331590462642496"

#4. Random Deviate
#Given a gaussian distribution we want to get a random number
#x=rnorm(1,mu,sigma)
mu=16
sigma=3
x=rnorm(1,mu,sigma)
print(paste("x=",x))
#OUTPUT: [1] "x= 13.6704232736159"

#5. Plot a Gaussian distribution
mu=16
sigma=3
x=seq(0,2*mu)
dens=dnorm(x,mu,sigma)
plot(x,dens, type="l", lwd=2, col="blue")

#6. Plot histogram of random deviates
mu=16
sigma=3
x=rnorm(10000,mu,sigma)
hist(x,breaks=30,col="red")

# Unit Gaussian
z=2.0
pvalue=pnorm(z)
z=qnorm(pvalue)
pdens=dnorm(z)
zdev=rnorm(10000)

z=seq(-4,4,0.1)
pdens=dnorm(z)
plot(z,pdens,type="l")


#Gaussian histogram
z=rnorm(10000)
hist(z,breaks=30)
