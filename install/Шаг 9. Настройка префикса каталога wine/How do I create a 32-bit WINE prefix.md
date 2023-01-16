# [64 bit - How do I create a 32-bit WINE prefix? - Ask Ubuntu](https://askubuntu.com/questions/177192/how-do-i-create-a-32-bit-wine-prefix)

# [How do I create a 32-bit WINE prefix?](https://askubuntu.com/questions/177192/how-do-i-create-a-32-bit-wine-prefix)

Asked 10 years, 4 months ago

Modified [11 months ago](https://askubuntu.com/questions/177192/how-do-i-create-a-32-bit-wine-prefix?lastactivity "2022-01-29 17:32:29Z")

Viewed 533k times

This question shows research effort; it is useful and clear

163

This question does not show any research effort; it is unclear or not useful

Save this question.

[](https://askubuntu.com/posts/177192/timeline)

Show activity on this post.

How do I create a 32-bit Wine prefix on Ubuntu 12.04 64-bit?

- [64-bit](https://askubuntu.com/questions/tagged/64-bit "show questions tagged '64-bit'")
- [wine](https://askubuntu.com/questions/tagged/wine)
- [32-bit](https://askubuntu.com/questions/tagged/32-bit "show questions tagged '32-bit'")

[Share](https://askubuntu.com/q/177192 "Short permalink to this question")

Share a link to this question

Copy link[CC BY-SA 3.0](https://creativecommons.org/licenses/by-sa/3.0/ "The current license for this post: CC BY-SA 3.0")

[Improve this question](https://askubuntu.com/posts/177192/edit)

Follow

Follow this question to receive notifications

[edited Aug 18, 2012 at 9:37](https://askubuntu.com/posts/177192/revisions "show all edits to this post")

[

![ish's user avatar](https://www.gravatar.com/avatar/2086f63f0c1ac9fe50190849114d8394?s=64&d=identicon&r=PG)

](https://askubuntu.com/users/58612/ish)

[ish](https://askubuntu.com/users/58612/ish)

137k3636 gold badges302302 silver badges312312 bronze badges

asked Aug 17, 2012 at 20:56

[

![Levan's user avatar](https://www.gravatar.com/avatar/0a1b176ffd47d54daca7d194224ac889?s=64&d=identicon&r=PG)

](https://askubuntu.com/users/42591/levan)

[Levan](https://askubuntu.com/users/42591/levan)Levan

10.5k2222 gold badges6666 silver badges9292 bronze badges

0

[Add a comment](https://askubuntu.com/questions/177192/how-do-i-create-a-32-bit-wine-prefix# "Use comments to ask for more information or suggest improvements. Avoid answering questions in comments.") | [](https://askubuntu.com/questions/177192/how-do-i-create-a-32-bit-wine-prefix# "Expand to show all comments on this post")

## 7 Answers 7

Sorted by: [Reset to default](https://askubuntu.com/questions/177192/how-do-i-create-a-32-bit-wine-prefix?answertab=scoredesc#tab-top)

This answer is useful

189

This answer is not useful

Save this answer.

Show activity on this post.

To create a 32-bit WINE prefix on a 64-bit Ubuntu system, you need to open a terminal and run the following command:

    WINEPREFIX="$HOME/prefix32" WINEARCH=win32 wine wineboot
    

- Where `WINEPREFIX` is the directory for the prefix
- **This directory must not already exist or you will [get an error!](http://bugs.winehq.org/show_bug.cgi?id=29661)** Please do not manually create it in Nautilus or with _mkdir_./

[Share](https://askubuntu.com/a/177349 "Short permalink to this answer")

Share a link to this answer

Copy link[CC BY-SA 3.0](https://creativecommons.org/licenses/by-sa/3.0/ "The current license for this post: CC BY-SA 3.0")

[Improve this answer](https://askubuntu.com/posts/177349/edit)

Follow

Follow this answer to receive notifications

[edited Mar 21, 2016 at 0:47](https://askubuntu.com/posts/177349/revisions "show all edits to this post")

[

![tokland's user avatar](https://i.stack.imgur.com/p2YIF.jpg?s=64&g=1)

](https://askubuntu.com/users/193388/tokland)

[tokland](https://askubuntu.com/users/193388/tokland)

10366 bronze badges

answered Aug 18, 2012 at 9:36

[

![ish's user avatar](https://www.gravatar.com/avatar/2086f63f0c1ac9fe50190849114d8394?s=64&d=identicon&r=PG)

](https://askubuntu.com/users/58612/ish)

[ish](https://askubuntu.com/users/58612/ish)ish

137k3636 gold badges302302 silver badges312312 bronze badges

8

- thx! I have been fighting with this for a week :(, the message could be more specific..
    
    – [Aquarius Power](https://askubuntu.com/users/46437/aquarius-power "3,801 reputation")
    
    [Apr 30, 2013 at 19:23](https://askubuntu.com/questions/177192/how-do-i-create-a-32-bit-wine-prefix#comment362788_177349)
    

- You can use double quotes everywhere, no need for single quotes :)
    
    – [Smile4ever](https://askubuntu.com/users/284836/smile4ever "1,071 reputation")
    
    [Jan 1, 2015 at 19:52](https://askubuntu.com/questions/177192/how-do-i-create-a-32-bit-wine-prefix#comment782236_177349)
    
- 2
    
    When I run this command, Wine asks for an absolute path (so `/home/username/prefix32` rather than `~/prefix32`
    
    – [shea](https://askubuntu.com/users/191875/shea "237 reputation")
    
    [Mar 16, 2015 at 10:17](https://askubuntu.com/questions/177192/how-do-i-create-a-32-bit-wine-prefix#comment832176_177349)
    
- @shea edited the OP accordingly
    
    – [Shelvacu](https://askubuntu.com/users/133446/shelvacu "313 reputation")
    
    [Aug 9, 2015 at 22:51](https://askubuntu.com/questions/177192/how-do-i-create-a-32-bit-wine-prefix#comment949127_177349)
    
- 1
    
    Also, you can omit the quotes altogether.
    
    – [Smile4ever](https://askubuntu.com/users/284836/smile4ever "1,071 reputation")
    
    [Feb 28, 2016 at 9:39](https://askubuntu.com/questions/177192/how-do-i-create-a-32-bit-wine-prefix#comment1100298_177349)
    

[](https://askubuntu.com/questions/177192/how-do-i-create-a-32-bit-wine-prefix# "Use comments to ask for more information or suggest improvements. Avoid comments like “+1” or “thanks”.") | [Show **3** more comments](https://askubuntu.com/questions/177192/how-do-i-create-a-32-bit-wine-prefix# "Expand to show all comments on this post")

This answer is useful

55

This answer is not useful

Save this answer.

[](https://askubuntu.com/posts/257505/timeline)

Show activity on this post.

This Is how I did it. The above answer - for me - did not work.

First I deleted the Wine folder with this command:

    rm -r ~/.wine
    

If it tells you that directory is not empty just add the `-f` (force) flag. _Note that this will remove any windows applications installed in this prefix!_

Your command should look something like this:

    rm -r -f ~/.wine
    

And then create a 32 bit prefix with this command:

    WINEARCH=win32 WINEPREFIX=~/.wine wine wineboot
    

[Share](https://askubuntu.com/a/257505 "Short permalink to this answer")

Share a link to this answer

Copy link[CC BY-SA 3.0](https://creativecommons.org/licenses/by-sa/3.0/ "The current license for this post: CC BY-SA 3.0")

[Improve this answer](https://askubuntu.com/posts/257505/edit)

Follow

Follow this answer to receive notifications

[edited Nov 4, 2016 at 13:56](https://askubuntu.com/posts/257505/revisions "show all edits to this post")

[

![Cristiana Nicolae's user avatar](https://i.stack.imgur.com/4sx7g.jpg?s=64&g=1)

](https://askubuntu.com/users/146105/cristiana-nicolae)

[Cristiana Nicolae](https://askubuntu.com/users/146105/cristiana-nicolae)

4,45099 gold badges2929 silver badges4646 bronze badges

answered Feb 17, 2013 at 22:29

[

![Levan's user avatar](https://www.gravatar.com/avatar/0a1b176ffd47d54daca7d194224ac889?s=64&d=identicon&r=PG)

](https://askubuntu.com/users/42591/levan)

[Levan](https://askubuntu.com/users/42591/levan)Levan

10.5k2222 gold badges6666 silver badges9292 bronze badges

6

- 23
    
    First, you shouldn't have to write sudo in the front. Also, this will delete the entire virtual windows drive.
    
    – [Shelvacu](https://askubuntu.com/users/133446/shelvacu "313 reputation")
    
    [May 3, 2014 at 8:14](https://askubuntu.com/questions/177192/how-do-i-create-a-32-bit-wine-prefix#comment605481_257505)
    
- 15
    
    That's not correct answer, because u're deleting 64bit version. You just have to create another PREFIX in order to have them both.
    
    – [Alexander Kim](https://askubuntu.com/users/310264/alexander-kim "1,170 reputation")
    
    [Oct 16, 2014 at 10:40](https://askubuntu.com/questions/177192/how-do-i-create-a-32-bit-wine-prefix#comment735397_257505)
    
- 7
    
    Where you wrote "write sudo in front", the correct solution is to add `-f`, as in `rm -rf ~/.wine`. Adding sudo won't do anything. Also, `WINEPREFIX=~/.wine` is redundant, since that's the default location.
    
    – [Brendan Long](https://askubuntu.com/users/13833/brendan-long "411 reputation")
    
    [Nov 8, 2014 at 21:12](https://askubuntu.com/questions/177192/how-do-i-create-a-32-bit-wine-prefix#comment749913_257505)
    
- 4
    
    Why not just create a `.wine32` directory instead?
    
    – [Mateen Ulhaq](https://askubuntu.com/users/6514/mateen-ulhaq "123 reputation")
    
    [Jun 6, 2017 at 10:47](https://askubuntu.com/questions/177192/how-do-i-create-a-32-bit-wine-prefix#comment1457500_257505)
    

- @Levan how on earth did it not work for you? Your command deletes the entire existing wine directory, when all you needed to do was create a separate wine32 prefix - no need to delete an existing one.
    
    – [numbermaniac](https://askubuntu.com/users/680401/numbermaniac "103 reputation")
    
    [Jan 21, 2018 at 6:54](https://askubuntu.com/questions/177192/how-do-i-create-a-32-bit-wine-prefix#comment1612928_257505)
    

[](https://askubuntu.com/questions/177192/how-do-i-create-a-32-bit-wine-prefix# "Use comments to ask for more information or suggest improvements. Avoid comments like “+1” or “thanks”.") | [Show **1** more comment](https://askubuntu.com/questions/177192/how-do-i-create-a-32-bit-wine-prefix# "Expand to show all comments on this post")

This answer is useful

16

This answer is not useful

Save this answer.

[](https://askubuntu.com/posts/551297/timeline)

Show activity on this post.

Just creating a `wine32` prefix/directory (without `wine64` prefix/directory) will not work. As was suggested above (but not fully written out) - and if you want to avoid the need to use winecfg (which is annyoing in automation - you need to somehow close it), here is the full solution: create a `wine64`, then a `wine32` directory. If you use `winetricks` to check it (it gives a warning for `wine64` directories), it will report both correctly (`wine64` gives the warning, since it's 64, wine32 does not, since it's 32.). The solution;

    rm -Rf ./wine   # carefull, this deletes your entire wine config (fine if you want to start afresh)
    
    WINEPREFIX=~/.wine wineboot
    

...wait...

    WINEPREFIX=~/.wine32 WINEARCH=win32 wineboot
    

After this, you can:

    WINEPREFIX=~/.wine32 WINEARCH=win32 your_32bit_executable.exe
    
    WINEPREFIX=~/.wine WINEARCH=win64 your_64bit_executable.exe
    

[Share](https://askubuntu.com/a/551297 "Short permalink to this answer")

Share a link to this answer

Copy link[CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/ "The current license for this post: CC BY-SA 4.0")

[Improve this answer](https://askubuntu.com/posts/551297/edit)

Follow

Follow this answer to receive notifications

[edited Mar 21, 2020 at 11:18](https://askubuntu.com/posts/551297/revisions "show all edits to this post")

[

![Community's user avatar](https://www.gravatar.com/avatar/a007be5a61f6aa8f3e85ae2fc18dd66e?s=64&d=identicon&r=PG)

](https://askubuntu.com/users/-1/community)

[Community](https://askubuntu.com/users/-1/community)Bot

1

answered Nov 19, 2014 at 7:13

[

![Roel's user avatar](https://www.gravatar.com/avatar/d9cd90cda048899fcb5f8eddc0d64d88?s=64&d=identicon&r=PG)

](https://askubuntu.com/users/350093/roel)

[Roel](https://askubuntu.com/users/350093/roel)Roel

16111 silver badge22 bronze badges

1

- It looks like on my Ubuntu Trusty 14.04 I did not need to delete the amd64 (win64) `./wine` folder. I had 3 programs previously installed and they kept working. I did only create a specific win32 directory `./wine32` Next I installed .NET 4.0 with the command `$ WINEPREFIX=~/.wine32 winetricks dotnet40` and it worked flawlessly.
    
    – [Antonio](https://askubuntu.com/users/45534/antonio "1,461 reputation")
    
    [Oct 13, 2015 at 0:24](https://askubuntu.com/questions/177192/how-do-i-create-a-32-bit-wine-prefix#comment996513_551297)
    

[Add a comment](https://askubuntu.com/questions/177192/how-do-i-create-a-32-bit-wine-prefix# "Use comments to ask for more information or suggest improvements. Avoid comments like “+1” or “thanks”.") | [](https://askubuntu.com/questions/177192/how-do-i-create-a-32-bit-wine-prefix# "Expand to show all comments on this post")

This answer is useful

3

This answer is not useful

Save this answer.

[](https://askubuntu.com/posts/483924/timeline)

Show activity on this post.

I was running into the same issue.

Type `WINEARCH=win32 WINEPREFIX=~/.wine winecfg`

It should start to download the drivers necessary. I believe this issue is due to a problem occurring during the normal download. For me it my internet dropped as it was originally downloading the drivers.

[Share](https://askubuntu.com/a/483924 "Short permalink to this answer")

Share a link to this answer

Copy link[CC BY-SA 3.0](https://creativecommons.org/licenses/by-sa/3.0/ "The current license for this post: CC BY-SA 3.0")

[Improve this answer](https://askubuntu.com/posts/483924/edit)

Follow

Follow this answer to receive notifications

[edited Feb 3, 2016 at 19:01](https://askubuntu.com/posts/483924/revisions "show all edits to this post")

[

![Community's user avatar](https://www.gravatar.com/avatar/a007be5a61f6aa8f3e85ae2fc18dd66e?s=64&d=identicon&r=PG)

](https://askubuntu.com/users/-1/community)

[Community](https://askubuntu.com/users/-1/community)Bot

1

answered Jun 16, 2014 at 7:01

[

![evan's user avatar](https://www.gravatar.com/avatar/0ff6e17870767f3dbb83f687c4114fd3?s=64&d=identicon&r=PG)

](https://askubuntu.com/users/293971/evan)

[evan](https://askubuntu.com/users/293971/evan)evan

5111 bronze badge

1

- 12
    
    You do never need to run wine as root!
    
    – [user877329](https://askubuntu.com/users/58590/user877329 "353 reputation")
    
    [Aug 28, 2014 at 6:21](https://askubuntu.com/questions/177192/how-do-i-create-a-32-bit-wine-prefix#comment701681_483924)
    

[Add a comment](https://askubuntu.com/questions/177192/how-do-i-create-a-32-bit-wine-prefix# "Use comments to ask for more information or suggest improvements. Avoid comments like “+1” or “thanks”.") | [](https://askubuntu.com/questions/177192/how-do-i-create-a-32-bit-wine-prefix# "Expand to show all comments on this post")

This answer is useful

3

This answer is not useful

Save this answer.

[](https://askubuntu.com/posts/1147668/timeline)

Show activity on this post.

Test if you already have multiarch enabled:

`dpkg --print-foreign-architectures | grep -q i386 && sudo dpkg --add-architecture i386`

Then install wine32:

`sudo apt-get update && sudo apt-get install wine32`

And finally, don't delete your 64-bit wine install. just rename it to .wine64 then create a new .wine folder for your 32-bit apps:

`mv ~/.wine ~/.wine64 && WINEARCH=win32 wineboot`

[Share](https://askubuntu.com/a/1147668 "Short permalink to this answer")

Share a link to this answer

Copy link[CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/ "The current license for this post: CC BY-SA 4.0")

[Improve this answer](https://askubuntu.com/posts/1147668/edit)

Follow

Follow this answer to receive notifications

answered May 31, 2019 at 14:03

[

![Doyousketch2's user avatar](https://www.gravatar.com/avatar/eaff843906bfc18145f443251dcf68e5?s=64&d=identicon&r=PG)

](https://askubuntu.com/users/643914/doyousketch2)

[Doyousketch2](https://askubuntu.com/users/643914/doyousketch2)Doyousketch2

13144 bronze badges

[Add a comment](https://askubuntu.com/questions/177192/how-do-i-create-a-32-bit-wine-prefix# "Use comments to ask for more information or suggest improvements. Avoid comments like “+1” or “thanks”.") | [](https://askubuntu.com/questions/177192/how-do-i-create-a-32-bit-wine-prefix# "Expand to show all comments on this post")

This answer is useful

1

This answer is not useful

Save this answer.

[](https://askubuntu.com/posts/1149081/timeline)

Show activity on this post.

After erasing .wine32, installing the .NET 4.0 with the command $ WINEPREFIX=~/.wine32 winetricks dotnet40, worked for me.

kudos Antonio

[Share](https://askubuntu.com/a/1149081 "Short permalink to this answer")

Share a link to this answer

Copy link[CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/ "The current license for this post: CC BY-SA 4.0")

[Improve this answer](https://askubuntu.com/posts/1149081/edit)

Follow

Follow this answer to receive notifications

answered Jun 6, 2019 at 13:41

[

![SwissK's user avatar](https://www.gravatar.com/avatar/a37a5530d4cad0057f9a9df904bcf57e?s=64&d=identicon&r=PG&f=1)

](https://askubuntu.com/users/785537/swissk)

[SwissK](https://askubuntu.com/users/785537/swissk)SwissK

1133 bronze badges

[Add a comment](https://askubuntu.com/questions/177192/how-do-i-create-a-32-bit-wine-prefix# "Use comments to ask for more information or suggest improvements. Avoid comments like “+1” or “thanks”.") | [](https://askubuntu.com/questions/177192/how-do-i-create-a-32-bit-wine-prefix# "Expand to show all comments on this post")

This answer is useful

1

This answer is not useful

Save this answer.

[](https://askubuntu.com/posts/1389962/timeline)

Show activity on this post.

handy shell `.rc` snippet

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