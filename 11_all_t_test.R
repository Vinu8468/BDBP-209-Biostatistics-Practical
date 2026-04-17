# 1.one sample t-test
x = c(14.0,14.1,14.5,13.2,11.2,14.0,14.1,12.2,11.1,13.7,13.2,16.0,12.8,14.4,12.9)
res = t.test(x,mu=12,alternative= "two.sided",conf.level=0.90)
print(res)
#One Sample t-test

#data:  x
#t = 4.31, df = 14, p-value = 0.0007195
#alternative hypothesis: true mean is not equal to 12
#90 percent confidence interval:
# 12.84365 14.00968
#sample estimates:
#mean of x
# 13.42667

# 2.two sample t-test
x = c(9.4,10.8,8.9,9.6,10.0,13.0,10.0,13.5,10.0,9.5,10.0,9.75)
y = c(11.6,9.8,13.2,13.75,12.0,13.75,12.5,9.5,12.0,13.5,12.0,12.0)
res = t.test(x,y,alternative = "two.sided",paired = FALSE,var.equal= TRUE, conf.level=0.90)
print(res)

#Two Sample t-test

#data:  x and y
#t = -3.0743, df = 22, p-value = 0.005548
#alternative hypothesis: true difference in means is not equal to 0
#90 percent confidence interval:
# -2.7469291 -0.7780709
#sample estimates:
#mean of x mean of y
# 10.37083  12.13333

# 3. welsh two sample t- test
x = c(9.4,10.8,8.9,9.6,10.0,13.0,10.0,13.5,10.0,9.5,10.0,9.75)
y = c(11.6,9.8,13.2,13.75,12.0,13.75,12.5,9.5,12.0,13.5,12.0,12.0)
res = t.test(x,y,alternative = "two.sided",paired = FALSE,var.equal= FALSE, conf.level=0.90)
print(res)
#alternative can be two.sided,less, greater
#conf.level is confidence level

#Welch Two Sample t-test

#data:  x and y
#t = -3.0743, df = 21.984, p-value = 0.005551
#alternative hypothesis: true difference in means is not equal to 0
#95 percent confidence interval:
# -2.9514907 -0.5735093
#sample estimates:
#mean of x mean of y
# 10.37083  12.13333

# 4. two sample t-test for dependent sample
x = c(12,10,16,2,12,18,11,16,16,10,14,21,9,19,20)
y = c(11,10,11,3,9,13,8,14,16,10,12,22,9,16,18)
res = t.test(x,y,alternative = "greater",paired = TRUE, var.equal = FALSE, conf.level=0.90)
print(res)

#Paired t-test

#data:  x and y
#t = 3.167, df = 14, p-value = 0.003428
#alternative hypothesis: true mean difference is greater than 0
#90 percent confidence interval:
# 0.9204759       Inf
#sample estimates:
#mean difference 
#            1.6 

