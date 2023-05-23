% Use this editor as a MiniZinc scratch book
% Use this editor as a MiniZinc scratch book
% Use this editor as a MiniZinc scratch book
%NAME:test1
int: n=10;
var -n..n:x;
var -n..n:y;
var -n..n:z;
var -n..n:u;
array[1..2] of int : comp_cont;
comp_cont=[1,2];

% c1
function var int: c1(var int:y,var int:z, var int:x) =
y !=0 -> z= x div y; 


% c2
function var int: c2(var int:u, var int:x) =
true -> x>u ;


% compatibility
function var int: c1_compatibility(var int:y,var int:z, var int:x) =
y !=0 \/ x!=0 -> true; 


% consistency
function var int: c1_consistency(var int:y,var int:z, var int:x) =
(y !=0 -> z= x div y)/\
z !=0 -> true;


% composition
function var int: c1_composition_c2(var int:y,var int:z, var int:x, var int:u) =
(y !=0 -> z= x div y) /\
true -> x>u ;


% c3 (timing contract)
function var int: c3( var int:tx,var int:ty,var int:tz ) =
true -> tz= max(tx ,ty) + 1;

%conjunction
function var int: c1_conjunction_c3(var int:y,var int:z, var int:x, 
var int:tx,var int:ty,var int:tz ) =
y !=0 -> tz= max(tx ,ty) + 1;



% c1_refinement
function var int: c1_refinement(var int:y,var int:z, var int:x) =
y !=0 /\ y>0 -> z=true; 



 