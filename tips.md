# Aide pour coder du flutter

## Statefull 
L’état stateful lui correspond (pour des widgets) à un état qui peut évoluer au cours du temps création. On parle d’UI dynamique.  

Exemple : 
- Un compteur
- Une liste

## StateLess 
L’état stateless correspond (pour des widgets) à un état qui ne change jamais après sa création. On parle d’UI statique.

Exemple : 
- Un titre
- Une icône
## Global - Règles de conventions
### L'underscore 
- Avant une variable permet d'indiquer qu'un élément est privé à la méthode ou au fichier.
- Dans un appel de fonction testExemple ("voiture", _) on indique que le deuxième paramètre n'est pas utilisé.