(* 整数のリストを受け取ったら，その中の偶数の要素のみを含むリストを返す *)
(* リストの各要素に対して偶奇判定し，偶数のものだけを含むリストを返したいのでfilterを使いたい *)
(* filterに与える関数は条件式 *)
(* even : int list -> int list *)
let even lst = 
  List.filter (fun x -> x mod 2 = 0) lst

(* test *)
let test1 = even [] = []
let test2 = even [1; 2; 3; 4; 5; 7; 8] = [2; 4; 8]
