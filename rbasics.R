# Variable Assignment
x = 3
x

y <-  5
y

# Different behavior within functions
mean(a = 1:10)
a

mean(b <- 1:10)
b

# Spacing is important for clarity

x<-3
x< -3
x <- 3

# Use 'alt -' to type the <- symbol, including spaces before and after


# Control Structure: If

x <- 10

if(x < 100){
  y <-  x^2
}

if(y < 10){
  x <-  0
}

# Control Structure: For loops
c <- 1:20

for(i in 1:length(c)){
  c[i] <- i^2
}

# But also without the for loop

d <- 1:20
d <- d^2

# Repeated task without a function:  copy-paste

file1 <- read.table("read_this_1.txt")
file1[,1] <- file1[,1] - mean(file1[,1])
file1[,4] <- file1[,2] + file1[,3]

file2 <- read.table("read_this_2.txt")
file2[,1] <- file2[,1] - mean(file2[,1])
file2[,4] <- file2[,2] + file2[,3]

file3 <- read.table("read_this_3.txt")
file3[,1] <- file3[,1] - mean(file3[,1])
file3[,4] <- file3[,2] + file3[,3]

# Repeated task with a function

import_file <- function(path){
  file <- read.table(path)
  file[,1] <- file[,1] - mean(file[,1])
  file[,4] <- file[,2] + file[,3]
  return(file)
}

file1 <- import_file("read_this_1.txt")
file2 <- import_file("read_this_2.txt")
file3 <- import_file("read_this_3.txt")

# Logic

4 == (5 - 1)
4 != 6
7 + FALSE
9 + TRUE
TRUE + TRUE
9 + True

# Quote and Backquote usage

alarm clock <- 12
alarm_clock <- 11
`alarm clock` <- 10
"alarm time" <- 9

class("alarm time")

class(`alarm clock`)

"alarm time"

`alarm clock`

`alarm time`
