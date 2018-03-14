setGeneric("prior", function(theta){   
  standardGeneric("prior")
}
)

#This is meant to be simple. Just return dnorm. 
setMethod("prior", signature(theta="numeric"),
          function(theta){
            #ok nbd just returning the normal curve using dnorm
            p<-dnorm(theta, 0, 3)
            return(p)
          })
prior(theta)
