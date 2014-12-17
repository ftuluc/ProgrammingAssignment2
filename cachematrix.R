## Put comments here that give an overall description of what your
## functions do

## checks if the determinant of the matrix is non-zero 
## stores the initial matrix in the variable ini_x
## calculates the inverse of the matrix and stores it in variable inv_x
## If determinant is zero the inverse cannot be calculated. Throws a message
makeCacheMatrix <- function(x) {
      if(det(x) != 0) {
            ini_x <<- x
            inv_x <<- solve(x)
            inv_x
      } else {
            message("The inverse cannot be calculated.")
      }
      
}


## Write a short comment describing this function
##Check if there is no cached matrix ini_x or inv_x or 
##      if new matrix x is not identical with the cached matrix ini_x
##run makeCacheMatrix
## else return cached value inv_x

cacheSolve <- function(x, ...) {
      if(!identical(x, ini_x) | !exists("ini_x") | !exists("inv_x")) {
            makeCacheMatrix(x)
      } else {
            inv_x            
      }
}
        ## Return a matrix that is the inverse of 'x'
