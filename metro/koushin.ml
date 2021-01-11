(* 目的：直前に確定した駅pと,　未確定の駅のリストvを受け取ったら
 * 必要な更新処理を行なった後の未確定の駅のリストを返す *)
(* そのために,　駅qと未確定の駅qについて調べる関数を定義し,　それを全ての駅に対して行う *)
let koushin p v =
  let koushin1 p q =
    match (p, q) with
      ({namae = p_name; saitan_kyori = p_kyori; temae_list = p_temae},
       {namae = q_name; saitan_kyori = q_kyori; temae_list = q_temae}) ->
      let kyori = get_ekikan_kyori p_name q_name global_ekikan_list 
      in if kyori = infinity then q
      else if p_kyori +. kyori > q_kyori then q
      else {namae = q_name; saitan_kyori = p_kyori +. kyori; temae_list = q_name :: p_temae} in
  let f q = koushin1 p q
in List.map f v


(* 駅の例 *)
let eki1 = {namae="池袋"; saitan_kyori = infinity; temae_list = []}
let eki2 = {namae="新大塚"; saitan_kyori = 1.2; temae_list = ["新大塚"; "茗荷谷"]}
let eki3 = {namae="茗荷谷"; saitan_kyori = 0.; temae_list = ["茗荷谷"]}
let eki4 = {namae="後楽園"; saitan_kyori = infinity; temae_list = []}

(* 駅リストの例 *)
let lst = [eki1; eki2; eki3; eki4]

(* テスト *)
let test1 = koushin eki2 [] = []
let test2 = koushin eki2 lst =
 [{namae="池袋"; saitan_kyori = 3.0; temae_list = ["池袋"; "新大塚"; "茗荷谷"]};
  eki2; eki3; eki4]
