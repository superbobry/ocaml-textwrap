textwrap
========

An incomplete port of Python's [textwrap](docs.python.org/library/textwrap)
library to OCaml. What's in the box?

    # let w = Wrapper.make 4 in
      print_endline (Wrapper.fill w "Hello world!");;
    Hell
    o wo
    rld!
    - : unit = ()

Here's a table of `Wrapper.make` arguments, controlling various aspects
of wrapping:

```
| argument             | default | description                                        |
|----------------------+---------+----------------------------------------------------|
| initial_indent       | ""      | string that will be prepended to the first line    |
|                      |         | of wrapped output.                                 |
| subsequent_indent    | ""      | string that will be prepended to all but the       |
|                      |         | first lines of wrapped output.                     |
| expand_tabs          | true    | expand tabs in input string to spaces before       |
|                      |         | further processing -- each tab will become         |
|                      |         | 8 spaces; if `false`, each tab is treaded as a     |
|                      |         | single character.                                  |
| replace_whitespace   | true    | replace all whitespace characters in the input     |
|                      |         | text by spaces *after* tab expansion.              |
| fix_sentence_endings | false   | ensure that sentence-ending punctuation is         |
|                      |         | allways followed by two spaces.                    |
| break_long_words     | true    | break words longer than 'width', if `false`, those |
|                      |         | words won't be broken and some lines might be      |
|                      |         | longer that 'width'.                               |
| drop_whitespace      | true    | drop leading and trailing whitespace from lines.   |
```
