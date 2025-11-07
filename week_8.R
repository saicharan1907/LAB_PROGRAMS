x <- c(12,7,3,4.2,18,2,54,-21,8,-5)
result.mean <- mean(x)
print(result.mean)

# -21, -5, 2, 3, 4.2, 7, 8, 12, 18, 54
# mean using trim
result.mean <- mean(x,trim=0.7)
print(result.mean)

result.mean <- mean(x,trim=0.5)
print(result.mean)

x <- c(12,7,3,4.2,18,2,54,-21,8,-5,NA)
result.mean <- mean(x)
print(result.mean)

# after na.rm=TRUE
x <- c(12,7,3,4.2,18,2,54,-21,8,-5,NA)
result.mean <- mean(x,na.rm=TRUE)
print(result.mean)

#median
x <- c(12,7,3,4.2,18,2,54,-21,8,-5)
result.median <- median(x)
print(result.median)

getmode <- function(v){
  uniquev <- unique(v)
  uniquev[which.max(tabulate(match(v,uniquev)))]
}

v <- c(2,1,2,3,1,2,3,4,1,5,5,3,2,3)
result <- getmode(v)
print(result)

charv <- c("o","it","the","it","it")
result <- getmode(charv)
print(result)
