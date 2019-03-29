###############################################################################
#
# File: stringr.R
#
# Comment: Usage of package stringr for simplified an more similar string
#          handling functions.
#          
# Links: https://journal.r-project.org/archive/2010-2/RJournal_2010-2_Wickham.pdf
#        https://stringr.tidyverse.org/index.html
#        https://github.com/rstudio/cheatsheets/blob/master/strings.pdf
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
# constructing from collapsing a vector
vec1 <- c("Let us use", "stringr", "to make life", "easier ...")
str1 <- stringr::str_c(vec1, collapse = " ")

# combinations, with NA as absorbing element (NAs perserved)
str_c(c("a", NA, "b"), "-d")

# joinning by same position
str_c(c("a", "b"), c("-x-", "-y-"), c("1", "2"))
      

###############################################################################
#                            F U N C T I O N S
###############################################################################
# length as with nchar
str_length(str1)

# applied to each vector position
str_length(c("Hi", NA, "stringr!"))

# equivalent to substr
# slice positions 12 to 18
str_sub(str1, 12, 18)

# from postion 12 onwards
str_sub(str1, 12)

# from end to postion 31 
str_sub(str1, -31)

# trimmimg both sides, or just one
str2 <- "  do not like whitespaces  "
str2
str_trim(str2)
str_trim(str2, side = "left")
str_trim(str2, side = "right")

# padding white spaces
str_pad("Love whitespaces", width = 20, side = "both")

# duplicating n times
str_dup("aeiou", times = 4)


################################################################################
#                      C O N S T R U C T I O N 
################################################################################
# glueing strings
name <- "carlos"
year <- "1972"
str_glue("My name is {name} and I was born in {year}.", name = name, year = year)

# building form vector
str_c("Just", "one", "string", sep = ",") 


###############################################################################
#                   P A T T E R N     M A T C H I N G
###############################################################################
str3 <- c("Another", "string", "to", "search", "for", "with", "string", "matchings", "strings ...")

# returns a logical vector for each finding 
str_detect(str3, "string.?")

# matrix with columns start and end position. NAs if no match.
str_locate(str3, "string.?")

# extracts the text of the first match, with str_extract_all all matches
# are extracted
str_extract(str3, "string.?")

# captures groups formed from the 1st match
str_match(str3, "string.?")

# counts pattern match
sum(str_count(str3, "string.?"))

# replaces 1st occurences, with str_replace_all all matches are replaced
str_replace(str3, "string", "character")

# removes 1st occurences, with str_remove_all all matches are removed
str_remove(str3, "string")

# returns a logical vector for matching start of strings
str_starts(str3, "string")
(str_starts(str3, "string") == str_detect(str3, "^string"))

# returns a logical vector for matching end of strings
str_ends(str3, "string")
(str_ends(str3, "string") == str_detect(str3, "string$"))

# splits by a pattern
str_split(paste(str3, collapse = ","), ",")



###############################################################################
#                       C O N V E R S I O N S
###############################################################################
# string to upper 
str_to_upper("all to upper ...")

# string to lowe
str_to_lower("ALL TO LOWER ...")

# string to case sentence
str_to_sentence("All tO LoWeR ...")


###############################################################################
#                       C O N V E R S I O N S
###############################################################################
str4 <- c("order", "and", "sort", "all", "strings")

# order of string in vector
str_order(str4)

# sort the string in vector
str_sort(str4)
