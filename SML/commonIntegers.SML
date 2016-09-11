fun commonIntegers(a:int list, b:int list): int list =
	case a of [] => [] |
		x:xs => if(x, b) then x :: commonIntegers(xs, b) else commonIntegers(xs, b)

fun isIn(n:int, nums:int list):bool =	
	case nums of [] => [] |
		x::xs => if x = n then true else isIn(n, xs)
