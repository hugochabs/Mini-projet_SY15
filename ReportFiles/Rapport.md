#Compte-rendu mini-projet SY15

##Introduction
Nous avons décidé deux méthodes pour identifier le système : ARMAX et gradient

##Méthode ARMAX
Nous avons commencé par identifier le retard. Pour cela, nous avons regardé l'entrée et la sortie.

Puis nous avons identifier les paramètres en essayant de minimiser le critère: 

* na : l'ordre du dénominateur
* nb : l'ordre du numérateur
* nc : l'ordre de la matrice C

En traçant le critère en fonction de na, nous avons trouvé : 

* na = 3
* nb = 2
* nc = 2

![](cr_na_armax.png)





## Méthode gradient 

* nf=2
* nb=2

On part sur le gradient. 

TODO : transfert function (continous, discret), gain statique, réponse indicielle 