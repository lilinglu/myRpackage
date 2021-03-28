#' condition handling
#'
#' @param f (a function)
#'
#' @return a function
#' @export
#'
#' @examples
#' f<-log_2
#' log_3 <- f_operator(f)
f_operator <- function(f){
  force(f)

  #your code here (hint1: use catch_cnd() in pkg rlang)
  function(x, ...){
    if(x<0){
      cnd = catch_cnd(abort(message = "invalid input",
                            .subclass = "invalid_input",
                            invalid_input = x
      ))
    }
    else{
      f(x, ...)
    }
  }
}
