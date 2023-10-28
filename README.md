<p align="center">
    <img src="assets/logo.png" width="300px"/>
</p>

# Archeron

**Arch Linux** installation instructions.  

> **Warning**
> **Disclaimer**: All text that follows is an expression of a personal view of the author. The statements must be taken rather critically. There is **no guarantee**, that this tutorial covers all possible issues that may occur during installation, and all responsibility for reader's actions (and for the results of these actions) is fully on the reader. If reader is unwilling to take the responsibility, it is better to not to follow this tutorial  

The following tutorial is designed as a beginner-friendly guide of installing *arch linux*. The purpose of the project therefore is to provide a clear and concise way of installing *arch linux*, because [official tutorial][official-guide] sucks in brevity, [community][official-forum] sucks in being helpful and other 3rd-party tutorials suck in being up-to-date, completeness and usefulness.  

**The scope** of this tutorial is to guide the reader through the entire installation process from having only current Linux OS installed on one's PC to a useful installation of *arch linux* **alongside the existing OS**. To keep the tutorial concise, there are certain axioms, that are taken at the beginning:

1. The reader is comfortable with using some basic tools related to linux and OS installation, such as **bootloader**, **GRUB**, **partition table**, and is ready to search meaning of unknown words on their own;
1. Currently, reader already has a linux-based OS and **GRUB bootloader** installed. In particular, the assumption is that the reader has **Ubuntu 22.04** as their main OS right now, and this OS is **the first one linux-based OS installed on current device**. The *linux-based* is important here, because reader may also have a *windows-based* OS, which was installed earlier. The important thing is that **the first installed linux-based OS** usually contains **GRUB config**, and that's exactly the reason why this OS will be used later to update the config to make it available to choose the OS at PC startup. Such OS is referred below as **current linux OS**;
1. The tutorial only covers **UEFI** system configuation, because **BIOS** is outdated (this can be checked by entering one's device's boot menu on startup by pressing a certain combination of keys, which may be different for different devices; alternatively, if you see the option *Enter EFI configuration* in your grub menu, then you are using **UEFI** system);
1. The tutorial only covers **GPT** partition table, becaue **DOS** is outdated (specifically, before following this instruction reader must make sure that they are using this type of partition table, which can be done using such tool as [cfdisk][cfdisk]).

As follows from the list above, **the tutorial is applicable if reader has an existing linux installation with configured GRUB, uses device with UEFI system and GPT partition table**. If some of the points are not applicable, the tutorial is also useful in case reader is ready to resolve problems that may occur during installation on their own.  

> **Note**
> This tutorial draws inspiration for its structure from the `UML Use cases` specification. Each section is separated into three main parts - 'preconditions', 'main flow' and 'postconditions'. There are a few optional sections: 'pitfalls', in which possible errors and mitigation strategies are described, and 'extension-points', in which the branching of the installation is described (situations of uncertainty, when in some situations one option will be preferable and in other circumstances - another options; for example - gpu drivers installation).

> **Note**
> Terms 'section' and 'stage' might be used interchengeably. However, term 'section' is more related to a part of 'tutorial' itself, and 'stage' is related to the part of installation process which corresponds to particular element of the tutorial.  

P.S. In cases of ambiguities in the tutorial, refer to the [installation logs](assets/logs) which are histories of commands from real arch installations.

## Useful resources

Although being incomplete, imprecise and out-of-date, some tutorials are still useful when installing *arch linux* by complementing the present guide. Some of the tutorials are:

1. [Official arch linux installation guide][official-guide];
1. [Ubuntu and arch dual-boot installation guide](https://www.linuxandubuntu.com/home/dual-boot-ubuntu-and-arch-linux) - be warned, here the author uses **DOS** partition table (and possibly **BIOS** instead of **UEFI**), which is incompatible with this tutorial;
1. [Arch installation guide on youtube](https://www.youtube.com/watch?v=DPLnBPM4DhI) - this guide goes through installation on an empty disk using `linux lvm`. `Linux lvm` actually only complicates the installation process, and overall the guide is extensive but poorly structured;
1. [How to install GRUB on Arch Linux](https://fasterland.net/how-to-install-grub-on-arch-linux-uefi.html) - this tutorial may be useful as an extension to the current guide which doesn't discuss the issue of installing **GRUB bootloader**.
1. [Official gentoo linux installation guide](gentoo-guide) proposes a brief explanation of the fundamental concepts required for manual installation of linux such as partition tables, bootloader, file systems, etc. **Therefore, it is strongly recommended to read at least the gentoo installation guide up to the third stage at least before proceeding in this guide**.

## Getting started

This section of the tutorial deals with preparations steps - basically these are steps, which might be done without leaving reader's current linux OS or by booting from live usb.

### Preconditions

The reader has loaded current linux OS and is getting started to install *arch linux* on the current device

### Main flow

Before starting the tutorial a couple of preparation steps should be made:

1. **Think carefully** whether you want to install this distribution. It is not recommended to use as your main OS (**and on your main device**) if you haven't used it previously due to greater complexity in comparison to other alternatives;
1. If you've decided to install *arch linux*, then **backup all data that must not be lost**, because if anything goes wrong during installation, there may be awful concequences like wiping out your entire data. That's another **reason to not to use it on your main device**;
1. After you've become rock-solid in your decision to install *arch linux* and backed up all data, then comes the last preparation step - make sure that you've got enough storage capacity to install the new system. I would recommend **at least 128** GB. This can be done via various utilities (like [gparted][gparted]), the discussion of which is out of the scope of this tutorial. In case reader haven't got free storage on the disk, it is advisable to load from a live usb, pick an existing partition and cut off a part of storage from it by resizing (which, again, might be done with such tool as [gparted][gparted]). For example, if there is a partition of 800 GB with Ubuntu installed, and only 50% of this space is used, it is possible to cut 200 GB from this partition, which will be converted into free space. **However, the cutting operation may lead data loss**, so make sure that you've copied all important data to an external device;
1. When there is enough free space, **the partition on which arch linux will be installed must be created in advance using the same tool which was applied during the current linux OS installation** to avoid later problems with booting from such partition. In this case the reader will have to boot from a live usb, because it's not allowed to edit active partitions. The type of new partition must be **Linux filesystem**. When creating a new parition double check that you haven't accidentally changed other partitions. **This is the most dangerous step of the tutorial**. If everything looks file, go ahead and commit changes. The created partition must obtain a name, which looks like `/dev/sda6`, and may be viewed using `fdisk -l`. In each particular case, the name will be different (the number at the end will change), so **this partition will be called /dev/sdaX** below for generality;
1. Format the partition either right in the UI of the preferred partitioning tool, either via command line: `mkfs.ext4 /dev/sdaX`;
1. Before proceeding the reader must also make sure that they have [latest arch iso](https://archlinux.org/download/) downloaded and written to `libe usb`. At the time of writing the latest version is `6.5.7`, and current release is `2023.10.14`. It is highly advised to use [ventoy](https://github.com/ventoy/Ventoy) tool to prepare the `live usb` with multiple `iso` files.

> **Important**
> Don't forget to **create a new partition** before proceeding, and format it as `ext4`

### Postconditions

The reader has created a new partition, prepared a `live usb` with `iso` file for installing *arch linux*.

### Pitfalls

There is a pitfall that may occur on this stage, but resurface on later stages:

#### Metadata csum seed partition flag

When partition for *arch linux* is created after booting from a live usb with *arch linux* via such tool as [cfdisk][cfdisk], weird flags may be set for the partition. One of such flags is `metadata_csum_seed`. This problem is likely happened when after installing `arch linux` you are trying to boot into the OS and see the following message:

```sh
error: file `/boot/vmlinuz-linux` not found
error: you need to load the kernel first.
```

During `sudo update-grub` this problem shows itself by the following messages in the log:

```sh
/usr/sbin/grub-probe: error: unknown filesystem.
```

Supposedly, this happens because **GRUB** is unable to read data from the partition. To fix that, flag `metadata_csum_seed` must be disabled. To achieve that, one should boot from a live usb with *arch linux* (it can't be done from ubuntu easily, because ubuntu uses an outdated version of tune2fs, which doesn't support this flag - version `1.47.0` is required), install package `e2fsprogs` by the following commands:

```sh
arch-chroot /mnt
pacman -S e2fsprogs
```

After that, you may check that this flag is indeed set by running:

```sh
tune2fs -l /dev/sdaX | grep metadata_csum_seed
```

If flag is set, then to disable it, run:

```sh
tune2fs -O ^metadata_csum_seed /dev/sdaX
```

Then check again, if there is no such flag anymore, then reboot and hopefully now the problem disappears.

Related links:

[unknown filesystem when updating grub](https://askubuntu.com/questions/895632/update-grub-install-grub-error-unknown-filesystem)  
[grub bug description](https://bugs.launchpad.net/ubuntu/+source/grub2/+bug/1844012)  
[tune2fs problem](https://askubuntu.com/questions/1042243/tune2fs-complaining-about-unsupported-read-only-features-on-fresh-ext4-files)

## Installing the core components

This section of the tutorial describes how to install core components of the *arch linux* OS. Before proceeding, reader must've booted from the `live usb` prepared on the previous stage. This sections contains **4 extension points**, some of which are `required` and some are `optional`. The `optional` extension points here are not `optional` in the sense that usually you should ignore them and just proceed to the next steps, they are optional in the sense that they are **highly advisable**, and if you don't want to execute them, then technically you don't have to, and the installation will boot without them, but you must've got reasons for doing that.

### Preconditions

The user has successfully booted from the `live usb` with *arch linux*.

### Main flow

Basically, the installation consists of a several steps of downloading, copying and updating various pieces of software making up the linux distribution, which is not very different from the steps explained in other tutorials:

1. First, disable the disgusting bell signal:

```sh
rmmod pcspkr
```

2. Second, internet connection must be checked. For the most convenience it is advisable to connect using an `ethernet` cable and just check the connection status using:

```sh
ip a
ping -c 5 8.8.8.8
```

which lists all network interfaces and corresponding ip addresses, then pings google's DNS server. If reader hasn't got an ip address, then this should be fixed first before proceeding. It is also possible to connect to wifi, see [instructions below](#connecting-via-wifi) for that. After connection the commands above should be executed for checking that link is indeed established.

3. Format the partition created on the previous stage if haven't done it before:

```sh
mkfs.ext4 /dev/sdaX
```

4. Mount the partition by running the following commands:

```sh
mount /dev/sdaX /mnt
mkdir /mnt/home
mount /dev/sdaX /mnt/home
```

5. Bootstrap packages - essential arch distro tools should be installed at this stage by running the following command:

```sh
pacstrap -i /mnt base
```

6. Generate filesystem information file:

```sh
genfstab /mnt >> /mnt/etc/fstab
```

7. Install a couple of essential components, which aren't installed by default:

```sh
arch-chroot /mnt

[root@archiso /] pacman -S linux linux-headers vim sudo which
```

8. Extension point (optional) - install [network tools](extension-points/Network.md)

> **Important**
> Make sure to install the network packages **and enable the services**. These steps are vital for the network to work properly after reboot.

9. Extension point (optional) - install [cpu microcode](extension-points/CPU.md)
10. Extension point (required) - install [gpu driver][gpu]. If this step is skipped, then there will be [gpu driver issue](#gpu-driver-issue) after reboot

> **Important**
> Don't skip gpu driver installation - the system will hang on boot without the driver

11. Extension point (optional) - install [sound toolkit](extension-points/Sound.md)
12. Extension point (optional) - setup [desktop environment](extension-points/Desktop.md)
13. Extension point (optional) - setup [developer tools](extension-points/AUR.md)

14. Configure the system language:

```sh
[root@archiso /] vim /etc/locale.gen  # uncomment line which says 'en_US.UTF-8 UTF-8' (it is strongly recommended to uncomment this value, but if you know what you are doing, you can uncomment any other line which corresponds to your desired locale by removing the '#' symbol in front of it)
[root@archiso /] locale-gen
[root@archiso /] vim /etc/locale.conf  # write: 'LANG=en_US.UTF-8' or whatever locale you've chosen
[root@archiso /] vim /etc/vconsole.conf  # write: 'KEYMAP=us-eng' or whatever locale you've chosen
```

15. Configure the system time:

```sh
[root@archiso /] ln -sf /usr/share/zoneinfo/Europe/Moscow /etc/localtime  # or reader's own timezone
[root@archiso /] hwclock --systohc
[root@archiso /] timedatectl  # check current date and time
```

16. Configure root password:

```sh
[root@archiso /] passwd  # then reader will be prompted to set a new password, type the desired value, then confirm and remember it
```

17. Set the hostname:

```sh
[root@archiso /] vim /etc/hostname  # write 'archeron' or any other name for your OS installation
```

18. Update the `hosts` file - run command `vim /etc/hosts` and write the following content to the file (replace `archeron` with a custom host name):

```sh
127.0.0.1 localhost.localdomain localhost
::1 localhost.localdomain localhost
127.0.0.1 archeron.localdomain archeron
```

19. Make network connections persistent:

```sh
[root@archiso /] systemctl enable dhcpd
```

20. Create a new user:

```sh
[root@archiso /] useradd -m -g users -G wheel mabel  # or any other username instead of 'mabel'
[root@archiso /] passwd mabel  # or custom username instead of 'mabel', then write password, confirm and remember it
```

21. Associate `wheel` group with `sudo`:

```sh
[root@archiso /] EDITOR=vim visudo # Go to line that says '# %wheel ALL=(ALL) NOPASSWD: ALL' and uncomment it by removing '# ' in the beginning
```

22. Run the following command to refresh presets for initial ramdisk:

```sh
[root@archiso /] mkinitcpio -P
```

23. Extension point (required) - [setup grub](extension-points/GRUB.md)
24. Reboot into the newly installed OS - now the system should boot successfully, choose appropriate option from the **GRUB** menu:

```sh
[root@archiso /] ^D
reboot
```

### Connecting via wifi

To connect via `wifi`, command `iwctl` should be used in the following way:

```sh
iwctl

[iwd]> device list
[iwd]> wsc <device> push-button
```

then the reader should push `WPS` button on the router to complete connection. **The cli will not show the status of the connection**, so reader should rather use router's web interface for checking connection status. Alternatively, one may connect through the name of the network:

```sh
iwctl

[iwd]> device list
[iwd]> station <device> scan
[iwd]> station <device> get-networks
[iwd]> station <device> connect <network-name>
```

after that the reader will be prompted to type password, and the connection will be established if the password is correct. Make sure to wait for a few seconds until the connection is established.

### Postconditions

Reader has installed the core components of *arch linux*, configured **GRUB** and is ready to boot the newly installed system.

### Pitfalls

There is an issue which occurs when gpu drivers are not properly configured:

#### GPU driver issue

The issue is identified, when system starts to boot, but hangs after writing `Triggering uevents`. The problem is diagnosed by editing **GRUB** entry - the reader should press `e` button while selecting it in **GRUB** menu, and adding `loglevel=7` at the end of line starting with `linux`. Then the reader should reboot and pay attention to what is written on screen - if the last entries contain keywords related to gpu, then there is hight probability that problem lies in the drivers. The mitigation strategy is following:

1. Make sure that all necessary steps from [gpu installation][gpu] extension point are executed;
1. Make sure that command `mkinitcpio -P` is run after driver is installed.

Related links:

[the system hangs at triggering uevents](https://bbs.archlinux.org/viewtopic.php?id=151259)  
[agp and radeon graphics nomodeset](https://bbs.archlinux.org/viewtopic.php?id=182244)

## Installing auxiliary components

After the core components are installed, the system must boot well. However, it is still far from perfect and more changes should be commited to make it more useful. All steps of the main flow in this section are highly opinionated and entirely optional, so reader should feel free to skip them as they want.

### Preconditions

The system has booted successfully, login screen is shown, after login the desktop manager is started.

### Main flow

1. Enable `tap to click` following [this instruction](https://docs.fedoraproject.org/en-US/quick-docs/enable-touchpad-click/), add secondary keyboard layouts in the I/O device settings as well

2. Install some auxiliary software:

```sh
sudo pacman -S neofetch unzip python-pip git-lfs vlc
yay -S google-chrome
```

The browser can be launched either by typing `google-chrome-stable` in the console either by choosing it in the app menu of the desktop manager.

3. Setup fonts - enable emoji support and install [nerd fonts](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts) - download preferred items, then run following commands, which should be adapted appropriately:

```sh
sudo pacman -S noto-fonts-emoji

cd Downloads/

mkdir Inconsolata
unzip Inconsolata.zip -d Inconsolata

mkdir UbuntuMono
unzip UbuntuMono.zip -d UbuntuMono

mkdir -p ~/.fonts
mv Inconsolata/*.tff ~/.fonts
mv UbuntuMono/*.tff ~/.fonts

rm -rf Inconsolata
rm -rf UbuntuMono
rm Inconsolata.zip
rm UbuntuMono.zip

sudo fc-cache -f -v
```

> **Note**
> Fonts are not updated everywhere even after running `sudo fc-cache -f -v`. To apply the changes systemwise, relogin into the system.

4. Install `bash-tools` by running the following commands, then reopen terminal to use added extensions:

```sh
git clone https://github.com/zeionara/bash-tools.git "$HOME/bash-tools"
echo -e '\n. "$HOME/bash-tools/.bashrc"' >> "$HOME/.bashrc"
```

5. Generate `ssh` and `gpg` keys, add them to `github`, `gitlab`, `huggingface`, etc:

```sh
ssgen
gpgeng
```

6. Install `git-tools`, then reopen terminal to use added extensions:

```sh
git clone git@github.com/zeionara/git-tools.git "$HOME/git-tools"
echo -e '\n. "$HOME/git-tools/.bashrc"' >> "$HOME/.bashrc"
```

7. Install `colorful-prompt`, then reopen terminal to see changes:

```sh
git clone git@github.com:zeionara/colorful-prompt.git "$HOME/colorful-prompt"
echo -e '\n. "$HOME/colorful-prompt/colorful-prompt.sh"' >> "$HOME/.bashrc"
```

8. Install `neovim`:

```sh
curl -Ls https://bit.ly/setup-nvim | bash
```

> **Note**
> Automatic installation through `setup` script is supported, but not tested yet

or manual installation

```sh
sudo pacman -S neovim

git clone git@github.com:zeionara/nvim-configs.git "$HOME/.config/nvim_"
mkdir "$HOME/.config/nvim"
ln "$HOME/.config/nvim_/lua/plugins.lua" "$HOME/.config/nvim/init.lua"

git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerInstall'

rm -rf $HOME/.config/nvim
mv $HOME/.config/nvim_ $HOME/.config/nvim

mkdir -p ~/.local/share/nvim/site/pack/git-plugins/start
git clone --depth 1 https://github.com/dense-analysis/ale.git ~/.local/share/nvim/site/pack/git-plugins/start/ale
```

9. Install alacritty, then make it the default terminal, if that didn't happen automatically:

```sh
sudo pacman -S alacritty
git clone git@github.com:zeionara/alacritty-config.git "$HOME/alacritty-config"
$HOME/alacritty-config/setup.sh 
```

10. Install `docker-tools`:

```sh
git clone git@github.com:zeionara/docker-tools.git "$HOME/docker-tools"
echo -e '\n. $HOME/docker-tools/aliases.sh' >> "$HOME/.bashrc"
```

11. Install `kubetools`:

```sh
git clone git@github.com:zeionara/kubetools.git "$HOME/kubetools"
echo -e '\n. "$HOME/kubetools/.bashrc"' >> "$HOME/.bashrc"
```

12. Install `curl-tools`:

```sh
git clone git@gist.github.com:582902c79fc1a58c36b1b2c554a02b81.git "$HOME/curl-tools"
echo -e '\n. "$HOME/curl-tools/.bashrc"' >> "$HOME/.bashrc"
ln "$HOME/curl-tools/.curlrc" "$HOME/.curlrc"
```

13. Install `paste-token`:

```sh
git clone git@gist.github.com:cc99dafb61a766b7ff88d8efa09b93b3.git "$HOME/paste-token"
echo -e '\n. $HOME/paste-token/aliases.sh' >> "$HOME/.bashrc"
```

14. Install `tmux`:

```sh
sudo pacman -S tmux
git clone git@github.com:zeionara/tmux-config.git "$HOME/tmux-config"
$HOME/tmux-config/install.sh
```

15. Setup `bashrc`

```sh
git clone git@github.com:zeionara/bashrc.git "$HOME/bashrc"
$HOME/bashrc/setup.sh
[zsh default prompt] ^D # exit the shell entered afte oh-my-zsh has been configured, and continue installation
zsh # enter zsh shell again
fast-theme "$HOME/bashrc/snuffari.ini"
```

Then if you've answered 'yes' to `make zsh the default shell`, relogin to apply the changes.

16. Setup `conda` - the commands below are taken from the [official website](https://docs.conda.io/projects/miniconda/en/latest/)

```sh
mkdir -p ~/miniconda3
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
rm -rf ~/miniconda3/miniconda.sh
```

> **Important**
> If you installed the `bashrc`, there is no need to call `conda init bash`, there is already shell initialization in `bashrc/etc/conda.sh`. However, make sure that env variable `CONDA_ROOT` contains the right folder name (`anaconda3` for full installation, `miniconda3` for minimal installation)

### Postconditions

The system is fully configured and ready to use

[gpu]: extension-points/GPU.md

[official-guide]: https://wiki.archlinux.org/title/installation_guide
[official-forum]: https://bbs.archlinux.org/
[gparted]: https://gparted.org/
[cfdisk]: https://en.wikipedia.org/wiki/Cfdisk
[gentoo-guide]: https://wiki.gentoo.org/wiki/Handbook:AMD64/Installation/Media
