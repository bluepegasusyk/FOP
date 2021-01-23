(* 必要なデータを入れる *)
#use "get_ekikan_kyori.ml"
#use "shokika.ml"

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

(* 初期化したリスト *)
let shoki_list = shokika (make_eki_list global_ekimei_list) "明治神宮前"

(* 目的：直前に確定した駅pと未確定の駅のリストvを受け取ったら，更新処理をして未確定の駅のリストを返す *)
(* koushin : eki_t -> eki_t list -> eki_t list *)
let koushin p v = 
  let f q = koushin1 p q in
  List.map f v

(* test *)
let test1 = 
  koushin {namae = "明治神宮前"; saitan_kyori = 0.0; temae_list = ["明治神宮前"]} shoki_list
