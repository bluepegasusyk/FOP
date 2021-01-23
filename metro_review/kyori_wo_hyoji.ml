(* 必要な関数を読み込み *)
#use "romaji_to_kanji.ml"
#use "get_ekikan_kyori.ml"

(* 目的：ローマ字の駅名を二つ受け取ってきたらその間の距離を調べる
 * 直接繋がっている場合とそうでない場合にそれぞれ文字列を返す *)
(* kyori_wo_hyoji : string -> string -> string *)
let kyori_wo_hyoji siten shuten = 
  let siten_kanji = romaji_to_kanji siten global_ekimei_list in
  if siten_kanji = "" then siten ^ "という駅は存在しません" else
  let shuten_kanji = romaji_to_kanji shuten global_ekimei_list in
  if shuten_kanji = "" then shuten ^ "という駅は存在しません" else
  let ekikan_kyori = get_ekikan_kyori siten_kanji shuten_kanji global_ekikan_list in
  if ekikan_kyori = infinity then siten_kanji ^ "駅と" ^ shuten_kanji ^ "駅はつながっていません"
  else siten_kanji ^ "駅から" ^ shuten_kanji ^ "駅までは" ^ (string_of_float ekikan_kyori) ^ "kmです"

(* test *)
let test1 = kyori_wo_hyoji "myogadani" "shinotsuka" = "茗荷谷駅から新大塚駅までは1.2kmです"
let test2 = kyori_wo_hyoji "myogadani" "ueno"= "茗荷谷駅と上野駅はつながっていません" 
let test3 = kyori_wo_hyoji "sapporo" "ueno" = "sapporoという駅は存在しません"
let test4 = kyori_wo_hyoji "myogadani" "muroran" = "muroranという駅は存在しません"
