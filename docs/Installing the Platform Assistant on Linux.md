# [Installing the Platform Assistant on Linux - RAD Studio](https://docwiki.embarcadero.com/RADStudio/Sydney/en/Installing_the_Platform_Assistant_on_Linux)

From RAD Studio

_Go Up to [PAServer, the Platform Assistant Server Application](https://docwiki.embarcadero.com/RADStudio/Sydney/en/PAServer,_the_Platform_Assistant_Server_Application "PAServer, the Platform Assistant Server Application")_

  
You need to install the **[Platform Assistant](https://docwiki.embarcadero.com/RADStudio/Sydney/en/PAServer,_the_Platform_Assistant_Server_Application "PAServer, the Platform Assistant Server Application")** on Linux to build and deploy Linux applications. PAServer enables you to use the [Deployment Manager](https://docwiki.embarcadero.com/RADStudio/Sydney/en/Deployment_Manager "Deployment Manager"), import the Linux SDK, and perform remote debugging on a Linux system.

The installer for the **Linux** Platform is `LinuxPAServer21.0.tar.gz`, and it is located in the `PAServer` folder inside the RAD Studio installation directory:

`C:\Program Files (x86)\Embarcadero\Studio\21.0\PAServer\LinuxPAServer21.0.tar.gz`

Alternatively, you can download the `PAServer` installer from the internet:

- RAD Studio Sydney (10.4):
    - [http://altd.embarcadero.com/releases/studio/21.0/PAServer/LinuxPAServer21.0.tar.gz](http://altd.embarcadero.com/releases/studio/21.0/PAServer/LinuxPAServer21.0.tar.gz)
        
        **[Send the URL via e-mail.](mailto:?Subject=PAServer%20Sydney%20installer&body=http://altd.embarcadero.com/releases/studio/21.0/PAServer/LinuxPAServer21.0.tar.gz)**
        

- RAD Studio Sydney (10.4.1):
    - [https://altd.embarcadero.com/releases/studio/21.0/1/PAServer/LinuxPAServer21.0.tar.gz](https://altd.embarcadero.com/releases/studio/21.0/1/PAServer/LinuxPAServer21.0.tar.gz)
        
        **[Send the URL via e-mail.](mailto:?Subject=PAServer%20Sydney%20installer&body=https://altd.embarcadero.com/releases/studio/21.0/1/PAServer/LinuxPAServer21.0.tar.gz)**
        

## To install the Platform Assistant on Linux

1. Copy the `LinuxPAServer21.0.tar.gz` file from the location above to a local directory on your Linux machine.
2. Open the Terminal.
3. In the Terminal, go to the local directory where the `LinuxPAServer21.0.tar.gz` file is located.
4. Unpack the `LinuxPAServer21.0.tar.gz` file with the following command: `tar –xvf LinuxPAServer21.0.tar.gz`.
5. The **PAServer-21.0** subdirectory is created. Here you can find all Platform Assistant binaries for the **Linux** platform.

The Platform Assistant is installed and you can [run the Platform Assistant](https://docwiki.embarcadero.com/RADStudio/Sydney/en/Running_the_Platform_Assistant_on_Linux "Running the Platform Assistant on Linux").

## To uninstall the Platform Assistant on Linux

**Note:** You do not need to uninstall a previous version of the **[Platform Assistant](https://docwiki.embarcadero.com/RADStudio/Sydney/en/PAServer,_the_Platform_Assistant_Server_Application "PAServer, the Platform Assistant Server Application")** to install a newer version. Different versions of the **[Platform Assistant](https://docwiki.embarcadero.com/RADStudio/Sydney/en/PAServer,_the_Platform_Assistant_Server_Application "PAServer, the Platform Assistant Server Application")** can coexist and run on your system as long as you use a [different port](https://docwiki.embarcadero.com/RADStudio/Sydney/en/Setting_Options_for_the_Platform_Assistant#Configuring_the_Port_Number_on_the_Command_Line "Setting Options for the Platform Assistant") on each running instance.

To uninstall the **[Platform Assistant](https://docwiki.embarcadero.com/RADStudio/Sydney/en/PAServer,_the_Platform_Assistant_Server_Application "PAServer, the Platform Assistant Server Application")**, delete the **PAServer-21.0** directory where you unpacked the `.tar.gz` file.

## See Also

- [Running the Platform Assistant on Linux](https://docwiki.embarcadero.com/RADStudio/Sydney/en/Running_the_Platform_Assistant_on_Linux "Running the Platform Assistant on Linux")
- [Running the Platform Assistant on Windows](https://docwiki.embarcadero.com/RADStudio/Sydney/en/Running_the_Platform_Assistant_on_Windows "Running the Platform Assistant on Windows")
- [Setting Options for the Platform Assistant](https://docwiki.embarcadero.com/RADStudio/Sydney/en/Setting_Options_for_the_Platform_Assistant "Setting Options for the Platform Assistant")

- [Installing the Platform Assistant on a Mac](https://docwiki.embarcadero.com/RADStudio/Sydney/en/Installing_the_Platform_Assistant_on_a_Mac "Installing the Platform Assistant on a Mac")

- [Debugging Multi-Device Applications](https://docwiki.embarcadero.com/RADStudio/Sydney/en/Debugging_Multi-Device_Applications "Debugging Multi-Device Applications")

- [Platform Assistant Server Errors Index](https://docwiki.embarcadero.com/RADStudio/Sydney/en/Platform_Assistant_Server_Errors_Index "Platform Assistant Server Errors Index")