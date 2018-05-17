%%Hugo Chabin - Geerthana Selliah 
%%Mini-projet SY15 - P18
%%M�thode gradient

load entree618;
load sortie618;

u = entree618;
y = sortie618;

r= 1;
nb = 2; 
nf = 2; 

%Modele en temps dicret
th = oe([y u], [nb nf r])
ym = idsim(u, th);

%%Calcul crit�re pour identification
%CRf(nf) = sum((y-ym).' * (y-ym))/length(ym);
%plot(CRf);

%fontion de transfert discret
thd = tf(th)

%syst�me continu
thc = d2c(th);

%forme polynomiale
[A, B, C, D, F] = th2poly(thc);

%Fonction de transfert en continu
tfc = tf(thc)

%r�ponse indicielle du mod�le
Ymindic = step(thc);

hold on;
%plot(Ymindic, 'm');
plot(ym, 'm');
% %plot(u, 'r');
hold on;
plot(y, 'b');