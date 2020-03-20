(* Proposta de resolução 2017 - Bruno Sousa *)
(* Exercicio 7 *)

(* mod resto de divisão *)
let rec mdc a b =
  let r = a mod b in
    if r = 0 then b
    else mdc b r;;

mdc 4 2;;
mdc 214221 24;

(* Proposta aluno *)
let rec euclides a b =
  match a mod b with
    | 0 -> b
    | r -> euclides b r;;

euclides 4 2 ;;
euclides 214221 24 ;;
