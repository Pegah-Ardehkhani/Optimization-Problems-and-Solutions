/*********************************************
 * Household Chores
 *********************************************/
 
// Define decision variables
dvar boolean x[1..4]; // Variables for Eve (tasks 1-4)
dvar boolean y[1..4]; // Variables for Steven (tasks 1-4)

// Objective function: Minimize 4.5*x1 + 7.8*x2 + 3.6*x3 + 2.9*x4 + 4.9*y1 + 7.2*y2 + 4.3*y3 + 3.1*y4
minimize
  4.5*x[1] + 7.8*x[2] + 3.6*x[3] + 2.9*x[4] + 
  4.9*y[1] + 7.2*y[2] + 4.3*y[3] + 3.1*y[4];

// Constraints

// Eve and Steven must each perform exactly two tasks
subject to {
  // Eve does exactly two tasks
  sum(i in 1..4) x[i] == 2;

  // Steven does exactly two tasks
  sum(i in 1..4) y[i] == 2;

  // Each task must be assigned to either Eve or Steven
  x[1] + y[1] == 1;
  x[2] + y[2] == 1;
  x[3] + y[3] == 1;
  x[4] + y[4] == 1;
}

// Output the solution
execute {
  // Output the optimal objective value
  writeln("Optimal Objective Value: ", cplex.getObjValue());
  
  // Output the values of the decision variables
  for(var i = 1; i <= 4; i++) {
    writeln("x[", i, "] = ", x[i]);
    writeln("y[", i, "] = ", y[i]);
  }
}
