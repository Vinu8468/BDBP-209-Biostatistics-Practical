# Demonstrate CLT with height, weight data

dat =read.csv(file="SOCR_height_weight_data.csv",header=TRUE)

height = dat$Height.Inches*2.5

mean_height_vec= c()
nsample=16
for (i in 1:10000){
	h=sample(height,16)
	hbar = mean(h)
	mean_height_vec=c(mean_height_vec,hbar)
}

pdf('clt.pdf')
par(mfrow=c(2,1))
hist(height, breaks=30,xlim=c(150,180))
hist(mean_height_vec,breaks=30,xlim=c(150,180))
dev.off()

# clt: if x is a gaussian N(mu, sigma)
# then xbar compute from n random sample of x is N(mu,sigma/root(n)

