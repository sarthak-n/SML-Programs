datatype tree = Empty | Node of tree * int * tree

fun revTree(T:tree):tree =
	case T of
		Empty => Empty
		| Node(l,x,r) => Node(revTree(r), x, revTree(l))

fun addTree(aT: tree, bT: tree): tree =
case (aT,bT) of (Empty, Empty) => Empty
| (Node(al,ax,ar),Node(bl,bx,br)) => Node(addTree(al,bl), ax+bx, addTree(ar, br))
