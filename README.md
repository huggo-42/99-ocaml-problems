# 99-ocaml-problems

- in the terminal run
```
rlwrap ocaml
```

- inside ocaml repl run
```
#use "./p01.ml";;
```

- then you'll be able to execute the function
> example for p01.ml
```
last [1 ; 2 ; 3]
```
**output:** `int option = Some 3`
```
last ["1" ; "2" ; "3"]
```
**output:** `string option = Some 3`

# stack trace
### stack trace error
- keeps pushing behind the mem stack for each iteration
```let rec f (): int = 1 + f ()```

### no stack trace 
- uses the same mem stack for each iteration
```let rec ft (res: int) = ft (res + 1)```

### trace a function
- after
`#use "./p01.ml";;`
- you can
```
#trace last;;
```
**output:** `last is now traced`
- now running `last [1 ; 2 ; 3]` result in
```ocaml
last <-- [<poly>; <poly>; <poly>; <poly>]
last <-- [<poly>; <poly>; <poly>]
last <-- [<poly>; <poly>]
last <-- [<poly>]
last --> Some <poly>
last --> Some <poly>
last --> Some <poly>
last --> Some <poly>
- : string option = Some "d"
```
- <poly> because no type was specified (using 'a) it shows as polymorphism
> specify a type to see the exact values changing
- from
```ocaml
let rec last (xs: 'a list): 'a option =
    match xs with
    | [] -> None
    | [x] -> Some x
    | _ :: rest -> last rest
```
- to
```ocaml
let rec last (xs: int list): int option =
    match xs with
    | [] -> None
    | [x] -> Some x
    | _ :: rest -> last rest
```
- running it traced:
```
last <-- [1; 2; 3; 4; 5; 6]
last <-- [2; 3; 4; 5; 6]
last <-- [3; 4; 5; 6]
last <-- [4; 5; 6]
last <-- [5; 6]
last <-- [6]
last --> Some 6
- : int option = Some 6
```
