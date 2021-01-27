#use "tree_t.ml" 
(* 目的：tree_t型の木を受け取ったら，節と葉が合計いくつあるかを返す *)
(* tree_length : tree_t -> int *)
let rec tree_length tree = match tree with
  Empty -> 0
  | Leaf (n) -> 0
  | Node (t1, n, t2) -> tree_length t1 + 1 + tree_length t2
    (* tree_length t1 *) (* tree_length t2 *)

(* test *)
let test1 = tree_length tree1 = 0
let test2 = tree_length tree2 = 0
let test3 = tree_length tree3 = 1
let test4 = tree_length tree4 = 2

