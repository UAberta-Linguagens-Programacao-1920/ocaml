(* Proposta de resolução 2017 - Bruno Sousa *)
(* Exercicio 6 *)

(* Funções polimorficas são importantes para suportar vários tipos de dados *)
let max x  y =
  if  x > y then x else y;;

max 3 7 ;;
max 4.5 1.2 ;;
max "ola" "ole" ;;
