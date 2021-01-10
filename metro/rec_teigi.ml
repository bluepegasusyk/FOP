
(* 駅名の情報を格納するレコード型（漢字の駅名,　ひらがなの駅名,　ローマ字の駅名,　所属する路線名）を定義 *)
type ekimei_t = {
  kanji : string; (* 漢字の駅名 *)
  kana : string;  (* ひらがなの駅名 *)
  romaji : string;  (* ローマ字の駅名 *)
  shozoku : string; (* 所属する路線名 *)
}

(* 駅と駅の接続情報を格納するレコード型（起点の駅名,　終点の駅名,　経由する路線名,　2駅間の距離,　所要時間）を定義 *)
type ekikan_t = {
  kiten : string; (* 起点の駅名 *)
  shuten : string; (* 終点の駅名 *)
  keiyu : string; (* 経由する路線名 *)
  kyori : float; (* 2駅間の距離 *)
  jikan : int;  (* 所要時間 *)
}

(* 駅名,　最短距離,　駅名のリストをフィールドにもつレコード型eki_tを定義 *)
type eki_t = {
  namae : string; (* 漢字の駅名 *)
  saitan_kyori : float; (* 最短距離 *)
  temae_list : string list;  (* namaeからの駅名のリスト *)
}

(* ________________________________________________ *)
