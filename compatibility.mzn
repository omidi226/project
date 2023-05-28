% Use this editor as a MiniZinc scratch book
% compatibility
var int:n=10;
predicate compatibility( array[int] of var int: x) =
forall(i in 1..n where x[i] != 0) (  true );
    
