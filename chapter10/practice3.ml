
type gakusei_t = {
  namae : string; (* 名前 *)
  tensuu : int; (* 点数 *)
  seiseki : string; (* 成績 *)
}

(* gakusei_t型のデータの例 *)
let gakusei1 = {namae = "asai"; tensuu = 70; seiseki = "B"}
               
let gakusei2 = {namae = "kaneko"; tensuu = 85; seiseki = "A"}

let gakusei3 = {namae = "yoshida"; tensuu = 80; seiseki = "A"}
(* gakusei_t list は
 * -[]  空リスト,　あるいは
 * - first :: rest  最初の要素がfirstで残りのリストがrest
 *                  (firstはgakusei_t型,　restが自己参照のケース)
 *                  という形 *)

(* gakusei_t list型のデータの例 *)
let lst1 = []
let lst2 = [{namae = "asai"; tensuu = 70; seiseki = "B"}]
let lst3 = [{namae = "asai"; tensuu = 70; seiseki = "B"};
            {namae = "kaneko"; tensuu = 85; seiseki = "A"}]
let lst4 = [{namae = "asai"; tensuu = 70; seiseki = "B"};
            {namae = "kaneko"; tensuu = 85; seiseki = "A"};
            {namae = "yoshida"; tensuu = 80; seiseki = "A"}]

(* gakusei_t型のリストとレコードを受け取り,　tensuuフィールドの数値が順になるような位置にレコードを挿入したリストを返す *)
(* insert : gakusei_t list -> gakusei_t -> gakusei_t list *)
let rec insert lst data = match lst with
     [] -> [data]
   | ({namae = a; tensuu = b; seiseki = c} as first) :: rest ->   (* insert rest *)
        (match data with
            {namae = d; tensuu = e; seiseki = f}
              -> 
                if e > b then first :: insert rest data
                         else data :: lst) 

(* gakusei_t型のリストを受け取ったら,　tensuuフィールドの順に整列したリストを返す *)
(* gakusei_sort : gakusei_t list -> gakusei_t list *)
let rec gakusei_sort lst = match lst with
    [] -> []
  | first :: rest -> 
      insert (gakusei_sort rest) first(* gakusei_sort rest *)

(* test *)
let test1 = gakusei_sort lst1 = []
let test2 = gakusei_sort lst2 = [{namae = "asai"; tensuu = 70; seiseki = "B"}]
let test3 = gakusei_sort lst3 = [{namae = "asai"; tensuu = 70; seiseki = "B"};
                                 {namae = "kaneko"; tensuu = 85; seiseki = "A"}]
let test4 = gakusei_sort lst4 = [{namae = "asai"; tensuu = 70; seiseki = "B"};
                                 {namae = "yoshida"; tensuu = 80; seiseki = "A"};
                                 {namae = "kaneko"; tensuu = 85; seiseki = "A"}]

let test3 = gakusei_sort lst3  

let test4 = gakusei_sort lst4  


(* 目的：gakusei_t型のリストを受け取ったら,　最高点を取った人のレコードを返す *)
(* gakusei_max : gakusei_t list -> gakusei_t *)
let rec gakusei_max lst = match lst with
  | [] -> {namae = ""; tensuu = min_int; seiseki = ""}
  | ({namae = a; tensuu = b; seiseki = c} as first) :: rest ->  (* gakusei_max rest *)
    match gakusei_max rest with
      {namae = namae_max; tensuu = tensuu_max; seiseki = seiseki_max} ->
    if tensuu_max < b then first 
    else gakusei_max rest
(* test *)
let test11 = gakusei_max [] = {namae = ""; tensuu = min_int; seiseki = ""}

let test12 = gakusei_max [gakusei1] = gakusei1

let test13 = gakusei_max [gakusei1; gakusei2] = gakusei2

let test14 = gakusei_max [gakusei1; gakusei2; gakusei3] = gakusei2
