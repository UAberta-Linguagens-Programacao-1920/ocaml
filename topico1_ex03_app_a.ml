(* Proposta de resolução 2017 -  *)
(* Cálculo das horas de estacionamento *)

let conta he me hs ms =
  if hs>he && ms>me then
    hs-he+1
  else
    if hs>he then
      hs-he
    else
      if hs<he && ms>me then
        24-he+hs+1
      else 24-he+hs;;

let parque he me hs ms = let horas = conta he me hs ms in
  if horas=1 then
    120
  else
    if horas=2 then
      260
    else
      if horas=3 then
        410
      else
        410 + (horas-3)*155;;

parque 12 30 10 31 ;;
