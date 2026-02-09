import math as m
import matplotlib.pyplot as plt
def Prob_Bernoulli_Func(x,n,p):
    prob = (p**x)*(1-p)**(n-x)
    comb = m.factorial(n)/(m.factorial(x)*m.factorial(n-x))
    return prob*comb

def Distribution(n,p):
    X=[m for m in range(n+1)]
    Y=[Prob_Bernoulli_Func(x,n,p) for x in X]
    return X,Y

x,y=Distribution(10,0.5)
plt.plot(x,y,marker= "o")
plt.xlabel('x')
plt.ylabel("P(X=x)")
plt.title("Binomial Distribution (n=10, p=0.5)")
plt.show()



