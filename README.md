# Projet LEPL1110 - Eléments finis
## Description du projet
Ceci est le projet du groupe 112 (Jean-Lou Accarain, Luka Van Eeckhout) pour le cours LEPL1110.
Dans ce projet nous analysons la déformation en tensions planes d'une chaîne de vélo. Pour cela une force est appliquée à l'extremité droite de la chaîne afin de simuler la traction de celle-ci lorsque nous pédalons.


## Compilation et exécution
### Warnings
**Attention pour ce projet nous utilisons gmsh, ce qui signifie que à la compilation il faut avoir la bonne version de gmsh dans le dossier gmsh. Nous avons ajouté toutes les versions de gmsh disponibles donc cela ne devrait pas poser de problèmes mais il faut tout de même vérifier si la version de votre système d'exploitation est bien présente.**

### make
Compile et crée le dossier build du projet

### make run -C 
Cette commande permet de compiler et exécuter le projet. Il génère d'abord un maillage, le répare avec le fichier fixmesh.py et résout le problème d'élasticité linéaire. 
#### Arguments

- Vous pouvez également choisir le nombre de disques pour la géométrie pour augmenter la taille de la chaîne. 

La commande make run sans arguments ne crée pas de nouveau maillage et affiche la résolution pour 4 disques.

Exemples
```bash
make run C=6
make run
````


### make clean
Permet de supprimer le build créé à la compilation ainsi que les fichier .txt des maillages créés.