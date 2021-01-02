(* 目的：x座標とy座標の組で表された平面座標を二つ受け取って,　中点の座標を返す *)
(* chuten : (float * float) * (float * float) -> float * float *)
let chuten pair = match pair with
  ((a, b), (c, d)) -> ((a +. c) /. 2., (b +. d) /. 2.)

(* test *)
let test1 = chuten ((2.0, 3.0), (4.0, 1.0)) = (3.0, 2.0)
let test2 = chuten ((-.1.0, 3.0), (1.0, -.1.0)) = (0.0, 1.0)
