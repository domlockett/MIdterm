
#So let's just make a print functin that returns the name and EAP of a test-taker
setMethod(f="print", "Rasch",
          definition = function(raschObj){
            print<-list( raschObj@name,  EAP(dom, -6, 6))
            names(print)<- c("Name", "Expected A Priori")
            return(print)
          }
)
print(dom)
