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
#                            E N V I R O N M E N T
###############################################################################
# show defined variables (also avaialbe in RStudio Environment panel)
ls()

# deletes a variable
x <- 1
rm(x)

# deletes all variables
rm(list = ls())

# quits R
q()
quit()


###############################################################################
#                                 H E L P
###############################################################################
# help on a function
?mean

# look for string in help
help(mean)

# show example of function usage
example(mean)


###############################################################################
#                             D A T A   T Y P E    
###############################################################################
# get type
class(1)
class("HELLO!")
class(TRUE)

# test type (manu other functions available)
is.numeric(1)
is.character("HELLO!")
is.logical(TRUE)
is.double(pi)


###############################################################################
#                       O P E R A T I N G     S Y S T E M
###############################################################################
# retrieves default working dir
getwd()

# defines default working dir
setwd("C:/")

# excute a command in OS
system("ls")
system("notepad myfile.txt")

# get environment variables (all or a psecific one)
Sys.getenv()
Sys.getenv("R_HOME")

# Set, get amd clean environment variable
Sys.setenv(R_TEST = "TEST IT!")
Sys.getenv("R_TEST")
Sys.unsetenv("R_TEST")

# gets define slocale
Sys.getlocale()


###############################################################################
#                          D A T A      S E T S
###############################################################################
# show avaiable datasets
data()

# lads a specific dataset
data(Nile)
data(iris)
