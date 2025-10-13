# a matrix 1,2,3,4 that has two rows and two columns 
a <- matrix(c(1,2,3,4), 2, 2)
a
# multiplication
a %*% a
# diagonal
diag(a)

# put element 1 through 9 in a 3 by 3 matrix. 
# The default setting will fill the matrix column by columbn.
z <- matrix(1:9, 3, 3)
z
# use "byrow = TRUE" to fill the matrix row by row.
z1 <- matrix(1:9, 3, 3, byrow = TRUE)
z1

# m is consists of 2 4by3 matrix (we will call them matrix1 and matrix2)
m <- array(1:24, dim=c(4,3,2))
m
# check the dimension of m.
dim(m)
# print the entire matrix1
m[,,1]
# row 3 column 2 from the first matrix.
m[3,2,1]
# all columns in row3 from both matrix1 and matrix2. Fill column by column.
m[3,,]

df <- data.frame(
  Name = c("Alice", "Bob", "Charlie"),
  Age = c(25, 30, 28),
  Score = c(90, 85, 88)
)

df$col_name         # access a column  
df[["col_name"]]    # access a column 
df[1, ]             # access first row
df[, 2]             # access second column
df[1, 3]            # access element in row 1, col 3
df[1:2, c("Name", "Age")] # subset rows and columns

data("trees")

?str() # Check what str() does
str(trees) # Structure of the df - Note that this does not refer to "string"
#ncol(trees)
#nrow(trees)
#head(trees)
summary(trees) # Summary of the df
View(trees)

trees$Girth

trees[1:3,] # Selecting rows 1:3
trees[1:3,]$Volume
# Pay attention to the ',' here!
# When you give a single index to a data frame, R assumes you’re selecting columns.
trees[1:3] 

# read file.
data <- read.csv(file="data/H938_Euro_chr6.geno", sep=" ")
head(data)

# Script
z <- readline(prompt = "Enter a number:")
z <- as.numeric(z)
if (z%%2 == 0){
  print(paste(z,"is even"))
}else {
  print(paste(z, "is odd"))
}

# Loop
v <- 1:10
for (i in v) {
  a <- i^2
  print(a)
}

while (i <= 10) {
  a <- i^2
  print(a)
  i <- i+1
}

# function 
is_triangular <- function(y) {
  n <- (sqrt((8*y) + 1) -1)/2
  if (as.integer(n) == n){
    return (TRUE)
  }
  return (FALSE)
}

