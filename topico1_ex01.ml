(*
* Proposta de resolucao exercicios Topico
*
*)

(* Exercicio 1-a *)
1 + 2 ;;
let f x = x+ 1;;
f 2;;
let f = (fun x -> x +1 );;
f 2;;
(fun x -> x + 1 ) 2 ;; (* Declaração anónima de uma função *)

(* Exercicio 1-b *)
(*
let fact x =
  if x = 0 then
    1
  else
    x * fact (x-1);;
fact 5 ;;
*)
(* Não dá para usar esta alternativa pois o compilador não assume a existência da funcção fact no else*)


let rec fact x =
  if x = 0 then
    1
  else
    x * fact (x-1);;
fact 5 ;;


(* Exercicio 1-c *)
let f0 x = x ^ x ;; (* Concatenação de strings *)
let f1(x,y) = x + y ;;
let f2(x,y) = x +. y;;
let f3(x,y) = (x,y);;
let f4(x,y) = x  = y;; (* Return Boolean type *)
let g x y  = x + y;;

let x = "Linguagens" ;;
f0 " Programação";;
f1(1, 2) ;;
f2(1.0,2.0);;
f3(1, 2);;
f3(1.0, 2.0);;
f4(1, 1);;
f4(1, 2);;
g 1 2;;
