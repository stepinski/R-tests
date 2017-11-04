source("bikes/tools.R")
source("bikes/BikeVisualize.R")


daysofweek <- set.day.of.week()
rentdata <- read.table("./bikes/rentals.csv", header = T, sep = ",")
rentdata <- left_join(rentdata, daysofweek)
rentdata <- set.days(rentdata)
rentdata <-
  rentdata %>% select(-instant,-dteday,-weekday,-atemp,-casual,-registered)

rentdata$temp <- scale(rentdata$temp, center = TRUE, scale = TRUE)
rentdata$hum <- scale(rentdata$hum, center = TRUE, scale = TRUE)
rentdata$windspeed <- scale(rentdata$windspeed, center = TRUE, scale = TRUE)

bike.scatter(rentdata, numCols)
bike.box(rentdata, catCols)
bike.series(rentdata, pltTimes)
bike.hist(rentdata, histCols)
bike.hist.cond(rentdata, pltTimes)


smpSize <- floor(0.7 * nrow(rentdata))
set.seed(123)
trainind <- sample(seq_len(nrow(rentdata)), size = smpSize)

train <- rentdata[trainind, ]
test <- rentdata[-trainind, ]

lmodel <- lm( cnt ~ season + yr + mnth + hr + holiday + workingday + weathersit + temp + hum + windspeed + dayOfWeek +days, data = train)

summary(lmodel)

RSS <- c(crossprod(lmodel$residuals))
MSE <- RSS / length(lmodel$residuals)
RMSE <- sqrt(MSE)
sig2 <- RSS / lmodel$df.residual

#coeficcent of determination  -> how big part of varianced is explained by the model ( 0-1 : near 1 is better )
summary(lmodel)$r.squared

actual <- train$cnt
predicted <- lmodel$fitted.values
error <- actual - predicted

#rmse i mae pokazuja o ile sie mylimy w predykcjach
#mozemy sie mylic ponad 100 sztuk w gore albo w dol 

#root mean squared error
rmse(error)

#mean absolute error
mae(error)

rerror <- actual - mean(actual)

#rae and rse for effective model would be vs 0.1 or 0.2
rae(error,rerror)

rse(error,rerror)





