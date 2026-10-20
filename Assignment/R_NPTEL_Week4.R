# Sahil Khilari - 23102B0077 - week 4 - R Programming
#Rename Row and Column Names 
x = matrix(nrow = 3, ncol = 3, data = (1:9), byrow = TRUE)
x
rownames(x) = c("R1", "R2", "R3")
colnames(x) = c("C1", "C2", "C3")

twoMat = matrix(nrow = 3, ncol = 3, data=2) #matrix of all twos
twoMat
##Diagonal Matrix
diagMat = diag(1, nrow = 3, ncol = 3)
diagMat
#Transpose Matrix
xTrans = t(x)
xTrans
#Row and Col operations
x
rowSum = rowSums(x)
rowSum
colSum = colSums(x)
colSum
rowMean = rowMeans(x)
rowMean
colMean = colMeans(x)
colMean

## Accessing Element and Submatrices 
x
x[3,] ##Only third row 
x[,2] ##Only Second Column 
x[c(1,3), c(1,2)] ##Row 1 and 3, Column 1 and 2 
x[2:3, 1:3] ##Row 2 to 3 and Column 1 to 3

##Mathematical Operations with Matrices
#Scalars
x + 5
x - 5
x * 10 
x / 10
#Matrix with Matrix 
x = matrix(nrow=4, ncol=2, data=1:8, byrow=T)
y = matrix(nrow=4, ncol=2, data=11:18, byrow=T) 
x + y
x - y
x = matrix(nrow=4, ncol=2, data=1:8, byrow=T)
y = matrix(nrow=2, ncol=4, data=11:18, byrow=T)
x %*% y 
y %*% x 
t(x) %*% x 
crossprod(x)

##INVERSE OF A matrix 
y = matrix( nrow = 2, ncol = 2, byrow = T,
          data = c(84,100,100,120))
solve(y) 
eigen(y)

## LOGICAL Operations 

x = 8 
(x>10) || (x < 2)
(x > 10) | (x < 2) 
x = 5
(x < 10) && (x > 2)
