## There are 2 functions in this program that aim to 
## compute the inverse of an invertible matrix.

## This function provides functionality to compute the inverse of a matrix in the 
## form of getinverse and setinverse functions.

makeCacheMatrix <- function(x = matrix()) {
  print(x)
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) i <<- solve
  getinverse <- function() i
  list(set=set,get=get,
       setinverse=setinverse,
       getinverse=getinverse)
}

## This function gets the matrix inverse from either memory using getinverse or 
## computes it and sets its value using setinverse

cacheSolve <- function(x, ...) {
  i <- x$getinverse()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  i
  ## Return a matrix that is the inverse of 'x'
}
