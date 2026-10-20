# Sahil Khilari - 23102B0077 - week 10 - R Programming

# Lectures 40–44: Strings (sub, gsub, grep, grepl) and Data Frames.



y = "Number of participants: 25"
sub("25", "30", y)

y = "Mr. Singh is the smart one. Mr. Singh is funny, too."
y
sub("Mr. Singh", "Professor Jha", y)

# ### gsub() – replaces all matches

gsub("Mr. Singh", "Professor Jha", y)

# Compare
sub("Mr. Singh", "Professor Jha", y)

# ### grep() – searching for matches

str = c("R Course", "exercises", "include examples of R language")

# value = TRUE -> returns matching elements
grep("ex", str, value = T)

# value = FALSE (default) -> returns indices
grep("ex", str, value = F)

# ignore.case
str = c("R Course", "exercises", "include examples of r language", "in R software.")

grep("R", str, ignore.case = F, value = T)
grep("R", str, ignore.case = T, value = T)
grep("R", str, ignore.case = T, value = F)
grep("R", str, ignore.case = F, value = F)

x = "R course 24.07.2022"
y = "Number of participants: 50"
c(x, y)               # combine the two strings
grep("our", c(x, y))  # "our" is in 1st element (course)
grep("Num", c(x, y))  # "Num" is in 2nd element (Number)

# ### grepl() – returns TRUE/FALSE for each element

str = c("R Course", "exercises", "include examples of R language")
str
grepl("R", str)
grepl("ex", str)
# Note: the slide writes grepl("ex", str, value=T), but grepl has no `value`
# argument (that would give an "unused argument" error), so it is omitted here.

# ## Lecture 41: Data Frames

library(MASS)
painters

rownames(painters)
colnames(painters)

# Four numeric variables + one factor variable (School)
is.numeric(painters$School)
is.numeric(painters$Drawing)
is.factor(painters$School)
is.factor(painters$Drawing)

summary(painters)

# ## Lecture 42 & 43: Creation and More Operations

# summary of a categorical variable -> frequency table
summary(painters$School)

# ### attach() and detach()

attach(painters)
summary(School)        # Character/factor variable
summary(Composition)   # Numeric variable

detach(painters)
# The next line gives an error because School is no longer directly accessible
try(summary(School))

# ### Subsets

subset(painters, School == 'F')

# Equivalent command
painters[painters[["School"]] == "F", ]

subset(painters, Composition <= 6)

# Drop uninteresting columns (3rd = Colour, 5th = School)
subset(painters, School == "F", select = c(-3, -5))

# ### split() – partition by a factor variable

splitted = split(painters, painters$School)
splitted

is.data.frame(splitted$A)

# ## Lecture 44: Combining and Merging Data Frames
# ### cbind() – combine columns side by side

df1 = data.frame(state = c("UP", "MP", "AP", "JK"),
                 popnsize = c(1000, 2000, 3000, 4000))
df2 = data.frame(state = c("UP", "MP", "AP", "JK"),
                 samplesize = c(100, 200, 300, 400),
                 surveycompleted = c("Yes", "No", "Yes", "No"))
df1
df2
cbind(df1, df2)

# ### merge() – join on a common column

merge(df1, df2, by = "state")

# ### rbind() – stack data frames vertically

df11 = data.frame(state = c("UP", "MP", "AP", "JK"),
                  popnsize = c(1000, 2000, 3000, 4000))
df22 = data.frame(state = c("Bihar", "Delhi", "Punjab"),
                  popnsize = c(100, 200, 300))
df11
df22
rbind(df11, df22)
