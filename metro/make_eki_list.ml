
(* 目的：ekimei_t型のリストを受け取ったらその駅名を使ってeki_t型のリストを作成する *)
    (* make_eki_list : ekimei_t list -> eki_t list *)
let rec make_eki_list lst = match lst with
    [] -> []
  | {kanji = ekimei_kanji; kana = ekimei_kana; romaji = ekimei_romaji; shozoku = ekimei_shozoku}  :: rest ->  (* make_eki_list rest *)
    {namae = ekimei_kanji; saitan_kyori = infinity; temae_list = []} :: make_eki_list rest


(* test *)
let test1 = make_eki_list global_ekimei_list

