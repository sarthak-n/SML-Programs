fun fib(x:int):int = case x of 0 => 0 | 1 => 1 | num => fib(num-1) + (num-2)

