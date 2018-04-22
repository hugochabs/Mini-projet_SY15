load entree618;
load sortie618;

u = entree618;
y = sortie618;

r= 1;
nb = 2; %validé
nf = 2; %validé

% nb = 4; 
% nf = 2; 


%Model in discret-time
th = oe([y u], [nb nf r])
ym = idsim(u, th);

%%Calcul Critère pour identification
CRf(nf) = sum((y-ym).' * (y-ym))/length(ym);
%plot(CRb);

%fontion de transfert discret
thd = tf(th)

%%système continu
thc = d2c(th);

%%forme polynomiale
[A, B, C, D, F] = th2poly(thc);

%%Fonction de transfert en continu
tfc = tf(thc)

%%réponse indicielle du modèle
Ymindic = step(thc);

plot(Ymindic, 'm');
% plot(ym, 'm');
% %plot(u, 'r');
%  hold on;
%  plot(y, 'b');