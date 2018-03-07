lc=0.1;
ra=0.1;
Point(1) = {ra, ra, 0, lc};
Point(2) = {ra, -ra, 0, lc};
Point(3) = {-ra, -ra, 0, lc};
Point(4) = {-ra, ra, 0, lc};
Line(1) = {1, 4};
Line(2) = {4, 3};
Line(3) = {3, 2};
Line(4) = {2, 1};

R=0.05;
Centx=0;
Centy=0;
Point(5) = {Centx, R+Centy, 0, lc};
Point(6) = {R+Centx, Centy, 0, lc};
Point(7) = {-R+Centx, Centy, 0, lc};
Point(8) = {Centx, -R+Centy, 0, lc};
Point(9) = {Centx, Centy, 0, lc};
Circle(5) = {5, 9, 7};
Circle(6) = {7, 9, 8};
Circle(7) = {8, 9, 6};
Circle(8) = {6, 9, 5};

Line Loop(12) = {5, 6, 7, 8};
Line Loop(10) = {1, 2, 3, 4};


Plane Surface(10) = {10,12};
Plane Surface(13) = {12};
Recombine Surface{10,13};
Mesh.SubdivisionAlgorithm=1;

Physical Line("Top") = {1};
Physical Line("Left") = {2};
Physical Line("Bottom") = {3};
Physical Line("Right") = {4};
Physical Surface("M1") = {10};
Physical Surface("M2") = {13};

