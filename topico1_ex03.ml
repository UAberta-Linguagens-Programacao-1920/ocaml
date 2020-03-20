(* Proposta de resolução 2017 - Bruno Sousa *)
(* Cálculo das horas de estacionamento *)

let conta_hora he me hs ms =
  if hs < he && ms > me then
      24 - he + hs + 1
  else
    if hs > he then
      hs - he
    else
      if hs < he && ms < me then
        24 - he + hs
      else
        hs - he + 1 ;;


let rec calc_preco horas =
  if horas = 1 then
    120
  else
    if horas = 2 then
      140 + calc_preco(horas - 1 )
    else
      if horas = 3 then
        150 + calc_preco(horas - 1)
      else
        if horas >= 4 then
          155 + calc_preco(horas - 1)
        else
          0 ;;

let myhoras = conta_hora 12 30 10 31 ;;
calc_preco myhoras;;
