# Sahil Khilari - 23102B0077 - week 3 - R Programming
#Addition with Data Vectors 
c(2,3,4,5) + c(-2,-3,-4,5) 
#R as a calculator 
print(2^3) 
print(2**3)

#Power Operator with Scalar 
c(2,3,4,5)^2 
c(2,3,4,5)^c(2,3)
#Integer Division %/%
print(2 %/% 2)
print(7 %/% 3)
c(2,3,4,5) %/% 2
c(2,3,4,5) %/% c(2,3)

#Modulus
print(2 %% 2)
c(2,3,4,5) %% 2
c(2,3,4,5) %% c(2,3)

#Built in Functions 

arr = c(2,3,4,5)
max(arr)
min(arr) 
mean(arr)

##FURTHER FUNCTIONS  
abs(-4)
sqrt(25)
round(25.9)
floor(25.6)
ceiling(25.6)
log(10) ## log 10 to the base e 
log(exp(1)) ## e^1 
log10(100) 

arr + (sum(arr) * prod(arr))
sum(arr) * prod(arr)
## Matrices 
x = matrix(nrow = 3, ncol = 3, data = c(1,2,3,4,5,6,7,8,9), byrow = TRUE) ##for entering columnwise, byrow = FALSE 
print(x)
print(x[2,3])

dim(x)
nrow(x)
ncol(x)

attributes(x)
help("matrix") 