(* 目的：person_t型のリストを受け取ったら，その中に出てくる人の名前のリストを返す *)
(* リストの要素全てに同じ処理をするので，mapを使いたい *)
(* person_namae : person_t list -> string list *)
let person_namae lst = 
  List.map (fun {name = n; shincho = s; taiju = ta; tsuki = ts; hi = h; ketsueki = k} -> n) lst 

(* test *)
let test1 = person_namae [] = []
let test2 = person_namae [person1; person2; person3] = ["浅井"; "宮原"; "中村"]
