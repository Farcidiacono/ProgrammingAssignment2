## Put comments here that give an overall description of what your
## functions do

## My functions cache the inverse of a matrix

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) ## This function creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) { ## define the argument with default mode of "matrix"
  inv <- NULL                               ## set inv as NULL 
  set <- function(y) {                      ## allows to assign new value of matrix in parent environment: if there is a new matrix reset inv to NULL
    x <<- y
    inv <<- NULL
  }
  get <- function() x                        ## define the get fucntion - returns value of the matrix argument
  setinverse <- function(inverse) s <<- inverse ## assign value of inv in parent environment
  getinverse <- function() inv
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
  }                                ## allows to refer the function with the $ operator



## Write a short comment describing this function

cacheSolve <- function(x, ...) {        ## Return a matrix that is the inverse of 'x'
}

cacheSolve <- function(x, ...) {  
  inv <- x$getinverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setsolve(inv)
  inv
}