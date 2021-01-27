#use "to_seireki.ml" 

(* 目的：誕生年と現在の年をnengou_t型の値として受け取ってきたら，年齢を返す *)
(* nenrei : nengou_t -> nengou_t -> int *)
let nenrei birth now = to_seireki now - to_seireki birth

(* test *)
let test1 = nenrei (Heisei (10)) (Heisei (21))
