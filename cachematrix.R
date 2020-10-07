## Put comments here that give an overall description of what your
## functions do

## this function computes the inverse of a matrix and then caches it in the 
##enviroment in case we need it later

makeCacheMatrix <- function(x = matrix()) {
  inv<-NULL
  set<-function(y){
  +         x<<-y
  inv=NULL}
  
+     get<-function() x
+     setInv<-function(solve) m<<-solve
+     getInv<-function() m
+     list(set=set,get=get,setInv=setInv,getInv=getInv)
}


## this one will check if i already have inverted the matrix and will fecth the result

cacheSolve<-function(x,...){
  m<-x$getInv()
  if(!is.null(m)){
    return(m)
  }
  data<-x$get()
  m<-solve(data,...)
  x$setInv(m)
  m
}
        

