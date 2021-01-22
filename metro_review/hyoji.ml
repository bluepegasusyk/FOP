(* ekimei_t型のレコードを受け取ってきたら，「路線名, 駅名（かな）」の形式の文字列を返す *)
(* hyoji : ekimei_t -> string *)
let hyoji ekimei = match ekimei with
    {kanji = eki_kanji; kana = eki_kana; romaji = eki_romaji; shozoku = eki_shozoku} ->
    eki_shozoku ^ "," ^ eki_kanji ^ "(" ^ eki_kana ^ ")"

(* test *)
let test1 = hyoji {kanji = "茗荷谷"; kana = "みょうがだに"; romaji = "myogadani"; shozoku = "丸ノ内線"}
