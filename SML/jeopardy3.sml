fun lst_mult(L: int list):int =
case L of [] => []
| x::xs => x * lst_mult(xs)
