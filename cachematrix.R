## Put comments here that give an overall description of what your
## functions do

#Jose Garcia Coursera Assignment

## Create the inverse of a matrix, assuming it is inversable
install.packages("pracma")
library(matlib)

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinverse <- function(inv) m <<- inv
        getinverse <- function() m
        list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## See if inverse matrix exists, if so cache the matrix instead of 
# creating it again

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getinverse()
        if(!is.null(m)) {
                message("getting cached data")
                #Caching the Inverse of a Matrix
                return(m)
        }
        data <- x$get()
        m <- inv(data, ...)
        x$setinverse(m)
        m
}
