(* お小遣い帳の情報（買ったもの, 値段,　買った場所,　日付）を表す型 *)
type okozukai_t = {
  name : string;  (* 買ったもの *)
  price : int;  (* 値段 *)
  place : string; (* 買った場所 *)
  date : string;  (* 日付 *)
}

(* データ *)
let data1 = {name = "エナジードリンク"; price = 210; place = "セブンイレブン"; date = "1/2"}
let date2 = {name = "本"; price = 2300; place = "Amazon"; date = "12/28"}
let data3 = {name = "MacBookAir"; price = 130000; place = "アップルストア"; date = "12/1"}
