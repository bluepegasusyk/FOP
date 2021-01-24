(* 木を表す型 *)
type tree_t = Empty (* からの木 *)
            | Leaf of int (* 葉 *)
            | Node of tree_t * int * tree_t (* 節 *)

(* treeは
 * -Empty 空の木，あるいは
 * -Leaf (n) 値がnの葉，あるいは
 * -Node (t1, n, t2) 左の木がt1,値がn,右の木がt2であるような節
 *                   t1とt2が自己参照のケース
 * という形 *)

(* 木の例 *)
let tree1 = Empty
let tree2 = Leaf (3)
let tree3 = Node (tree1, 4, tree2)
let tree4 = Node (tree2, 5, tree3)
