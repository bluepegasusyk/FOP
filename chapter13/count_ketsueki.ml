(* 目的：person_t型のリストを受け取り,　指定された血液型の人の数を返す *)
(* count_ketsueki : person_t list -> string -> int *)
let rec count_ketsueki lst ketsueki_type = match lst with
    [] -> 0
  | {name = n; shincho = s; taiju = ta; tsuki = ts; hi = h; ketsueki = k} :: rest -> (* count_ketsueki rest *)
    if k = ketsueki_type then 1 + count_ketsueki rest ketsueki_type
    else count_ketsueki rest ketsueki_type

(* test *)
let test1 = count_ketsueki [] "A" = 0
let test2 = count_ketsueki [person1; person2; person3] "A" = 1
let test3 = count_ketsueki [person1; person2; person3] "B" = 1
let test4 = count_ketsueki [person1; person2; person3] "O" = 1
let test5 = count_ketsueki [person1; person2; person3] "AB" = 0

