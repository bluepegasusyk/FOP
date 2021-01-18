(* 目的：自然数nを受け取って1からnまでの数のリストを作成する *)
(* enumerate : int -> int list *)
let rec enumerate n = 
  if n = 0 then []
  else n :: enumerate (n - 1)

(* 目的：階乗を求める *)
(* 自然数nまでのリストを作成し，要素をかけていく *)
(* fac : int -> int *)
let fac n = 
  List.fold_right ( * ) (enumerate n) 1
(* test *)
let test1 = fac 0 = 1
let test2 = fac 5 = 1 * 2 * 3 * 4 * 5
