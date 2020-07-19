# simple linear regression 
#In the linear regression,dependent variable y is linear combination of the
# independent 
#ho(X)=f(x,o)
#we have  dependent variable  is y and independent variable is x 
#hypothesis is  defined as  below:
#ho(x)=o0 + o1x

x<-c(2.5,5.1,3.2,8.5,3.5,1.5,9.2,5.5,8.3,2.7,7.7,5.9,4.5,3.3,1.1,8.9,2.5,1.9,
     6.1,7.4,2.7,4.8,3.8,6.9,7.8)
y<-c(21,47,27,75,30,20,88,60,81,25,85,62,41,42,17,95,30,24,67,69,30,54,35,76,86)
#see the relationship between x and y
plot(x,y)
#since the relation is linear , lets predict y based on x
lm.out<-lm(y~x)
lm.out
ggplot(lm.out,aes(x=x,y=y,color="red"))+geom_boxplot()
ggplot(lm.out,aes(x=x,y=y,color="red"))+geom_point()+stat_smooth(method = lm,
                                                                 col="red")
#see the result
#y=2.484+9.776*
#create a predicted line along the data 
abline(lm.out)
#create a test data 
#test data : 9.25
test<-data.frame(x=c(9.25))
predict(lm.out,test)
#check result manually
2.484+9.776*9.25
summary(lm.out)
ggplot(lm.out,aes(x=x,y=y,color="Red"))+geom_point()+stat_smooth()
#so if the student is studying 9.25 hours in a day , probably he wil get a 
# 92.91 marks
