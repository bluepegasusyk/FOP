(* 目的：関数を二つ受け取ったらその二つの関数を合成した関数を返す *)
(* compose : 
 * A -> B -> 'c -> 'd
 * ('a -> 'b) -> ('c -> 'a) -> 'c -> 'b *)
let compose f g =
  let h x = f (g x)
in h
  
(* test *)

(* 関数1としてtime2（渡された値を２倍する）を渡す *)
let time2 x = x * 2

(* 関数2としてadd3（渡された値に三を足す）を渡す *)
let add3 x = x + 3

let test1 = (compose time2 add3) 4 = 2 * (3 + 4)
