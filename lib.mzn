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
predicate c1(var int:y,var int:z, var int:x) =
y !=0 -> z= x div y; 
constraint c1(y,z,x);

% c2
predicate c2(var int:u, var int:x) =
true -> x>u ;
constraint c2(u,x);

% compatibility
predicate c1_compatibility(var int:y,var int:z, var int:x) =
y !=0 \/ x!=0 -> true; 
constraint c1_compatibility(y,z,x);

% consistency
predicate c1_consistency(var int:y,var int:z, var int:x) =
(y !=0 -> z= x div y)/\
z !=0 -> true;
constraint c1_consistency(y,z,x);

% composition
predicate c1_composition_c2(var int:y,var int:z, var int:x, var int:u) =
(y !=0 -> z= x div y) /\
true -> x>u ;
constraint c1_composition_c2(y,z,x,u);

% c3 (timing contract)
predicate c3( var int:tx,var int:ty,var int:tz ) =
true -> tz= max(tx ,ty) + 1;

%conjunction
predicate c1_conjunction_c3(var int:y,var int:z, var int:x, 
var int:tx,var int:ty,var int:tz ) =
y !=0 -> tz= max(tx ,ty) + 1;



% c1_refinement
predicate c1_refinement(var int:y,var int:z, var int:x) =
y !=0 /\ y>0 -> z=true; 
constraint c1(y,z,x);


 



 
 
 

