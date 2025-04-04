# Projet LEPL1110 - Eléments finis
## Description du projet
Dans ce projet nous analysons la déformation en tensions planes d'une chaîne de vélo. Pour cela une force est appliquée à l'extremité droite de la chaîne afin de simuler la traction de celle-ci lorsque nous pédalons.


## Compilation et exécution

### make
Compile et crée le dossier build du projet

### make run -C 
Cette commande permet de compiler et exécuter le projet. Il génère d'abord un maillage, le répare avec le fichier fixmesh.py et résout le problème d'élasticité linéaire. 
#### Arguments

- Vous pouvez également choisir le nombre de disques pour la géométrie pour augmenter la taille de la chaîne. 

La commande make run sans arguments ne crée pas de nouveau maillage et affiche la résolution pour 4 disques.

Exemple
```bash
make run C=4 P=0
make run C=6
make run
````

### make generate -C
Cette commande génère juste le maillage et lance l'interface de gmsh pour la visualiser.
Encore une fois il est impératif de préciser le nombre de disques.

### make clean
Permet de supprimer le build créé à le compilation ainsi que les fichier .txt des maillages créés.