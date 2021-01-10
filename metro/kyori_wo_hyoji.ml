
(* 目的：ローマ字の駅名を2つ受け取ってきたらその間の距離を調べ,　文字列を返す *)
            (* kyori_wo_hyoji : string -> string -> string *)
let kyori_wo_hyoji ekimei1 ekimei2 = 
    let eki1 = romaji_to_kanji ekimei1 global_ekimei_list in
    let eki2 = romaji_to_kanji ekimei2 global_ekimei_list in
    let kyori = get_ekikan_kyori eki1 eki2 global_ekikan_list in
    let kyori_string = string_of_float kyori in
    if eki1 = "" then ekimei1 ^ "という駅は存在しません"
    else if eki2 = "" then ekimei2 ^ "という駅は存在しません"
    else if kyori = infinity then eki1 ^ "駅と" ^ eki2 ^ "駅はつながっていません"
    else eki1 ^ "駅から" ^ eki2 ^ "駅までは" ^ kyori_string ^ "kmです"

(* test *)
let test1 = kyori_wo_hyoji "myogadani" "shinotsuka" = "茗荷谷駅から新大塚駅までは1.2kmです"
let test2 = kyori_wo_hyoji "sapporo" "shinotsuka"
let test3 = kyori_wo_hyoji "myogadani" "muroran"
let test4 = kyori_wo_hyoji "myogadani" "nagatacho"
