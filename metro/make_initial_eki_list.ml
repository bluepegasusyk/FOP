
(* 目的：ekimei_t型のリストを受け取ったらその駅名を使ってeki_t型のリストを作成する *)
    (* make_eki_list : ekimei_t list -> eki_t list *)
(* let rec make_eki_list lst = match lst with
    [] -> []
  | {kanji = ekimei_kanji; kana = ekimei_kana; romaji = ekimei_romaji; shozoku = ekimei_shozoku}  :: rest ->  (* make_eki_list rest *)
    {namae = ekimei_kanji; saitan_kyori = infinity; temae_list = []} :: make_eki_list rest *)

(* 上の関数をmapと名前のない関数を使って書き直す *)
(* リストの全要素に対して同じ処理を行なっている *)
(* let make_eki_list lst = 
  List.map (fun {kanji = ekimei_kanji; kana = ekimei_kana; romaji = ekimei_romaji; shozoku = ekimei_shozoku} -> 
      {namae = ekimei_kanji; saitan_kyori = infinity; temae_list = []}) lst *)


(* 上の関数をmapとfunを使って書き直す *)
(* リストの全ての要素に同じ処理を行なっている *)
(* let shokika lst kiten =
  List.map (fun ({namae = n; saitan_kyori = s; temae_list = t} as first) -> 
      if kiten = n then {namae = n; saitan_kyori = 0.0; temae_list = [kiten]}
      else first) lst *)


(* 目的：make_eki_listとshokikaをまとめるような関数を作成する *)
let make_initial_eki_list lst kiten =
  List.map (fun {kanji = ekimei; kana = ekimei_kana; romaji = ekimei_romaji; shozoku = ekimei_shozoku} ->
      if kiten = ekimei then {namae = ekimei; saitan_kyori = 0.0; temae_list = [kiten]}
      else {namae = ekimei; saitan_kyori = infinity; temae_list = []}) lst


(* 駅名のリストの例 *)
let ekimei_list = [ 
{kanji="池袋"; kana="いけぶくろ"; romaji="ikebukuro"; shozoku="丸ノ内線"}; 
{kanji="新大塚"; kana="しんおおつか"; romaji="shinotsuka"; shozoku="丸ノ内線"}; 
{kanji="茗荷谷"; kana="みょうがだに"; romaji="myogadani"; shozoku="丸ノ内線"}; 
{kanji="後楽園"; kana="こうらくえん"; romaji="korakuen"; shozoku="丸ノ内線"}; 
{kanji="本郷三丁目"; kana="ほんごうさんちょうめ"; romaji="hongosanchome"; shozoku="丸ノ内線"}; 
{kanji="御茶ノ水"; kana="おちゃのみず"; romaji="ochanomizu"; shozoku="丸ノ内線"} 
] 

(* テスト *) 
let test1 = make_initial_eki_list [] "茗荷谷" = [] 
let test2 = make_initial_eki_list ekimei_list "茗荷谷" = [ 
{namae="池袋"; saitan_kyori = infinity; temae_list = []}; 
{namae="新大塚"; saitan_kyori = infinity; temae_list = []}; 
{namae="茗荷谷"; saitan_kyori = 0.; temae_list = ["茗荷谷"]}; 
{namae="後楽園"; saitan_kyori = infinity; temae_list = []}; 
{namae="本郷三丁目"; saitan_kyori = infinity; temae_list = []}; 
{namae="御茶ノ水"; saitan_kyori = infinity; temae_list = []} 
] 
