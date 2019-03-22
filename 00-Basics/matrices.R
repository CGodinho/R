###############################################################################
#
# File:  matrixes.R
#
# Comment: Matrix abstraction in R.
#
###############################################################################

###############################################################################
#                           A S S I G N M E N T
###############################################################################
#
# Building a amtrix
# [1 2 3 4 5
#  0 1 2 0 0
#  1 2 3 2 9
#  0 1 2 3 4]
mat1 <- matrix(c(1, 2, 3, 4, 5, 0, 1, 2, 0, 0, 1, 2, 3, 2, 9, 0, 1, 2, 3, 4), nrow = 4, ncol = 5, byrow = TRUE)
mat1

# desconstruction the matrix
c(mat1)

# creates an identity matrix wth n rows/columns
mat2 <- diag(5)


###############################################################################
#                              A N A L Y S E
###############################################################################
# get dimensions
dim(mat1)

# get number of rows
nrow(mat1)

# get number of lcoumns
ncol(mat1)


###############################################################################
#                           O P E R A T I O N S
###############################################################################
# transposed matrix
mat1
t(mat1)

# Artimetic operations to each element
mat1 * 10
mat1 / 2


###############################################################################
#                              B I N D I N G 
###############################################################################
# column bind a vector (matrix also possible)
mat1
cbind(mat1, c(1, 0, 2, 6))

# row bind a vector (matrix also possible)
mat1
rbind(mat1, c(7, 0, 3, 5, 4))


mat2 <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 3, ncol = 2, byrow = FALSE)

# namong columns and rows
dimnames(mat2) = list( 
     c("row1", "row2", "row3"),
     c("col1", "col2"))
mat2
mat2["row1", "col2"]
rownames(mat2)
colnames(mat2)


###############################################################################
#                            S L I C I N G
###############################################################################
# getting a particular position (row = 3, col = 5)
mat1
mat1[3, 5]

# getting the complete 1st row
mat1[1, ]

# getting the complete 2nd column
mat1[, 2]

# getting th1 1st and 5th column
mat1[, c(1, 5)]

# getting th1 1st and 5th column and the 3rd row
mat1[3, c(1, 5)]

