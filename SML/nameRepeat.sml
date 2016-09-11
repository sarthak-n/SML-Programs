fun nameRepeat(n:int):string = case n of 0 => "" | num => "Sarthak" ^ nameRepeat(num-1)

