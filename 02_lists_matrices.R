#Lists and Matrices
#Lists

list_example <- list(1, "A", TRUE, "hello", 12.53, -12.53)
list_example
www.github.com

second_list <- list(title = "Numbers", numbers = 1:10, data = TRUE)
second_list

#What "type" is a list?
typeof(second_list)
typeof(second_list$title)

print(second_list$numbers[3])

#Matrices
#A zero filled matrix - 6 columns, 3 rows
matrix_example <- matrix(0, ncol=6, nrow=3)

matrix_example

class(matrix_example)
typeof(matrix_example)
str(matrix_example)

dim(matrix_example)
nrow(matrix_example)
ncol(matrix_example)

#Challenge4
length(matrix_example)

#Challege5
challenge5_matrix <- matrix(1:50, ncol=5, nrow=10)
challenge5_matrix2 <-matrix(1:50, nrow = 10, ncol=5, byrow=TRUE)

#Challenge7
matrix(c(4, 1, 9, 5, 10, 7),ncol=2, byrow=TRUE)
