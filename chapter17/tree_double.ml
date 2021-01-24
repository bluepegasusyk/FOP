(* ファイル読み込み *)
#use "tree_t.ml"

(* 目的：tree_t型の木を受け取ったら，葉や節に入っている値を全て2倍にした木を表す関数を作成 *)
(* tree_double : tree_t -> tree_t *)
let rec tree_double tree = match tree with
  Empty -> Empty
  | Leaf(n) -> Leaf (n * 2)
  | Node (t1, n, t2) -> Node (tree_double t1, n * 2, tree_double t2)
    (* tree_double t1 *) (* tree_double t2 *)

(* test *)
let test1 = tree_double tree1 = Empty
let test2 = tree_double tree2 = Leaf(6)
let test3 = tree_double tree3 = Node (Empty, 8, Leaf(6))
let test4 = tree_double tree4 = Node (Leaf(6), 10, Node(Empty, 8, Leaf(6)))
