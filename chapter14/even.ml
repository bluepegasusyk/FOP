
                                            
(* evenをfilterを使って定義する *)
(* 目的：整数nが偶数かどうか調べる *)
(* is_even : int -> bool *)
let is_even n = n mod 2 = 0

(* 目的：受け取った整数のリストから偶数の要素のみを含むリストを返す *)
let even lst = List.filter is_even lst
(* test *)
let test1 = even [] = []
let test2 = even [2] = [2]
let test3 = even [2; 1; 6; 4; 7] = [2; 6; 4]
