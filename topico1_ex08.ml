(* Proposta de resolução 2017 - Bruno Sousa *)
(* Exercicio 8 *)

(* Listas = sequencias de valores do mesmo tipo

[] - construtor de lista vazia
[e1;e2;e3] ----> e1 :: e2 :: ... :: []
*)
let rec len il =
  match il with
    [] -> 0
    | i :: l -> 1 + len l ;;

let rec sum il =
  match il with
    [] -> 0
    | i :: l -> i + sum l ;;

let rec concat il =
  match il with
    [] -> ""
    | i :: l -> i ^ concat l ;;

let list_int = [1;1;2;3;4;1] ;;
let list_str = ["ola";"";"ole"];;
len list_int ;;
sum list_int ;;
concat list_str ;;
