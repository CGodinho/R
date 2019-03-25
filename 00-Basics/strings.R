###############################################################################
#
# File:  strings.R
#
# Comment: Basic operations with string in R, without packages.
#
###############################################################################

###############################################################################
#                             B A S I C
###############################################################################
# creating a string
str1 <- "This is a test!"
str2 <- 'This is a test, with other quotes!'


# Slicing by position
substr(str1, 1, 10)

# string concatenation
paste("Hi,", "another", "test!", sep = ' ')
paste("Hi", 1:10, sep = '_')

# pretty print
sprintf("The value of %s is x=%.4f", "pi", pi)

# from a vector to a  string, with fields separated by csv
toString(c("From", "a", "vector", "to", "a", "string"))


###############################################################################
#                           F U N C T I O N S
###############################################################################
str3 <- "Another string for testing!"

# size of
nchar(str3)

# convert to lower case 
tolower(str3)

# convert to upper case 
toupper(str3)

# spliting a string
strsplit(str3, ' ')
strsplit(str3, 't')

# split into paragraphs, with maximum width
strwrap(str3, 10)

# create abbreviations
abbreviate(c("alfa", "beta", "gama", "delta"), minlength = 3)

# trimmming text
trimws("  trim me ")
trimws("  trim me ", "left")
trimws("  trim me ", "right")


###############################################################################
#                      S U B S T I T U T I O N S
###############################################################################
# substitute the 1st ocurrence
sub("1", "_", "Replace the 1 number 11 mark")

# substitute the 1st ocurrence, using a regex
sub("[1234567890]", "_", "Replace the 1 2 number")

# substitute all ocurrences
gsub("1","_", "Replace the 1 number 11 mark")

# substitute all ocurrences, using a regex
gsub("[1234567890]", "_", "Replace the 1 2 number")


# substitution by chars. 1st and 2nd parameters must have same size
chartr("1", "2", "Number is 1 and only 1")
chartr("11", "22", "Number is 11 and only 11")

# removes quotes
noquote(letters)

# single quotes
sQuote(noquote(letters))

# double quotes
dQuote(noquote(letters))


###############################################################################
#                          C O L L A P S I N G
###############################################################################
# paste with and without collapsing
paste(1:3, c("!","?","+"), sep = '', collapse = "")

# paste without collapsing
paste(1:3, c("!","?","+"), sep = '')



###############################################################################
#                                G R E P
###############################################################################
str4 <- c("abc", "bca", "aab", "abc", "ccc", "bac", "aaa", "bbb", "abc", "caa", "bcc")

# returns a vector with the source vectorindexes matching the criteria regex
grep("abc", str4)

# returns a logical vector which match the criteria regex
grepl("abc", str4)

# other calls ...
regexpr("abc", str4)
gregexpr("abc", str4) 
regexec("abc", str4) 
