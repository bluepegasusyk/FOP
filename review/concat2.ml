(* 目的：文字列のリストを受け取ったらその中の要素を前から順に全部くっつけた文字列を返す *)
(* concat : string list -> string *)
(* lstの要素を全て足し上げていく＆lstの長さが0の場合は何も返さないのでfold_rightを使いたい *)
let concat lst = 
  List.fold_right (fun x y -> x ^ y) lst ""

(* test *)
let test1 = concat ["春"; "夏"; "秋"; "冬"]
