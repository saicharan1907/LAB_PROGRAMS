# Load necessary libraries
library(ggplot2)
library(stats)

# Step 1: Create sample data (X, Y)
set.seed(123)  # Set seed for reproducibility
n <- 100  # Number of data points
X <- rnorm(n, mean=50, sd=10)  # Independent variable (Normal distribution)
epsilon <- rnorm(n, mean=0, sd=5)  # Error term (Normal distribution)
Y <- 5 + 2 * X + epsilon  # Dependent variable with some linear relationship

# Combine into a data frame
data <- data.frame(X, Y)

# Step 2: Perform linear regression
lm_model <- lm(Y ~ X, data=data)

# Step 3: Plot the regression line with the data points
ggplot(data, aes(x=X, y=Y)) +
  geom_point(color="blue") +  # Scatter plot of the data points
  geom_smooth(method="lm", se=FALSE, color="red") +  # Linear regression line
  labs(title="Linear Regression: Y vs X",
       x="X", y="Y") +
  theme_minimal()

# Step 4: Plot residuals to check for normality
residuals <- lm_model$residuals

# Plot the residuals vs fitted values
ggplot(data, aes(x=fitted(lm_model), y=residuals)) +
  geom_point(color="blue") +
  geom_hline(yintercept=0, linetype="dashed", color="red") +
  labs(title="Residuals vs Fitted Values",
       x="Fitted Values", y="Residuals") +
  theme_minimal()

# Q-Q plot to check normality of residuals
qqnorm(residuals)
qqline(residuals, col="red")

# Step 5: Check normality statistically (Shapiro-Wilk test)
shapiro_test <- shapiro.test(residuals)
shapiro_test

