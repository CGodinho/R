###############################################################################
#
# File:  dataframes.R
#
# Comment: Basic set of operations with dataframes in R.
#
###############################################################################


###############################################################################
#                          C O N S T R U C T O R S
###############################################################################
# from vectors with sane size
vec1 <- c(1,  60, 30, 20, 30, 50)
vec2 <- c('A', 'B', 'A', 'C', 'D', 'E')
vec3 <- c(TRUE, FALSE, TRUE, TRUE, FALSE, TRUE)

# creating the data frame already giving names to columns
df1 <- data.frame(number = vec1, letter = vec2, boolean = vec3)


###############################################################################
#                       B A S I C    O P E R A T I O N S
###############################################################################
#  Content type
attributes(df1)
str(df1)
summary(df1)
View(df1)

# dataframe dimension
dim(df1)

# first records
head(df1, n = 2)

# last records
tail(df1, n = 2)

# number of rows
nrow(df1)

# number of cols
ncol(df1)


###############################################################################
#                    V A R I A B L E     N A M E S
###############################################################################
# show available names
names(df1)

# change names
names(df1) <- c("number", "letter", "boolean")


###############################################################################
#                    S E L E C T     &    S L I C E
###############################################################################
# Slicing by observation (row)
df1[df1$boolean == TRUE,]

# Slicing by variable (columnrow)
# selecting a column
df1$number
df1[, c("number")]

# Combining together
df1[df1$number > 20, c("letter")]

# indexing can be used
df1[1,]
df1[,2]
df1[c(1,3, 5), c(1,3)]
df1[2,3]
df1[2:4, 1:2]

# with function
with(df1, letter[number > 10])





