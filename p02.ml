(*
2. Find the last but one (last and penultimate) elements of a list. (easy)
# last_two ["a"; "b"; "c"; "d"];;
- : (string * string) option = Some ("c", "d")
# last_two ["a"];;
- : (string * string) option = None
*)

(*
    how to define a tuple ->
    type: int * int
    value 1, 2
    list with one element: [1, 2] = [(1, 2)] -> don't need to use ()
    list with two elements [1; 2]
*)

let rec last_two (xs: 'a list): ('a * 'a) option =
    match xs with
    | [] -> None
    | [_] -> None
    | [x; y] -> Some (x, y)
    | _ :: rest -> last_two rest

let () = 
    print_endline "Hello world"

