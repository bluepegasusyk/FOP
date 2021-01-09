(* 目的：昇順の整数のリストlstと整数nを受け取って昇順となる位置にnを挿入したリストを返す *)
(*insert : int list -> int -> int list *)
let rec insert lst n = match lst with
    [] -> [n]
  | first :: rest -> (* insert rest *)
    if n < first then n :: lst
    else first :: insert rest n

(* test *)
let test1 = insert [] 1 = [1]
let test2 = insert [1; 3; 4; 7; 8] 5 = [1; 3; 4; 5; 7; 8]
