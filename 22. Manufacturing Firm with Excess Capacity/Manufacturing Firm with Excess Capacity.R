# Install lpSolve package if not already installed
# install.packages("lpSolve")

# Load the lpSolve library
library(lpSolve)

# Define the coefficients of the objective function
# The objective is to maximize: 50*x1 + 20*x2 + 25*x3
objective_function <- c(50, 20, 25)

# Define the constraint coefficients matrix (left-hand side of the constraints)
# Constraints are:
# 9*x1 + 3*x2 + 5*x3 <= 500 (Milling Machine Capacity)
# 5*x1 + 4*x2 <= 350 (Lathe Capacity)
# 3*x1 + 2*x3 <= 150 (Grinder Capacity)
# x3 <= 20 (Sales Limit Product 3)
constraints <- matrix(c(
  9, 3, 5,    # Milling Machine Capacity
  5, 4, 0,    # Lathe Capacity
  3, 0, 2,    # Grinder Capacity
  0, 0, 1     # Sales Limit for Product 3
), nrow = 4, byrow = TRUE)

# Define the right-hand side of the constraints (upper bounds)
rhs <- c(500, 350, 150, 20)

# Define the direction of the constraints (all are <=, so use "<=")
constraint_directions <- c("<=", "<=", "<=", "<=")

# Solve the Linear Program
solution <- lp("max", objective_function, constraints, constraint_directions, rhs)

# Print the optimal solution
cat("Optimal Solution:\n")
cat("Objective Function Value: ", solution$objval, "\n")
cat("Product 1 Production: ", solution$solution[1], "\n")
cat("Product 2 Production: ", solution$solution[2], "\n")
cat("Product 3 Production: ", solution$solution[3], "\n")
