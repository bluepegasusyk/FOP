
(* 目的：ローマ字の駅名（文字列）と駅名リストを受け取ったらその駅の漢字表記を文字列で返す *)
 (* romaji_to_kanji : string -> ekimei_t list -> string *)
let rec romaji_to_kanji ekimei lst = match lst with
    [] -> ""
  | {kanji = kanji_eki; kana = kana_eki; romaji = romaji_eki; shozoku = shozoku_eki} :: rest ->   (* romaji_to_kanji rest *)
    if ekimei = romaji_eki then kanji_eki
    else romaji_to_kanji ekimei rest

(* test *)
let test1 = romaji_to_kanji "ueno" global_ekimei_list = "上野"

