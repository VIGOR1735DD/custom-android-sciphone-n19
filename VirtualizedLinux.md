# Introduction #

As many people have come to know, compiling Android from scratch is a task that can only be done on a Unix based os (be it Linux or Mac OS X). That leaves every Windows user out of the game when it comes to contributing to this project. However, there is the possibility to virtualize a whole computer under your Windows operating system, so you can contribute to the effort we're doing here.

This guide is a work in progress, we're no experts on any of the software mentioned here. Please, ask said software's authors about how to use them.

# Hardware/Software requirements #

The recommended requirements are:
  * Quad core CPU @ 3.7 Ghz
  * 4 Gb Ram
  * ~30 Gb Hard Disk
  * Windows XP or better
  * Patience

As for the software we're going to need:
  * A CD/DVD/ISO of your favorite Linux distribution (i, johnvillar, recommend [Gentoo](http://www.gentoo.org/) if you're a hardcore Linux user, or [Ubuntu Server Edition](http://www.ubuntu.com/products/whatIsubuntu/serveredition) if you prefer to get up and running quick).
  * [VirtualBox](http://www.virtualbox.org/) for virtualizing another computer (this software can be replaced by any other virtualization software like VMWare, or even a real computer).
  * [Xming server](http://sourceforge.net/projects/xming/) to blend your Linux desktop with your Windows desktop.
  * [Putty](http://www.chiark.greenend.org.uk/~sgtatham/putty/download.html), Plink and Puttygen, to connect via SSH to your Linux box.
  * [WinSCP](http://winscp.net/) to copy contents on a Windows explorer fashion.
  * More patience... :-)

# Details #

This guide won't give you any specifics (for now). In fact, if you're a seasoned Linux/Windows user, with the previous software list you can figure out pretty much everything we're going to do.

It boils down to:
  * Installing VirtualBox.
  * Configuring a Virtual Machine to boot with the Linux ISO you downloaded.
  * Installing Linux without graphical interface.
  * Installing the development packages (eclipse, repo, armv4t toolchain, openssh server) on your linux box.
  * Configuring OpenSSH to use Private/Public key-pairs for your user and root, importing them with PuttyGen.
  * Creating a session on Windows via Putty with the private key you generated on your linux box. In this step you must configure Putty to redirect your X windows to your Windows Box.
  * Installing XMing and running it without the root window.
  * Adding some shortcuts to your desktop to run linux programs via plink, so they spawn on your Windows X Server.
  * Configuring WinSCP to use your private key to copy archives to and from your linux box.

(In the next days i'll update this page with more specifics).