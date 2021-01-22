(* 駅名の情報を格納するレコード型 *)
type ekimei_t = {
  kanji : string; (* 駅名 *)
  kana : string;  (* 駅名（かな） *)
  romaji : string;  (* 駅名（ローマ字） *)
  shozoku : string; (* 所属する路線 *)
}


