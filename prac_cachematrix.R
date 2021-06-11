## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## My Comment: this creates a cache for the matrix and its inverse 
## to reduce runtime if needed in another environment

makeCacheMatrix <- function(x = matrix(rnorm(16), 4,4)) {
  ##            x[]<-as.complex(x)
  ##            message(x)
  myCachedM<<-x
  y<-solve(myCachedM)
  myCahcedMSolve<<-y
  
  
  ##mxSolve<-NULL
  
  ##set<-function(y){
  ##  x<<-y
  ##  mxSolve<<-NULL
  ##}
  
  
  ##get<-function()x
  
  ##setmxSolve<-function(solve) mxSolve<<-solve
  ## getmxSolve<-function() mxSolve
  ##mxSolve
  ##creates a list of all the instances of the matrix
  ## list(set=set, get=get, setmxSolve=setmxSolve, getmxSolve=getmxSolve)
  
}


## Write a short comment describing this function
## This returns an inverse of the matrix from the cache

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  x<-x$set()
  mxSolve<-x$getmxSolve()
  if(!is.null(mxSolve)){
    message("getting chaced data")
    return(mxSolve)
  }
  
  data<-x$get()
  mxSolve<-solve(data, ...)
  x$setmxSolve(mxSolve)
  mxSolve
}
