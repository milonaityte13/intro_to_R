#creating a vector

x <- c(5.4, 5.1, 7.1, 4.8, 7.5)
names(x) <- c('a', 'b', 'c', 'd', 'e')
x

x[1]
x[c(1, 3)]
x[1:4]

#skipping/removing elements
x[-2]
x[c(-1, -5)]
x["b"]

x[2:4]
x[c("b","c","d")]
x[c(-1, -5)]
