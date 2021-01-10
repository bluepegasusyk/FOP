(* 駅の例 *) 
let eki1 = {namae="池袋"; saitan_kyori = infinity; temae_list = []} 
let eki2 = {namae="新大塚"; saitan_kyori = 1.2; temae_list = ["新大塚"; "茗荷谷"]} 
let eki3 = {namae="茗荷谷"; saitan_kyori = 0.; temae_list = ["茗荷谷"]} 
let eki4 = {namae="後楽園"; saitan_kyori = infinity; temae_list = []} 

(* 目的：直前に確定した駅pと未確定の駅qを受け取ったらpとqが直接つながっているかどうかを調べ,　
 * つながっていたらqの最短距離と手前リストを更新
 * つながっていなかったら元のqをそのまま返す *)
(* koushin1 : eki_t -> eki_t -> eki_t *)
let koushin1 p q = 
  match (p, q) with
    ({namae = p_name; saitan_kyori = p_kyori; temae_list = p_temae},
     {namae = q_name; saitan_kyori = q_kyori; temae_list = q_temae}) ->
    let kyori = get_ekikan_kyori p_name q_name global_ekikan_list in
    if kyori = infinity then q
    else if p_kyori +. kyori > q_kyori then q
    else {namae = q_name; saitan_kyori =p_kyori +. kyori; temae_list = q_name :: p_temae}

(* test *)
let test1 = koushin1 eki3 eki1 = eki1 
let test2 = koushin1 eki3 eki2 = eki2 
let test3 = koushin1 eki3 eki3 = eki3 
let test4 = koushin1 eki3 eki4 = 
	{namae="後楽園"; saitan_kyori = 1.8; temae_list = ["後楽園"; "茗荷谷"]} 
let test5 = koushin1 eki2 eki1 = 
	{namae="池袋"; saitan_kyori = 3.0; temae_list = ["池袋"; "新大塚"; "茗荷谷"]} 
let test6 = koushin1 eki2 eki2 = eki2 
let test7 = koushin1 eki2 eki3 = eki3 
let test8 = koushin1 eki2 eki4 = eki4 
(* test *)
let test1 = koushin1 eki3 eki1  
let test2 = koushin1 eki3 eki2  
let test3 = koushin1 eki3 eki3  
let test4 = koushin1 eki3 eki4  
let test5 = koushin1 eki2 eki1 
let test6 = koushin1 eki2 eki2  
let test7 = koushin1 eki2 eki3  
