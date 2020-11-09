- 3;
val it = 3 : int

- 3+2;
val it = 5 : int

 not(true);
val it = false : bool

- true andalso false;
val it = false : bool


- val three = 3;
val three = 3 : int

- three;
val it = 3 : int

- val five = 3+2;
val five = 5 : int

- three + five;
val it = 8 : int

 fun double(x) = 2*x;
val double = fn : int -> int

- double(222);
val it = 444 : int

- double(2.0);
stdIn:11.1-11.12 Error: operator and operand do not agree [tycon mismatch]
  operator domain: int
  operand:         real
  in expression:
    double 2.0

	 fun factorial(x) = if x=0 then 1  else x*factorial(x-1);
val factorial = fn : int -> int

- factorial(5);
val it = 120 : int
- factorial(10);
val it = 3628800 : int

- fun gcd(m,n):int = if m=n then n
= else if m>n then gcd(m-n,n)
= else gcd(m,n-m);
val gcd = fn : int * int -> int
- gcd(12,30);
val it = 6 : int
- gcd(1,20);
val it = 1 : int
- gcd(126,2357);
val it = 1 : int
- gcd(125,56345);
val it = 5 : int

- val t1 = (1,2,3);
val t1 = (1,2,3) : int * int * int
- val t2 = (4,(5.0,6));
val t2 = (4,(5.0,6)) : int * (real * int)
- val t3 = (7,8.0,"nine");
val t3 = (7,8.0,"nine") : int * real * string

- #1(t1);
val it = 1 : int
- #1(t2);
val it = 4 : int
- #2(t2);
val it = (5.0,6) : real * int
- #2(#2(t2));
val it = 6 : int
- #3(t3);
val it = "nine" : string

- [1,2,3];
val it = [1,2,3] : int list
- [true,false, true];
val it = [true,false,true] : bool list
- [[1,2,3],[4,5],[6]];
val it = [[1,2,3],[4,5],[6]] : int list list

- hd[1,2,3];
val it = 1 : int
- hd[[1,2],[3]];
val it = [1,2] : int list

- tl[1,2,3];
val it = [2,3] : int list
- tl[[1,2],[3]];
val it = [[3]] : int list list

- hd;
val it = fn : ’a list -> ’a
- tl;
val it = fn : ’a list -> ’a list

- 5::[];
val it = [5] : int list
- 1::[2,3];
val it = [1,2,3] : int list
- [1,2]::[[3],[4,5,6,7]];
val it = [[1,2],[3],[4,5,6,7]] : int list list

- [1,2,3]=[1,2,3];
val it = true : bool
- [1,2]=[2,1];
val it = false : bool
- tl[1] = [];
val it = true : bool

- concat([1,2],[3]);
val it = [1,2,3] : int list
- concat([],[1,2]);
val it = [1,2] : int list
- concat([1,2],[]);
val it = [1,2] : int list