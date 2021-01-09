(* 目的：整数のリストlstを受け取ったら,　そのリストの長さを返す *)
(* length : int list -> int *)
let rec length lst = match lst with
    [] -> 0
  | first :: rest -> 1 + length rest  (* length rest *)

(* test *)
let test1 = length [] = 0
let test2 = length [1] = 1
let test3 = length [1; 2; 3] = 3
let test4 = length [1; 2; 3; 4; 5; 6; 7; 8; 9; 10] = 10
