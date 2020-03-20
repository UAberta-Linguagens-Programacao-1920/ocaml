(* Proposta de resolução 2017 - Bruno Sousa *)
(* Exercicio 11 *)

(* Arvores

[] - construtor de lista vazia
[e1;e2;e3] ----> e1 :: e2 :: ... :: []


Definição de arvore:

 -- Definir o nó que represento Null
 -- Definir a composição de um nó (com dois nós-filhos)

*)

type 'a tree =
  Nil
 | Node of 'a * 'a tree * 'a tree ;;

(* Utilização da lista *)
let arvore = Node (1, Node(2, Nil, Nil),
                      Node(3, Nil, Nil)) ;;

let rec conv t =
  match t with
  Nil -> []
  | Node(x,l,r) -> x::conv l@ conv r;;

conv arvore ;;
