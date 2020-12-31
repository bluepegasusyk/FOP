(* 目的：時間を受け取ったら午前か午後かを判定する *)
(* jikan : string -> string *)
let jikan x = 
  if x < "12" then "午前"
              else "午後"

(* テスト *)
let test1 = jikan "11" = "午前"
let test2 = jikan "16" = "午後"
let test3 = jikan "12" = "午後"
