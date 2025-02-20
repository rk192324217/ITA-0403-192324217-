# Load airquality dataset
data(airquality)

# Compute mean temperature
mean_temp <- sum(airquality$Temp) / length(airquality$Temp)
print(mean_temp)

# Extract first five rows
print(airquality[1:5, ])

# Extract all columns except Temp and Wind
print(airquality[, !(names(airquality) %in% c("Temp", "Wind"))])

# Coldest day during the period
coldest_day <- airquality[which.min(airquality$Temp), ]
print(coldest_day)

# Days with wind speed greater than 17 mph
windy_days <- sum(airquality$Wind > 17)
print(windy_days)
