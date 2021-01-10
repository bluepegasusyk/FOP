(* 目的：person_t型のレコードを受け取ったら名前を返す *)
(* namae : person_t -> string *)
let namae data = match data with
    {name = n; shincho = s; taiju = ta; tsuki = ts; hi = h; ketsueki = k} ->
    n

(* test *)
let test1 = namae person1

(* 目的：person_t型のリストを受け取ったらその中に出てくる人の名前のリストを返す *)
    (* person_namae : person_t list -> string list *)
let person_namae lst = List.map namae lst

(* テスト *)
let test2 = person_namae [person1; person2; person3]
let test3 = person_namae []
