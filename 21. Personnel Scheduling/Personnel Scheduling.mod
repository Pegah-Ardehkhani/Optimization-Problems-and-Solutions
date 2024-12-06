/*********************************************
 * Personnel Scheduling
 *********************************************/
// Define decision variables for the number of personnel in each shift (Integer variables)
dvar int+ x[1..5]; // Integer decision variables for shifts 1 to 5, with lower bound 0

// Objective function: Minimize the total personnel cost
minimize
  170 * x[1] + 160 * x[2] + 175 * x[3] + 180 * x[4] + 195 * x[5]; // Total Personnel Cost

// Constraints
subject to {
  // Shift 1 (6-8 AM) constraint
  x[1] >= 48; 

  // Shift 1 and 2 (8-10 AM) constraint
  x[1] + x[2] >= 79;

  // Shift 1 and 2 (10-12 AM) constraint
  x[1] + x[2] >= 65;

  // Shift 1, 2, and 3 (12 AM - 2 PM) constraint
  x[1] + x[2] + x[3] >= 87;

  // Shift 2 and 3 (2-4 PM) constraint
  x[2] + x[3] >= 64;

  // Shift 3 and 4 (4-6 PM) constraint
  x[3] + x[4] >= 73;

  // Shift 3 and 4 (6-8 PM) constraint
  x[3] + x[4] >= 82;

  // Shift 4 (8-10 PM) constraint
  x[4] >= 43;

  // Shift 4 and 5 (10-12 PM) constraint
  x[4] + x[5] >= 52;

  // Shift 5 (12 PM - 6 AM) constraint
  x[5] >= 15;
}

// Output the solution
execute {
  // Output the values of the decision variables and the total personnel cost
  writeln("Optimal Personnel Allocation:");
  writeln("Shift 1: ", x[1]);
  writeln("Shift 2: ", x[2]);
  writeln("Shift 3: ", x[3]);
  writeln("Shift 4: ", x[4]);
  writeln("Shift 5: ", x[5]);
  
  // Calculate and output the total personnel cost
  writeln("Total Personnel Cost: ", 170 * x[1] + 160 * x[2] + 175 * x[3] + 180 * x[4] + 195 * x[5]);
}
 