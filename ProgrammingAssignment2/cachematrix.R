## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This fucntion build a simle matrix (specialm) if no argument is passed to it
## inverse value is calculated and cached into inv variable
makeCacheMatrix <- function(x =matrix(1:4,2,2)) {
        inv <<- NULL
        
        specialm <<- x
        inv <<- solve(specialm)
        myget <<- function() specialm
        setinverse <- function(y) inv <<- solve(y)
        getinverse <<- function() inv
        list(myget = myget,
             setinverse = setinverse,
             getinverse = getinverse)
}


## Write a short comment describing this function
## This function receives a matrix as argument an check whether its inverse has
## already cached and has not changed.
cacheSolve <- function(x, ...) {
        inv <- getinverse() 
        if(!is.null(inv) & identical(inv,solve(x))) {
                message("getting cached data")
                return(inv)
        }
        data <- x
        inv <- setinverse(data)
        inv
}

