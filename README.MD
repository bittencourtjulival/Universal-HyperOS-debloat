HyperOS Universal Debloat Tool

Universal debloat scripts for HyperOS / MIUI devices (Xiaomi, Redmi and POCO).

Includes:

Linux script (.sh)
Windows script (.bat)
Android Terminal version (Termux, aShell, Shizuku)
SAFE mode
EXTREME mode
CUSTOM mode
Features
Remove bloatware safely
Remove ads and telemetry
Improve battery life
Improve performance
Reduce background activity
Interactive menu system
No root required
Works with ADB or Shizuku
Supported Devices
Xiaomi
Redmi
POCO
HyperOS
MIUI 12+
Android 11+
Modes
SAFE MODE

Recommended for most users.

Removes:

Ads
Analytics
Facebook services
Amazon apps
Netflix
Spotify
Xiaomi recommendations
Optional Google apps

Keeps:

System stability
OTA updates
Core Xiaomi features
EXTREME MODE

Aggressive debloat.

Removes:

Most Xiaomi apps
Most Google apps
Telemetry
App Vault
Game Turbo
Cloud sync
Assistant features
AI services
Streaming apps
Office apps

May break:

Voice assistant
Xiaomi cloud features
Android Auto
Some AI camera features
Some sharing features

Recommended only for advanced users.

Linux Usage
Requirements

Install ADB:

Ubuntu / Debian
sudo apt install android-tools-adb
Arch Linux
sudo pacman -S android-tools
Enable Developer Options

On your phone:

Open Settings
About phone
Tap "MIUI version" or "HyperOS version" 7 times

Then enable:

USB Debugging
Run Script
chmod +x debloat.sh
./debloat.sh
Windows Usage
Requirements

Install Android Platform Tools:

Android Platform Tools

Add ADB to PATH or place the .bat file inside the platform-tools folder.

Run

Double click:

debloat.bat

or:

debloat.bat
Android Usage (No PC)

Recommended apps:

Shizuku
aShell
Termux
Setup
Enable:
Wireless debugging
USB debugging
Start Shizuku
Open aShell
Run Script
sh /sdcard/debloat.sh

or:

chmod +x /sdcard/debloat.sh
/sdcard/debloat.sh
Restore Removed Apps

Example:

adb shell cmd package install-existing com.miui.player
WARNING

Do NOT remove:

com.miui.home
com.android.systemui
com.android.settings
com.google.android.gms
com.google.android.gsf
com.lbe.security.miui
com.miui.securitycenter
com.miui.miwallpaper

Removing these packages may cause:

Bootloops
Launcher crashes
Black screen
Broken notifications
System instability
Disclaimer

Use at your own risk.

These scripts modify system packages for the current user (--user 0) without root access, but removing essential components may still break some features.

Always create a backup before using EXTREME mode.

Português (Brasil)
HyperOS Universal Debloat Tool

Scripts universais de debloat para dispositivos HyperOS / MIUI (Xiaomi, Redmi e POCO).

Inclui:

Script Linux (.sh)
Script Windows (.bat)
Versão Android (Termux, aShell, Shizuku)
Modo SAFE
Modo EXTREME
Modo CUSTOM
Recursos
Remove bloatware
Remove anúncios e telemetria
Melhora bateria
Melhora desempenho
Reduz processos em segundo plano
Sistema interativo de menus
Não requer root
Funciona com ADB ou Shizuku
Dispositivos Compatíveis
Xiaomi
Redmi
POCO
HyperOS
MIUI 12+
Android 11+
Modos
SAFE MODE

Recomendado para a maioria dos usuários.

Remove:

anúncios
analytics
serviços Facebook
apps Amazon
Netflix
Spotify
recomendações Xiaomi
apps Google opcionais

Mantém:

estabilidade do sistema
OTA updates
recursos principais da Xiaomi
EXTREME MODE

Debloat agressivo.

Remove:

maioria dos apps Xiaomi
maioria dos apps Google
telemetria
App Vault
Game Turbo
sincronização cloud
assistentes
IA
streaming
office

Pode quebrar:

assistente de voz
sincronização Xiaomi
Android Auto
recursos IA da câmera
compartilhamento

Recomendado apenas para usuários avançados.

Uso no Linux
Requisitos

Instale o ADB:

Ubuntu / Debian
sudo apt install android-tools-adb
Arch Linux
sudo pacman -S android-tools
Ativar opções do desenvolvedor

No celular:

Abra Configurações
Sobre o telefone
Toque 7 vezes em "Versão HyperOS" ou "Versão MIUI"

Depois ative:

Depuração USB
Executar
chmod +x debloat.sh
./debloat.sh
Uso no Windows
Requisitos

Instale Android Platform Tools:

Android Platform Tools

Adicione o ADB ao PATH ou coloque o .bat na pasta platform-tools.

Executar

Clique duas vezes:

debloat.bat

ou:

debloat.bat
Uso no Android (Sem PC)

Apps recomendados:

Shizuku
aShell
Termux
Configuração
Ative:
Depuração sem fio
Depuração USB
Inicie o Shizuku
Abra o aShell
Executar Script
sh /sdcard/debloat.sh

ou:

chmod +x /sdcard/debloat.sh
/sdcard/debloat.sh
Restaurar Apps Removidos

Exemplo:

adb shell cmd package install-existing com.miui.player
AVISO

NÃO remova:

com.miui.home
com.android.systemui
com.android.settings
com.google.android.gms
com.google.android.gsf
com.lbe.security.miui
com.miui.securitycenter
com.miui.miwallpaper

Remover esses pacotes pode causar:

bootloop
launcher quebrado
tela preta
notificações quebradas
instabilidade
Aviso Legal

Use por sua conta e risco.

Os scripts modificam pacotes do sistema apenas para o usuário atual (--user 0) sem root, porém remover componentes essenciais ainda pode quebrar funcionalidades.

Sempre faça backup antes de usar o modo EXTREME.
