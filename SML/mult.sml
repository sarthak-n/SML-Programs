fun mult(a:int, b:int):int = case b of 0 => 0 | num => a + mult(a, b-1)

