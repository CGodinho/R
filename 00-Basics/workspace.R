###############################################################################
#
# File:  workspace.R
#
# Comment: Manage workspace state.
#
###############################################################################

###############################################################################
#                           A S S I G N M E N T
###############################################################################
# simple assignment
x = 1

# more R style  ...  assigment operator is available with Alt + - / Option + -
x <- 2

# also works...
3 -> x

# by the assignment function
assign("x" , 4)


###############################################################################
#                             P A C K A G E S
###############################################################################
# to install
install.packages(c("ggplot2", "dplyr"))

# updating ...
update.packages()

# load package
library(ggplot2)
require(ggplot2)

# unload package
detach("package:ggplot2", unload = TRUE)

# lists attached packages and its paths
search()
searchpaths()


###############################################################################
#                          E N V I R O N M E N T
###############################################################################
# retrieves default working dir
getwd()

# defines default working dir
setwd("C:/")

# show defined variables (also avaialbe in RStudio Environment panel)
ls()

# deletes a variable
x <- 1
rm(x)

# deletes all variables
rm(list = ls())


###############################################################################
#                               H E L P
###############################################################################
# help on a function
?mean

# look for string in help
help(mean)

# show example of function usage
example(mean)
