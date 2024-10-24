# Optimal Product Selection 💸 <a href="https://colab.research.google.com/github/Pegah-Ardehkhani/Optimization-Problems-and-Solutions/blob/main/17.%20Optimal%20Product%20Selection/Optimal%20Product%20Selection.ipynb" target="_parent\"><img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open In Colab"/></a> [![nbviewer](https://img.shields.io/badge/render-nbviewer-orange.svg)](https://nbviewer.org/github/Pegah-Ardehkhani/Optimization-Problems-and-Solutions/blob/main/17.%20Optimal%20Product%20Selection/Optimal%20Product%20Selection.ipynb)

**Problem Statement:**

The research and development division of a company has been developing four possible new product lines. Management must now make a decision as to which of these four products actually will be produced and at what levels. Therefore, they have asked the OR department to formulate a mathematical programming model to find the most profitable product mix.

A substantial cost is associated with beginning the production of any product, as given in the first row of the following table. The marginal net revenue from each unit produced is given in the second row of the table:

<p align="center">
  <img width="700" height="300" src="https://github.com/Pegah-Ardehkhani/Optimization-Problems-and-Solutions/blob/main/17.%20Optimal%20Product%20Selection/Table%2012.2.2.PNG">
</p>

Let the continuous decision variables $x_1, x_2, x_3$, and $x_4$ be the production levels of products $1, 2, 3$, and $4$, respectively. Management has imposed the following policy constraints on these variables:

1. No more than two of the products can be produced.

2. Either product $3$ or $4$ can be produced only if either product $1$ or $2$ is produced.

3. Either $5x_1 + 3x_2 + 6x_3 + 4x_4 \leq 6000$

    or $4x_1 + 6x_2 + 3x_3 + 5x_4 \leq 6000$.
