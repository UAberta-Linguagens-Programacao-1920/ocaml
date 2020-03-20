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
let rec belongs a il =
  match il with
  [] -> false
  | i::l -> ( a = i ) || ( belongs a l ) ;;


belongs 4 [1;2;3;4;5;6] ;;
belongs 4 [1;2] ;;


(*
União de conjuntos, nota não deve repetir valores existentes em ambos os conjuntos
*)
let rec union i1 i2 =
  match i1 with
  [] -> i2
  | i::l -> if belongs i i2 then union l i2 else i::union l i2;;

union [7;3;9] [2;1;9] ;;

let rec inter i1 i2 =
  match i1 with
    [] -> []
    | i::l -> if belongs i i2 then i::inter l i2 else inter l i2 ;;

inter [7;3;9] [2;1;9] ;;
inter [7;9] [2;1;3] ;;


let rec diff i1 i2 =
  match i1 with
  [] -> []
  | i::l -> if belongs i i2 then diff l i2
            else i::diff l i2 ;;


diff [7;3;9] [2;1;9];;
diff [] [1;2] ;;

(* using nested functions ?! *)

let power i1 =
  let len = List.length(i1) in
    let rec loop  =
      match len  with
        0 -> []
        | _ -> loop (i)

power [1;2];;
