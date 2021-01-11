(* 目的：リストlstから3で割ると1余要素のみを取り出す *)
(* filterを使って,　それぞれの要素にmod3したい *)
let filter_mod3_1 lst = 
  let is_mod3_1 n = n mod 3 = 1
  in List.filter is_mod3_1 lst

(* test *)
let test1 = filter_mod3_1 [1; 2; 3; 4; 5; 6]  

(* 目的：受け取ったリストlstから生の要素のみを取り出す *)
    (* filter関数を使って,　それぞれの要素が正かどうか調べたい *)
let filter_positive lst =
  let is_positive n = n > 0
  in List.filter is_positive lst

(* test *)
let test2 = filter_positive [-2; -1; 0; 1; 2; 3]

(* 受け取った整数のリストから偶数の要素のみを含むリストを返す *)
    (* filter関数を使って,　それぞれの要素が偶数かどうかを調べたい *)
let even lst =
  let is_even n = n mod 2 = 0
  in List.filter is_even lst

(* test *)
let test1 = even [] = []
let test2 = even [2] = [2]
let test3 = even [2; 1; 6; 4; 7] = [2; 6; 4]


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

(* 学生リストのうち成績がAの人の数を返す *)
           (* gakusei_t型のリストそれぞれの要素にfilter関数を使って成績がAかどうか調べる
            * それに対してlengh関数を使って数を数える *)
let count_A lst =
  let is_A {namae = n; tensuu = t; seiseki = s} =
    s = "A"
  in List.length (List.filter is_A lst)

(* テスト *)
let test1 = count_A lst1 = 0
let test2 = count_A lst2 = 0
let test3 = count_A lst3 = 1
let test4 = count_A lst4 = 2
