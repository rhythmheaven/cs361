
- fun concat(x,y) = if x=[] then y
= else hd(x)::concat(tl(x),y);
val concat = fn : ’’a list * ’’a list -> ’’a
list

- concat([1,2],[3,4,5]);
val it = [1,2,3,4,5] : int list
- concat([],[1,2]);
val it = [1,2] : int list
- concat([1,2],[]);
val it = [1,2] : int list

concat([],[]);
Warning: type vars not generalized because
of
value restriction are instantiated to dummy
types (X1,X2,...)
val it = [] : ?.X1 list

- fun length(L) =
= if (L=nil) then 0
= else 1+length(tl(L));
val length = fn : ’’a list -> int

- length[1,2,3];
val it = 3 : int
- length[[5],[4],[3],[2,1]];
val it = 4 : int
- length[];
val it = 0 : int

- fun doubleall(L) =
= if L=[] then []
= else (2*hd(L))::doubleall(tl(L));
val doubleall = fn : int list -> int list

- doubleall[1,3,5,7];
val it = [2,6,10,14] : int list

- fun reverse(L) =
= if L = nil then nil
= else reverse(tl(L)) @ [hd(L)];
val reverse = fn : ’’a list -> ’’a list

- reverse [1,2,3];
val it = [3,2,1] : int list

- reverse nil;
stdIn:35.1-35.12 Warning: type vars not generalized
because of value restriction are instantiated
to dummy types (X1,X2,...)
val it = [] : ?.X1 list

(1,2) = (2,3);
val it = false: bool

[1, 2] = [1, 2, 3];
val it = false: bool

[1, 2] <> [1, 2, 3];
val it = true: bool

1.2 = 1.2;
stdIn:1.1-2.5 Error: operator and operand don’t agree
[equality type required]
operator domain: ’’Z * ’’Z
operand: real * real
in expression:
1.2 = 1.2

- fun reverse(nil) = nil
= | reverse(x::xs) = reverse(xs) @ [x];
val reverse = fn : ’a list -> ’a list

- fun fact(0) = 1
= | fact(n) = n*fact(n-1);
val fact= fn : int -> int

fun reverse(L) =
if L = nil then nil
else reverse(tl(L)) @ [hd(L)];
val reverse = fn : ’’a list -> ’’a list

fun reverse1(nil) = nil
| reverse1(x::L) = reverse(L) @ [x];
val reverse1 = fn : ’a list -> ’a list

- fun apply(f,L) =
= if (L=[]) then []
= else f(hd(L))::(apply(f,tl(L)));
val apply = fn : (’’a -> ’b) * ’’a list ->
’b list

- fun square(x) = (x:int)*x;
val square = fn : int -> int

- apply(square,[2,3,4]);
val it = [4,9,16] : int list

- apply(double,[1,3,5,7]);
val it = [2,6,10,14] : int list

fun apply(f,L) =
if (L=[]) then []
else f(hd(L))::(apply(f,tl(L)));
val apply = fn : (’’a -> ’b) * ’’a list -> ’b list

fun exp(x,0) = 1
| exp(x,y) = x * exp(x,y-1);
val exp: fn: int * int -> int

fun exp1 x 0 = 1
| exp1 x y = x * exp1 x y-1;
val exp1: fn: int -> int -> int

fun plus n Zero = n
| plus n (Suc(p)) = Suc(plus n p);
val plus = fn : Nat -> Nat -> Nat
plus (Suc(Zero)) (Suc(Zero))
val it = Suc (Suc Zero) : Nat

fun times n Zero = Zero
| times n (Suc(p)) = plus (times n p) n ;
val times = fn : Nat -> Nat -> Nat
times (Suc(Zero)) (Suc(Zero))
val it = Suc Zero : Nat

fun natint Zero = 0
| natint (Suc(n)) = natint(n) + 1;
val natint = fn : Nat -> int
natint(Suc(Suc(Suc(Zero))));
val it = 3 : int

fun intnat 0 = Zero
| intnat n = Suc(intnat(n-1));
val intnat = fn : int -> Nat
intnat(3);
val it = Suc (Suc (Suc Zero)) : Nat

- datatype ’a BinaryTree = btempty |
= bt of ’a * ’a BinaryTree * ’a BinaryTree ;

datatype ’a BinaryTree
con bt : ’a * ’a BinaryTree * ’a BinaryTree ->
’a BinaryTree
con btempty : ’a BinaryTree

- val Tree = bt(2,btempty,
= bt(3,btempty,
= bt(7,bt(6,bt(5,btempty,btempty),
= btempty),
= bt(8,btempty,btempty))
= )
= );
= val Tree = bt (2,btempty,bt (3,btempty,bt #)) : int
BinaryTree

- fun lookup (btempty, ) = false
= | lookup(bt(root:int,left,right),x:int) =
= if (x = root) then true
= else (if (x <= root) then lookup(left,x)
= else lookup(right,x) );
= val lookup = fn : int BinaryTree * int -> bool

- lookup(Tree,6);
val it = true : bool

- lookup(btempty,6);
val it = false : bool

fun inorder (btempty) = []
| inorder(bt(root:’a,left,right)) =
inorder(left) @ (root :: inorder(right));

fun preorder (btempty) = []
| preorder(bt(root:’a,left,right)) =
root :: (preorder(left) @ preorder(right));

fun postorder (btempty) = []
| postorder(bt(root:’a,left,right)) =
(postorder(left) @ postorder(right)) @ (root ::
[]);



(* Binary tree processing *)
datatype ’a BinaryTree = btempty |
bt of ’a * ’a BinaryTree * ’a BinaryTree ;
fun left subtree btempty = btempty
| left subtree(bt( ,left, )) = left;
fun right subtree btempty = btempty
| right subtree(bt( , ,right)) = right;
exception label has nil argument;
fun label btempty = raise label has nil argument
| label(bt(value, , )) = value;
(* Sample binary trees *)
val Tree = bt(2,btempty,
bt(3,btempty,
bt(7,bt(6,bt(5,btempty,btempty),
btempty),
bt(8,btempty,btempty))
)
);
val Tree1 = bt(3,btempty,btempty);
val Tree2 = bt(5,bt(1,btempty,btempty),btempty);
val Tree3 = bt(7,bt(4,btempty,btempty),
bt(12,btempty,btempty));
val Tree4 = bt("*",
bt("/",
bt("-",bt("7",btempty,btempty),
bt("a",btempty,btempty) ),
bt("5",btempty,btempty) ),
bt("exp",
bt("+",bt("a",btempty,btempty),
bt("b",btempty,btempty) ),
bt("3",btempty,btempty) ));
val Expression = bt("+",
bt("*",
bt("+",
bt("2",btempty,btempty),
bt("5",btempty,btempty) ),
bt("*",
bt("3",btempty,btempty),
bt("4",btempty,btempty) ) ),
bt("*",
bt("1",btempty,btempty),
bt("6",btempty,btempty) ) );
lookup(Tree,6);
lookup(Tree,1);
lookup(Tree,8);
lookup(Tree,9);
lookup(btempty,6);
inorder(Tree);
preorder(Tree);
postorder(Tree);
inorder(Expression);
preorder(Expression);
postorder(Expression);




















