
pub enum Sexp_list {
  Nil
  Cons(Sexp, Sexp_list)
}
derive(Show)

///
/// sexp types
///
pub enum Sexp {
    Atom(String)
    List(Sexp_list)
}
derive(Show)


// pub fn atom(s : String)-> Sexp{
//   Atom(s)
// }

// pub fn list(atoms: Sexp) -> Sexp{
//   List(atoms)
// }