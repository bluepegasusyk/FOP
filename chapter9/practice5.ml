(* int list は
 * - [] 空リスト,　あるいは
 * - first :: rest  最初の要素がfirstで残りのリストがrest
 * というかたち *)

(* 目的：整数のリストを受け取ったら,　その中の偶数の要素のみを含むリストを返す *)
(* even : int list -> int list *)
let rec even lst = match lst with
    [] -> []
  | first :: rest -> if first mod 2 = 0 then first :: even rest (* even rest *)
                                        else even rest 
(* test *)
let test1 = even [] = []
let test2 = even [2] = [2]
let test3 = even [2; 1; 6; 4; 7] = [2; 6; 4]
