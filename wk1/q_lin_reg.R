# Quiz on Linear Regression

# Question 2
hfunc <- function(theta0, theta1, x) {
  return(theta0 + theta1 * x)
}


jfunc <- function(theta0, theta1, x, y) {
  return((1 / (2 * length(x))) * sum((hfunc(theta0, theta1, x) - y) ^ 2))
}

x <- c(3, 2, 4, 0)
y <- c(4, 1, 3, 1)

print(jfunc(0, 1, x, y))
# ANS: 0 <--- WRONG!
# ANS: 0.5

# Question 3
print(hfunc(-2, 0.5, 6))
# ANS: 1

#######

# ATTEMPT 2 at quiz
x <- c(1, 2, 4, 0)
y <- c(0.5, 1, 2, 0)

# Question 2
print(hfunc(0, 0.5, x) - y)
# ANS: θ0 = 0, θ1 = 0.5

# Question 3
hfunc(-2, 0.5, 6)
# ANS: 1

