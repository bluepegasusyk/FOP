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
