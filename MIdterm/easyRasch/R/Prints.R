#' Print
#'
#' Returns the height of the LL for a  given value of lambda
#'
#' @param name The name of the person being analyzed
#' @param EAP Expected a Priori value
#'
#' @return A single numeric value that is is the negative LL
#' @author Dominique Lockett
#' @note This is a help session file
#' 
#' @example 
#' 
#' prints(dom)
#' @export
setGeneric("prints", 
def=function(raschObj){   
  standardGeneric("prints")
}
)

#So let's just make a print functin that returns the name and EAP of a test-taker
setMethod(f="prints",
          definition = function(raschObj){
            print<-list( raschObj@name,  EAP(dom, -6, 6))
            names(print)<- c("Name", "Expected A Priori")
            return(print)
          }
)