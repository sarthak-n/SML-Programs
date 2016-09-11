fun bigStrings(L:string list):string list = 
	case L of [] => [] |
		x::xs => if String.size(x) >= 3 then x :: bigStrings(xs) else bigStrings(xs)
