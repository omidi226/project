% Use this editor as a MiniZinc scratch book

% composition
function var bool: composition(var int:y,var int:x,var int:z, var int:u) =
(y !=0 -> z= x div y) /\
true -> x>u ;
