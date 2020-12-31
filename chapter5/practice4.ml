(* 目的：身長（m）と体重（kg）を与えられたらBMI指数を計算する *)
(* bmi : float -> float -> float *)
let bmi height weight = weight /. (height ** 2.0)

(* 目的：BMI指数が標準の範囲に収まるか判定する *)
(* hyojun : float -> float -> bool *)
let hyojun height weight =
  18.5 <= bmi height weight && bmi height weight <25.

(* 目的：BMI指数が肥満の範囲に収まるか判定する *)
(* himan : float -> float -> bool *)
let himan height weight =
  25. <= bmi height weight && bmi height weight <30.

(* 目的：BMIの数値から体型を判定する *)
(* taikei : float -> float -> string *)
let taikei height weight = 
  if bmi height weight < 18.5 then "やせ"
    else if hyojun  height weight then "標準"
    else if himan height weight then "肥満"
    else "超肥満"

(* テスト *)
let test1 = bmi 1.52 42. = 42. /. (1.52 ** 2.0)
let test2 = taikei 1.52 38. = "やせ"
let test3 = taikei 1.52 50. = "標準"
