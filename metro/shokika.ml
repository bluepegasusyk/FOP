
(* 目的：eki_t型のリストと起点（漢字の文字列）を受け取ったら
 * 起点についてsaitan_kyoriが0, temae_listがその駅名となるeki_t型のリストを返す *)
    (* shokika : eki_t list -> string -> eki_t list *)
(* let rec shokika lst kiten = match lst with
    [] -> []
  | ({namae = n; saitan_kyori = s; temae_list = t} as first) :: rest ->  (* shokika rest kiten *)
    if kiten = n then {namae = n; saitan_kyori = 0.0; temae_list = [kiten]} :: rest
    else first :: shokika rest kiten *)

(* 上の関数をmapとfunを使って書き直す *)
(* リストの全ての要素に同じ処理を行なっている *)
let shokika lst kiten =
  List.map (fun ({namae = n; saitan_kyori = s; temae_list = t} as first) -> 
      if kiten = n then {namae = n; saitan_kyori = 0.0; temae_list = [kiten]}
      else first) lst

(* 駅リストの例 *)
let eki_list = [
{namae="池袋"; saitan_kyori = infinity; temae_list = []};
{namae="新大塚"; saitan_kyori = infinity; temae_list = []};
{namae="茗荷谷"; saitan_kyori = infinity; temae_list = []};
{namae="後楽園"; saitan_kyori = infinity; temae_list = []};
{namae="本郷三丁目"; saitan_kyori = infinity; temae_list = []};
{namae="御茶ノ水"; saitan_kyori = infinity; temae_list = []}
]


(* test *)
let test1 = shokika eki_list "茗荷谷"
let test2 = shokika [] "茗荷谷"

