#Assignment 2

#1

Scores=c(90,95,89,71,73,96,87,95,107,89,96,80,97,95,102,97,93,101,82,83,74,91,83,98,95,111,99,120,93,84)

#a
mean(Scores)
sd(Scores)

#b
#I cannot sure, because it is for sample things.

#c
SE<-sd(Scores)/sqrt(length(Scores))
SE

#d The spread of the sampling distribution of the sample mean. 95% of sample including true mmean

#e 2SE approximation rule

t.test(Scores)

#	One Sample t-test

#data:  Scores
#t = 46.647, df = 29, p-value < 2.2e-16
#alternative hypothesis: true mean is not equal to 0
#95 percent confidence interval:
#  88.15754 96.24246
#sample estimates:
#  mean of x 
#92.2 

#2

Male=c(220.1,218.6,229.6,228.8,222.0,224.1,226.5)
Female=c(223.4,221.5,230.2,224.3,223.8,230.8)

hist(Male)
hist(Female)

mean(Male)
mean(Female)
sd(Male)
sd(Female)

t.test(Male,Female)

#	Welch Two Sample t-test
#data:  Male and Female
#t = -0.63184, df = 10.942, p-value = 0.5405
#alternative hypothesis: true difference in means is not equal to 0
#95 percent confidence interval:
#  -6.386747  3.539128
#sample estimates:
#  mean of x mean of y 
#224.2429  225.6667 

#3

# (a) This is false.  The p-value is not about the size.
# (b) True.  The null hypothesis was rejected so there were some effect.
# (c) False. a Type I error is determined by alpha. alpha was set to 0.05.
# (d) False, a Type II error depended on the effect size, and we can not know in this case
# (e) True

#4

pA <- c(248,236,269,254,249,251,260,245,239,255)
pB <- c(380,391,377,392,398,374)
pA2 <- 1.5*pA 

hist(pA2,xlim=c(350,410))
hist(pB,xlim=c(350,410))

t.test(pA2,pB)
# Ho = pA cells have 1.5*pB
# Ha = pA cells don't have 1.5*pB

# answer: p-value = 0.15 so do not reject Ho