(* 目的：整数のリストを受け取ったら，それまでの数の合計からなるリストを返す *)
(* sum_list : int list -> int list *)
let sum_list lst =
  (* 目的：整数のリストを受け取ったら，それまでの数の合計からなるリストを返す
   * ここでは，各要素までの数の合計を持っておく必要がある
   * ここで，totalが各要素までの数の合計 *)
  let rec hojo lst total = match lst with
      [] -> []
    | first :: rest ->
      first + total :: hojo rest (first + total)
  in hojo lst 0

(* test *)
let test1 = sum_list [3; 2; 1; 4] = [3; 5; 6; 10]
