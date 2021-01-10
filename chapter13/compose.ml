(* 目的：関数を2つ受け取ったらその二つの関数を合成した関数を返す *)
(* compose : 
 * composeは関数fと関数gを引数に持ち関数hを返すので
 * A -> B -> C
 * testの場合は
 * f = time2, g = add3なので
 * Aはint -> int
 * Bはint -> int
 * Cはint -> intであるが
 * 特定の式の形が決まっていない場合は...
 * ('a -> 'b) -> ('c -> 'a) -> 'c -> 'b(よくわからない) 
 * *)
let compose f g =
  let h x = f (g x)
in h

(* 関数の例 *)
let time2 x = x * 2
let add3 x = x + 3
(* test *)
let test1 = (compose time2 add3) 4 
