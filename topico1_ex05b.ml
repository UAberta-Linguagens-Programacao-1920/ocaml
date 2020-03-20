(* Proposta de resolução 2017 - Bruno Sousa *)
(* Exercicio 5b *)

(* Define uma função loop recursiva e que aceita um parâmetro, a função retorna um int
e executa-se num ciclo infinito *)
let rec loop x = loop x ;;

(*
Definição de uma função anonima e que atribui ao parametro x o valor 5
Esta função anónima recebe o resultado da função loop com o parametro de valor 3.
Como a função loop não termina, não é retornado nenhum valor para a função anónima.
*)
(fun x -> 5) (loop 3) ;;

(*
Alternativa para a compreensão da passagem de valor entre funções
*)
let t1 x = x + 1;;
(fun x -> x * x )(t1 3)  ;;
(* o resultado esperado é 16, dado que a t1 retorna um valor int de 4 e
a função anónima aplica a respetiva multiplicação 4 *4
*)
