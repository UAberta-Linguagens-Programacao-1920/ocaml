(* Proposta de resolução 2017 - Bruno Sousa *)
(* Exercicio 16 *)

(* Listas *)
let lista = [1;2;3;4;5];;

(* Função que separa a lista *)
let rec split n l =
  match l with
    [] -> ([],[]) |
    x::xs -> let(a,b) = split(n-1) xs in
      if n > 0 then
        (x::a,b)
      else
        (a,x::b) ;;

split 0 lista;;
split 3 lista;;
split 5 lista;;
split 0 [];;
