% Use this editor as a MiniZinc scratch book

% consistency
function var bool: consistency(var int:y,var int:x,var int:z) =
(y !=0 -> z= x div y)/\
z !=0 -> true;