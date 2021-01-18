(* 目的：ふたつの自然数mとnの最大公約数を求める *)
(* gcd : int -> int -> int *)
let rec gcd m n = 
  if n = 0 then m
  else gcd n (m mod n)
(* nは次第に小さくなっていく，かつm mod nはn以上ので，停止する *)
(* test *)
let test1 = gcd 390 273 = 39
