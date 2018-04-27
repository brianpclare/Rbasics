# R 3.5.0 update

# http://blog.revolutionanalytics.com/2017/09/altrep-preview.html
# https://svn.r-project.org/R/branches/ALTREP/ALTREP.html

n <- 10000000
x <- rnorm(n)
y <- rnorm(n)


# note: you can use scientific notation in R with 'e'
# 1e6 means 1x10^6 = 1000000

system.time(for (i in 1:1e9) break)
