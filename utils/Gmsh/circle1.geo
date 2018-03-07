//Inputs
SetFactory("OpenCASCADE");

Point(1) = {0, -300, 0, 1.0};
Point(2) = {0, 300, 0, 1.0};
Point(3) = {0, 0, 0, 1.0};

Circle(4) = {2, 3, 1};

Circle(5) = {1, 3, 2};

Line Loop(6) = {4, 5};

Plane Surface(7) = {6};

Mesh.SubdivisionAlgorithm=1;
Physical Line("Top") = {1};
Physical Line("Left") = {2};
Physical Line("Bottom") = {3};
Physical Line("Right") = {4};
Physical Surface("M1") = {10};
Physical Surface("M2") = {11,12};