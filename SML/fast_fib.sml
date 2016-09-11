fun fast_fib(n:int):int*int =
	case n of
		0 => 0
		| 1 => 1
		| _ => let val(x,y) = fast_fib(n-1)
			in (x+y, x)
			end
