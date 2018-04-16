#Compte-rendu mini-projet SY15

##Introduction
Nous avons décidé deux méthodes pour identifier le système : méthode des moindres carrés généralisée (ARMAX) et gradient (OE)

##Identification système

Tout d'abord nous avons commencé par identifier le retard. Pour cela, nous avons regardé l'entrée et la sortie. Le retard correspond au temps durant lequel nous avons une sortie nulle pour une entrée non nulle. 
Ici, la période de mesure est de 0.1 secondes, et pendant 12 mesures la sortie est nulle pour une entrée non nulle. 
Donc, le retard est de 1,2 secondes, qui sera arrondi à 1 seconde par la suite. 

##Méthode ARMAX

Nous avons identifier les paramètres en essayant de minimiser le critère: 

* na : l'ordre du dénominateur
* nb : l'ordre du numérateur
* nc : l'ordre de la matrice C

En traçant le critère en fonction de na, puis,nb, puis nc, nous avons trouvé :

* na = 3
* nb = 2
* nc = 2

![](cr_na_armax.png)

En comparant le modèle obtenu à la sortie réelle nous obtenons : 
![](ym_y_armax.png)


##Méthode gradient 

De la mêm façon que pour la méthode des moindres carrés généralisés, nous identifions les paramètres nf et nb, en tentant de minimiser le critère, nous avons obtenu : 
* nf=2
* nb=2
![](ym_y_oe.png)

##Résultat comparaison 

Lorsque nous comparons les deux estimations à la sortie réelle, pour les paramètres idetifiés ci-dessus, la méthode de gradient semble être plus proche de la réalité que la méthode ARMAX.

![](_ym(arxmax&oe).png)

TODO : transfert function (continous, discret), gain statique, réponse indicielle 
