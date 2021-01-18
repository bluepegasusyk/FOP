(* 目的：学生リストlstのうち成績がseiseki0の人の数を返す *)
(* count : gakusei_t list -> int *)
(* 成績がseiseki0の人のリストを作成し，そのリストの長さを調べる *)
let count lst seiseki0 = 
  List.length (List.filter (fun {namae = n; tensuu = t; seiseki =s} -> s = seiseki0) lst)

(* test *)
let test1 = count [] "A" = 0
let test2 = count lst4 "A" = 2
