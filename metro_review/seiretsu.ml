(* 定義入れる *)
#use "ekimei_t.ml"

(* 仮 
(* 整列ずみのリストにekimei_tを正しい場所に挿入する *)
(* ついでに，かぶってたら省く *)
(* insert : ekimei_t -> ekimei_t list -> ekimei_t list *)
let rec insert ({kanji = tar_kanji; kana = tar_kana; romaji = tar_roma; shozoku = tar_seiretsu} as tar) eki_lst = match eki_lst with
    [] -> [tar]
  | ({kanji = f_kanji; kana = f_kana; romaji = f_roma; shozoku = f_seiretsu} as first) :: rest ->
    if tar_kana < f_kana then tar :: eki_lst
    else if tar_kana = f_kana then eki_lst
    else first :: (insert tar rest)

(* リストを整列する *)
(* sort : ekimei_t list -> ekimei_t list *)
let rec sort lst = match lst with
    [] -> []
  | first :: rest ->
insert first (sort rest)
*)

(* 目的：ekimei_t型のリストを受け取ったらひらがなの順に整列
 * さらに駅の重複を取り除いたリストを返す *)
(* seiretsu : ekimei_t list -> ekimei_t list *)
let rec seiretsu lst = 
  let rec insert ({kanji = tar_kanji; kana = tar_kana; romaji = tar_romaji; shozoku = tar_shozoku} as tar) eki_lst =
    match eki_lst with 
      [] -> [tar]
    | ({kanji = f_kanji; kana = f_kana; romaji = f_romaji; shozoku = f_shozoku} as first) :: rest ->
      if tar_kana < f_kana then tar :: eki_lst
      else if tar_kana = f_kana then eki_lst
      else first :: (insert tar rest) in
  match lst with
    [] -> []
  | first :: rest ->
insert first (seiretsu rest)


(* test *)

(* 駅名のレコード *)
let eki1 = {kanji = "茗荷谷"; kana = "みょうがだに"; romaji = "myogadani"; shozoku = "丸ノ内線"}
let eki2 = {kanji = "渋谷"; kana = "しぶや"; romaji = "shibuya"; shozoku = "銀座線"}
let eki3 = {kanji = "表参道"; kana = "おもてさんどう"; romaji = "omotesandou"; shozoku = "銀座線"}
let eki4 = {kanji = "渋谷"; kana = "しぶや"; romaji = "shibuya"; shozoku = "半蔵門線"}

(* test *)
(* let test_ins = insert eki2 [eki3; eki4; eki1] *)
(* 駅名のリスト *)
let lst1 = [eki1; eki2; eki3; eki4]

(* test *)
(* let test_sort = sort lst1 *)

(* test *)
(* let test_ex = exclude eki1 eki2 = [eki1; eki2]
let test_ex_2 = exclude eki2 eki4 = [eki2] *)
(* テスト *)
let test1 = seiretsu lst1

