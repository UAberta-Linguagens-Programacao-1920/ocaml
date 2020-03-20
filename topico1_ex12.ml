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

let arvore_null = Nil ;;
let arvore_2_UB = Node(1, Nil, Node(2, Nil, Node(3, Nil, Nil)));;

(* Função que determina a altura de uma árvore *)
let rec height t =
  match t with
    | Nil -> 0
    | Node(x,l,r) -> 1 + max (height l) (height r) ;;

height arvore;;
height arvore_null;;
height arvore_2_UB;;

(* Função que verifica se a árvore é balanceada (com altura inferior ou igual a 1) *)
let rec balanced t =
  match t with
    | Nil -> true
    | Node(x,l,r) ->
      if (height l) - (height r) > 1 || (height r) - (height l) > 1 then
        false
      else
        true ;;

balanced arvore;;
balanced arvore_null;;
balanced arvore_2_UB;;
