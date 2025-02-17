createBook <- function(title, author) {
  book <- list(
    title = title,
    author = author
  )
  class(book) <- "Book" 
  return(book)
}

print.Book <- function(book) {
  cat("Book Title:", book$title, ", Author:", book$author, "\n")
}


book1 <- createBook("1984", "George Orwell")
book2 <- createBook("To Kill a Mockingbird", "Harper Lee")


print(book1)
print(book2)