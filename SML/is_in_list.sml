fun is_in_list a L : bool =
	case L of [] => false
	| x::xs => if x = a then true else is_in_list a xs
