(* 目的：文字列のリストを受け取ったらその中の要素を前から順に全てくっつけた文字列を返す
 * （fold_rightを使う) *)
(* fold_rightはfという関数とinitという初期値,lstを受け取る
 * initは空リストを置き換えるもの
 * fは::を置き換えるもの *)
(* fold_right f lst init *)

(* 目的：firstの要素(文字列)とrestの要素を加える *)
let add_string first rest_result = first ^ rest_result

let concat lst = List.fold_right add_string lst ""

(* test *)
let test1 = concat [] = ""
let test2 = concat ["春"; "夏"; "秋"; "冬"] = "春夏秋冬" 
