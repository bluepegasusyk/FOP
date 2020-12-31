(* 目的：鶴の数tsuruに応じた足の数を計算する *)
(* tsuru_no_ashi : int -> int *)
let tsuru_no_ashi tsuru  = tsuru * 2

(* テスト *)
let test1 = tsuru_no_ashi 5 = 10
let test2 = tsuru_no_ashi 3 = 6
let test3 = tsuru_no_ashi 10 = 20

(* 目的：亀の数kameに応じた足の数を計算する　*)
(* kame_no_ashi：int -> int *)
let kame_no_ashi kame = kame * 4

(* テスト *)
let test1 = kame_no_ashi 2 = 8
let test2 = kame_no_ashi 5 = 20
let test3 = kame_no_ashi 100 = 400

(* 目的：鶴の数tsuruと亀の数kameに応じた足の数の合計を計算する *)
(* tsurukame_no_ashi：int->int->int  *)
let tsurukame_no_ashi tsuru kame  = tsuru_no_ashi tsuru + kame_no_ashi kame

(* テスト *)
let test1 = tsurukame_no_ashi 5 2 = 18
let test2 = tsurukame_no_ashi 3 5 = 26
let test3 = tsurukame_no_ashi 10 100 = 420

(* 目的：鶴とかめの数の合計gokeiと足の数の合計ashiを与えられたら鶴の数を計算する *)
(* tsurukame : int->int->int *)
let tsurukame gokei ashi = (gokei * 4 - ashi) / 2

(* テスト *)
let test1 = tsurukame 7 18 = 5
let test2 = tsurukame 8 26 = 3
let test3 = tsurukame 110 420 = 10
