(* 必要な関数の読み込み *)
#use "global_ekimei_list.ml"
#use "eki_t.ml"
(* 目的：global_ekimei_listからeki_t型のリストを作る *)
(* make_eki_list : ekimei_t list -> eki_t list *)
let rec make_eki_list lst = match lst with
    [] -> []
  | {kanji = ekimei; kana = ekimei_kana; romaji = ekimei_romaji; shozoku = shozoku_eki} :: rest ->
    {namae = ekimei; saitan_kyori = infinity; temae_list = []} :: make_eki_list rest

(* test *)
let test1 = make_eki_list global_ekimei_list
