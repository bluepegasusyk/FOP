(* ekimei_t型の定義とグローバルリストを読み込み *)
#use "global_ekimei_list.ml"

(* ローマ字の駅名と駅名リストを受け取ったらその駅の漢字表記を文字列で返す *)
(* romaji_to_kanji : string -> ekimei_t list -> string *)
let rec romaji_to_kanji ekimei_r lst = match lst with
    [] -> ""
  | {kanji = eki_kanji; kana = eki_kana; romaji = eki_roma; shozoku = eki_s} :: rest ->
    if eki_roma = ekimei_r then eki_kanji
    else romaji_to_kanji ekimei_r rest

(* test *)
let test1 = romaji_to_kanji "myogadani" global_ekimei_list
let test2 = romaji_to_kanji "sapporo" global_ekimei_list
