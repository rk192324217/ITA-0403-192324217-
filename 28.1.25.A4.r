# Activity 4: Apply apply() function to each column of
# the data frame that contains scores of 3 subjects to compute 
# the standard deviation

scores <- data.frame(Math = c(85, 90, 78, 92, 88),
                     Science = c(80, 85, 79, 91, 87),
                     English = c(75, 82, 77, 89, 84))

std_dev_apply <- apply(scores, 2, sd)
print(std_dev_apply)

std_dev_lapply <- lapply(scores, sd)
print(std_dev_lapply)

std_dev_sapply <- sapply(scores, sd)
print(std_dev_sapply)

std_dev_tapply <- tapply(unlist(scores), rep(names(scores), each = nrow(scores)), sd)
print(std_dev_tapply)
