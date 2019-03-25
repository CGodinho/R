###############################################################################
#
# File:  strings.R
#
# Comment: Basic operations with string in R, without packages.
#
###############################################################################

# creating a string
str1 <- "This is a test!"
str2 <- 'This is a test, with other quotes!'

# size of
nchar(str1)

# Slicing by position
substr(str1, 1, 10)

# string concatenation
paste("Hi,", "another", "test!", sep = ' ')
paste("Hi", 1:10, sep = '_')

# spliting a string
strsplit(str1, ' ')


###############################################################################
#                                G R E P
###############################################################################
# grep a string, returning an indication
grep("test", str1)
# grep a string, returning the string
grep("test", str1, value = TRUE)


###############################################################################
#                          C O L L A P S I N G
###############################################################################
# paste with and without collapsing
paste(1:3, c("!","?","+"), sep = '', collapse = "")
# paste without collapsing
paste(1:3, c("!","?","+"), sep = '')


