#' Calculate the Likelihood of Rasch data
#'
#' Returns the likelihood the observed value in the Probability function occurs
#'
#' @param raschObj An object of class Rasch
#' @param theta A numeric representation of a person's ability
#'
#' @return The calculated likelihood from Probability function
#' @author Dominique Lockett
#' @note This is a help session file
#' #' @example 
#' likelihood(dom, .2)
#' @export
setGeneric("likelihood", 
           def=function(raschObj, theta){   
  standardGeneric("likelihood")
}
)

#this one looks like less of a personal challenge!, maybe...
#' @export
setMethod("likelihood", definition=function(raschObj, theta){
            #so its just the product of the PQ function...?
            r<-unlist(probability(raschObj,theta)[2])
            #the product can't be analyzed as a list so we unlist that ish.
            fin<-prod(r)
            return(fin)
           })