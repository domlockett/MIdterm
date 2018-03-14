setGeneric("prior", function(theta){   
  standardGeneric("prior")
}
)

#This is meant to be simple. Just return dnorm. 
setMethod("prior", "Rasch",
          function( theta){
            #ok nbd just returning the normal curve using dnorm
            dnorm(theta, 0, 3)
          })
?dnorm
