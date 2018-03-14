#' Prior
#'
#' Returns the height of a normal curve evaluated at theta
#'
#' @param theta A numeric object representing a person's ability
#'
#' @return The height of the specified normal curve evaluated at theta
#' @author Dominique Lockett
#' @note This is a help session file
#' @export
setGeneric("prior", function(theta){   
  standardGeneric("prior")
}
)

#This is meant to be simple. Just return dnorm. 
#' @export
setMethod("prior", signature(theta="numeric"),
          function(theta){
            #ok nbd just returning the normal curve using dnorm
            p<-dnorm(theta, 0, 3)
            return(p)
          })
prior(theta)
