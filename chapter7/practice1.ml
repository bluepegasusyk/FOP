
(* 目的：5教科の点数を与えられたら,　合計点を返す *)
(* goukei : int -> int -> int -> int -> int -> int *)
let goukei kokugo suugaku eigo rika shakai = 
  kokugo + suugaku + eigo + rika + shakai

(* 目的：5教科の点数を与えられたら,　平均点を返す *)
(* heikin : int -> int -> int -> int -> int -> int *)
let heikin kokugo suugaku eigo rika shakai =
 ( goukei kokugo suugaku eigo rika shakai) / 5

(* 目的：5教科の点数を与えられたら,　その合計点と平均点を組にして返す *)
(* goukei_to_heikin : int -> int -> int -> int -> int -> int * int *)
let goukei_to_heikin kokugo suugaku eigo rika shakai = 
 ( goukei kokugo suugaku eigo rika shakai, heikin kokugo suugaku eigo rika shakai)

(* test *)
let test1 = goukei_to_heikin 80 90 85 90 80 =
  (80+90+85+90+80, (80+90+85+90+80)/5)
