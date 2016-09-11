datatype tree= Empty|Node of tree*int*tree

fun tree_count(T:tree):int =
	case T of
		Empty => 0
		| Node(l,x,r) => 1 + tree_count(l) + tree_count(r)

fun tree_sum(T:tree):int =
        case T of
                Empty => 0
                | Node(l,x,r) => x + tree_count(l) + tree_count(r)

fun tree_depth(T:tree):int =
        case T of
                Empty => 0
                | Node(l,x,r) => 1 + Int.max(tree_depth(l) + tree_depth(r))
