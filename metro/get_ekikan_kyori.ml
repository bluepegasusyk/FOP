
(* 目的：漢字の駅名を2つ（文字列）と駅間リストを受け取ったら,　駅間リストの中からその2駅間の距離を返す *)
            (* get_ekikan_kyori : string -> string -> ekikan_t list -> float *)
let rec get_ekikan_kyori ekimei1 ekimei2 lst = match lst with
    [] -> infinity
  | {kiten = kiten_eki; shuten = shuten_eki; keiyu = keiyu_eki; kyori = kyori_eki; jikan = jikan_eki}  :: rest ->
    (* get_ekikan_kyori ekimei1 ekimei2 rest *)
    if (ekimei1 = kiten_eki && ekimei2 = shuten_eki) || (ekimei2 = kiten_eki && ekimei1 = shuten_eki) then kyori_eki
    else get_ekikan_kyori ekimei1 ekimei2 rest


(* test *)
let test1 = get_ekikan_kyori "茗荷谷" "新大塚" global_ekikan_list = 1.2

