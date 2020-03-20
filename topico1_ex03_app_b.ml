(* Proposta de resolução 2017 - Aluno: Mario Constantino *)

let parque he me hs ms =
  let hf = match hs with
            | _ when hs = he -> if ms < me then 24 else 0
            | _ when hs > he -> hs-he
            | 0 -> 24 - he
            | _ -> 24 + (hs-he) in
  let mf = if hf = 24 || ms <= me then 0 else 1 in
  let v = match hf + mf with | 1 -> 120 | 2 -> 260 | 3 -> 410 | c -> 410 + ((c-3) * 155) in
  Printf.printf "Total a pagar por %d horas = %d" (hf + mf) v;;

parque 12 30 10 31 ;;
