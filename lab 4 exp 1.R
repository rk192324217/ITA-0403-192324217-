# Unique elements of a string
string <- "hello world"
unique_chars <- unique(strsplit(string, NULL)[[1]])

# Unique numbers of a vector
vector <- c(1, 2, 2, 3, 4, 4, 5)
unique_numbers <- unique(vector)

unique_chars
unique_numbers
