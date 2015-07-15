
sls<- read.csv("C:/Users/user/Desktop/SLID.csv")

#example1

ye.model <- lm(income~education, data=sls)
sls$pred <- predict(ye.model, sls)
plot (sls$education, sls$pred)
lines (sls$education, fitted(ye.model), col="black" )
points (sls$education, sls$pred, col="blue",pch=16)

#example2

newsls <- data.frame(education = seq(1, 25, 0.5))
newsls$pred <- predict (ye.model, newsls)
points(newsls$education, newsls$pred, col="green")
points(newsls$education, newsls$pred, col="green", pch=3)