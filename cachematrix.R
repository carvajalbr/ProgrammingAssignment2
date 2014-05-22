## Put comments here that give an overall description of what your
## functions do
## The overall function caches a matrix then gets the cached inverse ## of the matrix.

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
## The function sets, and gets a matrix x.

makeCacheMatrix <- function(x=matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  
  get <- function() x
  setInverse <- function(solve) m <<- solve
  getInverse <- function() m
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
  
}


## Write a short comment describing this function

## This function calculates the inverse of a matrix using the solve ## function. It also uses the cached inverse it available.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getInverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setInverse(m)
  m
}
