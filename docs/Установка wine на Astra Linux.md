# [Установка wine на Astra Linux](https://wiki.astralinux.ru/pages/viewpage.action?pageId=27362502)

- Создал(а) [Илья Голиков](https://wiki.astralinux.ru/display/~igolikov), редактировал(а) [Александр Левдонский](https://wiki.astralinux.ru/display/~alevdonsky) [28.12.22](https://wiki.astralinux.ru/pages/diffpagesbyversion.action?pageId=27362502&selectedPageVersions=65&selectedPageVersions=66 "Показать изменения")

![](https://wiki.astralinux.ru/download/thumbnails/27362502/wine.jpeg?version=1&modificationDate=1535734372838&api=v2)

## Аннотация

В статье описана установка *wine* на компьютеры под управлением `Astra Linux Special Edition`.

**Wine** (/waɪn/ — «уа́йн» рус. Вино) — свободное программное обеспечение, позволяющее пользователям UNIX-подобных операционных систем, например, GNU/Linux, Apple macOS и других UNIX-подобных с поддержкой архитектур CPU x86, AMD64 (и других архитектур CPU, при наличии совместимости с ними запускаемых приложений) исполнять 16-, 32- и 64- битные приложения, в том числе игры, созданные исключительно для Microsoft Windows, без наличия при этом установленной Microsoft Windows.

Официальный сайт Wine: [https://www.winehq.org/](https://www.winehq.org/)

Данная статья применима к:

- Astra Linux Special Edition РУСБ.10015-01 и РУСБ.10015-10 (очередное обновление 1.7)
- Astra Linux Special Edition РУСБ.10015-01 (очередное обновление 1.6)
- Astra Linux Common Edition 2.12

## Установка *Wine* на Astra Linux Special Edition

### Установка *Wine* из расширенного репозитория `Astra Linux Special Edition 1.7`

>Пакет *wine*, доступный в расширенном репозитории `Astra Linux Special Edition 1.7.3`, имеет следующие особенности:
>
>- Поддерживается только 64-разрядная архитектура;
>- В состав пакета входит также пакет `winetricks`, который устанавливается при установке *wine*.
>
>Отдельный пакет `winetricks`, входящий в состав расширенного репозитория 1.7.3, несовместим с пакетом wine и не рекомендуется к установке.

Для установки *Wine* на `Astra Linux Special Edition 1.7` выполнить следующие действия:

1. Подключить базовый и расширенный репозитории пакетов Astra Linux Special Edition 1.7 (см. [Подключение репозиториев с пакетами в ОС Astra Linux и установка пакетов](https://wiki.astralinux.ru/pages/viewpage.action?pageId=3276859) и [Репозитории Astra Linux Special Edition x.7: структура, особенности подключения и использования](https://wiki.astralinux.ru/pages/viewpage.action?pageId=149062354));

2. Установить пакеты из репозиториев:

    ```console
    sudo apt update
    sudo apt install wine ia32-libs
    ```

## Установка *Wine* версии 7.13 в `Astra Linux Special Edition`

> *Wine 7.13* устанавливается в каталог `/opt/wine-7.13`
> 
> *Wine staging 7.13* устанавливается в каталог `/opt/wine-staging-7.13`
> 
> Эти каталоги не перечисляются в переменной среды `PATH`, и запускать *Wine* необходимо с указанием полного пути:
>
> ```console
> # wine 7.13
> /opt/wine-7.13/bin/wine
>
> # wine staging 7.13
> /opt/wine-staging-7.13/wine
> ```
>
> При использовании единственной версии *Wine* каталог можно добавить в переменную `PATH` самостоятельно.

> Версия *Wine staging* - это экспериментальная ветка. Содержит набор нестабильных патчей и функциональных возможностей. Не рекомендуется для использования без конкретных целей.

Далее предполагается, что все загруженные файлы сохраняются в подкаталог "*Загрузки*" домашнего каталога текущего пользователя.

1. При работе в `Astra Linux Special Edition 1.7`:
   
   a. Подключить базовый и расширенный репозитории пакетов `Astra Linux Special Edition 1.7` (см. [Подключение репозиториев с пакетами в ОС Astra Linux и установка пакетов](https://wiki.astralinux.ru/pages/viewpage.action?pageId=3276859) и [Репозитории Astra Linux Special Edition x.7: структура, особенности подключения и использования](https://wiki.astralinux.ru/pages/viewpage.action?pageId=149062354));

   b. Загрузить с помощью web-браузера файл с пакетом *Wine* для `Astra Linux Special Edition 1.7`:
      - *Wine 7.13*: [wine_7.13-0-astra-se17_amd64.deb](https://nas01.astralinux.ru/sharing/L3oKL5kse);
      - *Wine staging 7.13*: [wine-staging_7.13-0-astra-se17_amd64.deb](https://nas01.astralinux.ru/sharing/9una8FJeP);

    c. Для оперативного обновления `AstraLinux SE 1.7.1` загрузить и установить специальную версию пакета `libc6-i386.` Ссылка для загрузки: [ia32-libs](https://nas01.astralinux.ru/sharing/BkU03Wwbm). Команды для установки:

    ```console
    sudo apt install libc6-i386
    sudo dpkg -i ./Загрузки/ia32-libs_20220330+1.7se_amd64.deb
    ```

    Для других оперативных обновлений пакет `ia32-libs` установить из репозитория.

    ```console
    sudo apt install ia32-libs
    ```

2. При работе в `Astra Linux Special Edition 1.6` и `Astra Linux Common Edition`:

    a. Загрузить с помощью web-браузера файл с пакетом Wine для Astra Linux Special Edition 1.6 и Astra Linux Common Edition: 
      - *Wine 7.13*: [wine_7.13-0-astra-se16_ce212_amd64.deb](https://nas01.astralinux.ru/sharing/f1GgWAyMD);
      - *Wine staging 7.13*: [wine-staging_7.13-0-astra-se16_ce212_amd64.deb](https://nas01.astralinux.ru/sharing/Yidcj99Jk);
    
    b. Для оперативного обновления `Astra Linux Special Edition 1.6.9` загрузить и установить специальную версию пакета `libc6-i386.` Ссылка для загрузки: [ia32-libs](https://nas01.astralinux.ru/sharing/FGUmT8oox). Команда для установки:

    ```console
    sudo apt install libc6-i386
    sudo dpkg -i ./Загрузки/ia32-libs_*_amd64.deb
    ```

    Для других оперативных обновлений пакет `ia32-libs` установить из репозитория.

    ```console
    sudo apt install ia32-libs
    ```

3. Открыть терминал, используя горячую клавишу `Alt` + `T`;
 
5. Установить пакет *Wine* из загруженного файла и пакеты, необходимые для работы *Wine*:

    a. `Astra Linux Special Edition 1.7`:

    ```console
    # wine 7.13
    sudo dpkg -i ./Загрузки/wine_7.13-0-astra-se17_amd64.deb

    # wine staging 7.13
    sudo dpkg -i ./Загрузки/wine-staging_7.13-0-astra-se17_amd64.deb
    ```

    b. `Astra Linux Special Edition 1.6`:

     - Загрузить с помощью web-браузера пакеты: [cabextract](https://nas01.astralinux.ru/sharing/1DMFUmUe9) и [libmspack0](https://nas01.astralinux.ru/sharing/dG9cFLUpN);

     - Установить загруженные пакеты. Дополнительно установить пакет `ca-certificates` и `zenity`:

     ```console
     # wine 7.13
     sudo apt install ./Загрузки/wine_7.13-0-astra-se16_ce212_amd64.deb ./libmspack0_*_amd64.deb ./cabextract_*_amd64.deb ca-certificates zenity

     # wine staging 7.13
     sudo apt install ./Загрузки/wine-staging_7.13-0-astra-se16_ce212_amd64.deb ./libmspack0_*_amd64.deb ./cabextract_*_amd64.deb ca-certificates zenity
     ```

    c. В `Astra Linux Common Edition` пакеты `libmspack0`, `cabextract`, `ca-certificates`, `zenity` и `ia32-libs` входят в состав репозитория, специально загружать их не требуется, и установить их можно командой:

    ```console
    # wine 7.13
    sudo apt -y install ./Загрузки/wine_7.13-0-astra-se16_ce212_amd64.deb cabextract libmspack0 ia32-libs ca-certificates zenity

    # wine staging 7.13
    sudo apt -y install ./Загрузки/wine-staging_7.13-0-astra-se16_ce212_amd64.deb cabextract libmspack0 ia32-libs ca-certificates zenity
    ```

## Установка *Winetricks*

Предполагается, что все необходимые пакеты установлены на предыдущем шаге. Для установки *Winetricks*:

1. Загрузить *winetricks*:

    ```console
    wget [https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks](https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks)
    ```

2. Установить право выполнения на файл *winetricks*:

    ```console
    chmod +x winetricks
    ```

3. Переместить файл *winetricks* в каталог исполнимых файлов:

    ```console
    sudo mv winetricks /usr/bin
    ```

4. Для совместной работы *Wine* с *winetricks* установить переменную окружения `WINE` в зависимости от используемой версии *Wine*:

    ```console
    # wine 7.13
    export WINE=/opt/wine-7.13/bin/wine

    # wine staging 7.13
    export WINE=/opt/wine-staging-7.13/bin/wine
    ```

## Установка дополнительных библиотек

Для установки дополнительных библиотек в префикс существует удобный сценарий *winetricks*.

Установить пакет `zenity`:

```console
sudo apt install zenity
```

Запустить `winetricks` командой:

```console
winetricks
```

В появившемся окне:

- Выберите путь *Wine*

- Нажать *ОК*

- Далее *Установить библиотеку DLL или компонент Windows*

![](https://wiki.astralinux.ru/download/attachments/27362502/wine2.png?version=1&modificationDate=1535735755550&api=v2)

- После выбрать необходимый компонент из списка и нажать *ОК*

![](https://wiki.astralinux.ru/download/attachments/27362502/wine3.png?version=1&modificationDate=1535735820785&api=v2)

Требуемый компонент будет загружен и установлен в текущий профиль.

### Краткое описание пунктов меню `winetricks` для текущего профиля

Установить библиотеку DLL или компонент Windows | Установка дополнительных библиотек и компонентов Windows
----------------------------------------------- | --------------------------------------------------------
Установить шрифт | Установка шрифтов от Microsoft
Поменять настройки | Тонкая настройка текущего профиля
Запустить `winecfg` | Утилита настроек Wine
Запустить `regedit` | Редактор реестра Wine
Запустить `taskmgr` | Диспетчер задач Wine
Запустить uninstaller | Установка или удаление программ (можно установить приложение в формате `.msi`)
Запустить графический терминал | `cmd.exe`
Проводник файлов | Проводник файлов `Explorer`
Удалить ВСЕ ПРИЛОЖЕНИЯ И ДАННЫЕ В ЭТОМ `WINEPREFIX` | Стирает выбранный префикс со всеми настройками и установленными приложениями

## Установка компонент *Mono* и *Gecko Wine* для всех пользователей

Данный раздел применим к:

- Astra Linux Special Edition РУСБ.10015-01 (очередное обновление 1.7) 
- Astra Linux Special Edition РУСБ.10015-01 (очередное обновление 1.6) 
- Astra Linux Common Edition

> Не рекомендуется устанавливать *Mono* для разработки, если разрабатываемые приложения используют *dotnet*.

После установки *Wine* при создании каждого нового пользовательского префикса возникает диалог с предложением доустановить компоненты *Mono* и *Gecko*. При отсутствии доступа в Интернет установка невозможна. При наличии доступа в Интернет компоненты загружаются и устанавливаются в пользовательский префикс, при этом для каждого пользователя/префикса создается отдельная копия компонентов, т.е. расходуется дисковое пространство. Для того, чтобы установить компоненты *Mono* и *Gecko* в *Wine* для всех пользователей и префиксов одновременно:

1. Загрузить пакеты с использованием браузера. По умолчанию загрузка выполняется в подкаталог "Загрузки" домашнего каталога:

    > Полный список доступных версий пакетов можно получить по ссылкам:
    > - [https://dl.winehq.org/wine/wine-gecko](https://dl.winehq.org/wine/wine-gecko)
    > - [https://dl.winehq.org/wine/wine-mono](https://dl.winehq.org/wine/wine-mono)

    Актуальные версии доступны для загрузки по ссылкам:

    - Проверенные с *Wine* версии 7.13:

         - [wine-gecko-2.47.3-x86_64](https://dl.winehq.org/wine/wine-gecko/2.47.3/wine-gecko-2.47.3-x86_64.tar.xz)
         - [wine-gecko-2.47.3-x86](https://dl.winehq.org/wine/wine-gecko/2.47.3/wine-gecko-2.47.3-x86.tar.xz)
         - [wine-mono-7.3.0-x86](https://dl.winehq.org/wine/wine-mono/7.3.0/wine-mono-7.3.0-x86.tar.xz)

2. Распаковать пакеты в пространство /usr/share/wine. Для распаковки пакетов поочередно выполнить команды:

    ```console
    sudo mkdir -p /usr/share/wine/gecko /usr/share/wine/mono
    cd ~/Загрузки
    sudo tar -xvf wine-gecko-*-x86.tar.xz -C /usr/share/wine/gecko
    sudo tar -xvf wine-gecko-*-x86_64.tar.xz -C /usr/share/wine/gecko
    sudo tar -xvf wine-mono-*.tar.xz -C /usr/share/wine/mono
    ```

3. Для проверки корректности установки (при условии, что *Wine* был установлен ранее):
  
    - Удалить пользовательский префикс *Wine*, созданный при установке:

        ```console
        rm -rf ~/.wine/
        ```

    - Пересоздать префикс *Wine*, для чего выполнить команду `wineboot`:

        ```console
        /opt/wine-7.13/bin/wineboot
        ```

        При пересоздании префикса *Wine* не должен выдавать запрос на установку *Mono* и *Gecko*;

    - Запустить браузер *Wine*. При наличии доступа в Интернет должна корректно открыться страница [https://www.winehq.org](https://www.winehq.org):

        ```console
        $WINE iexplore
        ```
