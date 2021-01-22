(* 年号を表す型 *)
type nengou_t = Meiji of int
              | Taisho of int
              | Showa of int
              | Heisei of int

(* 目的：年号を受け取ったら対応する西暦を返す *)
(* to_seireki : nengou_t -> int *)
let to_seireki nengou = match nengou with
  Meiji (n) -> n + 1867
  | Taisho (n) -> n + 1911
  | Showa (n) -> n + 1925
  | Heisei (n) -> n + 1988

(* 誕生年と現在の年をnengou_t型の値として受け取ってきたら年齢を返す *)
(* nenrei : nengou_t -> nengou_t -> int *)
let nenrei birth now =
  (to_seireki now) - (to_seireki birth)
(* test *)
let test1 = nenrei (Meiji (33)) (Heisei (33))
