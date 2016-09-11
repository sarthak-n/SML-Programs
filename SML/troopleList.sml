fun troople_list(L: int list): int list =
case L of [] => []
| x::xs => [x] @ [x] @ [x] @ troople_list(xs)

fun triple_list(L: int list): int list =
L@L@L
