#use "team_t.ml" 

(* 目的：受け取ったチーム名を文字列で返す *)
(* team_string : team_t -> string *)
let team_string team = match team with
  Red -> "赤組"
  | White -> "白組"

let test1 = team_string Red
let test2 = team_string White
