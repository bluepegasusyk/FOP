(* 目的：２時方程式ax^2 + bx + c = 0の係数a, b, cを受け取り,　判別式の値を返す.　aは0でないと仮定してよい *)
(* hanbetsushiki : float->float->float->float *)
let hanbetsushiki a b c =  b ** 2.0 -. 4. *. a *. c

(* 目的：2次方程式ax^2 + bx + c = 0の係数a, b, cが与えられたときに,　解の個数を導出する *)
(* kai_no_kosuu : float -> float -> float -> float *)
let kai_no_kosuu a b c = 
  if hanbetsushiki a b c > 0.0 then 2.
    else if hanbetsushiki a b c = 0. then 1.
      else 2.

(* 目的：2次方程式ax^2 + bx + c = 0の係数a, b, cが与えられたときに,　2次方程式が虚数解を持つか判別する *)
(* kyosuukai : float -> float -> float -> bool *)
let kyosuukai a b c = hanbetsushiki a b c < 0.0 

(* テスト *)
let test1 = hanbetsushiki 2. 3. (-.1.) = 17.
let test2 = kai_no_kosuu 2. 3. (-.1.) = 2.
let test3 = kai_no_kosuu 1. 4. 4. = 1.
let test4 = kyosuukai 15. 24. 100. = true
let test5 = kyosuukai 2. 3. (-.1.) = false
let test6 = kyosuukai 1. 4. 4. = false
