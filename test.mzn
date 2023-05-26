% Use this editor as a MiniZinc scratch book


include "compatibility.mzn";
include "consistency.mzn";
include "composition.mzn";

% test_compatibility
predicate test_compatibility(var int:y,var int:x,var int:z) =
x!=0 /\ y!=0-> compatibility( x);


predicate test_consistency(var int:y,var int:x,var int:z) =
(y !=0 -> z= x div y)->consistency(z);

