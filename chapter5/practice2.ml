
(* 目的：誕生日（月と日）を受け取って星座判定用の数値を与える *)
(* month_and_day : int -> int -> int *)
let month_and_day month day = month * 100 + day

(* 目的：month_and_day関数から判定用の数値を受け取って星座を判定する *)
(* seiza : int -> int -> string *)
let seiza month day  = 
  if month_and_day month day < 120 then "Capricornus"
    else if month_and_day month day < 219 then "Aquarius"
    else if month_and_day month day < 321 then "Pisces"
    else if month_and_day month day < 420 then "Aries"
    else if month_and_day month day < 521 then "Taurus"
    else if month_and_day month day < 622 then "Gemini"
    else if month_and_day month day < 723 then "Cancer"
    else if month_and_day month day < 823 then "Leo"
    else if month_and_day month day < 923 then "Virgo"
    else if month_and_day month day < 1024 then "Libra"
    else if month_and_day month day < 1123 then "Scorpio"
    else if month_and_day month day < 1222 then "Sagittarius"
                                           else "Capricornus"


(* テスト *)
let test1 = seiza 3 20 = "Pisces"
let test2 = seiza 3 21 = "Aries"
let test3 = seiza 4 19 = "Aries"
let test4 = seiza 4 20 = "Taurus"
let test5 = seiza 5 20 = "Taurus"
let test6 = seiza 5 21 = "Gemini"
let test7 = seiza 6 21 = "Gemini"
let test8 = seiza 6 22 = "Cancer"
let test9 = seiza 7 22 = "Cancer"
let test10 = seiza 7 23 = "Leo"
let test11 = seiza 8 22 = "Leo"
let test12 = seiza 8 23 = "Virgo"
let test13 = seiza 9 22 = "Virgo"
let test14 = seiza 9 23 = "Libra"
let test15 = seiza 10 23 = "Libra"
let test16 = seiza 10 24 = "Scorpio"
let test17 = seiza 11 22 = "Scorpio"
let test18 = seiza 11 23 = "Sagittarius"
let test19 = seiza 12 21 = "Sagittarius"
let test20 = seiza 12 22 = "Capricornus"
let test21 = seiza 1 19 = "Capricornus"
let test22 = seiza 1 20 = "Aquarius"
let test23 = seiza 2 18 = "Aquarius"
let test24 = seiza 2 19 = "Pisces"
