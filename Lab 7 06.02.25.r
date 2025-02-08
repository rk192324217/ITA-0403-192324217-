# 7. Check if airquality is a data frame, order it by first and second columns, remove 'Solar.R' and 'Wind'
data(airquality)
is.data.frame(airquality)
ordered_airquality <- airquality[order(airquality$Ozone, airquality$Solar.R), ]
cleaned_airquality <- subset(ordered_airquality, select = -c(Solar.R, Wind))
print(cleaned_airquality)