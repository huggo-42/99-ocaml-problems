(*
 Reverse a list. (easy)
OCaml standard library has List.rev but we ask that you reimplement it.
# rev ["a"; "b"; "c"];;
- : string list = ["c"; "b"; "a"]
*)

let rev (xs: 'a list): 'a list =
    let rec rev' (xs: 'a list) (acc: 'a list): 'a list =
        match xs with
        | [] -> acc
        | h :: rest -> rev' rest (h :: acc)
    in rev' xs []

(* #trace 
let rec rev (xs, acc: int list * int list): int list =
    match xs with
    | [] -> acc
    | x :: rest -> rev (rest, (x :: acc))
*)

let () = 
    print_endline "Hello world"
