## Cache for matrix and inverted matrix

## Creates cache

makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    set <- function(y) {
      x <<- y
      i <<- NULL
    }
    get <- function() x
    setinversed <- function(inversed) i <<- inversed
    getinversed <- function() i
    list(set = set, get = get,
         setinversed = setinversed,
         getinversed = getinversed)
}

## Inverts matrix if it was not yet inverted

cacheSolve <- function(x, ...) {
  i <- x$getinversed()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinversed(i)
  i
}
