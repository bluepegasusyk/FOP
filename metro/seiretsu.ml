(* 駅名リストの例 *)
let ekimei_list = [ 
{kanji="池袋"; kana="いけぶくろ"; romaji="ikebukuro"; shozoku="丸ノ内線"}; 
{kanji="新大塚"; kana="しんおおつか"; romaji="shinotsuka"; shozoku="丸ノ内線"}; 
{kanji="茗荷谷"; kana="みょうがだに"; romaji="myogadani"; shozoku="丸ノ内線"}; 
{kanji="後楽園"; kana="こうらくえん"; romaji="korakuen"; shozoku="丸ノ内線"}; 
{kanji="本郷三丁目"; kana="ほんごうさんちょうめ"; romaji="hongosanchome"; shozoku="丸ノ内線"}; 
{kanji="御茶ノ水"; kana="おちゃのみず"; romaji="ochanomizu"; shozoku="丸ノ内線"} 
] 

let ekimei_list2 = [
{kanji="池袋"; kana="いけぶくろ"; romaji="ikebukuro"; shozoku="丸ノ内線"}; 
{kanji="池袋"; kana="いけぶくろ"; romaji="ikebukuro"; shozoku="丸ノ内線"}; 
{kanji="新大塚"; kana="しんおおつか"; romaji="shinotsuka"; shozoku="丸ノ内線"}; 
{kanji="茗荷谷"; kana="みょうがだに"; romaji="myogadani"; shozoku="丸ノ内線"}; 
{kanji="後楽園"; kana="こうらくえん"; romaji="korakuen"; shozoku="丸ノ内線"}; 
{kanji="本郷三丁目"; kana="ほんごうさんちょうめ"; romaji="hongosanchome"; shozoku="丸ノ内線"}; 
{kanji="御茶ノ水"; kana="おちゃのみず"; romaji="ochanomizu"; shozoku="丸ノ内線"} 
]



(* 目的：ekimei_t型のリストとekimei_t型のレコードを受け取って, ひらがなの順にソートし,　重複を取り除いたリストを返す *)
 (* insert_ekimei : ekimei_t list -> ekimei_t -> ekimei_t list *)
let rec insert_ekimei lst data = match lst with
    [] -> [data]
  | ({kanji = ekimei_kanji; kana = ekimei_kana; romaji = ekimei_romaji; shozoku = ekimei_shozoku} as first) :: rest -> 
    (* insert_ekimei rest *)
    match data with 
      {kanji = data_kanji; kana = data_kana; romaji = data_romaji; shozoku = data_shozoku} ->
      if data_kana < ekimei_kana then data :: lst
      else if data_kana = ekimei_kana then lst
      else first :: insert_ekimei rest data
    

(* test *)

(* 目的：ekimei_t型のリストを受け取ったらひらがなの順に整列し,　駅の重複を取り除いたekimei_t型のリストを返す *)
 (* seiretsu : ekimei_t list -> ekimei_t list *)
let rec seiretsu lst = match lst with
    [] -> []
  | first :: rest -> (* seiretsu rest *)
insert_ekimei (seiretsu rest) first


(* test *)
let test3 = seiretsu [] = [] 
let test4 = seiretsu ekimei_list = [ 
{kanji="池袋"; kana="いけぶくろ"; romaji="ikebukuro"; shozoku="丸ノ内線"}; 
{kanji="御茶ノ水"; kana="おちゃのみず"; romaji="ochanomizu"; shozoku="丸ノ内線"}; 
{kanji="後楽園"; kana="こうらくえん"; romaji="korakuen"; shozoku="丸ノ内線"}; 
{kanji="新大塚"; kana="しんおおつか"; romaji="shinotsuka"; shozoku="丸ノ内線"}; 
{kanji="本郷三丁目"; kana="ほんごうさんちょうめ"; romaji="hongosanchome"; shozoku="丸ノ内線"}; 
{kanji="茗荷谷"; kana="みょうがだに"; romaji="myogadani"; shozoku="丸ノ内線"} 
] 
let test5 = seiretsu ekimei_list2
