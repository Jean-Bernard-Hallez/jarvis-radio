<!---
IMPORTANT
=========
This README.md is displayed in the WebStore as well as within Jarvis app
Please do not change the structure of this file
Fill-in Description, Usage & Author sections
Make sure to rename the [en] folder into the language code your plugin is written in (ex: fr, es, de, it...)
For multi-language plugin:
- clone the language directory and translate commands/functions.sh
- optionally write the Description / Usage sections in several languages
-->
## Description
31/03/17 Installation d'un paquet suplémentaire MPD qui fonctionne avec MPC déja installé
Permet d'écouter la radio en prononcant le nom de celle-ci... Pour Jarvis (RaspberryPi Linux)
Plusieur radio française - (Recherchez celle qui sont en mp3) [disponible ici](http://fluxradios.blogspot.fr/p/flux-radios-francaise.html).

## Languages

* Français


## Usage
```
ATTENTION... En cours de finition car pour l'arrêter avec le micro et le hp en marche !!!
(En attendant il y a la possibilité de faire un bouton poussoir sur le gpio mais j'ai peut-être plus simple... en phase de test)
En console faites:
mpc stop

Vous: lance la radio
Jarvis: Quelle radio voulez vous écouter ?
Vous: France Bleu Vaucluse
Jarvis: On essaye la radio France Bleu Vaucluse...
Ok

Vous: lance la radio  France Bleu Vaucluse
Jarvis: On essaye la radio France Bleu Vaucluse...
Ok

Vous: lance la radio France de l'espace 
Jarvis: On essaye la radio de l'espace...
Désolé, pas de Radio trouvé pour France de l'espace


```

## Author
[JB](https://github.com/Jean-Bernard-Hallez/jarvis-radio)
