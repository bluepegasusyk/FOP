(* 多相の木を表す型 *)
type 'a tree_t = Empty
               | Leaf of 'a
               | Node of 'a tree_t * 'a * 'a tree_t

(* 多相型を使ってsum_treeを作成 *)
let rec sum_tree tree = match tree with
  Empty -> 0
  | Leaf (n) -> n
  | Node (t1, n, t2) -> sum_tree t1 + n + sum_tree t2
