(* Proposta de resolução 2017 - Bruno Sousa *)
(* Exercicio 16 *)

(* Listas *)
let lista_unpack = [(10.1, 7) ; (10.0, 2); (10.1, 1)];;
let lista_vazia = [];;

(* Função que separa a lista *)
let rec unpack t =
  match t with
    [] -> [] |
    (a,b)::xs ->
      if b = 1 then
        a::unpack xs
      else
        a::unpack ((a, b-1)::xs);;

unpack lista_unpack;;
