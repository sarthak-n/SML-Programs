fun evenList(L:int list):int list =
	case L of
		[] => []
		|x::xs=>if x mod 2 = 0 then x :: evenList(xs) else evenList(xs)
