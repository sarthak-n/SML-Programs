fun is_sorted(L:int list): bool =
case L of [] => true
| [a] => true
| (x::y::xs) => if x > y then false else is_sorted(y::xs)


fun bubble(L:int list):int list =
case L of [] => []
	| [x] => [x]
	| (x::y::xs) => case Int.compare (x,y) of
        		GREATER => (y :: bubble(x :: xs))
                       	| _    => x :: bubble(y::xs)

fun bubble_sort(L:int list): int list =
if (is_sorted(L))
then L
else bubble_sort(bubble(L))


fun find_min(L:int list):int list =
case L of [] => []
| [a] => [a]
| (x::y::xs) => case Int.compare(x,y) of
                GREATER => find_min(y::xs)
                | _ => find_min(x::xs)

fun delete(n:int, L:int list):int list =
    case L of [] => []
    | x::xs => if n = x then delete(n-1,xs) else x::delete(n,xs)

fun selection_sort(L: int list):int list =
if(is_sorted(L))
then L
else
let val  x::xs = find_min(L)
in
x :: selection_sort(delete(x, L))
end


fun insert(a:int, L:int list):int list =
case L of [] => []
| [x] => if a > x then x :: [a] else a :: [x]
| (y::ys) => case Int.compare(a,y) of
                GREATER => y :: insert(a,ys)
                | _ => a :: (y::ys)

fun insertion_sort(L:int list):int list =
if(is_sorted(L))
then L
else
let val x::xs = L
in
insert(x, insertion_sort(xs))
end


fun split (L:int list):int list * int list = 
case L of [] => ([] , [])
| [a] => ([a] , [])
| (x::y::xs) => let val (half1 , half2) = split(xs)
  in
  (x :: half1 , y :: half2)
  end

fun merge (half1:int list, half2:int list):int list = 
case (half1, half2) of ([], half2) => half2
| (half1, []) => half1
| (x::xs, y::ys) => if x < y then x::merge(xs, half2) else y::merge (half1 , ys)

fun merge_sort (L: int list): int list = 
case L of [] => []
| [a] => [a]
| _ => let val (half1, half2) = split(L) 
  in
  merge(merge_sort(half1), merge_sort(half2))
  end


fun quick_sort(L:int list):int list =
case L of [] => []
| (pivot::rest) => let fun split(I:int list, ys:int list, zs:int list):int list =
                   case I of [] => quick_sort(ys) @ [pivot] @ quick_sort(zs)
                   | (x::xs) => if x > pivot
                                then split(xs, ys, x::zs)
                                else split(xs, x::ys, zs)
                   in
                   split(rest, [], [])
                   end
