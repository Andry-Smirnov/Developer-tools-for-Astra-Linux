# [How do I create a 32-bit WINE prefix?](https://askubuntu.com/questions/177192/how-do-i-create-a-32-bit-wine-prefix)

How do I create a 32-bit Wine prefix on Ubuntu 12.04 64-bit?

- [64-bit](https://askubuntu.com/questions/tagged/64-bit "show questions tagged '64-bit'")
- [wine](https://askubuntu.com/questions/tagged/wine)
- [32-bit](https://askubuntu.com/questions/tagged/32-bit "show questions tagged '32-bit'")

## Answer 1

To create a 32-bit WINE prefix on a 64-bit Ubuntu system, you need to open a terminal and run the following command:

```console
WINEPREFIX="$HOME/prefix32" WINEARCH=win32 wine wineboot
```    

- Where `WINEPREFIX` is the directory for the prefix
- **This directory must not already exist or you will [get an error!](http://bugs.winehq.org/show_bug.cgi?id=29661)** Please do not manually create it in Nautilus or with _mkdir_./
- thx! I have been fighting with this for a week :(, the message could be more specific..
- You can use double quotes everywhere, no need for single quotes :)
  - When I run this command, Wine asks for an absolute path (so `/home/username/prefix32` rather than `~/prefix32`
- @shea edited the OP accordingly
  - Also, you can omit the quotes altogether.
    
## Answer 2

This Is how I did it. The above answer - for me - did not work.

First I deleted the Wine folder with this command:

```console
rm -r ~/.wine
```    

If it tells you that directory is not empty just add the `-f` (force) flag. _Note that this will remove any windows applications installed in this prefix!_

Your command should look something like this:

```console
rm -r -f ~/.wine
```    

And then create a 32 bit prefix with this command:

```console
WINEARCH=win32 WINEPREFIX=~/.wine wine wineboot
```    

- First, you shouldn't have to write sudo in the front. Also, this will delete the entire virtual windows drive.

- That's not correct answer, because u're deleting 64bit version. You just have to create another PREFIX in order to have them both.
    
- Where you wrote "write sudo in front", the correct solution is to add `-f`, as in `rm -rf ~/.wine`. Adding sudo won't do anything. Also, `WINEPREFIX=~/.wine` is redundant, since that's the default location.

- Why not just create a `.wine32` directory instead?
    
- @Levan how on earth did it not work for you? Your command deletes the entire existing wine directory, when all you needed to do was create a separate wine32 prefix - no need to delete an existing one.
    
## Answer 3

Just creating a `wine32` prefix/directory (without `wine64` prefix/directory) will not work. As was suggested above (but not fully written out) - and if you want to avoid the need to use winecfg (which is annyoing in automation - you need to somehow close it), here is the full solution: create a `wine64`, then a `wine32` directory. If you use `winetricks` to check it (it gives a warning for `wine64` directories), it will report both correctly (`wine64` gives the warning, since it's 64, wine32 does not, since it's 32.). The solution;

    rm -Rf ./wine   # carefull, this deletes your entire wine config (fine if you want to start afresh)
    
    WINEPREFIX=~/.wine wineboot
    

...wait...

    WINEPREFIX=~/.wine32 WINEARCH=win32 wineboot
    

After this, you can:

    WINEPREFIX=~/.wine32 WINEARCH=win32 your_32bit_executable.exe
    
    WINEPREFIX=~/.wine WINEARCH=win64 your_64bit_executable.exe
    
- It looks like on my Ubuntu Trusty 14.04 I did not need to delete the amd64 (win64) `./wine` folder. I had 3 programs previously installed and they kept working. I did only create a specific win32 directory `./wine32` Next I installed .NET 4.0 with the command `$ WINEPREFIX=~/.wine32 winetricks dotnet40` and it worked flawlessly.
    
## Answer 4

I was running into the same issue.

Type `WINEARCH=win32 WINEPREFIX=~/.wine winecfg`

It should start to download the drivers necessary. I believe this issue is due to a problem occurring during the normal download. For me it my internet dropped as it was originally downloading the drivers.

- You do never need to run wine as root!

## Answer 5

Test if you already have multiarch enabled:

`dpkg --print-foreign-architectures | grep -q i386 && sudo dpkg --add-architecture i386`

Then install wine32:

`sudo apt-get update && sudo apt-get install wine32`

And finally, don't delete your 64-bit wine install. just rename it to .wine64 then create a new .wine folder for your 32-bit apps:

`mv ~/.wine ~/.wine64 && WINEARCH=win32 wineboot`

## Answer 6

After erasing .wine32, installing the .NET 4.0 with the command $ WINEPREFIX=~/.wine32 winetricks dotnet40, worked for me.

## Answer 7

handy shell `.rc` snippet

```snippet
alias wine32='WINEARCH=win32 WINEPREFIX=~/.win32 wine'
alias wine64='WINEARCH=win64 WINEPREFIX=~/.win64 wine'
win32() {
    export WINEARCH=win32
    export WINEPREFIX=~/.win32
}
win64() {
    export WINEARCH=win64
    export WINEPREFIX=~/.win64
}
```
