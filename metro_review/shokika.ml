(* 必要なファイルを読み込み *)
#use "make_eki_list.ml" 

(* 目的：始点について最短距離が0, temae_listが始点の駅名のみからなるリストになるようなeki_t型のリストを返す *)
(* shokika : eki_t list -> string -> eki_t list *)
  let rec shokika lst siten = match lst with
  [] -> []
| ({namae = n; saitan_kyori = s; temae_list = t} as first) :: rest ->
  if n = siten then {namae = n; saitan_kyori = 0.; temae_list = [siten]} :: rest
  else first :: shokika rest siten

(* test *)
let test1 = shokika (make_eki_list global_ekimei_list) "赤坂" 
