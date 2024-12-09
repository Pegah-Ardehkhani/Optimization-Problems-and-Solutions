# Install lpSolve package if not already installed
# install.packages("lpSolve")

library(lpSolve)

# Objective function coefficients
objective <- c(2.1, 1.5, 1.15)

# Coefficients matrix for the constraints
# Each row corresponds to one constraint, and each column corresponds to the variables x1, x2, and x3
constraints <- matrix(c(33.5, 25, 17.5,   # coefficients for constraint 1
                        1, 1, 1,         # coefficients for constraint 2
                        5/3, 4/3, 1),     # coefficients for constraint 3
                      nrow = 3, byrow = TRUE)

# Right-hand side values for the constraints
rhs <- c(750, 30, 40)

# Direction of the inequalities (<= for all constraints)
directions <- c("<=", "<=", "<=")

# Solve the linear programming problem
solution <- lp("max", objective, constraints, directions, rhs, int.vec = 1:3)

# Output the results
cat("Optimal values for the decision variables (x1, x2, x3):\n")
print(solution$solution)

cat("Optimal objective value: ", solution$objval, "\n")
