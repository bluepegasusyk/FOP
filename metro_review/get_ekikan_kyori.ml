(* 定義とリストの読み込み *)
#use "global_ekikan_list.ml"

(* 目的：漢字の駅名を二つと駅間リストを受け取ったら，その2駅間の距離を返す
 * 直接繋がっていない場合はinfinityを返す *)
(* get_ekikan_kyori : string -> string -> ekikan_t list -> float *)
let rec get_ekikan_kyori siten shuten lst = match lst with
    [] -> infinity
  | {kiten = k; shuten = s; keiyu = line; kyori = ans; jikan = j} :: rest ->
    if (siten = k && shuten = s) || (siten = s && shuten = k) then ans
    else get_ekikan_kyori siten shuten rest

(* test *)
let test1 = get_ekikan_kyori "茗荷谷" "新大塚" global_ekikan_list = 1.2
let test2 = get_ekikan_kyori "茗荷谷" "赤坂見附" global_ekikan_list = infinity
let test3 = get_ekikan_kyori "新大塚" "茗荷谷" global_ekikan_list = 1.2
