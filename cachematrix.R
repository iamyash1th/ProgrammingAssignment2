## The first function, makeCacheMatrix creates a special "matrix", which is really a list containing a function to
#set the value of the matrix
#get the value of the matrix
#set the value of the inverse
#get the value of the inverse

## functions do

## Creating a special matrix object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
m <<- matrix
    i <<- NULL
  }
  
  ## Getting the matrix
  get <- function() {
    ## Return the matrix
    m
  }
  
  ## set the inverse of the matrix
  setInverse <- function(inverse) {
    i <<- inverse
  }
  
  ## setting the inverse of the matrix
  getInverse <- function() {
    ## Return the inverse property
    i
  }
  
  ## Return a list of the above
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}

# Calculates the inverse of an assumed square matrix, or retrieves
# a previously calculated inverse from cache, given a list argument
# from the function makeCacheMatrix()

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
        m <- x$getinverse()
	if(!is.null(m)) {
		message("getting cached data")
		return(m)
	}
	data <- x$get()
	m <- solve(data) %*% data
	x$setinverse(m)
	m
    
}
