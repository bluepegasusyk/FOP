
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

(* 目的：整数のリストを受け取ったらそれを昇順に整列したリストを返す *)
(* ins_sort : int list -> int list *)
let rec ins_sort lst = match lst with
    [] -> []
  | first :: rest ->  (* ins_sort rest *)
insert (ins_sort rest) first
(* test *)
let test1 = ins_sort [1] = [1]
let test2 = ins_sort [5; 3; 8; 1; 7; 4] = [1; 3; 4; 5; 7; 8]
let test3 = ins_sort [1]
let test4 = ins_sort [5; 3; 8; 1; 7; 4]
