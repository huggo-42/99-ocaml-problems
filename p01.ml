(*
1. Write a function last : 'a list -> 'a option that returns the last element of a list. (easy)
# last ["a" ; "b" ; "c" ; "d"];; 
- : string option = Some "d"
# last [];;
- : 'a option = None
*)

(*
last(xs: List<T>) -> Optional<T>
*)

let rec last (xs: 'a list): 'a option =
    match xs with
    | [] -> None
    | [x] -> Some x
    | _ :: rest -> last rest

let () = 
    print_endline "Hello world"

