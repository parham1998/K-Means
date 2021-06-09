# K-Means
(warm-up project!) Implementation of k-means algorithm with matlab 

	[ theta, bel, J ] = k_means( X, theta_ini )

	X is an l×N matrix whose columns contain the data vectors

	theta_ini is an l×m matrix whose columns are the initial estimates of θj 
	(the number of clusters, m, is implicitly defined by the size of theta_ini)

	theta is a matrix of the same size as theta_ini, containing the final estimates for the θj’s

	bel is an N-dimensional vector whose ith element contains the cluster label for the ith data vector

	J is the value of the cost function (MSE) for the resulting clustering

# example1
## figure1 (true clusters)
![first_exp(initial data distribution)](https://user-images.githubusercontent.com/85555218/121414872-5e4a7e00-c97c-11eb-9722-f351f8f5d13b.jpg)
## figure2 (randomly selecting theta_ini)
![first_exp(1)](https://user-images.githubusercontent.com/85555218/121415423-f6e0fe00-c97c-11eb-9a49-542890e85d5d.jpg)
## figure3 (selecting theta_ini according to data distribution)
![first_exp(2)](https://user-images.githubusercontent.com/85555218/121415459-006a6600-c97d-11eb-9bd5-ebf976e379bd.jpg)
## results
> **(figure2)** we can see that the algorithm fails to identify successfully the two clusters.
> Specifically, it ends up with two clusters the first one of which is (roughly speaking) one half of the true “large” cluster underlying X; the second one contains the remaining points of the true “large” cluster as well as the points of the true “small” cluster.
> **(figure3)** by choosing suitable theta_ini we can see that k-means algorithm can cluster data much better.


# example2
## figure1 (true clusters)
![second_exp(initial data distribution)](https://user-images.githubusercontent.com/85555218/121418115-debeae00-c97f-11eb-89ab-45c4e33a2e18.jpg)
## figure2 (randomly selecting theta_ini)
![second_exp(1)](https://user-images.githubusercontent.com/85555218/121418180-f0a05100-c97f-11eb-994d-ad9ab86b1294.jpg)
## results
> **(figure2)** It is clear that, in principle, k-means is unable to handle cases where noncompact clusters underlie the data set.
> long narrow or curved clusters are not handled properly (in fact, If shape of clusters are not convex k-means algorithm can't do suitable clustering)
