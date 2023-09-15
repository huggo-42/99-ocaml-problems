(*
3. Find the K'th element of a list. (easy)
# at 3 ["a"; "b"; "c"; "d"; "e"];;
- : string option = Some "c"
# at 3 ["a"];;
- : string option = None
*)

let rec at (pos: int) (xs: 'a list): 'a option =
    match xs with
    | x :: _    when pos == 1 -> Some x
    | _ :: rest when pos > 1 -> at (pos - 1) rest
    | _ -> None

let () = 
    print_endline "Hello world"

