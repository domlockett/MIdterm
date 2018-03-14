#' Probability
#'
#' Returns probability that a student gets a question right given their ability, and the difficulty of the question
#'
#' @param raschObj An objecto of class Rasch
#' @param theta A proposed value representing a person's ability
#'
#' @return A vector of P and a vector of PQ
#' @author Dominique Lockett
#' 
#' @examples
#' dom<-new("Rasch",name="dom", a=c(4,2,3,4,5,6,7,8,9), y=c(1,1,1,1,1,0,1,1,1))
#' probability(dom,.2)
#' 
#' @note This is a help session file
#' @export
setGeneric(name="probability", 
           def=function(raschObj, theta){   
  standardGeneric("probability")
}
)

#' @export
setMethod("probability",
          definition=function(raschObj, theta){
            theta<-.2
            #set up the whole deal like an S4 to save the trouble of redoing it all.
            #Set up a function which cycles through each row of our dataset and return the evaluation of Rasch formula
            P<- apply(d, 1, function(d) {return(exp(theta-d)/ 1+ exp(theta-d))})
            #Now we need to also consider y, so we add it to our dataset
            dat<-cbind(raschObj@a, raschObj@y)
            #I can't figure out how to do simple evaluation like above so we manually add the function so 
              #we have a working If Else statement
            PQ<- apply(dat, 1, function(dat) if (dat[2]==1) {return(exp(theta-dat[1])/ 1+ exp(theta-dat[1]))} else {return(1-(exp(theta-dat[1])/ 1+ exp(theta-dat[1])))})
            #Now develop our list of return and give them names!
            r<-list(P,PQ) 
            names(r)<-c("P","PQ") 
            return(r)})



