#The first function, makeCacheMatrix creates a special "matrix"
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
# set the value of the matrix
    set <- function(y) {
    x <<- y
    m <<- NULL
  }
# get the value of the matrix
    get <- function() x
    
# set the value of the inverse
  setInverse <- function(inverse) m <<- inverse
  
# get the value of the mean 
  getInverse <- function() j
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}

# The following function calculates the inverse of the special "matrix" created with the above function.
cacheSolve <- function(x, ...) {
# Return a matrix that is the inverse of 'x'
  m <- x$getInverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  mat <- x$get()
  m <- mean(mat, ...)
  x$setmean(m)
  m
}
