% Use this editor as a MiniZinc scratch book

% composition
predicate composition(var bool:x,var bool:z) =
if (x /\ z) then 
    true
else 
    false 
endif;

