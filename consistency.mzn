% Use this editor as a MiniZinc scratch book

% consistency
predicate consistency( var int:z) =
  if z!=0 then
         true 
  else 
        false
  endif;
