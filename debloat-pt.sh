#!/bin/bash
# UNIVERSAL HYPEROS DEBLOAT TOOL
# Xiaomi / Redmi / POCO
# SAFE + EXTREME MODES

########################################
# CORES
########################################

RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
CYAN='\033[1;36m'
NC='\033[0m'

########################################
# FUNÇÃO
########################################

remove_pkg() {
    adb shell pm uninstall -k --user 0 "$1"
}

########################################
# CHECK ADB
########################################

clear

echo -e "${CYAN}"
echo "==========================================="
echo "         UNIVERSAL HYPEROS DEBLOAT"
echo " by Julival Bittencourt @bittencourtjulival"
echo "==========================================="
echo -e "${NC}"

if ! command -v adb &> /dev/null; then
    echo -e "${RED}ADB não encontrado!${NC}"
    exit 1
fi

adb start-server

echo ""
echo "Conecte o celular com Depuração USB ativada."
read -p "Pressione ENTER para continuar..."

adb devices

########################################
# MENU
########################################

clear

echo -e "${YELLOW}Selecione o modo:${NC}"
echo ""
echo "1) SAFE DEBLOAT"
echo "   Remove apenas bloatware seguro"
echo ""
echo "2) EXTREME DEBLOAT"
echo "   Remove praticamente tudo não essencial"
echo ""
echo "3) CUSTOM"
echo "   Seleciona categorias manualmente"
echo ""

read -p "Escolha: " MODE

########################################
# SAFE MODE
########################################

safe_debloat() {

echo ""
echo -e "${GREEN}Aplicando SAFE DEBLOAT...${NC}"

########################################
# FACEBOOK / META
########################################

remove_pkg com.facebook.katana
remove_pkg com.facebook.orca
remove_pkg com.facebook.system
remove_pkg com.facebook.services
remove_pkg com.facebook.appmanager
remove_pkg com.instagram.android

########################################
# AMAZON
########################################

remove_pkg com.amazon.appmanager
remove_pkg com.amazon.kindle
remove_pkg com.amazon.mp3
remove_pkg com.amazon.mshop.android.shopping
remove_pkg com.amazon.venezia

########################################
# MICROSOFT
########################################

remove_pkg com.microsoft.office.word
remove_pkg com.microsoft.office.excel
remove_pkg com.microsoft.office.powerpoint
remove_pkg com.microsoft.office.outlook
remove_pkg com.microsoft.skydrive

########################################
# GOOGLE OPCIONAL
########################################

remove_pkg com.google.android.apps.youtube.music
remove_pkg com.google.android.apps.magazines
remove_pkg com.google.android.videos
remove_pkg com.google.android.apps.tachyon

########################################
# XIAOMI APPS
########################################

remove_pkg com.xiaomi.mipicks
remove_pkg com.miui.analytics
remove_pkg com.miui.msa.global
remove_pkg com.miui.systemadsolution
remove_pkg com.miui.bugreport
remove_pkg com.miui.hybrid
remove_pkg com.miui.hybrid.accessory
remove_pkg com.miui.android.fashiongallery
remove_pkg com.mi.globalbrowser
remove_pkg com.mi.globalminusscreen
remove_pkg com.miui.player
remove_pkg com.miui.videoplayer
remove_pkg com.miui.weather2
remove_pkg com.miui.notes
remove_pkg com.miui.compass
remove_pkg com.miui.cleaner

########################################
# STREAMING
########################################

remove_pkg com.netflix.mediaclient
remove_pkg com.spotify.music
remove_pkg com.zhiliaoapp.musically

}

########################################
# EXTREME MODE
########################################

extreme_debloat() {

echo ""
echo -e "${RED}Aplicando EXTREME DEBLOAT...${NC}"

########################################
# META
########################################

remove_pkg com.facebook.katana
remove_pkg com.facebook.orca
remove_pkg com.facebook.system
remove_pkg com.facebook.services
remove_pkg com.facebook.appmanager
remove_pkg com.instagram.android

########################################
# AMAZON
########################################

remove_pkg com.amazon.appmanager
remove_pkg com.amazon.fv
remove_pkg com.amazon.kindle
remove_pkg com.amazon.mp3
remove_pkg com.amazon.mshop.android
remove_pkg com.amazon.mshop.android.shopping
remove_pkg com.amazon.venezia

########################################
# MICROSOFT
########################################

remove_pkg com.microsoft.appmanager
remove_pkg com.microsoft.office.word
remove_pkg com.microsoft.office.excel
remove_pkg com.microsoft.office.powerpoint
remove_pkg com.microsoft.office.outlook
remove_pkg com.microsoft.office.officehubrow
remove_pkg com.microsoft.skydrive

########################################
# GOOGLE
########################################

remove_pkg com.google.android.apps.books
remove_pkg com.google.android.apps.docs
remove_pkg com.google.android.apps.magazines
remove_pkg com.google.android.apps.subscriptions.red
remove_pkg com.google.android.apps.tachyon
remove_pkg com.google.android.apps.youtube.music
remove_pkg com.google.android.gm
remove_pkg com.google.android.googlequicksearchbox
remove_pkg com.google.android.marvin.talkback
remove_pkg com.google.android.music
remove_pkg com.google.android.printservice.recommendation
remove_pkg com.google.android.projection.gearhead
remove_pkg com.google.android.talk
remove_pkg com.google.android.tts
remove_pkg com.google.android.videos
remove_pkg com.google.android.youtube
remove_pkg com.google.ar.core

########################################
# XIAOMI / HYPEROS
########################################

remove_pkg com.miui.analytics
remove_pkg com.miui.android.fashiongallery
remove_pkg com.miui.audioeffect
remove_pkg com.miui.audiomonitor
remove_pkg com.miui.backup
remove_pkg com.miui.bugreport
remove_pkg com.miui.calculator
remove_pkg com.miui.carlink
remove_pkg com.miui.cleaner
remove_pkg com.miui.cloudbackup
remove_pkg com.miui.cloudservice
remove_pkg com.miui.compass
remove_pkg com.miui.contentcatcher
remove_pkg com.miui.daemon
remove_pkg com.miui.extraphoto
remove_pkg com.miui.hybrid
remove_pkg com.miui.hybrid.accessory
remove_pkg com.miui.mediaeditor
remove_pkg com.miui.mediaviewer
remove_pkg com.miui.micloudsync
remove_pkg com.miui.miservice
remove_pkg com.miui.mishare.connectivity
remove_pkg com.miui.misightservice
remove_pkg com.miui.misound
remove_pkg com.miui.msa.global
remove_pkg com.miui.nextpay
remove_pkg com.miui.notes
remove_pkg com.miui.notification
remove_pkg com.miui.personalassistant
remove_pkg com.miui.phrase
remove_pkg com.miui.player
remove_pkg com.miui.smsextra
remove_pkg com.miui.systemadsolution
remove_pkg com.miui.touchassistant
remove_pkg com.miui.translationservice
remove_pkg com.miui.userguide
remove_pkg com.miui.videoplayer
remove_pkg com.miui.voiceassist
remove_pkg com.miui.voicetrigger
remove_pkg com.miui.weather2
remove_pkg com.miui.yellowpage

########################################
# XIAOMI APPS
########################################

remove_pkg com.xiaomi.aiasst.service
remove_pkg com.xiaomi.calendar
remove_pkg com.xiaomi.discover
remove_pkg com.xiaomi.finddevice
remove_pkg com.xiaomi.glgm
remove_pkg com.xiaomi.joyose
remove_pkg com.xiaomi.midrop
remove_pkg com.xiaomi.migameservice
remove_pkg com.xiaomi.mipicks
remove_pkg com.xiaomi.miplay_client
remove_pkg com.xiaomi.payment
remove_pkg com.xiaomi.powerchecker
remove_pkg com.xiaomi.simactivate.service
remove_pkg com.xiaomi.smarthome

########################################
# WPS / OFFICE
########################################

remove_pkg cn.wps.moffice_eng
remove_pkg cn.wps.xiaomi.abroad.lite
remove_pkg com.infraware.polarisoffice5

########################################
# STREAMING
########################################

remove_pkg com.netflix.mediaclient
remove_pkg com.netflix.partner.activation
remove_pkg com.spotify.music
remove_pkg com.zhiliaoapp.musically
remove_pkg com.linkedin.android
remove_pkg com.skype.raider
remove_pkg com.opera.browser

########################################
# ANDROID
########################################

remove_pkg com.android.bips
remove_pkg com.android.bookmarkprovider
remove_pkg com.android.browser
remove_pkg com.android.dreams.basic
remove_pkg com.android.dreams.phototable
remove_pkg com.android.egg
remove_pkg com.android.email
remove_pkg com.android.exchange
remove_pkg com.android.printspooler
remove_pkg com.android.providers.downloads.ui
remove_pkg com.android.providers.partnerbookmarks
remove_pkg com.android.sharedstoragebackup
remove_pkg com.android.stk

}

########################################
# CUSTOM MODE
########################################

custom_mode() {

echo ""
echo "Categorias disponíveis:"
echo ""

echo "1) Facebook / Meta"
echo "2) Amazon"
echo "3) Microsoft"
echo "4) Google Apps"
echo "5) Xiaomi / HyperOS"
echo "6) Streaming"
echo "7) Games"
echo ""

read -p "Digite os números separados por espaço: " choices

for choice in $choices; do

case $choice in

1)
remove_pkg com.facebook.katana
remove_pkg com.facebook.orca
remove_pkg com.facebook.system
remove_pkg com.facebook.services
remove_pkg com.facebook.appmanager
remove_pkg com.instagram.android
;;

2)
remove_pkg com.amazon.appmanager
remove_pkg com.amazon.kindle
remove_pkg com.amazon.mp3
remove_pkg com.amazon.mshop.android.shopping
remove_pkg com.amazon.venezia
;;

3)
remove_pkg com.microsoft.office.word
remove_pkg com.microsoft.office.excel
remove_pkg com.microsoft.office.powerpoint
remove_pkg com.microsoft.office.outlook
remove_pkg com.microsoft.skydrive
;;

4)
remove_pkg com.google.android.apps.youtube.music
remove_pkg com.google.android.gm
remove_pkg com.google.android.youtube
remove_pkg com.google.android.apps.tachyon
;;

5)
remove_pkg com.miui.analytics
remove_pkg com.miui.msa.global
remove_pkg com.miui.systemadsolution
remove_pkg com.miui.bugreport
remove_pkg com.miui.hybrid
remove_pkg com.miui.player
remove_pkg com.miui.videoplayer
remove_pkg com.miui.weather2
remove_pkg com.miui.cleaner
;;

6)
remove_pkg com.netflix.mediaclient
remove_pkg com.spotify.music
remove_pkg com.zhiliaoapp.musically
;;

7)
remove_pkg com.xiaomi.glgm
remove_pkg com.xiaomi.migameservice
remove_pkg com.xiaomi.joyose
;;

esac
done

}

########################################
# EXECUÇÃO
########################################

case $MODE in

1)
safe_debloat
;;

2)
extreme_debloat
;;

3)
custom_mode
;;

*)
echo -e "${RED}Opção inválida!${NC}"
exit 1
;;

esac

########################################
# FINALIZAÇÃO
########################################

echo ""
echo -e "${GREEN}=========================================${NC}"
echo -e "${GREEN} DEBLOAT FINALIZADO!${NC}"
echo -e "${GREEN}=========================================${NC}"

echo ""
read -p "Reiniciar dispositivo agora? (s/n): " reboot_choice

if [[ "$reboot_choice" == "s" || "$reboot_choice" == "S" ]]; then
    adb reboot
fi
