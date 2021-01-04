(* string list は
 * -[]  空のリスト,　あるいは
 * -first :: rest 最初の要素がfirstで残りがrest
 * の形 *)

(* 目的：文字列のリストを受け取ったらその中の要素を前から順に全てくっつけた文字列を返す *)
(* concat : string lst -> string *)
let rec concat lst = match lst with
    [] -> ""
  | first :: rest -> first ^ concat rest

(* test *)
let test1 = concat [] = ""
let test2 = concat ["春"; "夏"; "秋"; "冬"] = "春夏秋冬" 
