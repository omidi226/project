% Use this editor as a MiniZinc scratch book

% compatibility
function var bool: compatibility(var int:y,var int:x,var int:z) =
y !=0 \/ x!=0 -> true; 
