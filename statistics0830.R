#possible outcomes
x<-c(0.9,1,2,3,4)

#corresponding possibilities
P<-c(0,0,0.4,0.5,0.1)

#check if the sum is 1
sum(P) == 1

#Mean
mu<-sum(x*P)
mu

#Variance
var<-sum(P*(x-mu)^2)
var

#standard Deviation
sqrt(var)
