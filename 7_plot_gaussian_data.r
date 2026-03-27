# Plot the histogram of SOCR  data
# read data into a dataframe
dat = read.csv(file="SOCR_height_weight_data.csv",header=TRUE)
print(dim(dat))
print(colnames(dat))

# convert height to cm , weight to kg
height=dat$Height.Inches *2.5
weight = dat$Weight.Pounds *0.45

# compute mean, sigma, 2 of height and weight
mu_height=mean(height)
sigma_height=sd(height)
z_height =(height-mu_height)/sigma_height

mu_weight=mean(weight)
sigma_weight=sd(weight)
z_weight=(weight-mu_weight)/sigma_weight

pdf('plots.pdf') # open the file
par(mfrow =c(2,2)) # this is to split the plot to make 4 plots now you can make 4 graph

# split the canvas in 2x2 and fill along rows
hist(height,breaks=30,col="blue")

hist(z_height,breaks =30, col='blue')

hist(weight, breaks =30, col='red')

hist(z_weight, breaks =30, col="red")

dev.off() # close the file

# if no output then put it in a file and those plots will be in that


