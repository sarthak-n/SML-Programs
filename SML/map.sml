datatype 'a tree = Empty | Node of 'a tree * 'a * 'a tree


fun list_double(L:int list):int list =
	List.map(fn y => 2*y) L

fun factorial(n:int):int =
	case n of 0 => 1
	| _ => n * factorial(n-1)

fun list_factorial(L:int list): int list =
	List.map(fn x => factorial(x)) L

fun list_add(L:(int*int) list): int list =
	List.map(fn (x,y) => x+y) L

fun tree_map(foo: 'a -> 'b) (T:'a tree) : 'b tree =
	case T of Empty => Empty
	| Node(l,x,r) => Node(tree_map foo l, foo x, tree_map foo r)

fun tree_double(T:int tree): int tree =
	tree_map(fn x => 2*x) T

fun list_pair(L) = 
	List.map(fn x => (x,x)) L