# Financial Planning and Control 💰 💸 <a href="https://colab.research.google.com/github/Pegah-Ardehkhani/Optimization-Problems-and-Solutions/blob/main/1.%20Financial%20Planning%20and%20Control/Financial%20Planning%20and%20Control.ipynb" target="_parent\"><img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open In Colab"/></a> [![nbviewer](https://img.shields.io/badge/render-nbviewer-orange.svg)](http://nbviewer.org/github/Pegah-Ardehkhani/Optimization-Problems-and-Solutions/blob/main/1.%20Financial%20Planning%20and%20Control/Financial%20Planning%20and%20Control.ipynb)

**Problem Statement:**

Suppose we wish to provide for a child’s college education $Y$ years from now. 
We currently have $b$ to invest in any of $I$ investments. 
After $Y$ years, we will have a wealth that we would like to have exceed a tuition goal of $G$ . 
We suppose that we can change investments every $υ$ years, so we have $H = Y/υ$ investment periods. 
For our purposes here, we ignore transaction costs and taxes on income although these considerations would be important in reality. 
We also assume that all figures are in constant dollars.

In formulating the problem, we must first describe our objective in mathematical terms. 
We suppose that exceeding $G$ after $Y$ years would be equivalent to our having an income of $q$% of the excess while not meeting the goal would lead to borrowing for a cost $r$% of the amount short. 
This gives us the concave utility function in Figure $2$.

<p align="center">
  <img width="800" height="400" src="https://github.com/Pegah-Ardehkhani/Optimization-Problems-and-Solutions/blob/main/01.%20Financial%20Planning%20and%20Control/Figure%202.PNG">
</p>

The major uncertainty in this model is the return on each investment $i$ within each period $t$. 
We describe this random variable as $ξ(i, t) = ξ (i, t, ω)$ where ω is some underlying random element. 
The decisions on investments will also be random. 
We describe these decisions as $x(i, t)=x(i, t,ω)$. From the randomness of the returns and investment decisions, our final wealth will also be a random variable.

To illustrate the effects of including stochastic outcomes as well as modeling effects from choosing the time horizon $Y$ and the coarseness of the period approximations $H$ , we use a simple example with two possible investment types, stocks ($i = 1$) and government securities (bonds) ($i = 2$). 
We begin by setting $Y$ at $15$ years and allow investment changes every five years so that $H = 3$.

We assume that, over the three decision periods, eight possible scenarios may occur. 
The scenarios correspond to independent and equal likelihoods of having (inflation-adjusted) returns of $1.25$ for stocks and $1.14$ for bonds or $1.06$ for stocks and $1.12$ for bonds over the five-year period. 
We indicate the scenarios by an index $s = 1, . . . ,8$ , which represents a collection of the 
outcomes $ω$ that have common characteristics (such as returns) in a specific model. 
When we wish to allow more general interpretations of the outcomes, we use the base element $ω$.
With the scenarios defined here, we assign probabilities for each $s$ , $p(s) = 0.125$ . 
We use initial wealth, $b = 55,000$ ; target value, $G = 80,000$ ; surplus reward, $q = 1$ ; and shortage penalty, $r = 4$.

<p align="center">
  <img width="700" height="600" src="https://github.com/Pegah-Ardehkhani/Optimization-Problems-and-Solutions/blob/main/01.%20Financial%20Planning%20and%20Control/tree.PNG">
</p>
