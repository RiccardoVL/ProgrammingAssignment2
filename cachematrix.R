## Put comments here that give an overall description of what your
## functions do
## The first function mantain the vector structure of the sample that is the following but 
## customized to a matrix.
## The second returns the inverse of the matrix created on the previos function.
 

## Write a short comment describing this function
## This function let us get or set a matrix, and get or set the inverse of the function.

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  setMatrix <- function(y = matrix()) {
    x <<- y
    inv <<- NULL
  }
  getMatrix <- function() x
  setInverse <- function(inverse) inv <<- inverse
  getInverse <- function() inv
  list(setMatrix = setMatrix, getMatrix = getMatrix,
       setInverse = setInverse,
       getInverse = getInverse)
  
}


## Write a short comment describing this function
## In this function First check if the inverse has been already calculated,
## if true I return the inverse, if not calculate the inverse, cache the inverse and 
## return it
cacheSolve <- function(x, ...) {
  inv <- x$getInverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$getMatrix()
  inv <- solve(data, ...)
  x$setInverse(inv)
       ## Return a matrix that is the inverse of 'x'
  inv
        
}
