

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

(* 目的：gakusei_t型のリストを受け取ったら,　最高得点を取った人のレコードを返す *)
           (* gakusei_max : gakusei_t list -> gakusei_t *)
let rec gakusei_max lst = match lst with
    [] -> {namae = ""; tensuu = min_int; seiseki = ""}
  | ({namae = n; tensuu = t; seiseki = s} as first) :: rest ->  (* gakusei_max rest *)
    let max_rest = gakusei_max rest in
    match max_rest with
      {namae = n_max; tensuu = t_max; seiseki = s_max} ->
    if t_max <= t 
    then first
    else max_rest

(* test *)
let test1 = gakusei_max lst1 = {namae = ""; tensuu = min_int; seiseki = ""}
let test2 = gakusei_max lst2 = gakusei1
let test3 = gakusei_max lst3 = gakusei2
let test4 = gakusei_max lst4 = gakusei2
