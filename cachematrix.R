## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## My Comment: this creates a cache for the matrix and its inverse 
## to reduce runtime if needed in another environment
## default x returns a 4 by 4 matrix of 16 random numbers

makeCacheMatrix <- function(x = matrix(rnorm(16), 4,4)) {

            myCachedM<<-x
            y<-solve(myCachedM)
            myCahcedMSolve<<-y
            
}


## Write a short comment describing this function
## This returns an inverse of the matrix from the cache

cacheSolve <- function(x = myCachedM, ...) {
  ## Return a matrix that is the inverse of 'x'
        
        mxSolve<-myCahcedMSolve
        if(!is.null(mxSolve)){
            message("getting cached data")
            return(mxSolve)
        }

        else{
          mxSolve<-solve(x)
          ytwo<<-mxSolve
          return(ytwo)
        }
}
