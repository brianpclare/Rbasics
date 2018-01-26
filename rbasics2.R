# Strings and quotes

"this is a string"

'this is also a string'

"This is a 'string' with quotes in it"

'This is also a \'string\' with quotes in it'

# Statistical procedures

?t.test

?rnorm

set.seed(42)

x <- 1:10
e <- rnorm(10, 0, 1)
y <- x + e

t.test(x, y)
t.test(x, y, paired = TRUE)

?cor

cor(x, y)

# Modelling

plot(y~x)

model <- lm(y~x)
summary(model)
plot(model)

plot(y~x)
abline(model)

# Built-in R data sets

data()

# Let's use iris

iris

head(iris)
iris$Species
iris[5, ]
iris[ ,5]
iris$Sepal.Length
mean(iris$Sepal.Length)


# Let's pretend there's a ridiculous outlier

iris$Sepal.Length[15] <- 999
iris$Sepal.Length

mean(iris$Sepal.Length)

# Sometimes a value like 999 is really just a missing observation coded a weird way. Let's replace it

iris$Sepal.Length[15] <- NA
mean(iris$Sepal.Length)

mean(iris$Sepal.Length, na.rm = TRUE)


#More about NA

NA + 4
NA * 100
1 / 0

NA == 0

q <- NA

is.na(q)
is.na(0)
!is.na(q)

is.na(iris$Sepal.Length)
sum(is.na(iris$Sepal.Length))

iris2 <- na.omit(iris)

iris[is.na(iris$Sepal.Length), ]

# Class changes

class(iris$Sepal.Length)
iris$Sepal.Length[1]
iris$Sepal.Length[1] <- "5.1"

class(iris$Sepal.Length)
mean(iris$Sepal.Length, na.rm = TRUE)

iris$Sepal.Length <- as.numeric(iris$Sepal.Length)

mean(iris$Sepal.Length, na.rm = TRUE)

# Let's do a t-test here

t.test(iris$Petal.Width[iris$Species == "virginica"], iris$Petal.Width[iris$Species == "versicolor"])


# Adding a column

newCol <- rep("New", 150)
iris <- cbind(iris, newCol)

iris$Zero <- 0

iris$Alternating <- c(0,1)

iris$Alternating2 <- c(0,1,2,3)

# Adding a row

iris <- rbind(iris, c(5.0, 3.2, 1.1, 0.2, "Species", "New", 0, 0))

iris <- rbind(iris, c(5.0, 3.2, 1.1, 0.2, "versicolor", "New", 0, 0))

levels(iris$Species)

levels(iris$Species) <- append(levels(iris$Species), "some flower")

iris <- rbind(iris, c(5.0, 3.2, 1.1, 0.2, "some flower", "New", 0, 0))

# Intro R - Ch 4 Factors
# Intro R - Ch 5 Arrays and Matrices
# Intro R - Ch 6 Lists and Data Frames



# Bonus look-ahead

library(dplyr)
t.test(iris %>% filter(Species == "virginica") %>% select(Petal.Width),
       iris %>% filter(Species == "versicolor") %>% select(Petal.Width))
