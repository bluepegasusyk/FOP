(* 2以上n以下の自然数のリストを受け取ったら2以上n以下の素数のリストを返す *)
(* sieve : int list -> int list *)
(* リストの先頭の要素で割り切れなかったものだけをリストに残す *)
(* 先頭の要素で残りの要素を割っていく *)
let rec sieve lst = match lst with
    [] -> []
  | first :: rest -> 
    first :: sieve (List.filter (fun x -> x mod first > 0) rest)
(* filterによってリストの大きさは小さくなっていくので停止性が保証される *)
(* test *)
let test1 = sieve [2] = [2]
let test2 = sieve [2; 3; 4; 5; 6; 7; 8; 9] = [2; 3; 5; 7]

(* 目的：自然数nを受け取って，n以下の素数を全て求める *)
(* nまでのリストを作成し，それに対してsieve lstを行う *)
(* prime : int -> int list *)
(* n_list : int -> int -> int list *)
let rec n_list x n = 
  if x < 2 then []
  else (n + 2 - x) :: n_list (x - 1) n


let prime n = sieve (n_list n n)
      (* 2からnまでのリストを作りたい *)
      (* どうやって？普通にやるとn; n -1; n -2 ...というリストになってしまうが *)
      (* n回リストに何かを足していく作業をするとすれば？
       * n + 2と等しくなるような数字を入れていくとか
       * それなら，n + 2を定義しておいて
       * （n＋2-x)を入れ続ける　xは，再帰でnー1していけばOK？ *)


let test1 = prime 2 = [2]
let test2 = prime 9 = [2; 3; 5; 7]

