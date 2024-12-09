/*********************************************
 * Aircraft Purchase
 *********************************************/
// Decision Variables
int n = 3; // Number of variables
dvar int+ x[1..n]; // Decision variables (integer, non-negative)

// Parameters
float cost[1..n] = [2.1, 1.5, 1.15]; // Coefficients for the objective function
float constraint1[1..n] = [33.5, 25, 17.5]; // Coefficients for the first constraint
float constraint2[1..n] = [1, 1, 1]; // Coefficients for the second constraint
float constraint3[1..n] = [5/3, 4/3, 1]; // Coefficients for the third constraint
float rhs1 = 750; // RHS for the first constraint
float rhs2 = 30;  // RHS for the second constraint
float rhs3 = 40;  // RHS for the third constraint

// Objective Function: Maximize the total profit
maximize
    sum(i in 1..n) cost[i] * x[i];

// Constraints
subject to {
    // Constraint 1: 33.5x1 + 25x2 + 17.5x3 <= 750
    sum(i in 1..n) constraint1[i] * x[i] <= rhs1;
    
    // Constraint 2: x1 + x2 + x3 <= 30
    sum(i in 1..n) constraint2[i] * x[i] <= rhs2;

    // Constraint 3: (5/3)x1 + (4/3)x2 + x3 <= 40
    sum(i in 1..n) constraint3[i] * x[i] <= rhs3;
}

// Output the solution
execute {
  // Output the optimal values of the decision variables and the total profit
  writeln("Total Profit: " + cplex.getObjValue());
  writeln("Type 1: ", x[1]);
  writeln("Type 2: ", x[2]);
  writeln("Type 3: ", x[3]);  
}
 
 
