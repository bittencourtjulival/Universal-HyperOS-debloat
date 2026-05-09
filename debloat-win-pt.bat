@echo off
title UNIVERSAL HYPEROS DEBLOAT TOOL
color 0B

:: =========================================
:: UNIVERSAL HYPEROS DEBLOAT TOOL
:: WINDOWS VERSION
:: by Julival Bittencourt @bittencourtjulival
:: =========================================

echo ===========================================
echo          UNIVERSAL HYPEROS DEBLOAT
echo  by Julival Bittencourt @bittencourtjulival
echo ===========================================
echo.

adb version >nul 2>&1
if errorlevel 1 (
    echo ADB nao encontrado!
    pause
    exit
)

adb start-server >nul

echo Conecte o celular com Depuracao USB ativada.
pause

adb devices

cls

echo =========================================
echo Escolha o modo:
echo =========================================
echo.
echo 1^) SAFE DEBLOAT
echo    Remove apenas bloatware seguro
echo.
echo 2^) EXTREME DEBLOAT
echo    Remove praticamente tudo nao essencial
echo.
echo 3^) CUSTOM
echo    Seleciona categorias manualmente
echo.

set /p MODE=Escolha:

:: =========================================
:: SAFE MODE
:: =========================================

if "%MODE%"=="1" (

echo.
echo Aplicando SAFE DEBLOAT...
echo.

:: FACEBOOK / META
call :remove com.facebook.katana
call :remove com.facebook.orca
call :remove com.facebook.system
call :remove com.facebook.services
call :remove com.facebook.appmanager
call :remove com.instagram.android

:: AMAZON
call :remove com.amazon.appmanager
call :remove com.amazon.kindle
call :remove com.amazon.mp3
call :remove com.amazon.mshop.android.shopping
call :remove com.amazon.venezia

:: MICROSOFT
call :remove com.microsoft.office.word
call :remove com.microsoft.office.excel
call :remove com.microsoft.office.powerpoint
call :remove com.microsoft.office.outlook
call :remove com.microsoft.skydrive

:: GOOGLE
call :remove com.google.android.apps.youtube.music
call :remove com.google.android.apps.magazines
call :remove com.google.android.videos
call :remove com.google.android.apps.tachyon

:: XIAOMI
call :remove com.xiaomi.mipicks
call :remove com.miui.analytics
call :remove com.miui.msa.global
call :remove com.miui.systemadsolution
call :remove com.miui.bugreport
call :remove com.miui.hybrid
call :remove com.miui.hybrid.accessory
call :remove com.miui.android.fashiongallery
call :remove com.mi.globalbrowser
call :remove com.mi.globalminusscreen
call :remove com.miui.player
call :remove com.miui.videoplayer
call :remove com.miui.weather2
call :remove com.miui.notes
call :remove com.miui.compass
call :remove com.miui.cleaner

:: STREAMING
call :remove com.netflix.mediaclient
call :remove com.spotify.music
call :remove com.zhiliaoapp.musically

goto end

)

:: =========================================
:: EXTREME MODE
:: =========================================

if "%MODE%"=="2" (

echo.
echo Aplicando EXTREME DEBLOAT...
echo.

:: META
call :remove com.facebook.katana
call :remove com.facebook.orca
call :remove com.facebook.system
call :remove com.facebook.services
call :remove com.facebook.appmanager
call :remove com.instagram.android

:: AMAZON
call :remove com.amazon.appmanager
call :remove com.amazon.fv
call :remove com.amazon.kindle
call :remove com.amazon.mp3
call :remove com.amazon.mshop.android
call :remove com.amazon.mshop.android.shopping
call :remove com.amazon.venezia

:: MICROSOFT
call :remove com.microsoft.appmanager
call :remove com.microsoft.office.word
call :remove com.microsoft.office.excel
call :remove com.microsoft.office.powerpoint
call :remove com.microsoft.office.outlook
call :remove com.microsoft.office.officehubrow
call :remove com.microsoft.skydrive

:: GOOGLE
call :remove com.google.android.apps.books
call :remove com.google.android.apps.docs
call :remove com.google.android.apps.magazines
call :remove com.google.android.apps.subscriptions.red
call :remove com.google.android.apps.tachyon
call :remove com.google.android.apps.youtube.music
call :remove com.google.android.gm
call :remove com.google.android.googlequicksearchbox
call :remove com.google.android.music
call :remove com.google.android.videos
call :remove com.google.android.youtube
call :remove com.google.ar.core

:: XIAOMI / HYPEROS
call :remove com.miui.analytics
call :remove com.miui.android.fashiongallery
call :remove com.miui.audioeffect
call :remove com.miui.backup
call :remove com.miui.bugreport
call :remove com.miui.calculator
call :remove com.miui.cleaner
call :remove com.miui.cloudbackup
call :remove com.miui.cloudservice
call :remove com.miui.compass
call :remove com.miui.daemon
call :remove com.miui.extraphoto
call :remove com.miui.hybrid
call :remove com.miui.hybrid.accessory
call :remove com.miui.mediaeditor
call :remove com.miui.micloudsync
call :remove com.miui.miservice
call :remove com.miui.mishare.connectivity
call :remove com.miui.msa.global
call :remove com.miui.notes
call :remove com.miui.personalassistant
call :remove com.miui.player
call :remove com.miui.systemadsolution
call :remove com.miui.touchassistant
call :remove com.miui.userguide
call :remove com.miui.videoplayer
call :remove com.miui.voiceassist
call :remove com.miui.weather2
call :remove com.miui.yellowpage

:: XIAOMI APPS
call :remove com.xiaomi.aiasst.service
call :remove com.xiaomi.calendar
call :remove com.xiaomi.discover
call :remove com.xiaomi.finddevice
call :remove com.xiaomi.glgm
call :remove com.xiaomi.joyose
call :remove com.xiaomi.midrop
call :remove com.xiaomi.migameservice
call :remove com.xiaomi.mipicks
call :remove com.xiaomi.payment
call :remove com.xiaomi.powerchecker
call :remove com.xiaomi.simactivate.service

:: WPS
call :remove cn.wps.moffice_eng
call :remove cn.wps.xiaomi.abroad.lite
call :remove com.infraware.polarisoffice5

:: STREAMING
call :remove com.netflix.mediaclient
call :remove com.spotify.music
call :remove com.zhiliaoapp.musically
call :remove com.linkedin.android
call :remove com.skype.raider
call :remove com.opera.browser

:: ANDROID
call :remove com.android.bips
call :remove com.android.bookmarkprovider
call :remove com.android.browser
call :remove com.android.dreams.basic
call :remove com.android.email
call :remove com.android.exchange
call :remove com.android.printspooler
call :remove com.android.providers.downloads.ui
call :remove com.android.sharedstoragebackup
call :remove com.android.stk

goto end

)

:: =========================================
:: CUSTOM MODE
:: =========================================

if "%MODE%"=="3" (

cls

echo =========================================
echo CUSTOM MODE
echo =========================================
echo.
echo 1 - Facebook / Meta
echo 2 - Amazon
echo 3 - Microsoft
echo 4 - Google Apps
echo 5 - Xiaomi / HyperOS
echo 6 - Streaming
echo 7 - Games
echo.

set /p choice=Escolha uma categoria:

if "%choice%"=="1" (
call :remove com.facebook.katana
call :remove com.facebook.orca
call :remove com.instagram.android
)

if "%choice%"=="2" (
call :remove com.amazon.kindle
call :remove com.amazon.mp3
)

if "%choice%"=="3" (
call :remove com.microsoft.office.word
call :remove com.microsoft.office.excel
call :remove com.microsoft.office.powerpoint
)

if "%choice%"=="4" (
call :remove com.google.android.youtube
call :remove com.google.android.gm
)

if "%choice%"=="5" (
call :remove com.miui.analytics
call :remove com.miui.cleaner
call :remove com.miui.player
call :remove com.miui.videoplayer
)

if "%choice%"=="6" (
call :remove com.netflix.mediaclient
call :remove com.spotify.music
)

if "%choice%"=="7" (
call :remove com.xiaomi.glgm
call :remove com.xiaomi.migameservice
)

goto end

)

echo Opcao invalida!
pause
exit

:: =========================================
:: FUNCAO
:: =========================================

:remove
echo Removendo %1
adb shell pm uninstall -k --user 0 %1
goto :eof

:: =========================================
:: FINAL
:: =========================================

:end

echo.
echo =========================================
echo DEBLOAT CONCLUIDO!
echo =========================================
echo.

set /p reboot=Reiniciar dispositivo agora? (s/n):

if /I "%reboot%"=="s" adb reboot

pause
