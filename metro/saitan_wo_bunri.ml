(* 目的：最短距離最小の駅を求める *)
(* minimum_kyori : eki_t list -> eki_t *)
(*let rec minimum_kyori lst = match lst with
    [] -> {namae = ""; saitan_kyori = infinity; temae_list = []}
  | ({namae = n_first; saitan_kyori = s_first; temae_list = t_first} as first) :: rest ->
    let minimum_eki = minimum_kyori rest in
    match minimum_eki with
      {namae = n_minimum; saitan_kyori = s_minimum; temae_list = t_minimum} ->
      if s_first < s_minimum then first
      else minimum_eki *)

(* 目的：最短距離最小の駅を未確定の駅のリストから取り除く *)
(* exclude : eki_t list -> eki_t -> eki_t list *)
(* let rec exclude lst data =
  match lst with
    ({namae = n_first; saitan_kyori = s_first; temae_list = t_first} as first) :: rest ->
    match data with
      {namae = n_minimum; saitan_kyori = s_minimum; temae_list = t_minimum} ->
      if s_first = s_minimum then rest
      else first :: exclude rest data *)

(* eki_t型のリストを受け取ったら
 * 「最短距離最小の駅」と「最短距離最小の駅以外からなるリスト」の組を返す *)
(* 上二つの処理を一気にやってしまいたい *)
(* saitan_wo_bunri : eki_t list -> eki_t * eki_t list *)
(* let saitan_wo_bunri lst = (* ({namae = ""; saitan_kyori = 0.0; temae_list = []}, []) *)
  (minimum_kyori lst, exclude lst (minimum_kyori lst)) *)
let rec saitan_wo_bunri lst = match lst with
    [] -> ({namae = ""; saitan_kyori = infinity; temae_list = []}, [])
  | first :: [] -> (first, [])
  | first :: rest ->
    let (p, v) = saitan_wo_bunri rest in
    match (first, p) with
      ({namae = fn; saitan_kyori = fs; temae_list = ft},
       {namae = sn; saitan_kyori = ss; temae_list = st}) ->
      if fs < ss then (first, p :: v)
      else (p, first :: v)
(* 上の場合，pはeki_t, vはeki_t list．なぜなら返り値はeki_t * eki_t list だから *)





(* 駅の例 *) 
let eki1 = {namae="池袋"; saitan_kyori = infinity; temae_list = []} 
let eki2 = {namae="新大塚"; saitan_kyori = 1.2; temae_list = ["新大塚"; "茗荷谷"]} 
let eki3 = {namae="茗荷谷"; saitan_kyori = 0.; temae_list = ["茗荷谷"]} 
let eki4 = {namae="後楽園"; saitan_kyori = infinity; temae_list = []} 
 
(* 駅リストの例 *) 
let lst = [eki1; eki2; eki3; eki4] 

(* test *)
let test1 = saitan_wo_bunri lst 
