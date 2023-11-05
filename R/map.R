#' Map
#' 
#' Create a new map
#' 
#' @examples
#' m <- map()
#' m$set("a", 1)
#' m$get("a")
#' 
#' m$set("b", 2)
#' m$ls()
#' @export
map <- \(){
  env <- new.env()

  list(
    set = \(name, x) {
      env[[name]] <- x
    },
    get = \(name) {
      env[[name]]
    },
    has = \(name) {
      exists(name, envir = env)
    },
    rm = \(name) {
      remove(name, envir = env)
    },
    ls = \() {
      ls(env)
    }
  ) |> 
    as_mapper()
}

#' @export
print.map <- \(x, ...) {
  cat("map\n")
}

as_mapper <- \(map) {
  structure(
    map,
    class = c("map", class(map))
  )
}
