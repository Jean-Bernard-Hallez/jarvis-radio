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
Permet d'écouter la radio en prononcant le nom de celle-ci... Pour Jarvis (RaspberryPi Linux)

## Usage
```
ATTENTION... Pour arrêter avec le micro et le hp en marche c'est mission impossible !!!
En attendant il y a la possibilité de faire un bouton poussoir sur le gpio mais il a plus simple:

- ARRET AVEC: En console SSH faites: mpc stop )
- Avec Jarvis UI vous pouvez l'arrêter en écrivant: stop radio 
- Avec la montre et l'aplication Smartwatch Wear et tasker voir http://domotiquefacile.fr/jarvis/content/voice-control-from-smartwatch

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

Vous: Volume plus fort radio  

Vous: Volume moins fort radio  


```

## Author
[JB](https://github.com/Jean-Bernard-Hallez/jarvis-radio)
