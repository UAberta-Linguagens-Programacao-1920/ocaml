(* Exercicio 2 *)
let rec fact x =
  if x = 0 then
    1
  else
    x * fact(x - 1);;

fact 2;;
fact 3;;
