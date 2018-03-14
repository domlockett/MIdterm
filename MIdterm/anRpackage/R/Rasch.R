#' Rasch
#' 
#' Objects of class Rasch come from  several functions
#'
#' 
#' An object of the class `Rasch' has the following slots:
#' \itemize{
#' \item \code{name} The name of a test-taker
#' \item \code{a} A set of question-item parameters
#' \item \code{y} A vector of answers for the respondent 
#'
#'  }
#'
#' @author Dominique M. Lockett: \email{dlockett@@wustl.edu}
#' @aliases Rasch-class initialize,Rasch-method  
#' @rdname Rasch
#' @export
setClass(Class="Rasch",
         representation = representation (
           name="character",
           a="numeric",
           y="numeric"
         ), 
         prototype = prototype (
           name=c(),
           a=c(),
           y=c()
         )
)
#' @export
setMethod("initialize", "Rasch",  function(.Object, ...){
  value = callNextMethod()
  validObject(value)
  return(value)
}
)
