fun exp(a:int, b:int):int = case b of 0 => 1 | num => a * exp(a, b-1)

