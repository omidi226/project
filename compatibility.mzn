% Use this editor as a MiniZinc scratch book

% compatibility
predicate c1_compatibility(var int:y,var int:x,var int:z) =
y !=0 \/ x!=0 -> true; 