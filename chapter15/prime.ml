
(* 目的：2以上n以下の自然数のリストを受け取ったら2以上n以下の素数のリストを返す *)
(* sieve : int list -> int list *)
(* lstの先頭の要素は素数 *)
(* リストの残りの中からリストの先頭の要素で割り切れるものを取り除く
 * →つまり，割り切れないもののみのこす *)
(* 特定の条件のものを抽出したいので，filterを使う *)
(* これをリストが空になるまで繰り返す *)
let rec sieve lst = 
match lst with
  [] -> []
| first :: rest -> first :: sieve (List.filter (fun x -> x mod first > 0) rest) 

(* test *)
let test1 = sieve [2] = [2]
let test2 = sieve [2; 3; 4; 5; 6; 7] = [2; 3; 5; 7]


(* 2からnまでの自然数のリストを作る *)
(* two_to_n : int -> int list *)
(* 自然数nを受け取って，2からnまでの要素をリストにする *)
let two_to_n n =
  let rec loop i =
    if i <= n then i :: loop (i + 1)
    else []
in loop 2

(* test *)
let test1 = two_to_n 2 = [2]
let test2 = two_to_n 7 = [2; 3; 4; 5; 6; 7]

(* 自然数を受け取ったらそれ以下の素数のリストを返す *)
(* prime : int -> int list *)
let prime n = sieve (two_to_n n)

(* test *)
let test1 = prime 7 = [2; 3; 5; 7]
