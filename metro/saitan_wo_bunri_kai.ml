(* saitan_wo_bunriをfold_rightを使ってかく *)
(* saitan_wo_bunri : eki_t list -> eki_t * eki_t list *)
let saitan_wo_bunri lst =
  List.fold_right (fun first (p, v) ->
      match (first, p) with
        ({namae = fn; saitan_kyori = fs; temae_list = ft},
         {namae = rn; saitan_kyori = rs; temae_list = rt}) ->
        if rs = "" then (first, v)
        else if fs < rs then (first, p :: v)
        else (p, first :: v)) lst ({namae = ""; saitan_kyori = infinity; temae_list = []}, [])
   
  





(* 駅の例 *) 
let eki1 = {namae="池袋"; saitan_kyori = infinity; temae_list = []} 
let eki2 = {namae="新大塚"; saitan_kyori = 1.2; temae_list = ["新大塚"; "茗荷谷"]} 
let eki3 = {namae="茗荷谷"; saitan_kyori = 0.; temae_list = ["茗荷谷"]} 
let eki4 = {namae="後楽園"; saitan_kyori = infinity; temae_list = []} 
 
(* 駅リストの例 *) 
let lst = [eki1; eki2; eki3; eki4] 

(* test *)
let test1 = saitan_wo_bunri lst 
