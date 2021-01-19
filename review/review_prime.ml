(* 2以上n以下の自然数のリストを受け取ったら，2以上n以下の素数のリストを返す *)
(* sieve : int list -> int list *)
let rec sieve lst = match lst with 
    [] -> []
  | first :: rest ->
    first :: sieve (List.filter (fun x -> x mod first > 0) rest)

(* test *)
let test1 = sieve [2] = [2]
let test2 = sieve [2; 3; 4 ;5 ;6; 7; 8] = [2; 3; 5; 7]
let test3 = sieve [2; 3; 4; 5; 6; 7; 8]

(* 目的：自然数nを受け取ったらそれ以下の素数のリストを返す *)
(* prime : int -> int list *)
let prime n = 
  (* この場合，2からnまでのリストを作ってそれに対してsieveを行うとよい *)
  sieve (
  (* 目的： 2からnまでのリストを作る *)
  let rec loop i =
    if i > n then []
    else i :: loop (i + 1)
  in loop 2)
    

(* test *)
let tmptest = prime 5 
let test4 = prime 2 = [2]
let test5 = prime 8 = [2; 3; 5; 7]
