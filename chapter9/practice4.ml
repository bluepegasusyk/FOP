(* int listは
 * -[]  空リスト,　あるいは
 * -first :: rest 最初の要素がfirstで残りのリストがrest
 *                (restが自己参照のケース）
 * という形 *)

(* 目的：整数のリストを受け取ったら,　そのリストの長さを返す *)
(* length : int list -> int *)
let rec length lst = match lst with
    [] -> 0
  | first :: rest -> 1 + length rest  (* length rest *)
(* test *)
let test1 = length [] = 0
let test2 = length[1] = 1
let test3 = length[2; 1; 6; 4; 7] = 5
