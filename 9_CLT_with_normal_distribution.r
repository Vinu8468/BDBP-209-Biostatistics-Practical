# CLT with uniform distribution
# generate 10000 point from uniform distribution(a, b)

a=6
b=12
x=runif(10000,a,b)
n_sample=16
xbar_vec=c()
for(i in 1:10000){
	xa = runif(n_sample,a,b)
	xbar=mean(xa)
	xbar_vec=c(xbar_vec,xbar)
}
pdf('clt_uniform.pdf')
par(mfrow=c(2,1))
hist(x,col="purple",main="uniform distribution",xlim=c(4,14))
hist(xbar_vec,col="pink",main="clt with uniform distribution",xlim=c(4,14))
dev.off()
