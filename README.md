# K-Means
(warm-up project!) Implementation of k-means algorithm with matlab 

[ theta, bel, J ] = k_means( X, theta_ini )
{
	X is an l×N matrix whose columns contain the data vectors

	theta_ini is an l×m matrix whose columns are the initial estimates of θj 
	(the number of clusters, m, is implicitly defined by the size of theta_ini)

	theta is a matrix of the same size as theta_ini, containing the final estimates for the θj’s

	bel is an N-dimensional vector whose ith element contains the cluster label for the ith data vector

	J is the value of the cost function (MSE) for the resulting clustering
}