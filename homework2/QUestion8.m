pkg load control
s = tf('s')

A0 = 3.3746613412;
wc = 888978.091927;
w0 = 2 * pi * 50000;
A = A0 / ( 1+s/wc)

R=100;
C = 1.9153354472e-8;
B = s*R*C/((s*R*C)^2 + 3 * s * R * C + 1)

H = A * B;
bode(H);

sortie= freqresp(H, w0);
"The magnitude should be close to 1"
magnitude = abs(sortie)
"The phase should be close to 0"
phase = arg(sortie)




