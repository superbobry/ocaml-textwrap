(** A basic [textwrap] usage example. *)

let () =
  let w = Wrapper.make 4 in
  print_endline "simple case -- defaults only:";
  print_endline (Wrapper.fill w "Hello world!")

let () =
  let w = Wrapper.make ~break_long_words:false 4 in
  print_endline "don't break long words:";
  print_endline (Wrapper.fill w "Hello world!")
