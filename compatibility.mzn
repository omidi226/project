% Use this editor as a MiniZinc scratch book

% compatibility

predicate compatibility( var int: x) =
    if x != 0  then 
       true
    else 
       false
    endif;
