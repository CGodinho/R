###############################################################################
#
# File:  vectors.R
#
# Comment: Basic set of operations with vector in R.
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

# from samples, advisable to have a seed
set.seed(100)
sample(1:100, 5)

# samples with repetiton
sample(c('a', 'e', 'i', 'o', 'u'), 10, replace = TRUE)

# binding, with "c" constructor
vec1 <- 1:10
vec2 <- 11:20
c(vec1, vec2)


###############################################################################
#                           O P E R A T O R S
###############################################################################
vec3 <- c(1, 10:15, 20)

# size
length(vec3)

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
#                            S T A T I  S T I C S
###############################################################################
vec
