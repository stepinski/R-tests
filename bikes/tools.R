library(dplyr)

set.day.of.week <- function() {
  ## First day in the dataset is Saturday
  data.frame(
    weekday = c(0, 1, 2, 3, 4, 5, 6),
    dayOfWeek = c("Sun", "Mon", "Tue", "Wed", "Thr", "Fri", "Sat"),
    stringsAsFactors = FALSE
  )
}

set.days <- function(df) {
  df[, 'days'] = as.integer(df[, 'instant'] / 24)
  df
}


my.install <- function(name) {
  library(devtools)
  install_github(name)
}

#rmse and mae shows how far values of our predictions are from the reality
#root mean squared error
rmse <- function(error)
{
  sqrt(mean(error ^ 2))
}

# Function that returns Mean Absolute Error
mae <- function(error)
{
  mean(abs(error))
}


#relative absolute error
#error is a vector of diffs scored labels vs real ones
#rerror is a vector of diffs simple predictor (mean) vs real ones
rae <- function(error, rerror)
{
  sum(abs(error)) / sum(abs(rerror))
}

#relative squared error
rse <- function(error, rerror)
{
  sum(error ^ 2) / sum(abs(rerror ^ 2))
}
