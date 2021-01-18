(* 'a -> 'a *)
let a x = x

(* 'a -> 'b -> 'a *)
let a x y = x

(* 'a -> 'b -> 'b *)
let a x y = y

(* 'a -> ('a -> 'b) -> 'b *)
let a x f = f x
(* ('a -> 'b) -> ('b -> 'c) -> 'a -> 'c *)
let a f g x = g (f x)
