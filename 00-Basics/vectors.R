###############################################################################
#
# File:  vectors.R
#
# Comment: Basic set of operations with vectors in R.
#
###############################################################################


###############################################################################
#                          C O N S T R U C T O R S
###############################################################################
# most simple creation
c(1, 10, 30, 20, 30, 50)

# by using ranges
1:20

# mixed notation
c(1, 10:30, 40)

# from sequence
seq(1, 10, 0.5)

# reverse sequence, by needs to be negative
seq(20, 0, by = -2)

# from repetitions
rep(c("hello", "world", "!"), 3)
rep(c(2, 4, 2), each = 3)
rep(1:3,length.out=7)

# from samples, advisable to have a seed
set.seed(100)
sample(1:100, 5)

# samples with repetiton
sample(c(1, 2, 3), size = 6, replace = TRUE)
sample(c('a', 'e', 'i', 'o', 'u'), 10, replace = TRUE)

# binding, with "c" constructor
vec1 <- 1:10
vec2 <- 11:20
c(vec1, vec2)


###############################################################################
#                           O P E R A T O R S
###############################################################################
vec3 <- c(1, 10:15, 20)

# object types
class(vec3)

# apply a matematichal operation to all elements
vec3 + 10

# operations between vectors (if same size or multiple)
vec3 + c(1:8)
vec3 + c(4, 4)


###############################################################################
#                            L O G I C A L
###############################################################################
vec4 <- c(1, 10, 20, 30)
vec5 <- c(1, 10, 15, 30)

# at least 1 entry satifies the predicate
any(vec4 > 20)

# all entries satifies the predicate
all(vec4 == 10)

# by element comparation
vec4 == vec5


###############################################################################
#                       N U M E R I C     I N D E X 
###############################################################################
vec6 <- 1:10

# get second element
vec6[2]

# get sencond and third by range
vec6[3:4]

# remove first element
vec6[-1]

# remove a set of elements
vec6[c(-2, -4, -6, -8, -10)]


###############################################################################
#                      L O G I C A L    I N D E X 
###############################################################################
vec7 <- c(1, 2 , 3, 4, 7, 30, 32, 8, 4, 10)

# every n + 1
vec7[c(TRUE, FALSE)]

# Check biggers than and return them
(vec7 > 10)
vec7[(vec7 > 10)]

# the in operator for sub sets
vec7 %in% c(1, 4, 10)


###############################################################################
#                           A G G   &   S T A T I S T I C S
###############################################################################
vec8 <- c(1:10, 200, 30:40, rep(c(50,60), 3))
vec8

# set of statistics
summary(vec8)

# average, varience, standard deviation
mean(vec8)
median(vec8)
var(vec8)
sd(vec8)
sd(vec8)^2 - var(vec8) < 0.00001

# max and min
max(vec8)
min(vec8)

# range
range(vec8)

# produce the quantiles and check quantile distribution
quantile(vec8)

# Summation table, provides an easy group by count
vec9 <- c(seq(1:10), seq(5,9), 10, 5, 7, 5, 9)
vec9
table(vec9)

vec10 <- c('A','E', 'I', 'O', 'U', 'A', 'U', 'E', 'E')
table(vec10)

# correlation, covarame and variance 2 vectors
vec11 <- c(1, 2, 5, 7, 3, 0)
vec12 <- c(2, 2, 6, 6, 5, 1)
cor(vec11, vec12)
cov(vec11, vec12)
var(vec11, vec12)


###############################################################################
#                           F U N C T I O N S
###############################################################################
vec13 <- c(9, 3, 0, 5, 0, 4, 8, 9 , 0)

# replace a value (with predicate match) with other value
# same as vec11[vec11 == 0] <- 1
replace(vec13, vec13 == 0, 1)

# size
length(vec13)

# select the positions that fullfill the predicate
which(vec13 == 0)

# sort elements
sort(c(9, 5, 3, 2 ,1, 4, 7, 8, 6))

# returns the order positions
order(c(9, 5, 3, 2 ,1, 4, 7, 8, 6))

# reverses the vector
rev(c(9, 8, 7, 6 ,5, 4, 3, 2, 1))

# remove duplicates
vec14 <- c(1, 2, 3, 2, 3, 1, 2, 3, 1, 4)
unique(vec14)

# check the duplicated elements and get them
duplicated(vec14)
vec12[duplicated(vec14)]

# returns signs in form of -1 (negative), 1 (positive) and 0
sign(c(10, -10, 0, 20, -20))

