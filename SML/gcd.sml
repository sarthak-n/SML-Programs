fun gcd(a:int, b:int):int =
case Int.compare(a,b) of
GREATER => gcd(a-b, a)
| EQUAL => a
| _ => gcd(a,b-a)
