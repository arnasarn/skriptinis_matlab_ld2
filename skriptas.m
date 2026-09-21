clear
clc
eilute = 5:2:34;
eksponentes = exp(eilute);
dalybos = eilute./eksponentes;
stulpelis = reshape(dalybos, [length(dalybos), 1]);

clear
clc
A = [pi/2 3*1i; log10(2) 2*pi];
B = [exp(A(1, 1)) exp(A(1,2))];
A = [A; B];
eiluciu_sumos = [sum(A, 2)];

clear
clc
amplitude = 6;
daznis = 2;
triuksmo_amplitude = 1.5;
t = 0:0.005:2;
triuksmas = triuksmo_amplitude * randn(size(t));
signalas = amplitude*cos(2*pi*daznis*t) + triuksmas;

u1 = 4;
u2 = 2;
signalas_filtruotas = signalas(signalas > u1);
signalas_filtruotas(abs(signalas_filtruotas) < u2) = 0;
size(signalas);
size(signalas_filtruotas);
min(signalas_filtruotas);
max(signalas_filtruotas);

clear
clc
A = input("Įveskite 12 narių \n");
disp("Vektorius B yra: ")
B = [A(1,10:end) A(1,1:9)];
disp(B)




