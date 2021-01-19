(* 関数fと初期値init，リストlstを受け取り
 * initから始めてリストの要素を左から順に関数fを適用する *)
(* fold_left : ('a -> 'b -> 'a) -> 'a -> 'b list -> 'a *)
let rec fold_left f init lst = match lst with
    [] ->  init
  | first :: rest ->
    fold_left f (f init first) rest

(* test *)
let test0 = fold_left (+) 0 [] = 0
let test1 = fold_left (+) 0 [3; 2; 1; 4] = 10
