fun double_list(L:int list):int list =
	case L of
		[] => [] |
		x:xs => (2*x) :: double_list(xs)
