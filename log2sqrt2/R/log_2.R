#' my version of function log
#'
#' @param x
#'
#' @return number or error
#' @export
#'
#' @examples
#' x=2
#' log_2(x)
#' @seealso
#' x=-1
#' log_2(x)
log_2 <- function(x){
  if (x<0){
    abort(message = 'negative input, NA introduced!',
          .subclass = 'inpute_val_error',
          val=x)
  } else {
    log(x)
  }
}
