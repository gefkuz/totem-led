## BetaMachine
# totem-led

animation du totem led de BetaMachine

Afin d'afficher sur le toem led de betamachine il suffit :

1- d'ajouter le fichier OPC_totem_betamachine.pde dans le repertoire de votre sketch

2- de mettre une dimension 3 fois plus large que haute ( ex:  size (900, 300))

3- d'ajouter la ligne de code suivante dans la fonction setup de votre sketch:
        setup_totem_led ("10.21.0.220"); 

4- Si le totem est en deplacement endehors du lab, il faudra remplacer l'ip 10.21.0.220 si necessaire.

Et hop, le tour est joué.

Vous trouverez quelques exmaples qui fonctionne sur le repo.
