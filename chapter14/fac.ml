(* 目的：nから1までのリストを作る *)
(* enumerate : int -> int list *)
let rec enumerate n = 
  if n = 0 then []
  else n :: enumerate(n - 1)

(* 目的：階乗を求める *)
(* リストの値を順にかけていく *)
let fac n = 
  List.fold_right ( * ) (enumerate n) 1

(* test *)
let test1 = fac 5 = 5 * 4 * 3 * 2 * 1
let test2 = fac 0 = 1
let test3 = fac 5
