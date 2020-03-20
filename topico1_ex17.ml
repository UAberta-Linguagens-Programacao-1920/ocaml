(* Proposta de resolução 2017 - Bruno Sousa *)
(* Exercicio 16 *)

(* Listas *)
let lista = [1;2;3;4;5];;
let lista_pack = [10.1 ; 10.1; 10.1; 10.1; 10.1; 10.1; 10.1; 10.0; 10.0; 10.1; 10.0];;
let lista_vazia = [];;

(* Função que separa a lista *)
let rec divide l = match l with [] -> [] | [x] -> [[x]] | x::xs -> let(a::y)::ys = divide xs in
      if x = a then
        (x::a::y)::ys
      else
        [x]::(a::y)::ys ;;

let rec length l = match l with [] -> 0 | x::xs -> 1 + length xs;;

let rec conta t = match t with [] -> [] | x::xs -> (x, length x)::conta xs;;

let rec pares t = match t with [] -> [] | (a::b,c)::d -> (a,c)::pares d;;

let rec pack t = match t with [] -> [] | l -> pares(conta(divide(l))) ;;

pack lista;;
pack lista_vazia;;
pack lista_pack;;
