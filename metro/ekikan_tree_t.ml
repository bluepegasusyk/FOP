(* 木の節に駅名，その駅に直接つながっている駅名＆その駅までの距離の組のリスト
 * を持つ木の型ekikan_tree_tを定義 *)
type ekikan_tree_t = Empty
                   | Node of ekikan_tree_t * string * (string * float) list * ekikan_tree_t
