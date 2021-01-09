(* 目的：p111の漸化式で定義される数列のn項を求める *)
(* a : int -> int *)
let rec a n = 
  if n = 0 then 3
  else 2 * a (n - 1) - 1

(* test *)
let test1 = a 0 = 3
let test2 = a 1 = 2 * 3 - 1
let test3 = a 2 = 2 * (2 * 3 - 1) - 1
