#' Rasch Model
#'
#' Returns probability that a student gets a question right given their ability, and the difficulty of the question
#'
#' @param raschObj An objecto of class Rasch
#' @param theta A proposed value representing a person's ability
#'
#' @return A vector of P and a vector of PQ
#' @author Dominique Lockett
#' @note This is a help session file
#' @export
setGeneric("probability", function(raschObj, theta){   
  standardGeneric("probability")
}
)

#' @export
#set up the whole deal like an S4 to save the trouble of redoing it all.
setMethod("probability", "Rasch",
          function(raschObj, theta){
            #Set up a function which cycles through each row of our dataset and return the evaluation of Rasch formula
            f<-function(x) {exp(theta-raschObj@a)/ 1+ exp(theta-raschObj@a)}
            #Make a dataset that apply can read
            d<-cbind(raschObj@a)
            #calculate each value
            P<-apply(d, 2,f)
            #Now we need to also consider y, so we add it to our dataset
            dat<-cbind(raschObj@a, raschObj@y)
            #I can't figure out how to do simple evaluation like above so we manually add the function so 
              #we have a working If Else statement
            PQ<- apply(dat, 1, function(dat) if (dat[2]==1) {return(exp(theta-dat[1])/ 1+ exp(theta-dat[1]))} else {return(1-(exp(theta-dat[1])/ 1+ exp(theta-dat[1])))})
            #Now develop our list of return and give them names!
            r<-list(P,PQ) 
            names(r)<-c("P","PQ") 
            return(r)})

