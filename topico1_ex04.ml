(* Proposta de resolução 2017 - Bruno Sousa *)
(* triangulos :
 isosceles -- dois lados iguais
 equiláteros -- todos os lados iguais
 escaleno -- todos diferentes
 próprio -- o comprimento de um lado é sempre inferior à soma do comprimento dos outros dois lados
*)


let tri a b c =
  if a > (b + c) || b > (a + c) || c > (a + b) then (*proprio *)
    0
  else
    if a = b && b = c then (* equilatero *)
      1
    else
      if a != b && a != c && b != c then (*  escaleno *)
        3
      else (* isosceles *)
          2
        ;;


(* tri 2 3 3;; *)

(* tri 7 10 5 ;; *)

(* tri 2 2 2 ;; *)

tri 3 1 1 ;;

(* tri 3 2 1 ;; *)
