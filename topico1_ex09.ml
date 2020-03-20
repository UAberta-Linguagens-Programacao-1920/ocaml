(* Proposta de resolução 2017 - Bruno Sousa *)
(* Exercicio 9 *)

(* Listas = sequencias de valores do mesmo tipo

[] - construtor de lista vazia
[e1;e2;e3] ----> e1 :: e2 :: ... :: []

map permite aplicar uma dada função a cada um dos valores da lista
*)
let rec succAll il =
  match il with
    [] -> []
    | i :: l -> i + 1 :: succAll l ;;


let rec succ =function
      []->[]
      |i::l->i+1::succ l;;



succAll [3; 6; 1; 0; -4] ;;
succ [3; 6; 1; 0; -4] ;;


let list = [] ;;
(*let list = [3; 6; 1; 0; -4] ;; *)
let succAll2 = List.map (fun a -> a + 1) list ;;
