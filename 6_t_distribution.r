#t-distribution in R
#1.Given a t value, compute cummulative probability
#form  -inf to t
# pt(t,n-1) n-1 is degree of freedom
n<-12
t<-2.1
pvalue <- pt(t,n-1)
print(paste("p value=", pvalue))
# so the probability is 0.970199....

#2.Given a p-value , compute upto what t this is cummulative
pvalue<-0.95
n<-16
t<-qt(pvalue,n-1)
print(paste("t is =",t))

#3. To compute probability density at a given t
t<- -.8
n<- 16
dens <- dt(t,n-1)
print(paste("density is = ",dens))

#4. Generate a random deviate from t distribution with n-1 degree of freedom.
n<- 16
t<- rt(1,n-1)
print(paste('one of the random deviate=',t))

#5. Draw a t-distribution 
t<- seq(-4,4,0.1)
n<- 16
dens <- dt(t,n-1)
plot(t, dens,type="l")

#6. plot histogram 
n<- 16
dens <- rt(10000,n-1)
hist(dens)

