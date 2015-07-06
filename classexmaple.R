#2015-7-6 in class example (Lee seung woo)

#probability distribution function

die <- 1:6
dice <- sample (die, size=2, replace=TRUE)
sum(dice)

roll <- function() {
  die <- 1:6
  dice <- sample (die, size=2, replace=TRUE)
  sum(dice)
}

hist(roll)
hist(roll,freq=FALSE)

#cumulative distribution function

ecdf(roll)
plot(ecdf(roll))

#Normal distribution

X <- rnorm(100,5,25)

hist(X)

Y <- rnorm(10000,5,25)

hist(Y)

# Q 
Q <- rnorm(10000,3,5)

hist(Q)

#pr(Q<1)

pnorm(-0.8944)

P(Q<1) <- 1-pnorm(-0.8944) 
