# For loop

for (i in 1:5) {
  print(i^2)
}


# For loop with vector

x <- c(2, 4, 6, 8)

for (i in x) {
  print(i^2)
}


# Nested for loop

child <- c("child1", "child2", "child3")
sweet <- c("sweet1", "sweet2", "sweet3")

for (x in child) {
  for (y in sweet) {
    print(paste(x, y))
  }
}


# Break

drink <- c("coffee", "lemonade", "tea", "juice")

for (x in drink) {
  if (x == "tea") {
    break
  }
  print(x)
}


# Next

drink <- c("coffee", "lemonade", "tea", "juice")

for (x in drink) {
  if (x == "lemonade") {
    next
  }
  print(x)
}


# While loop

i <- 1

while (i < 10) {
  print(i^2)
  i <- i + 2
}


# Repeat loop

i <- 1

repeat {
  print(i^2)
  i <- i + 2
  
  if (i > 10) {
    break
  }
}


# Repeat with next

i <- 1

repeat {
  i <- i + 1
  
  if (i < 10) {
    next
  }
  
  print(i^2)
  
  if (i >= 13) {
    break
  }
}


# Function with one argument

square <- function(x) {
  x^2
}

print(square(5))


# Function with two arguments

sum_square <- function(x, y) {
  x^2 + y^2
}

print(sum_square(3, 4))


# Function without argument

myfunction <- function() {
  for (i in 1:3) {
    print(i^3)
  }
}

myfunction()


# Function with loop and condition

count_function <- function(x) {
  count <- 0
  
  for (xval in x) {
    if (xval / 2 > 3) {
      count <- count + 1
    }
  }
  
  print(count)
}

x <- c(2, 4, 6, 8, 10, 12)

count_function(x)


# Sequence

seq(from = 2, to = 10)


# Sequence with increment

seq(from = 10, to = 20, by = 2)


# Sequence with decrement

seq(from = 20, to = 10, by = -2)


# Sequence with fractional increment

seq(from = 10, to = 11, by = 0.1)


# Sequence with specified length

seq(from = 10, length = 10)


# Sequence with fractional decrement

seq(from = 10, length = 5, by = -0.2)
