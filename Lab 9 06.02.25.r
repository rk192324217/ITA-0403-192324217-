# 9. Explore airquality dataset
mean_temp <- sum(airquality$Temp) / length(airquality$Temp)
first_five_rows <- airquality[1:5, ]
subset_airquality <- airquality[, !(names(airquality) %in% c("Temp", "Wind"))]
coldest_day <- airquality[which.min(airquality$Temp), ]
windy_days <- sum(airquality$Wind > 17)
print(mean_temp)
print(first_five_rows)
print(subset_airquality)
print(coldest_day)
print(windy_days)