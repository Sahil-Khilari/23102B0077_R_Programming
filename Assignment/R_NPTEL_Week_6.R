# Sahil Khilari - 23102B0077 - week 6 - R Programming


# # Loops in R
# ## Basic `for` Loop

for (i in 1:5) {
  print(i^2)
}

# ## `for` Loop with a Vector

for (i in c(2, 4, 6, 7)) {
  print(i^2)
}

# ## `for` Loop within a Function

# ## Nested `for` Loops

x = c(2, 4, 6, 8, 10, 12)

excount = function(x) {
  count = 0

  for (xval in x) {
    if (xval / 2 > 3)
      count = count + 1
  }

  print(count)
}

excount(x)

child = c("child1", "child2", "child3")
sweet = c("sweet1", "sweet2", "sweet3")

for (x in child) {
  for (y in sweet) {
    print(paste(x, y))
  }
}

# ## Loop Control: `break` Statement

drink = c("coffee", "lemonade", "tea", "juice")

for (x in drink) {
  if (x == "tea") {
    break
  }

  print(x)
}

# ## Loop Control: `next` Statement

drink = c("coffee", "lemonade", "tea", "juice")

for (x in drink) {
  if (x == "lemonade") {
    next
  }

  print(x)
}

drink = c("coffee", "lemonade", "tea", "juice")

for (x in drink) {
  if (x == "tea") {
    next
  }

  print(x)
}

# ## Basic `while` Loop

i = 1

while (i < 10) {
  print(i^2)
  i = i + 2
}

# ## Interactive `while` Loop with a Function

sumfunction = function() {
  sum = 0

  number = as.integer(
    readline(prompt = "Please select any number less than 25: ")
  )

  while (number <= 25) {
    sum = sum + number
    number = number + 1
  }

  print(paste(
    "The sum of numbers received from the While Loop: ",
    sum
  ))
}

sumfunction()

# ## Basic `repeat` Loop

22 + 23 + 24 + 25

i = 1

repeat {
  print(i^2)

  i = i + 2

  if (i > 10)
    break
}

# ## `repeat` Loop with `next` and `break`

i = 1

repeat {
  i = i + 1

  if (i < 10)
    next

  print(i^2)

  if (i >= 13)
    break
}

# # Functions in R
# ## Defining and Calling a Function with One Argument

abc = function(x) {
  x^2
}

abc(3)

abc(6)

abc(9)

# ## Defining and Calling a Function with Multiple Arguments

abc = function(x, y) {
  x^2 + y^2
}

abc(3, 4)

abc(10, 10)

abc(-2, -3)

# ## Redefining a Function with Trigonometric Operations

abc = function(x) {
  sin(x)^2 + cos(x)^2 + x
}

abc(9)

abc(99)

abc(-15)

# ## Defining and Calling a Function with No Arguments

abc = function() {
  for (i in 1:3) {
    print(i^3)
  }
}

abc()

# # Sequence Generation
# ## Using `seq()` with default arguments

seq()

# ## Using `seq()` with `from` and `to`

seq(from = 2, to = 4)

seq(from = 4, to = 2)

# ## Using `seq()` with `from`, `to`, and `by`

seq(from = -4, to = 4)

seq(from = 10, to = 20, by = 2)

seq(from = 20, to = 10, by = -2)

seq(from = 3, to = -2, by = -0.5)

# ## Using `seq()` with `to` and `length`

seq(to = 10, length = 10)

# ## Using `seq()` with `from` and `length`

seq(from = 10, length = 10)

# ## Using `seq()` with `from`, `length`, and `by`

seq(from = 10, length = 10, by = 0.1)

seq(from = 10, length = 10, by = -2)

seq(from = 10, length = 5, by = -0.2)
