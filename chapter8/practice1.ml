(* 本に関する情報（タイトル,　出版社,　値段,　ISBN）を表す型 *)
type book_t = {
  title : string; (* タイトル *)
  author : string;  (* 著者 *)
  publisher : string; (* 出版社 *)
  price : int;  (* 値段 *)
  isbn : string;  (* ISBN *)
}

(* book_tについて,　データを３つ定義 *)
let book1 = {title = "プログラミングの基礎"; author = "浅井健一"; publisher = "サイエンス社"; price = 2300; isbn = "978-4-7819-1160-1"}
let book2 = {title = "コンピュータシステムの理論と実装"; author = "Noam Nisan"; publisher = "オライリー・ジャパン"; price = 3600; isbn = "978-4-87311-712-6"}
let book3 = {title = "ネットワークはなぜつながるのか"; author = "戸根勤"; publisher = "日経BP社"; price = 2400; isbn = "978-4-8222-8311-7"}
