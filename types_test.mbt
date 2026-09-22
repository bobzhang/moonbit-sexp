///|
test "construct sexp" {
  let x = @sexp.list(@sexp.cons(@sexp.atom("hello"), Nil))
  inspect(x, content="List(Cons(Atom(\"hello\"), Nil))")
}
