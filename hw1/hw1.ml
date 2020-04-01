open Regex 

exception Not_implemented

let regex2nfa : Regex.t -> Nfa.t 
=fun regex -> 
match regex with
| Empty -> Empty
| Epsilon ->
| Alpha al ->
| OR (t1, t2) -> 
| CONCAT (t1, t2) ->
| STAR t ->

let nfa2dfa : Nfa.t -> Dfa.t
=fun nfa -> raise Not_implemented (* TODO *)
 
(* Do not modify this function *)
let regex2dfa : Regex.t -> Dfa.t
=fun regex -> 
  let nfa = regex2nfa regex in
  let dfa = nfa2dfa nfa in
    dfa

let run_dfa : Dfa.t -> alphabet list -> bool
=fun dfa str -> raise Not_implemented (* TODO *)
