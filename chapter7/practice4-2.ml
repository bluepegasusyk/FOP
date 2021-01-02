(* 目的：x座標とy座標の組で表された平面座標を二つ受け取って,　中点の座標を返す *)
(* chuten : float * float -> float * float -> float * float *)
let chuten pair1 pair2 = match pair1 with
  (x1, y1) -> (match pair2 with
    (x2, y2) -> ((x1 +. x2) /. 2.0, (y1 +. y2) /. 2.0))
(* test *)
let test1 = chuten (2.0, 3.0) (4.0, 1.0) = (3.0, 2.0)
let test2 = chuten (-.1.0, 3.0) (1.0, -.1.0) = (0.0, 1.0)
let test3 = chuten (0.0, 0.0) (0.0, 0.0) = (0.0, 0.0)
