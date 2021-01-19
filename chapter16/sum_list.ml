(* 目的：整数のリストを受け取ったら，それまでの数の合計からなるリストを返す *)
(* sum_list : int list -> int list *)
let sum_list lst = 
(* それまでの数の合計を保存しておく必要
 * 目的 : 先頭からリストの中の各要素までの数値の合計を計算する
 * ここでtotalはこれまでの数値の合計
 * hojo : int list -> int -> int list *)
  let rec hojo lst total = match lst with
      [] -> []
    | first :: rest ->
      (total + first) :: hojo rest (total + first)
  in hojo lst 0

(* test *)
let test1 = sum_list [3; 2; 1; 4] = [3; 5; 6; 10]
