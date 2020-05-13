## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  inv <- NULL 
  set <- function(y){
    x <<- y
    int <<- NULL
    
  }
  get <- function() x 
  setInverse <- function(solveMatix) inv <<- solveMatix 
  getInverse <- function() inv
  list(set = set, get = get, setInverse = setInverse,getInverse = getInverse)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv < -x$getInverse()
  if(!is.null(inv)){
    message("getting cached data")
    
  }
  data <- x$get()
  inv <- solve(data)
  x$setInverse(inv)
  inv
}


x <- matrix( c(2, 4, 3, 1, 5, 6, 7, 3, 1), # the data elements 
                nrow=3,              # number of rows 
                ncol=3,              # number of columns 
                byrow = TRUE)

# Check for determinant and apply solve to get a hint of what we want
det(x)
solve(x)

# Now apply cacheSolve and see of the solution matches
x1 <- makeCacheMatrix(x)
cacheSolve(x1)
