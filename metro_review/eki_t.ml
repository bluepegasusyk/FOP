(* 駅名，最短距離，駅名のリストの3つをフィールドとして持つレコード型 *)
type eki_t = {
  namae : string; (* 駅名 *)
  saitan_kyori : float; (* その駅までの最短距離 *)
  temae_list : string list; (* その駅までの経由駅のリスト *)
}
