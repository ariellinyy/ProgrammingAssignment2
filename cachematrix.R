## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## The code below is to use a pair of function to catch the 
## inverse of a matrix instead of computing it repeatedly
makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) i <<- inverse
  getInverse <- function() i
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## Write a short comment describing this function

## The code below it to compute the inverse of matrix from
## makeCacheMatrix. The code will test and get the inverse if
## it is calculated.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i <- x$getInverse()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setInverse(i)
  i
}
