fun even_only(L:int list): int list =
	List.filter(fn x => if x mod 2 = 0 then true else false) L

fun short_string(L: string list): string list =
	List.filter(fn x => if String.size(x) <= 3 then true else false) L 
