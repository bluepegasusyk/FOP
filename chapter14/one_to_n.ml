(* 目的：nから1までのリストを作る *)
(* enumerate : int -> int list *)
let rec enumerate n = 
  if n = 0 then []
  else n :: enumerate (n - 1)



(* 目的：1から受け取った自然数までの合計を求める *)
(* nから1までの数字をリストにして，それらを足しあげる *)
(* fold_rightでリストの各要素をまとめる *)
let one_to_n n = 
  List.fold_right (+) (enumerate n) 0

let test1 = one_to_n 5 = 15
let test2 = one_to_n 10 = 10 + 9 + 8 + 7 + 6 + 5 + 4 + 3 + 2 + 1 + 0
