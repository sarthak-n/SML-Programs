datatype 'a tree = Empty | Node of 'a tree * 'a * 'a tree

fun tree_depth(T:'a tree):int =
	case T of
		Empty => 0
		| Node(l,x,r) => 1 + Int.max(tree_depth(l), tree_depth(r))

fun tree_sum(T:int tree) =
        case T of
                Empty => 0
                | Node(l,x,r) => x + tree_sum(l) + tree_sum(r)

fun tree_count(T:'a tree):int =
        case T of
                Empty => 0
                | Node(l,x,r) => 1 + tree_count(l) + tree_count(r)

fun sum_list(L:int list):int =
	case L of [] => 0
	| x::xs => x + sum_list(xs)

fun tree_list_sum(T:int list tree):int tree =
	case T of Empty => Empty
	| Node(l,x,r) => Node(tree_list_sum(l), sum_list(x), tree_list_sum(r))
