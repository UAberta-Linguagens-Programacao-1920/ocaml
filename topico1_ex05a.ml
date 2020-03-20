(* Proposta de resolução 2017 - Bruno Sousa *)
(* Exercicio 5a *)
let n = 4;; (* definição de variável n com o valor 4 do tipo int*)

(* Definição de função g com parametro x do tipo int, retorna valor do tipo int
Por omissão a definição de uma função têm uma atribuição estática
(static binding ou lexical scope) em que o valor dos parâmetros é definido tendo
em conta o ambiente que precede a definição da função.
*)
let g x = x + n;;

g 0;; (* execução da função g com o valor 0 para o parametro x *)

let n = 5;; (* Definição da variável n com um novo valor *)

g 0; (* execução da função g com o valor 0 para o parametro x, tendo em conta
  os valores do ambiente a quando da definição da variável *)
n ;;

(* Mais detalhes em: Seção 3.1.1 do livro da biliografia *)
