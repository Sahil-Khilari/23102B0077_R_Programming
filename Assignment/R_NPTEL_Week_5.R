# Sahil Khilari - 23102B0077 - week 5 - R Programming
X = NA
is.na(X)
X = c(11,13,NA,10)
is.na(X)
mean(x) 
mean(X, na.rm = TRUE)

which(is.na(X))
sum(is.na(x)) ## Count of NA

complete.cases(X)
y = na.omit(X)
y

x <- 5

if (x > 3) {
  print("x is greater than 3")
}

x <- 2

if (x > 3) {
  print("x is greater than 3")
} else {
  print("x is less than or equal to 3")
}

x <- 5

if (x == 3) {
  print("x is 3")
} else if (x < 3) {
  print("x is less than 3")
} else {
  print("x is greater than 3")
}

x <- 2

switch(x, "Apple", "Banana", "Orange")

x <- matrix(1:9, nrow = 3, ncol = 3)

which(x %% 2 == 1, arr.ind = TRUE)