## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Creates a special matrix object that can cache its inverse
makeCacheMatrix <- function(x = matrix()) {
    
    ## declaring and initializing the inverse variable
    inv <- NULL

    ## setting the matrix
    setMat <- function( matrix ) {
            x <<- matrix
            inv <<- NULL
    }

    ## getting the matrix
    getMat <- function() {
    	x
    }

    ## setting the inverse of the matrix
    setInverseMat <- function(inverseMatrix) {
        inv <<- inverseMatrix
    }

    ## getting the inverse of the matrix
    getInverseMat <- function() {
        inv
    }

    ## Return a list of the methods
    list(setMat = setMat, getMat = getMat,
         setInverseMat = setInverseMat,
         getInverseMat = getInverseMat)

}


## Write a short comment describing this function
## Compute the inverse of the special matrix returned by "makeCacheMatrix"
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x
    matr <- x$getInverse()

    ## returning if it is not null
    if( !is.null(matr) ) {
            message("getting cached data")
            return(matr)
    }

    ## Get the matrix
    data <- x$get()

    ## Calculate the inverse using matrix multiplication
    matr <- solve(data) %*% data

    ## Set the inverse
    x$setInverse(m)

    ## Return the matrix
    matr
}
