fun pow(a:int, b:int):int = case b of 0 => 1 | num => a * pow(a, b-1)

fun rem(a:int, b:int):int = if a < b then a else rem(a-b, b)
