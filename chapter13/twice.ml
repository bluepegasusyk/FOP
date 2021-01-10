(* 関数を引数として受け取ってきて,　その関数を7に対して2回適用する関数 *)
(* twice7 : 
 * A -> int という形　Aは関数なので, Aに値する関数の型が入る
 * つまり int -> int　が入る
 * よって (int -> int) -> int　である *)
let twice7 f = f (f 7)

(* add3という関数を定義 *)
let add3 x = x + 3

(* テスト *)
let test1 = twice7 add3

(* twice7 add3の動き
 * f = add3である
 * つまり,　twice7 add3 = add3 (add3 7)
 * add3 x はx + 3であるから
 * add3 7 = 10
 * この時点でtwice7 add3 = add3 10
 * 同じくadd3 10 は13であるから
 * twice7 add3 = 13　となる *)


(* 関数を受け取ったら, その関数を2回適用するような関数を返す *)
(* twice : 
 * twiceはfとして関数を受け取る a -> a
 * gを返すので, a -> aを返す
 * 具体的には, int -> int型の引数add3とint型の7を受け取ってきて, int型の13を返すという形になっているので
 * (int -> int) -> int -> int*)
let twice f =   (* fは関数, twiceは関数fを引数に持つ *)
  let g x = f ( f x)  (* gは引数に対してfを2回適用する関数として新たにtwiceの中に定義 *)
  in g  (* 引数に対してfを2回適用するgという関数を返す *)

let test2 = (twice add3) 7
(* twiceの動きの例
 * (twice add3) 7を考える
 * まず,　twice add3が実行されるとgが返ってくる
 * つまり, 次にg 7が計算される
 * gの定義は g x = f (f x)なので
 * g 7 = add3 (add3 7)
 * 結果として13が返ってくる *)

(* twiceにtwice自身を渡した場合どうなるか *)
let test3 = twice twice
