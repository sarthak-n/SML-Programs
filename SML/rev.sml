fun rev(L: int list): int list = 
	case L of
		[] => [] |
		x:xs => rev(xs) @ [x]
