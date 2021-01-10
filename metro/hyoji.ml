
(* 目的：ekimei_t型のデータを受け取って,　「路線名,　駅名（かな）」の文字列を返す *)
(* hyoji : ekimei_t -> string *)
let hyoji ekimei_t = match ekimei_t with
  {kanji = a; kana = b; romaji = c; shozoku = d} ->
    d ^ "," ^ a ^ "（" ^ b ^ "）"

(* test *)
let test1 =  hyoji {kanji = "茗荷谷"; kana = "みょうがだに"; 
                   romaji = "myogadani"; shozoku = "丸の内線" }

(* __________________________________________________ *)
