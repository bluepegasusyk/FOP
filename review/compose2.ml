(* 目的：関数を二つ受け取ったらその二つの関数を合成した関数を返す *)
(* compose : ('a -> 'b) -> ('c -> 'a) -> 'c -> 'b *)
let compose f g = 
(* let compose time2 add3 = 
 * time2 (add3 4)
 * let X 4 = time2 (add3 4) *)
let h x = f (g x)
  in h



(* test *)
let time2 x = 2 * x
let add3 x = x + 3
let test1 = (compose time2 add3) 4 = 2 * (3 + 4)
let test2 = (compose time2 add3) 4
