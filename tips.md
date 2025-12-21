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

## Flutter command 
- Permet de nettoyer le build - Dans un appel de fonction testExemple ("voiture", _) on indique que le deuxième paramètre n'est pas utilisé. &rarr; ```flutter clean```
- Met à jours les dépendances &rarr; ```flutter pub get```
- Génére les différentes fichier de traduction &rarr; ```flutter gen-l10n```
- Corrections typo et indentations &rarr; ```flutter format .```
- Vérifie les erreur présente dans le code &rarr; ```flutter analyze || { echo 'analyze failed'; exit 1; }```
- Lance les tests &rarr; ```flutter test || { echo 'tests failed'; exit 1; }```

## Global - Règles de conventions
### L'underscore 
- Avant une variable permet d'indiquer qu'un élément est privé à la méthode ou au fichier.