## Using the same original script. The functions should be similar as the sample. From 0 to 100 to beginers
# Hope this works. Not going to change the variables. I will try to reuse all the code. If doesn??t work
# Will load this first code and change later
makeCacheMatrix <- function (x){
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  m_solve <- function(solve) m <<- solve
  #getmean <- function() m
  list(set = set, get = get,
       mm_solve = m_solve
  )
}


cachesolve <- function(x, ...) {
  m <- x$getmean()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setmean(m)
  m
}


