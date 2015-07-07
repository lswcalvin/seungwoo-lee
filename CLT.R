#central limit theorem

# Define Sample
sample <- matrix(sample(1:6, 5 * 500, replace = T), ncol = 5, byrow = T)

head(sample)

# Mean of sample
rowMeans(sample)
apply(sample,1,mean)
head(rowMeans(sample))

#Make function of CLT
CLT <- function(no.throw = 5, no.rep = 500) {
  exp.res <- matrix(sample(1:6, no.throw * no.rep, replace = T), ncol = no.throw, byrow = T)
  return(rowMeans(exp.res))
}

#Draw histogram
hist(CLT(no.throw = 5, no.rep = 5000000), nclass = 20, col = "light grey", border = "grey", main = "Central Limit Theorem")

