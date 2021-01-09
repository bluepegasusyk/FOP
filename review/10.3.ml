
(* 学生一人分のデータ（名前, 点数, 成績）を表す型 *)
type gakusei_t = {
  namae : string; (* 名前 *)
  tensuu : int; (* 点数 *)
  seiseki : string; (* 成績 *)
}

(* gakusei_t list は
 * -[]  空リスト,　あるいは
 * -first :: rest 最初の要素がfirstで残りのリストがrest
 *                (firstはgakusei_t型,　restが自己参照のケース)
 * というかたち *)

(* gakusei_t型のデータの例 *)
let gakusei1 = {namae = "asai"; tensuu = 70; seiseki = "B"}
let gakusei2 = {namae = "kaneko"; tensuu = 85; seiseki = "A"}
let gakusei3 = {namae = "yoshida"; tensuu = 80; seiseki = "A"}

(* gakusei_t list 型のデータの例 *)
let lst1 = []
let lst2 = [gakusei1]
let lst3 = [gakusei1; gakusei2]
let lst4 = [gakusei1; gakusei2; gakusei3]

(* gakusei_t型の点数フィールドの順に整列されたリストと,　gakusei_t型のレコードを受け取り,　
 * 点数順になるような位置にレコードを挿入したリストを返す *)
           (* gakusei_insert : gakusei_t list -> gakusei_t -> gakusei_t list *)
let rec gakusei_insert lst data = match lst with
    [] -> [data]
  | ({namae = n; tensuu = t; seiseki = s} as first) :: rest ->  (* gakusei_insert rest *)
(match data with
    {namae = n_data; tensuu = t_data; seiseki = s_data} ->
    if t_data < t then data :: lst
    else first :: gakusei_insert rest data)
(* test *)
let test1 = gakusei_insert lst2 gakusei2 = [gakusei1; gakusei2]
let test2 = gakusei_insert lst3 gakusei3 = [gakusei1; gakusei3; gakusei2]
let test3 = gakusei_insert lst1 gakusei1 = [gakusei1]

(* gakusei_t型のリストを受け取り, tensuuフィールドの順に整列したリストを返す *)
           (* gakusei_sort : gakusei_t list -> gakusei_t list *)
let rec gakusei_sort lst = match lst with
    [] -> []
  | first :: rest -> (* gakusei_sort rest *)
    gakusei_insert (gakusei_sort rest) first

(* test *)
let test1 = gakusei_sort lst1 = []
let test2 = gakusei_sort lst2 = [gakusei1]
let test3 = gakusei_sort lst3 = [gakusei1; gakusei2]
let test4 = gakusei_sort lst4 = [gakusei1; gakusei3; gakusei2]
