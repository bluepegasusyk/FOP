(* 人に関する情報を格納するレコード *) 
type person_t = { 
  name : string;	(* 名前 *) 
  shincho : float;	(* 身長 *) 
  taiju : float;	(* 体重 *) 
  tsuki : int;		(* 誕生月 *) 
  hi : int;		(* 誕生日 *) 
  ketsueki : string;	(* 血液型 *) 
} 
 
let person1 = 
  {name = "浅井"; 
   shincho = 1.72; 
   taiju = 58.5; 
   tsuki = 9; 
   hi = 17; 
   ketsueki = "A" 
} 
 
let person2 = { 
  name = "宮原"; 
  shincho = 1.63; 
  taiju = 55.0; 
  tsuki = 6; 
  hi = 30; 
  ketsueki = "B" 
} 
 
let person3 = { 
  name = "中村"; 
  shincho = 1.68; 
  taiju = 63.0; 
  tsuki = 6; 
  hi = 6; 
  ketsueki = "O" 
}


(* person_t型のリストの例 *)
let lst1 = []
let lst2 = [person1]
let lst3 = [person1; person2]
let lst4 = [person1; person2; person3]


(* 目的：person_t型のデータのリストを受け取ったら,　各血液型の人が何人いるかを組にして返す *)
           (* kestueki_shukei : person_t list -> int * int * int * int *)
let rec ketsueki_shukei lst = match lst with
    [] -> (0, 0, 0, 0)
  | {name = n; shincho = s; taiju = ta; tsuki = ts; hi = h; ketsueki = k} :: rest ->  (* ketsueki_shukei rest *)
    let (a, b, o, ab) = ketsueki_shukei rest in
    if k = "A" then (a + 1, b, o, ab)
    else if k = "B" then (a, b + 1, o, ab)
    else if k = "O" then (a, b, o + 1, ab)
    else (a, b, o, ab + 1)

(* test *)
let test1 = ketsueki_shukei lst1 = (0, 0, 0, 0)
let test2 = ketsueki_shukei lst2 = (1, 0, 0, 0)
let test3 = ketsueki_shukei lst3 = (1, 1, 0, 0)
let test4 = ketsueki_shukei lst4 = (1, 1, 1, 0)
