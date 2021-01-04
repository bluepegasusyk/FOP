(* 各人のデータ（名前,　身長,　体重, 誕生日,　血液型）の情報を格納するレコード型 *)
type person_t = {
  name : string;  (* 名前 *)
  height : float; (* 身長 *)
  weight : float; (* 体重 *)
  birthday : int * int; (* 誕生日 *)
  bloodtype : string; (* 血液型 *)
}

(* 目的:各人のデータperson_tを受け取り,　それに応じた文字列を返す *)
(* ketsueki_hyoji : person_t -> string *)
let ketsueki_hyoji person_t = match person_t with
  {name = a; height = b; weight = c; birthday = d; bloodtype = e} ->
    a ^ "さんの血液型は" ^ e ^ "です"

(* データ *)
let data1 = {name = "シンジ"; height = 157.0; weight = 49.0; birthday = (6,6); bloodtype = "A"}
let data2 = {name = "アスカ"; height = 157.2; weight = 47.5; birthday = (12, 4); bloodtype = "A"}
let data3 = {name = "ミサト"; height = 163.0; weight = 47.0; birthday = (12, 8); bloodtype = "AO"}

(* test *)
let test1 = ketsueki_hyoji {name = "シンジ"; height = 157.0; weight = 49.0; birthday = (6,6); bloodtype = "A"}
                        = "シンジさんの血液型はAです"
let test2 = ketsueki_hyoji {name = "アスカ"; height = 157.2; weight = 47.5; birthday = (12, 4); bloodtype = "A"}
                        = "アスカさんの血液型はAです"
let test3 = ketsueki_hyoji {name = "ミサト"; height = 163.0; weight = 47.0; birthday = (12, 8); bloodtype = "AO"}
                        = "ミサトさんの血液型はAOです"

(* person_t型を要素とする長さが3のリストを作成する(practice9-2) *)
let test4 = data1
let test5 = data2
let test6 = data3
let lst = data1 :: data2 :: data3 :: []

(* person_t型のデータの例(practice9-7  *)
let lst1 = []
let lst2 = [{name = "hanako"; height = 160.1; weight = 51.2; birthday = (8,25); bloodtype = "A"}]
let lst3 = [{name = "hanako"; height = 160.1; weight = 51.2; birthday = (8,25); bloodtype = "A"};
            {name = "maruo"; height = 172.5; weight = 65.3; birthday = (3,3); bloodtype = "B"}]
let lst4 = [{name = "hanako"; height = 160.1; weight = 51.2; birthday = (8,25); bloodtype = "A"};
            {name = "maruo"; height = 172.5; weight = 65.3; birthday = (3,3); bloodtype = "B"};
            {name = "tarou"; height = 143.4; weight = 36.6; birthday = (9,1); bloodtype = "A"}]

(* person_t型のリストを受け取ったら,　血液型がA型の人の数を返す関数count_ketsueki_Aを作成(practice9-7) *)
(* count_ketsueki_A : person_t list -> int *)
let rec count_ketsueki_A lst = match lst with
    [] -> 0
  | first :: rest -> (match first with 
                       {name = a; height = b; weight = c; birthday = d; bloodtype = e}
                          -> if e = "A" then 1 + count_ketsueki_A rest (* count_ketsueki_A rest *)
                             else  count_ketsueki_A rest (* count_ketsueki_A rest *))


(* テスト *)
let test1 = count_ketsueki_A lst1 = 0
let test2 = count_ketsueki_A lst2 = 1
let test3 = count_ketsueki_A lst3 = 1
let test4 = count_ketsueki_A lst4 = 2

(* person_t型のリストを受け取ったら,　乙女座の人の名前のみからなるリストを返す *)
(* otomeza : person_t list -> string list *)
let rec otomeza lst = match lst with
    [] -> []
  | {name = a; height = b; weight = c; birthday = (d, e); bloodtype = f} :: rest
    -> if (d = 8 && e >= 24) || (d = 9 && e <= 23) then a :: otomeza rest 
       else otomeza rest (* otomeza rest *)

(* test *)
let test1 = otomeza lst1 = []
let test2 = otomeza lst2 = ["hanako"]
let test3 = otomeza lst3 = ["hanako"]
let test4 = otomeza lst4 = ["hanako"; "tarou"]
