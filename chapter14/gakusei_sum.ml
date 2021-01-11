(* 学生ひとり分のデータ（名前、点数、成績）を表す型 *) 
type gakusei_t = { 
  namae : string;       (* 名前 *) 
  tensuu : int;         (* 点数 *) 
  seiseki : string;     (* 成績 *) 
} 
 
(* gakusei_t list 型のデータの例 *) 
let lst1 = [] 
let lst2 = [{namae = "asai"; tensuu = 70; seiseki = "B"}] 
let lst3 = [{namae = "asai"; tensuu = 70; seiseki = "B"}; 
            {namae = "kaneko"; tensuu = 85; seiseki = "A"}] 
let lst4 = [{namae = "yoshida"; tensuu = 80; seiseki = "A"}; 
            {namae = "asai"; tensuu = 70; seiseki = "B"}; 
            {namae = "kaneko"; tensuu = 85; seiseki = "A"}] 

(* 目的：gakusei_t型のリストを受け取って全員の得点の合計を返す *)
           (* つまり,　再起呼び出しの結果と先頭の要素を足す形 *)

(* これまでの得点の合計と得点を足した合計を返す *)
let add_tensuu {namae = n; tensuu = t; seiseki = s} rest_result =
  t + rest_result

(* 全員の得点の合計を返す *)
let gakusei_sum lst = List.fold_right add_tensuu lst 0

(* test *)
let test1 = gakusei_sum lst1 = 0
let test2 = gakusei_sum lst2 = 70
let test3 = gakusei_sum lst3 = 155
let test4 = gakusei_sum lst4 = 80 + 70 + 85

