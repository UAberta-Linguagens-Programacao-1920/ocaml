(* Proposta de resolução 2017 - Bruno Sousa *)
(* Exercicio 9 *)

(* Listas = sequencias de valores do mesmo tipo

[] - construtor de lista vazia
[e1;e2;e3] ----> e1 :: e2 :: ... :: []

map permite aplicar uma dada função a cada um dos valores da lista

Diferença entre operadores:
=  -->
== -->
*)
(* Aproximação do Mário Constantino
let rec len =
  function
  | [] -> 0
  | head::tail -> 1+(len tail) ;;

let skip elems xs =
  fst (List.fold_left (fun state l ->
      match state with
        | (a, i) when i < elems -> (a, i+1)
        | (a, i) -> (a @ [l], i))  ([], 0) xs);;

let power xs =
  let rec combinations xs k level =
    match k with
    | _ when (len xs + level + 1) < k -> []
    | _ when k = level + 1 -> List.map (fun x -> [x]) xs
    | _ -> fst (List.fold_left (fun (results,index) n  ->
                let combs = combinations (skip (index+1) xs) k (level+1) in
                (results @ List.map(fun x -> n :: x) combs , index+1))
              ([],0) xs)
  in
  let rec range n = if n = 1 then [1] else range (n-1) @ [n] in
  List.fold_left (fun state elem -> state @ (combinations xs elem 0)) [[]] (range (len xs));;
*)

(* Nelson Russa
let power l =
	[]::
	(
		let rec each l =
			match l with
				[] -> []
				| h::t -> [h]:: (each t)
		in
			each l
	)@
	(
		match List.length l with
			0|1|2 -> []
			| _ -> let rec remove l v =
					match l with
						[] -> []
					| h::t -> (if h=v then [] else [h])@(remove t v)
				in
					List.map (remove l) (List.rev l)
	)@[l]
;;
*)

(* Andre Sousa
*)
let rec belongs a il =
  match il with
  [] -> false
  | i::l -> ( a = i ) || ( belongs a l ) ;;

let rec union i1 i2 =
  match i1 with
  [] -> i2
  | i::l -> if belongs i i2 then union l i2 else i::union l i2;;

let rec power1 l =
  match l with
    | x::y::ws -> let a,b = power1 ws in
      x::a, y::b
    | x::[] -> [x], []
    | [] -> [], [] ;;

let rec power2 l =
  match l with
    | [] -> l::[]
    | x::ws -> [x]::power2 ws ;;

(*)
let power3 l =
  let o = power2 l in
    union l o;;
power3 [1;2];;
*)

let power3 l =
  let o = power2 l in
    match
power1 [1;2];;
power2 [1;2];;



(*
power [1;2;3];;

power [1;2];;
*)
