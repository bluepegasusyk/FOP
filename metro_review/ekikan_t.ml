(* 駅と駅の接続情報を格納するekikan_t型 *)
type ekikan_t = {
  kiten : string; (* 起点 *)
  shuten : string;  (* 終点 *)
  keiyu : string; (* 経由する路線名 *)
  kyori : float;  (* 2駅間の距離 *)
  jikan : int;  (* 所要時間 *)
}

