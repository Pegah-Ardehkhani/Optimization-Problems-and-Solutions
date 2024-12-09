# Install lpSolve package if not already installed
# install.packages("lpSolve")

# Load the lpSolve library
library(lpSolve)

# Define the shifts (1 to 5)
shifts <- 1:5

# Define the cost per shift
cost <- c(170, 160, 175, 180, 195)  # cost for shifts 1 to 5

# Define the constraint matrix
# Each row represents a constraint (e.g., shift 1 must have at least 48 agents)
constraints <- matrix(c(
  1, 0, 0, 0, 0,  # Shift 1 >= 48
  1, 1, 0, 0, 0,  # Shift 1 + Shift 2 >= 79
  1, 1, 0, 0, 0,  # Shift 1 + Shift 2 >= 65
  1, 1, 1, 0, 0,  # Shift 1 + Shift 2 + Shift 3 >= 87
  0, 1, 1, 0, 0,  # Shift 2 + Shift 3 >= 64
  0, 0, 1, 1, 0,  # Shift 3 + Shift 4 >= 73
  0, 0, 1, 1, 0,  # Shift 3 + Shift 4 >= 82
  0, 0, 0, 1, 0,  # Shift 4 >= 43
  0, 0, 0, 1, 1,  # Shift 4 + Shift 5 >= 52
  0, 0, 0, 0, 1   # Shift 5 >= 15
), nrow = 10, byrow = TRUE)

# Define the right-hand side of the constraints (minimum required agents for each shift)
rhs <- c(48, 79, 65, 87, 64, 73, 82, 43, 52, 15)

# Define the direction of the constraints (all constraints are of the form <= or >=)
constraint_directions <- rep(">=", 10)

# Solve the Linear Program using lpSolve
# "min" because we want to minimize the total cost
solution <- lp("min", cost, constraints, constraint_directions, rhs)

# Print the results
cat("Status:", solution$status, "\n")  # Status of the solver
cat("Optimal number of agents to assign to each shift:\n")
for (i in 1:length(shifts)) {
  cat(paste("Shift", i, ":", solution$solution[i], "agents\n"))
}
cat("\nTotal Minimum Cost: $", solution$objval, "\n")
