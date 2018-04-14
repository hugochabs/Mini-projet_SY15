load entree618;
load sortie618;

u = entree618;
y = sortie618;

r= 1;
na = 2;%valid�
nb = 2; %valid�
nc = 1; %valid�

%Model in discret-time
th = armax([y u], [na nb nc r])
ym = idsim(u, th);

%%Calcul Crit�re pour identification
CRc(nc) = sum((y-ym).' * (y-ym))/length(ym);
%plot(CRb);

%fonction de transfert en discret
tfd = tf(th);

%syst�me continu
thc = d2c(th);

%forme polynomiale
[A, B, C, D] = th2poly(thc);

%Fonction de transfert en continu
tfc = tf(thc)

%r�ponse indicielle du mod�le
Ymindic = step(thc);

plot(ym, 'r');

%plot(u, 'r');
hold on;
plot(y, 'b');
%hold on;
