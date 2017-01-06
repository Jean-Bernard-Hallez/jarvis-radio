#!/bin/bash
# Here you can create functions which will be available from the commands file
# You can also use here user variables defined in your config file
# - Enregistrer variable radio pour l'ouvrir si le nom n'est pas prononcé
# - Allume radio sans rien derrière... ouvre GOTO pour quelle radio ? la dernière
# - je tappe 3 fois dans les mains pour arrêter la radio... là dans Led clignotante mettre mpd stop

jv_pg_ct_radio () {
jv_pg_ct_verinomradio
while read device
do
local nom="$(jv_sanitize "$device.*")"

#local nom="$(jv_sanitize "~.*$device.*")"
# local sdevice="$(jv_sanitize "$device" ".*")"
#if [[ "$order" =~ .*$sdevice.* ]]; then

local cherche="$(jv_sanitize "$bradio" ".*")"
if [[ "$bradio" =~ "$nom" ]]; then
laradio="$(echo "$chercheradio" | jq -r ".devices[] | select(.NomRadio==\"$device\") | .Adresse")"
laradionomtrouve="$(echo "$chercheradio" | jq -r ".devices[] | select(.NomRadio==\"$device\") | .NomRadio")"
say "Ok je lance la radio $laradionomtrouve"; 
echo "Requette = $laradio "
# echo "$laradio" > ~/nomradio.txt
mpc clear
mpc add $laradio
# mpc play
mpc volume $volumeradio
mpc play
radioOnOff="On"
return
fi
done <<< "$(echo "$chercheradio" | jq -r '.devices[].NomRadio')"
echo "Désolé, pas de Radio trouvé pour $bradio"
}


jv_pg_ct_radio_arrete () {
mpc stop
mpc clear
radioOnOff="Off"
}


jv_pg_ct_verinomradio () {
bradio=`echo "$order"| sed 's/.*radio//'`
if [[ "$bradio" == "" ]]; then
order=""
bradio="" 
fi
}

jv_pg_ct_radio_liste () {
laradiolistenomtrouve=""
nbrradio="0"
while read device
do
nbrradio=`echo "$nbrradio+1" | bc -l | sed "s/\([0-9]*\.[0-9][0-9]\).*/\1/"`
local nom="$(jv_sanitize "$device.*")"
# laradiolistenomtrouve="$(echo "$chercheradio" | jq -r ".devices[] | select(.NomRadio==\"$device\") | .NomRadio")"
laradiolistenomtrouve=`echo "$laradiolistenomtrouve" , "$(echo "$chercheradio" | jq -r ".devices[] | select(.NomRadio==\"$device\") | .NomRadio")"`

done <<< "$(echo "$chercheradio" | jq -r '.devices[].NomRadio')"
say "il y a $nbrradio radios: $laradiolistenomtrouve"
}

jv_pg_ct_radio_volumemoins () {
volumeradio=`echo "$volumeradio-5" | bc -l | sed "s/\([0-9]*\.[0-9][0-9]\).*/\1/"`
if [[ "$volumeradio" -lt "0" ]]; then
volumeradio="0"
say "Volume Radio au minimum"
return
fi
mpc volume $volumeradio
}

jv_pg_ct_radio_volumeplus () {
volumeradio=`echo "$volumeradio+5" | bc -l | sed "s/\([0-9]*\.[0-9][0-9]\).*/\1/"`
if [[ "$volumeradio" -gt "100" ]]; then
volumeradio="100"
say "Volume Radio au maximum"
return
fi
mpc volume $volumeradio
}
