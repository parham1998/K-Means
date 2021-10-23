# K-Means (warm-up project!)

Implementation of the k-means algorithm with Matlab 

### notations
[ theta, bel, J ] = k_means( X, theta_ini ) <br />
- X is an l×N matrix whose columns contain the data vectors <br />
- theta_ini is an l×m matrix whose columns are the initial estimates of θj (the number of clusters, m, is implicitly defined by the size of theta_ini) <br />
- theta is a matrix of the same size as theta_ini, containing the final estimates for the θj’s <br />
- bel is an N-dimensional vector whose ith element contains the cluster label for the ith data vector
- J is the value of the cost function (MSE) for the resulting clustering

## example1
### figure1 (true clusters)
![first_exp(initial data distribution)](https://user-images.githubusercontent.com/85555218/121414872-5e4a7e00-c97c-11eb-9722-f351f8f5d13b.jpg)
### figure2 (randomly selecting theta_ini)
![first_exp(1)](https://user-images.githubusercontent.com/85555218/121415423-f6e0fe00-c97c-11eb-9a49-542890e85d5d.jpg)
## figure3 (selecting theta_ini according to data distribution)
![first_exp(2)](https://user-images.githubusercontent.com/85555218/121415459-006a6600-c97d-11eb-9bd5-ebf976e379bd.jpg)
### results
**(figure2)** <br />
It can be seen that the algorithm fails to identify the two clusters successfully. <br />
**(figure3)** <br />
By choosing suitable theta_ini, we can see that the k-means algorithm can cluster data much better.

## example2
### figure1 (true clusters)
![second_exp(initial data distribution)](https://user-images.githubusercontent.com/85555218/121418115-debeae00-c97f-11eb-89ab-45c4e33a2e18.jpg)
### figure2 (randomly selecting theta_ini)
![second_exp(1)](https://user-images.githubusercontent.com/85555218/121418180-f0a05100-c97f-11eb-994d-ad9ab86b1294.jpg)
### results
**(figure2)** <br />
K-means can not handle cases where noncompact clusters underlie the dataset. <br />
Data with long-narrow or curved distributions are not appropriately clustered. (In fact, If the shape of clusters is not convex, the k-means algorithm can't do proper clustering).
