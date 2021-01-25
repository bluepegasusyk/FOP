let rec find shuten eki_lst =
  match ski_lst with 
    ({namae = n; saitan_kyori = s; temae_list = t} as first) :: rest ->
    if n = shuten then first
    else find shuten rest



(* 目的：始点の駅名と終点の駅名を受け取り，なんか色々やって終点の駅のレコードを返す *)
(* dijkstra : string -> string -> eki_t *)
let dijkstra siten_romaji  shuten_romaji = 
  let all_lst = seiretsu global_ekimei_list in
  let siten = romaji_to_kanji siten_romaji all_lst in
  let shuten = romaji_to_kanji shuten_romaji all_lst in
  let all_eki_lst = make_initial_eki_list all_lst siten in
  let kettei_eki_list = dijkstra_main all_eki_lst global_ekikan_list in
  find shuten kettei_eki_list



let test1 = dijkstra "shibuya" "gokokuji" 


let test2 = dijkstra "myogadani" "meguro" 

