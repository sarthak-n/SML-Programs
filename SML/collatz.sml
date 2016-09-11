fun collatz_length(n : int) = 
  if n = 1
  then 1
  else case (n mod 2) of
         0 => 1 + collatz_length(n div 2)
       | _ => 1 + collatz_length(3*n+1)

fun find_max(current_max : int, current_max_len : int, count : int) 
      : int * int = 
  if count >= 50000
  then (current_max,current_max_len)
  else (if collatz_length(count) > current_max_len
        then find_max(count,collatz_length(count) , count+1)
        else find_max(current_max,current_max_len,count+1))

(*find_max(0,0,2)
*)
