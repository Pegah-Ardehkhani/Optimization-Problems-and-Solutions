# Simple Radiation Therapy ☢️ <a href="https://colab.research.google.com/github/Pegah-Ardehkhani/Optimization-Problems-and-Solutions/blob/main/06.%20Simple%20Radiation%20Therapy/Simple%20Radiation%20Therapy.ipynb" target="_parent\"><img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open In Colab"/></a> [![nbviewer](https://img.shields.io/badge/render-nbviewer-orange.svg)](https://nbviewer.org/github/Pegah-Ardehkhani/Optimization-Problems-and-Solutions/blob/main/06.%20Simple%20Radiation%20Therapy/Simple%20Radiation%20Therapy.ipynb)

**Problem Statement:**

The SOUTHERN CONFEDERATION OF KIBBUTZIM is a group of three kibbutzim (communal farming communities). Overall planning for this group is done in its Coordinating Technical Office. This office currently is planning agricultural production for the coming year.

The agricultural output of each kibbutz is limited by both the amount of available irrigable land and the quantity of water allocated for irrigation by the Water Commissioner (a national government official). These data are given in Table 3.8.

<p align="center">
  <img width="800" height="300" src="https://github.com/Pegah-Ardehkhani/Optimization-Problems-and-Solutions/blob/main/08.%20Regional%20Planning/Table%203.8.PNG">
</p>

The crops suited for this region include sugar beets, cotton, and sorghum, and these are the three being considered for the upcoming season. These crops differ primarily in their expected net return per acre and their consumption of water. In addition, the Ministry of Agriculture has set a maximum quota for the total acreage that can be devoted to each of these crops by the Southern Confederation of Kibbutzim, as shown in Table 3.9.

<p align="center">
  <img width="800" height="300" src="https://github.com/Pegah-Ardehkhani/Optimization-Problems-and-Solutions/blob/main/08.%20Regional%20Planning/Table%203.9.PNG">
</p>

Because of the limited water available for irrigation, the Southern Confederation of Kibbutzim will not be able to use all its irrigable land for planting crops in the upcoming season. To ensure equity between the three kibbutzim, it has been agreed that every kibbutz will plant the same proportion of its available irrigable land. For example, if kibbutz $1$ plants $200$ of its available $400$ acres, then kibbutz $2$ must plant $300$ of its $600$ acres, while kibbutz $3$ plants $150$ acres of its $300$ acres. However, any combination of the crops may be grown at any of the kibbutzim. The job facing the Coordinating Technical Office is to plan how many acres to devote to each crop at the respective kibbutzim while satisfying the given restrictions. The objective is to maximize the total net return to the Southern Confederation of Kibbutzim as a whole.
