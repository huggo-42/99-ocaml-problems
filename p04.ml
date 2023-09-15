(*
Find the number of elements of a list. (easy)
OCaml standard library has List.length but we ask that you reimplement it. Bonus for a tail recursive solution.
# length ["a"; "b"; "c"];;
- : int = 3
# length [];;
- : int = 0
*)

let length (xs: 'a list): int =
    let rec length' (xs: 'a list) (acc: int): int =
        match xs with
        | [] -> acc
        | _ :: rest -> length' rest (acc + 1)
    in length' xs 0


(* Let's Talk About Functional Programming (Tsoding Daily): https://www.youtube.com/watch?v=9nik-50ET3Q *)
let best_length (xs: 'a list): int =
    let result = ref 0 in
    let ys = ref xs in
    while !ys <> [] do
        result := !result + 1;
        ys := List.tl !ys
    done;
    !result

let () = 
    print_endline "Hello world"
