#Define data sets
x=rnorm(20,mean=25,sd=3)
y=rnorm(20,mean=23,sd=3.5)
z=rnorm(20,mean=26,sd=2.5)
print(x)
print(y)
print(z)
#creating a data frame
df=data.frame(x,y,z)
print(df)
#          x        y        z
#1  24.77401 21.16318 22.66778
#2  29.13966 23.11817 23.81806
#3  21.63461 26.41201 28.16053
#4  27.32373 24.89753 25.74094
#5  25.43669 23.39124 22.60263
#6  20.88928 18.20034 26.56242
#7  19.96543 26.45735 25.06030
#8  22.10291 23.16291 29.02283
#9  31.62681 28.22794 24.05318
#10 29.32631 22.12995 29.25601
#11 25.33741 31.44533 27.87517
#12 25.05971 27.18865 28.08006
#13 22.13859 26.39750 28.35738
#14 21.35815 25.49750 23.82018
#15 26.50058 25.55437 27.31609
#16 21.74490 21.27388 26.21350
#17 22.95702 22.46143 28.47822
#18 24.72129 24.87723 26.45188
#19 21.01929 23.47388 28.33049
#20 20.08611 22.51014 25.53388

#compute statistical parameter
# statistical summery
print(summary(x))
 #  Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#  19.97   21.57   23.84   24.16   25.70   31.63 

print(mean(y))
#24.39203

print(sd(y))
# 2.934059

print(median(y))
# 24.17556

# box plot with min max as wiskers and interquartile range with median, q1 and q3
boxplot(x)
boxplot(x,y,z)


