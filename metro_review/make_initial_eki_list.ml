#use "global_ekimei_list.ml"
#use "eki_t.ml"
(* 目的：make_eki_listとshokikaを一度にやってしまう関数を作成 *)
(* make_initial_eki_list : ekimei_t list -> string -> eki_t list *)
let make_initial_eki_list ekimei_lst siten = 
  List.map (fun {kanji = ekimei; kana = n; romaji = r; shozoku = s} ->
      if ekimei = siten then {namae = siten; saitan_kyori = 0.; temae_list = [siten]}
      else {namae = ekimei; saitan_kyori = infinity; temae_list = []}) ekimei_lst

(* test *)
let test1 = make_initial_eki_list global_ekimei_list "表参道"
