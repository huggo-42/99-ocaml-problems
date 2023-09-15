(*
Find out whether a list is a palindrome. (easy)
HINT: a palindrome is its own reverse.
# is_palindrome ["x"; "a"; "m"; "a"; "x"];;
- : bool = true
# not (is_palindrome ["a"; "b"]);;
- : bool = true*)

let rec is_palindrome (xs: 'a list): bool =
    match xs with
    | [x] -> true
    | [] -> true
    | x :: z -> if x = List.nth (List.rev xs) 0 then is_palindrome (List.tl (List.rev (List.tl xs))) else false

(*
abccba
*)

let () = 
    print_endline "Hello world"
