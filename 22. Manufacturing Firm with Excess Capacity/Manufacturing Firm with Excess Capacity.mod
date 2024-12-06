/*********************************************
 * Manufacturing Firm with Excess Capacity
 *********************************************/
// Define decision variables for the products
dvar float+ x[1..3]; // Continuous variables for products 1, 2, and 3, with lower bound 0

// Objective function: Maximize total profit
maximize
  50 * x[1] + 20 * x[2] + 25 * x[3]; // Total profit from products 1, 2, and 3

// Constraints

// Milling machine capacity
subject to {
  9 * x[1] + 3 * x[2] + 5 * x[3] <= 500; // Milling machine capacity constraint

  // Lathe capacity
  5 * x[1] + 4 * x[2] <= 350; // Lathe capacity constraint

  // Grinder capacity
  3 * x[1] + 2 * x[3] <= 150; // Grinder capacity constraint

  // Sales limit for product 3
  x[3] <= 20; // Sales limit constraint for product 3
}

// Output the solution
execute {
  // Output the optimal values of the decision variables and the total profit
  writeln("Optimal production plan:");
  writeln("Product 1: ", x[1]);
  writeln("Product 2: ", x[2]);
  writeln("Product 3: ", x[3]);
  
  // Calculate and output the total profit
  writeln("Total Profit: ", 50 * x[1] + 20 * x[2] + 25 * x[3]);
}
 