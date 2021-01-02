(* 目的：x座標とy座標の組で表された平面座標を受け取ったら,　x軸について対象な点の座標を返す *)
(* taisho_x : float * float -> float * float *)
let taisho_x pair = match pair with
  (x, y) -> (x, -. y) 

(* test *)
let test1 = taisho_x (2.,4.) = (2., -4.)
let test2 = taisho_x ((-.6.), (-.3.)) = ((-.6.), 3.)
let test3 = taisho_x (0., 0.) = (0., 0.)
