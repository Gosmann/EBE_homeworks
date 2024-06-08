s = tf('s') ;

R = 1000 ;
R1 = R ;
C = 0.1e-6 ;
R2 = 1.5 ;

w0 = 1/(R*C) ;
A0 = (R1+R2)/R1 ; 
%A = (s*(1/(R*C))) / (s*s + (3/lo(R*C))*s + 1/((R*C)*(R*C)) ) ;
A = (A0*540e3)/(s + 540e3) ;
%bode(A) ; 

B = ( s/(R*C) ) / ( s*s + (3*s)/(R*C) + 1/((R*C)*(R*C)) ) ;
%bode(B) ; 

C = A*B ;
bode(C) ; 



