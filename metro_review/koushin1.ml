(* 必要なデータを入れる *)
(* #use "eki_t.ml" *)
#use "get_ekikan_kyori.ml"


(* 目的：直前に確定した駅と未確定の駅を受け取ったらpとqが直接つながっているかどうかを調べる
 * つながっていたらqの最短距離と手前リストを更新
 * つながっていなかったらqをそのまま返す *)
(* koushin1 : eki_t -> eki_t -> eki_t *)
let koushin1 p q = 
  match (p, q) with
    ({namae = pn; saitan_kyori = ps; temae_list = pt},
     {namae = qn; saitan_kyori = qs; temae_list = qt}) ->
  let ekikan_kyori = get_ekikan_kyori pn qn global_ekikan_list in
    if ekikan_kyori = infinity then q
    else if ps +. ekikan_kyori >= qs then q
    else {namae = qn; saitan_kyori = ps +. ekikan_kyori; temae_list = (qn :: pt)}



(* テスト *)
let test1 = 
  koushin1 {namae = "茗荷谷"; saitan_kyori = 0.0; temae_list = ["茗荷谷"]} {namae = "後楽園"; saitan_kyori = infinity; temae_list = []}
let test2 =
  koushin1 {namae = "茗荷谷"; saitan_kyori = 0.0; temae_list = ["茗荷谷"]} {namae = "赤坂"; saitan_kyori = infinity; temae_list = []}
let test3 = 
  koushin1 {namae = "茗荷谷"; saitan_kyori = 4.2; temae_list = ["茗荷谷"; "新大塚"; "池袋"]} {namae = "後楽園"; saitan_kyori = 10.0; temae_list = []}

let test4 = 
  koushin1 {namae = "茗荷谷"; saitan_kyori = 4.2; temae_list = ["茗荷谷"; "新大塚"; "池袋"]} {namae = "後楽園"; saitan_kyori = 4.0; temae_list = ["架空"]}

