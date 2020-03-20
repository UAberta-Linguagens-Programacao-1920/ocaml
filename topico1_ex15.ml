(* Proposta de resolução 2017 - Bruno Sousa *)
(* Exercicio 14 *)

(* Arvores

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
let arvore_2 = Node(5, Nil, Node(6, Nil, Nil));;

(* Função que constroi uma lista com as sub-arvores *)
let rec fall t =
  match t with
    Nil -> Nil |
    Node(x,l,r) ->
      if l=Nil && r=Nil then
        Nil
      else
        Node(x,fall l, fall r);;

fall arvore;;
fall arvore_null;;
fall arvore_2;;
