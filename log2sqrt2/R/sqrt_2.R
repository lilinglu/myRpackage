#' my version of log function
#'
#' @param x
#'
#' @return number or error
#' @export
#'
#' @examples
#' x=2
#' sqrt(x)
#' @seealso
#' x=-1
#' sqrt(x)
sqrt_2 <- function(x){
  if (x<0){
    abort(message = 'negative input, NA introduced!',
          .subclass = 'inpute_val_error',
          val=x)
  } else {
    sqrt(x)
  }
}
