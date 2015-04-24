## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##function makeCacheMatrix stores four functions:
## get() : get the given matrix
## initialize the inverse matrix as NULL

makeCacheMatrix <- function(m = matrix()) {
  
  
  inv <<- NULL
  get <- function() m 

  list(get = get)

}


## Write a short comment describing this function
## This function takes the matrix using the get function of previous function
## and takes the inverse of the matrix using solve() and finally sets the internal variable "inv"
## to the calculated value to avoid applying inverse to the same matrix again
cacheSolve <- function(x, ...) {

  if(!is.null(inv)) {
    message("getting cached data")
    ## Returns the cached data
    return(inv)
  }
  data <- x$get()
  inv <<- solve(data, ...)
  ## Return a matrix that is the inverse of 'x'
  inv

}

