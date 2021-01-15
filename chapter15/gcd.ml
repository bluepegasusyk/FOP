(* 目的：二つの自然数mとnの最大公約数を求める *)
(* gcd : int -> int -> int *)
let rec gcd m n = 
  if n = 0  (* n = 0の場合が自明に答えが出る条件 *)
  then m  (* 上の条件の場合，答えはm *)
  else gcd n (m mod n)  (* nと「mをnで割ったあまり」の最大公約数が求める最大公約数である *)

(* test *)
let test1 = gcd 40 16 = 8
let test2 = gcd 42 28 = 14
