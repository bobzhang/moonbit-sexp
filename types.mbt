///|
pub(all) enum Sexp_list {
  Nil
  Cons(Sexp, Sexp_list)
} derive(Debug)

///|
pub extend Sexp_list with @debug.Debug::{to_repr}

///|
pub impl Show for Sexp_list with fn output(self, logger) {
  logger.write_string(@debug.render(self.to_repr(), max_depth=2147483647))
}

///|
pub extend Sexp_list with Show::{to_string, output}

///|
/// sexp types
pub(all) enum Sexp {
  Atom(String)
  List(Sexp_list)
} derive(Debug)

///|
pub extend Sexp with @debug.Debug::{to_repr}

///|
pub impl Show for Sexp with fn output(self, logger) {
  logger.write_string(@debug.render(self.to_repr(), max_depth=2147483647))
}

///|
pub extend Sexp with Show::{to_string, output}

///|
pub fn atom(s : String) -> Sexp {
  Atom(s)
}

///|
pub fn list(xs : Sexp_list) -> Sexp {
  List(xs)
}

///|
pub fn cons(head : Sexp, tail : Sexp_list) -> Sexp_list {
  Cons(head, tail)
}
