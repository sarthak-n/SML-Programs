fun any_list_length(L): int =
case L of [] => 0
| x::xs => 1 + any_list_length(xs)
