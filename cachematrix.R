## Put comments here that give an overall description of what your
## functions do

#setwd('C:/Users/fr14057/OneDrive - Sanofi/Coursera_BP/cours3')

##set x as a matrix
##set i as null
##change mean to inverse

makeCacheMatrix <- function(x = matrix()) {

  i <- NULL
  set <- function(y){
    x <<- y
    i <<- NULL
  }
  get <- function()x
  setInverse <- function(inverse) i <<- inverse
  getInverse <- function() i 
  list(set = set, get = get, 
       setInverse = setInverse, 
       getInverse = getInverse)
  }


## Change mean to inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i <- x$getInverse()
  if(!is.null(i)){
    message("getting cached data")
    return(i)
  }
  mat <- x$get()
  i <- solve(mat,...)
  x$setInverse(i)
}



