(* koushinをテンキ *)
let koushin {namae = p_name; saitan_kyori = p_kyori; temae_list = p_temae} lst_v ekikan_lst = 
  List.map (fun ({namae = q_name; saitan_kyori = q_kyori; temae_list = q_list} as q) ->
      let kyori = get_ekikan_kyori p_name q_name ekikan_lst
      in if kyori = infinity then q
      else if p_kyori +. kyori > q_kyori then q
      else {namae = q_name; saitan_kyori = p_kyori +. kyori; temae_list = q_name :: p_temae}) lst_v

(* 目的：eki_t list型の未確定の駅のリストとekikan_t list型の駅間のリストを受け取ったら
 * ダイクストラのアルゴリズムに従って各駅について最短距離と最短経路が正しく入ったリストを返す *)
(* dijkstra_main : eki_t list -> ekikan_t list -> eki_t list *)
let rec dijkstra_main eki_lst ekikan_lst =
  match eki_lst with
    [] -> []
  | first :: rest ->
    let (saitan, r_list) = saitan_wo_bunri (first :: rest) in
    let nokori_lst = koushin saitan r_list ekikan_lst in
    saitan :: dijkstra_main nokori_lst ekikan_lst



(* 駅の例 *)
let eki1 = {namae="池袋"; saitan_kyori = infinity; temae_list = []}
let eki2 = {namae="新大塚"; saitan_kyori = 1.2; temae_list = ["新大塚"; "茗荷谷"]}
let eki3 = {namae="茗荷谷"; saitan_kyori = 0.; temae_list = ["茗荷谷"]}
let eki4 = {namae="後楽園"; saitan_kyori = infinity; temae_list = []}

(* 駅リストの例 *)
let lst = [eki1; eki2; eki3; eki4]

(* テスト *)
let test1 = dijkstra_main [] global_ekikan_list = []
let test2 = dijkstra_main lst global_ekikan_list =
  [{namae = "茗荷谷"; saitan_kyori = 0.; temae_list = ["茗荷谷"]};
   {namae = "新大塚"; saitan_kyori = 1.2; temae_list = ["新大塚"; "茗荷谷"]};
   {namae = "後楽園"; saitan_kyori = 1.8; temae_list = ["後楽園"; "茗荷谷"]};
   {namae = "池袋"; saitan_kyori = 3.; temae_list = ["池袋"; "新大塚"; "茗荷谷"]}]
