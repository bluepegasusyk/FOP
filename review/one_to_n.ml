(* 目的：自然数nを受け取って1からnまでの数のリストを作成する *)
(* enumerate : int -> int list *)
let rec enumerate n = 
  if n = 0 then []
  else n :: enumerate (n - 1)

(* 目的：1から受け取った自然数までの合計を求める *)
(* 全ての要素をたす->fold_rightを使いたい *)
(* one_to_n : int -> int *)
let one_to_n n = 
  List.fold_right (+) (enumerate n) 0

(* test *)
let test1 = one_to_n 0 = 0
let test2 = one_to_n 5 = 1 + 2 + 3 + 4 + 5
