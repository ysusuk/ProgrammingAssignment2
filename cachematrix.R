## Cache for matrix and inverted matrix

## Creates cache

makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    set <- function(y) {
      x <<- y
      i <<- NULL
    }
    get <- function() x
    setinverted <- function(inverted) i <<- inverted
    getinverted <- function() i
    list(set = set, get = get,
         setinverted = setinverted,
         getinverted = getinverted)
}

## Inverts matrix if it was not yet inverted

cacheSolve <- function(x, ...) {
  i <- x$getinverted()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinverted(i)
  i
}
