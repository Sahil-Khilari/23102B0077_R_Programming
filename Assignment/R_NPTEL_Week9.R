# Sahil Khilari - 23102B0077 - week 9 - R Programming
#R PROGRAMMING WEEK 9
#print
print("The zero occurs at")
print(2*pi)
print("radians")

#cat
cat("The zero occurs at", 2*pi, "radians.", "\n" )

#cat with sep
x = 1:10
cat(x, sep = " ++ ")

#cat with fill and labels 
x = 1:10
cat(x, fill = 2, labels = paste("(", letters[1:10], "):"))

#cat with vector
evenno = c(2,4,6,8,10)
cat("The first few even numbers are:", evenno, "...\n")

#format
x = 7
cat("The square root of", x, "is approximately",
    format(sqrt(x), digits = 3), "\n")

#paste
paste("Everybody", "loves", "R Programming.")

#paste with sep
paste("Everybody", "loves", "R Programming.", sep = "*")

#paste with collapse
names = c("Prof. Singh", "Mr. Venkat", "Dr. Jha")
paste(names, "is", "a good", "person.", collapse = ", and ")

#paste0
paste0(1:10, c("st", "nd", "rd", rep("th", 7)))

#as.character
as.character(1:12)

#strsplit
x = "The&!syntax&!of&!paste&!is!&available!"
strsplit(x, split = "!")

#sccessing strsplit elements
y = strsplit(x, split = "!&")
y[[1]][1]

#split dates in  matrix
dates = c("2020-07-24", "2021-08-25", "2022-09-26", "2023-10-27")
datesplt = strsplit(dates, "-")
datemat = matrix(unlist(datesplt), nrow = 4, ncol = 3, byrow = TRUE)

#split dates into numeric metric
datematrix = matrix(as.numeric(unlist(datesplt)),
                    nrow = 4, ncol = 3, byrow = TRUE)

#split a word into characters
strsplit("Shalabh", split = "")

#nchar
x = "R course 24.07.2022"
nchar(x)

#nzchar
x = c("Apple", "", "Cake")
nzchar(x)

#toupper
x = "R course will start from 24.07.2022"
toupper(x)

#tolower
x = "INDIAN INSTITUTE OF TECHNOLOGY"
tolower(x)