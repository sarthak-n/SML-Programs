datatype P = EVEN|ODD

fun parity_pair(n: int, pp: P):bool =
case P of EVEN => if n mod 2 = 0 then true else false
| ODD => if if n mod 2 = 1 then true else false
