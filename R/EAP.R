#' EAP
#'
#' Returns the value of theta hat calculated in the Prior function
#'
#' @param raschObj An object of class Rasch
#' @param lower The lower limits of integration (-6)
#' @param upper The upper limits of integration (6)
#'
#' @return A value of theta hat specified in the Prior function
#' @author Dominique Lockett
#' @note This is a help session file
#' @export
setGeneric(name="EAP",
           def=function(raschObj, lower , upper )
           {standardGeneric("EAP")}
)
#Now to our final hurdle as far as functions go.
#integration and what not. oh no.
#' @export
setMethod("EAP",
          definition=function(raschObj, lower, upper){
            theta<-.2
            #So we make the two functions to put into the integrate
            n <- function(theta){
              (theta*likelihood(raschObj, theta)*prior(theta))}
            #These are just the equations specified in the formula
            d <- function(theta){
              (likelihood(raschObj, theta)*prior(theta))}
            #now we're gonna integrate and divide
            num <- integrate(n, lower, upper)$value
            den <- integrate(d, lower, upper)$value
            EAP <- num/den
            return(EAP)
          }
)
EAP(dom, -6, 6)

