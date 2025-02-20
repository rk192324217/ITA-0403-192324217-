library(reshape2)
library(dplyr)

data(airquality)

print(summary(airquality))

melted_airquality <- melt(airquality, na.rm = TRUE)
print(melted_airquality)

melted_airquality_id <- melt(airquality, id.vars = c("Month", "Day"), na.rm = TRUE)
print(melted_airquality_id)

cast_airquality <- dcast(melted_airquality_id, Month + Day ~ variable)
print(cast_airquality)

monthly_averages <- dcast(melted_airquality_id, Month ~ variable, mean, na.rm = TRUE)
print(monthly_averages)
