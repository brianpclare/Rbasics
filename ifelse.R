iris

iris$Sepal.Length

# Let's say we want to relabel some of the numeric values into categorical
# Sepal.Length > 6 is large, otherwise it's small

length(iris$Sepal.Length)

for(i in 1:150){
  if(iris$Sepal.Length[i] > 6){
    iris$Sepal.Length[i] <- "Large"
  }
  
  else iris$Sepal.Length[i] <- "Small"
  
}

# Let's get rid of this
rm(iris)

# Since iris is a built in data set, the object still exists now with its original values
iris

# There's another way we can replace the numbers with categories, without needing the for loop

iris$Sepal.Length <- ifelse(iris$Sepal.Length > 6, "Large", "Small")



