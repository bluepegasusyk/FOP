(* person_t型のリストを受け取ったら，その中から指定された血液型の人の数を返す *)
(* count_ketsueki : person_t list -> string -> int *)
let rec count_ketsueki lst ketsueki =
  match lst with
    [] -> 0
  | {name = n; shincho = s;taiju = ta; tsuki = ts; hi = h; ketsueki = k} :: rest -> (* count_ketsueki rest ketsueki *)
    if k = ketsueki then 1 + (count_ketsueki rest ketsueki)
    else count_ketsueki rest ketsueki

(* test *)
let test1 = count_ketsueki lst1 "A" = 0
let test2 = count_ketsueki lst2 "A" = 1
let test3 = count_ketsueki lst3 "B" = 1
let test4 = count_ketsueki lst4 "AB" = 0
