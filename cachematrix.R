## Put comments here that give an overall description of what your
## functions do
## set the matrix
## get the matrix
## set the invers
## get the invers
## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
invmat <- NULL
setmat <- function(y) {
  x<<-y
  invmat <<- NULL
} 
getmat <- function()x
setinv <- function(inverse) invmat <<- inverse
getinv <- function()invmat
list(setmat = setmat, getmat = getmat, setinv = setinv, getinv = getinv)
}


## Write a short comment describing this function
## inverst the matrix by 1st check to see if the inverse has already been calculate.
## so get inverse from cache.

cacheSolve <- function(x, ...) {
  invmat <- x$getinv()
  if(!is.null(invmat)){
    return(invmat)  
  }
  else{
    matdata <- X$getmat()
    invmat <- solve(matdata,....)
    x$setinv(invmat)
    return(invmat)
  }
        ## Return a matrix that is the inverse of 'x'
}
