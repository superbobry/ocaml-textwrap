textwrap
========

An incomplete port of Python's [textwrap](docs.python.org/library/textwrap)
library to OCaml. What's in the box?

```ocaml
# let w = Wrapper.make 4 in
  print_endline (Wrapper.fill w "Hello world!");;
Hell
o wo
rld!
- : unit = ()
```
