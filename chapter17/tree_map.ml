(* 必要なファイルを読み込み *)
#use "tree_t.ml" 

(* 目的：int -> int型の関数fとtree_t型の木を受け取ったら，
 * 葉や節に入っている値全てにfを適用した木を返す *)
(* tree_map : int -> int -> tree_t -> tree_t *)
let rec tree_map f tree = match tree with
  Empty -> Empty
  | Leaf (n) -> Leaf (f n)
  | Node (t1, n, t2) -> Node (tree_map f t1, f n, tree_map f t2)

(* test *)
let test1 = tree_map (fun x -> x * 2) tree1 = Empty
let test2 = tree_map (fun x -> x * 2) tree2 = Leaf (6)
let test3 = tree_map (fun x -> x * 2) tree3 = Node (Empty, 8, Leaf(6))
