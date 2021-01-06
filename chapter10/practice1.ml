(* 目的：整数のリストと整数を受け取り,　照準となる位置に整数を挿入したリストを返す *)
(* insert : int list -> int -> int list *)
let rec insert lst n = match lst with
   [] -> [n]
|  first :: rest 
    ->  if first <= n then first :: insert rest n
        else  n :: lst(* insert rest n *)

(* テスト *)
let test1 = insert [1; 3; 4; 7; 8] 5 = [1; 3; 4; 5; 7; 8]
let test1 = insert [2; 3; 5; 7; 9] 1 = [1; 2; 3; 5; 7; 9]
let test3 = insert [1; 2; 4] 5 = [1; 2; 4; 5]
let test4 = insert [] 5 = [5]

(* 目的：整数のリストを受け取ったら,　それを昇順に整列したリストを返す *)
(* ins_sort : int list -> int list *)
let rec ins_sort lst = match lst with
    [] -> []
  | first :: rest -> 
      insert (ins_sort rest) first (* ins_sort rest *)

(* test *)
let test1 = ins_sort [5; 3; 8; 1; 7; 4] = [1; 3; 4; 5; 7; 8]
