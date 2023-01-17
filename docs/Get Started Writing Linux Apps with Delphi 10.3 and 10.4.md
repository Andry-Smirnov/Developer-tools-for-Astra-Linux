# [Get started writing Linux apps with Delphi 10.3 and 10.4 – Lars Fosdal](https://larsfosdal.blog/2020/08/26/get-started-writing-linux-apps-with-delphi-10-3-3-rio/)

[Lars Fosdal](https://larsfosdal.blog/author/larsfosdalgmail/ "Posts by Lars Fosdal") [Uncategorized](https://larsfosdal.blog/category/uncategorized/) August 26, 2020August 26, 2020 3 Minutes

Firstly, you need an Ubuntu installation. If you don’t have a physical machine with Ubuntu, you may chose a suitable Virtual Machine, such as VMWare, VirtualBox or Hyper-Visor.

I chose Hyper-V since it is included with Windows 10.

To enable *Hyper-V* on your Windows installation, open the `Windows Features` tool and check *Hyper-V*. If you alse use *Visual Studio*, you may want to add `Windows Hypervisor Platform` as well.

A word of advice with regards to storage: Place your VMs on an SSD disk.  
  
Reboot your Windows installation if so instructed.  
  
When ready, start *Hyper-V Manage*r, and chose `Actions` > `Quick Create…` > `Ubuntu 18.04.3 LTS` 

![](https://larsfosdalhome.files.wordpress.com/2020/08/image-5.png?w=820)

  
A 1.6Gb download will pursue, so the time depends on your bandwidth.  
  
Before firing up the VM, tweak the new VM config to f.x. 4 CPUs and 8192Mb RAM to give the VM some juice, then power up and go through the base installation.  
  
To manually add the build tools for Ubuntu, open a terminal, and run

sudo apt update
sudo apt install build-essential

The first ensures your VM pull all relevant updates, and the second installs `gcc` and the suite of build tools for Linux.

Next, download the appropriate PAServer for Rio:  
[http://docwiki.embarcadero.com/RADStudio/Rio/en/Installing\_the\_Platform\_Assistant\_on_Linux](http://docwiki.embarcadero.com/RADStudio/Rio/en/Installing_the_Platform_Assistant_on_Linux)  
or Sydney:  
[http://docwiki.embarcadero.com/RADStudio/Sydney/en/Installing\_the\_Platform\_Assistant\_on_Linux](http://docwiki.embarcadero.com/RADStudio/Sydney/en/Installing_the_Platform_Assistant_on_Linux)  
  
Note that you can install *PAServers* for both *Rio* and *Sydney*. Just remember to edit the paserver.config and change the default port number for one of them.  
  
Install it to a folder of your liking, as per the instructions in the link and start `./paserver` and enter the (optional) password you want the *PAServer* to use.

![](https://larsfosdalhome.files.wordpress.com/2020/08/2020-08-26-09_06_53-ubuntu-18.04.3-lts-on-p1l540167314652-virtual-machine-connection.png?w=747)

To find the IP address of your local Ubuntu VM, open a terminal and run

```console
ip addr show
```

![](https://larsfosdalhome.files.wordpress.com/2020/08/2020-08-26-09_08_46-ubuntu-18.04.3-lts-on-p1l540167314652-virtual-machine-connection.png?w=746)

The IP address we are looking for is in address 2 – in this case: 172.17.202.68

When you first try to compile a Linux app, start with something simple like a console application.

```pascal
program LinuxTest;
 
{$APPTYPE CONSOLE}
 
{$R *.res}
 
uses
  System.SysUtils;
 
begin
  try
    try
      Writeln('Hello whirled');
    except
      on E: Exception do
        Writeln(E.ClassName, ': ', E.Message);
    end;
  finally
    Write('Press Enter: ');
    Readln;
  end;
end.
```
  
On the first ever compile, the IDE will prompt you for a connection profile.

![](https://larsfosdalhome.files.wordpress.com/2020/08/image.png?w=1024)

Since we didn’t change the configuration, all we need is to fill in the IP address for the host name.  
If you entered a password when starting the PAServer, that password is needed here. Remember to click on Test Connection to verify that the PAServer is reachable.

On the first connection, the IDE will download the SDK through the PAServer. This takes a little while and the progress is presented on a desktop-always-on-top progress dialog which is somewhat annoying if you want to do something else while waiting.

After it is complete, you will have a collection of files that allows the linker to find the right link targets for your Ubuntu host.

![](https://larsfosdalhome.files.wordpress.com/2020/08/image-1.png?w=764)

At this point, your simple console app should be ready to run. It will compile, link, and then upload it to the Ubuntu VM and start it through the PAServer.

By default, it seems that we won’t get to see the actual console where the app runs when run through PAServer, so if you want to run it manually – locate the uploaded file on your installation.  
It will typically reside under a long path that reflects the name of your connection and your Windows username. The PAServer folder will be in the same folder where you installed the PAServer-20.0 (if you are using 10.3.3).

![](https://larsfosdalhome.files.wordpress.com/2020/08/image-2.png?w=750)

Under scratch-dir, you find the folders for your winuser-connection combos.

![](https://larsfosdalhome.files.wordpress.com/2020/08/image-3.png?w=833)

Under there again, you will find a folder that matches your Delphi project name, and in that folder your executable which you can start with “./exename”.

![](https://larsfosdalhome.files.wordpress.com/2020/08/image-4.png?w=837)

At this point, you should be able to do the same.

The next step is to download *FMX for Linux* via *GetIt*.  
Then you can get started on something beautiful like this 
`File` > `New` > `Multi-device application` – change target to Linux 64-bit and run!

![](https://larsfosdalhome.files.wordpress.com/2020/08/image-6.png?w=1024)

Please note that there may be pitfalls with *FMX for Linux*.  
[http://docwiki.embarcadero.com/RADStudio/Sydney/en/FireMonkey\_for\_Linux](http://docwiki.embarcadero.com/RADStudio/Sydney/en/FireMonkey_for_Linux)

Lars Fosdal, August 26th, 2020

Postscript:  
I have also done this on *VirtualBox*, but when comparing Hyper-V and VirtualBox it is clear that *Hyper-V* is much better at managing HW resources – preventing the constant buzz of the CPU cooling fan which was quite annoying when using VirtualBox.
