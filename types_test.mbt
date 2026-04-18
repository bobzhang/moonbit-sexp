///|
test "construct sexp" {
  let x = list(cons(atom("hello"), Nil))
  inspect(x, content="List(Cons(Atom(\"hello\"), Nil))")
}
