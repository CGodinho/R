###############################################################################
#
# File:  stringr.R
#
# Comment: Usage of package stringr for simplified an more similar string
#          handling functions.
#
###############################################################################

###############################################################################
#                               I M P O R T
###############################################################################
library("stringr")

###############################################################################
#                         C O N S T R U C T I N G
###############################################################################
# NOTE: Equivalent to paste
#
# Constructing from collapsing a vector
vec1 <- c("Let us use", "stringr", "to make life", "easier ...")
str1 <- stringr::str_c(vec1, collapse = " ")

# Combinations, with NA as absorbing element (NAs perserved)
str_c(c("a", NA, "b"), "-d")

# Joinning by same position
str_c(c("a", "b"), c("-x-", "-y-"), c("1", "2"))
      

###############################################################################
#                            F U N C T I O N S
###############################################################################
# length as with nchar
str_length(str1)

# Applied to each vector position
str_length(c("Hi", NA, "stringr!"))

# Slice positions 12 to 18
str_sub(str1, 12, 18)

# FRom postion 12 onwards
str_sub(str1, 12)

# From end to postion 31 
str_sub(str1, -31)

# Trimmimg both sides, or just one
str2 <- "  do not like whitespaces  "
str2
str_trim(str2)
str_trim(str2, side = "left")
str_trim(str2, side = "right")

# Padding white spaces
str_pad("Love whitespaces", width = 20, side = "both")

# Duplicating n times
str_dup("aeiou", times = 4)

str_count("Hello!", "l")
str_count(vec1, "s")

#??????
str_str("us", "__", str1)
