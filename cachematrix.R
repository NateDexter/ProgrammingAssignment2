## The two functions below calculate inverse of matrix and it creates a cache data for repeated 
## agruments so that it doesnt have to calculate again.

## The following function creates several functions and returns them as a list. setmatrix function
## stores the passed matrix in x and the function setinverse sets the passed inverse in i 

makeCacheMatrix <- function(x = matrix()) {
      i<-NULL
      setmatrix <-function(y)
      {
            x<<-y
            i<- NULL
      }
      getmatrix<- function()x
      setinverse<- function(inverse) i<<- inverse
      getinverse<- function() i
      list(setmatrix=setmatrix, getmatrix=getmatrix, setinverse=setinverse,getinverse=getinverse)
      
}


## This function checks whether the result(inverse) is already in the cache data and returns the 
## inverse accordingly

cacheSolve <- function(x, ...) {
      i<- x$getinverse()
      if(!is.null(i))
      {
            print("getting cached data")
            return(i)
      }
      data<-as.matrix(x$getmatrix())
      i<-solve(data)
      x$setinverse(i)
      i
      
      
      ## Return a matrix that is the inverse of 'x'
}
