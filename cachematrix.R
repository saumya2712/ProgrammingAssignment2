## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function will create a list which will contain a function to
##1. set the value of the matrix
##2. get the value of the matrix
##3. set the value of the matrix inverse
##4. get the value of the matrix inverse

makeCacheMatrix <- function(x = matrix()) {
  
  inv <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set = set, get = get,setinverse = setinverse,getinverse = getinverse)
  
}


## Write a short comment describing this function

##This function will first check if cache has the inverse of the matrix. If not, it wil use solve function to calculate the inverse of the matrix.

cacheSolve <- function(x) {
  ## Return a matrix that is the inverse of 'x'
  
  inv <- x$getinverse()
  if(!is.null(inv)) {
    message("getting cached data.")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data)
  x$setinverse(inv)
  inv
}

##Example
m<- matrix(1:4,2,2)

y<-makeCacheMatrix(m)
cacheSolve(y)
cacheSolve(y)
