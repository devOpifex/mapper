#' Map
#' 
#' Create a new map
#' 
#' @examples
#' m <- map()
#' m$set("a", 1)
#' m$get("a")
#' 
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
