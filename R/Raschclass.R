setClass(Class="Rasch",
         representation = representation (
           name="chararcter",
           a="numeric",
           y="numeric"
         ), 
         prototype = prototype (
           name=c(),
           a=c(),
           y=c()
         )
)



setMethod("initialize", "Rasch",  function(.Object, ...){
  value = callNextMethod()
  validObject(value)
  return(value)
}
)


#setValidity("door", function(object){
#if(object@chosenDoor %in% c(1,2,3) & object@carDoor %in% c(1,2,3) & class(switch)=="logical"){
 # return(TRUE)
#} else { # if not
#  return("Input is not a valid value. The door number should be between 1 and 3, and switch should be either TRUE or FALSE") # it returns the message that asks to input the number between 1 and 3.
#}
#})