(* gakusei_t型のリストを受け取ったら，全員の得点の合計を返す *)
(* gakusei_sum : gakusei_t list -> int *)
(* gakusei_tの得点を足しあげる，リストが空なら0を足すのでfold_rightを使いたい *)
let gakusei_sum lst = 
  List.fold_right (fun x y -> 
    match (x, y) with
        ({namae = fn; tensuu = ft; seiseki = fs},
         y) ->
        ft + y) lst 0

(* test *)
let test1 = gakusei_sum lst1 = 0
let test2  = gakusei_sum lst4 = 70 + 80 + 85
