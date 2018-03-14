setGeneric("likelihood", function(raschObj, theta){   
  standardGeneric("likelihood")
}
)

#this one looks like less of a personal challenge!, maybe...
setMethod("likelihood", "Rasch",
          function(raschObj, theta){
            #so its just the product of the PQ function...?
            r<-unlist(probability(raschObj,theta)[2])
            #the product can't be analyzed as a list so we unlist that ish.
            prod(r)
           })

likelihood(dom, theta)
