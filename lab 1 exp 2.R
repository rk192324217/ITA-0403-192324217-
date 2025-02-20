cat("Details of objects in memory:\n")
print(ls())
cat("\nObject sizes:\n")
print(sapply(ls(), function(x) object.size(get(x))))

