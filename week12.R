library("MASS")
print(str(Cars93))
car_data<-data.frame(Cars93$AirBags,Cars93$Type)
car_data<-table(Cars93$AirBags,Cars93$Type)
print(car_data)
smoothScatter(car_data)
print(chisq.test(car_data))
# t-test
x<-c(12,15,14,10,13,15)
y<-c(14,18,13,16,17,19)
t_test_result<-t.test(x,y)
print(t_test_result)
boxplot(x,y,names=c("Group X","Group Y"),main="T-Test Comparison",col=c("skyblue","lightgreen"))
# f-test
x <- c(12,15,14,10,13,15)
y <- c(14,18,13,16,17,19)
# Perform F-test for equality of variances
f_test_result <- var.test(x, y)
# Print result
print(f_test_result)
# Visualize data
boxplot(x, y,
        names = c("Group X", "Group Y"),
        main = "F-Test: Variance Comparison",
        col = c("lightblue", "lightgreen"))
