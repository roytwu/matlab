%* ---------- ---------- ----------
%*    Description: testing stlwriter.m
%*    History:     08/21/2021 initial vesion
%*    Note:        To install the 3rd party toolbox, open the .mltbx file within matlab 
%* ---------- ---------- ----------

%* ----- ----- -----
%*     Trianugalte 2D meash    
%* ----- ----- -----
% P = [2.5 8.0; 6.5 8.0; 2.5 5.0; 6.5 5.0; 1.0 6.5; 8.0 6.5]; %6x2
% T = [5 3 1; 3 2 1; 3 4 2; 4 6 2]; %4x3
% TR = triangulation(T,P);
% triplot(TR)
% stlwrite(TR,'tritext.stl','text')

%* ----- ----- -----
%*     Corner&face 3D meash    
%* ----- ----- -----
s=3.0;
cornerPt = [0. 0. 0.; 0. 0. s; 0. s 0.; 0. s s; s 0. 0.; s 0. s; s s 0.; s s s]; %8x3
face = [1 5 7 3; 1 5 6 2; 5 7 8 6; 7 8 4 3; 1 3 4 2; 2 6 8 4]; %6x4
triFace = triangulateFaces(face);
% tri3D = triangulation(face, CornerPt);
% triplot(tri3D)
% stlwrite(tie2,'tritext.stl','text')

stlwrite('test.stl', triFace, cornerPt)


