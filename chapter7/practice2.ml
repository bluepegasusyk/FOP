(* 目的：名前と成績の組を受け取り, それに応じた文字列を返す *)
(* seiseki : string * string -> string *)
let seiseki pair = match pair with
  (a, b) -> a ^ "さんの評価は" ^ b ^ "です"

(* test *)
let test1 = seiseki ("kana", "B") = "kanaさんの評価はBです"
