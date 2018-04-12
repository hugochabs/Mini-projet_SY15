load entree618;
load sortie618;

u = entree618;
y = sortie618;

r= 1;
na = 3;%valid�
nb = 2; %valid�
nc = 2; %valid�

%Model in discret-time
th = armax([u y], [na nb nc r])
ym = idsim(u, th);

%%Calcul Crit�re pour identification
%CRc(nc) = sum((y-ym).' * (y-ym))/length(ym);
%plot(CRc);

%forme polynomiale
[A, B, C, D] = th2poly(th);

%syst�me continu
thc = d2c(th);

tfc = tf(thc);

plot(ym, 'r');

%plot(u, 'r');
hold on;
plot(y, 'b');