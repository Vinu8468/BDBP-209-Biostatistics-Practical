#Binomial Distribution
# 1) pbinom(x,n,p)--> return cummulative p-valuee up to x values
x=7
n=10
p=0.5
pvalue=pbinom(x,n,p)
print(pvalue)
# 0.9453125

# 2) x=qbinom(pvalue,n,p)--> for a pvalue, return , x values
n=10
p=0.2
pvalue=0.7
x=qbinom(pvalue,n,p)
print(x)
# 3

# 3) pdens=dbinom(x,n,p)--> gives binomial probability p(x,n,p)
n=10
p=0.5
x=4
pdens=dbinom(x,n,p)
print(pdens)
# 0.2050781

# 4) x=rbinom(1,n,p) retuns a random deviate from p(n,p)
n=10
p=0.02
x=rbinom(1,n,p)
print(x)
# 0

n=10
p=0.5
x=rbinom(1,n,p)
print(x)
# 6

# 5) cummulative distribution
n=10
p=0.5
x=seq(0,10)
pvalue=pbinom(x,n,p)
plot(x,pvalue,pch=20,col="blue")

# 6) binomial probability distribution
x=seq(0,10)
n=10
p=0.5
dens=dbinom(x,n,p)
plot(x,dens,type="h",col="yellow")

# 7)#simulated binomal distribution
n=10
p=0.5
x=rbinom(1000,n,p)
tb=table(x) 
print(tb)

#  1   2   3   4   5   6   7   8   9  10 
# 11  48 109 185 240 211 139  51   5   1 
plot(tb,col='red')

df=data.frame(tb)
#df
