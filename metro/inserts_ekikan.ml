#use "ekikan_tree_t.ml"
#use "rec_teigi.ml"
#use "global_ekikan_list.ml"
#use "insert_ekikan.ml"

(* ekikan_tree_t型の木と，ekikan_t list型の駅間のリストを受け取ったら
 * リストの中に含まれる駅間を全て挿入した木を返す *)
 (* inserts_ekikan : ekikan_tree_t -> ekikan_t list -> ekikan_tree_t *)
let inserts_ekikan tree lst = 
  List.fold_right (fun ekikan tree -> insert_ekikan tree ekikan) lst tree

let test1 = inserts_ekikan Empty [ekikan1; ekikan2; ekikan3]
