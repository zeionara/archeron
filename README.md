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
> This tutorial draws inspiration for its structure from the `UML Use cases` specification. Each section is separated into three main parts - 'preconditions', 'main flow' and 'postconditions'. There is an optional section 'pitfalls' in which possible errors and mitigation strategies are described. Terms 'section' and 'stage' might used interchengeably. However, term 'section' is more related to a part of 'tutorial' itself, and 'stage' is related to the part of installation process which corresponds to particular element of the tutorial.

## Useful resources

Although being incomplete, imprecise and out-of-date, some tutorials are still useful when installing *arch linux* by complementing the present guide. Some of the tutorials are:

1. [Official arch linux installation guide][official-guide];
1. [Ubuntu and arch dual-boot installation guide](https://www.linuxandubuntu.com/home/dual-boot-ubuntu-and-arch-linux) - be warned, here the author uses **DOS** partition table (and possibly **BIOS** instead of **UEFI**), which is incompatible with this tutorial;
1. [Arch installation guide on youtube](https://www.youtube.com/watch?v=DPLnBPM4DhI) - this guide goes through installation on an empty disk using `linux lvm`. `Linux lvm` actually only complicates the installation process, and overall the guide is extensive but poorly structured;
1. [How to install GRUB on Arch Linux](https://fasterland.net/how-to-install-grub-on-arch-linux-uefi.html) - this tutorial may be useful as an extension to the current guide which doesn't discuss the issue of installing **GRUB bootloader**.

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

This section of the tutorial describes how to install core components of the *arch linux* OS. Before proceeding, reader must've booted from the `live usb` prepared on the previous stage.

## Preconditions

The user has successfully booted from the `live usb` with *arch linux*

## Main flow

Basically, the installation consists of a several steps of downloading, copying and updating various pieces of software making up the linux distribution, which is not very different from the steps explained in other tutorials:

1. First, disable the disgusting bell signal:

```sh
rmmod pcspkr
```

1. Second, internet connection must be checked. For the most convenience it is advisable to connect using an `ethernet` cable and just check the connection status using:

```sh
ip a
ping -c 5 8.8.8.8
```

which lists all network interfaces and corresponding ip addresses, then pings google's DNS server. If reader hasn't got an ip address, then this should be fixed first before proceeding. It is also possible to connect to wifi, see [instructions below](###connecting-via-wifi) for that. After connection the commands above should be executed for checking that link is indeed established.

1. Format the partition created on the previous stage if haven't done it before:

```sh
mkfs.ext4 /dev/sdaX
```

1. Mount the partition by running the following commands:

```sh
mount /dev/sdaX /mnt
mkdir /mnt/home
mount /dev/sdaX /mnt/home
```

1. Bootstrap packages - essential arch distro tools should be installed at this stage by running the following command:

```sh
pacstrap -i /mnt base
```

1. Generate filesystem information file:

```sh
genfstab /mnt >> /mnt/etc/fstab
```

1. Install a couple of essential components, which aren't installed by default. Switch to the newly instantiated arch distibution and install the corresponding packages, then enable some services:

```sh
arch-chroot /mnt

[root@archiso /]# pacman -S linux linux-headers vim sudo which networkmanager wpa_supplicant wireless_tools netctl
[root@archiso /]# systemctl enable NetworkManager
```

1. Configure the system language:

```sh
[root@archiso /]# vim /etc/locale.gen  # uncomment line which says 'en_US.UTF-8 UTF-8' (it is strongly recommended to uncomment this value, but if you know what you are doing, you can uncomment any other line which corresponds to your desired locale by removing the '#' symbol in front of it)
[root@archiso /]# locale-gen
[root@archiso /]# vim /etc/locale.conf  # write: 'LANG=en_US.UTF-8' or whatever locale you've chosen
[root@archiso /]# vim /etc/vconsole.conf  # write: 'KEYMAP=us-eng' or whatever locale you've chosen
```

1. Configure the system time:

```sh
[root@archiso /]# ln -sf /usr/share/zoneinfo/Europe/Moscow /etc/localtime  # or reader's own timezone
[root@archiso /]# hwclock --systohc
[root@archiso /]# timedatectl  # check current date and time
```

1. Configure root password:

```sh
[root@archiso /]# passwd  # then reader will be prompted to set a new password, type the desired value, then confirm and remember it
```

1. Set the hostname:

```sh
[root@archiso /]# vim /etc/hostname  # write 'archeron' or any other name for your OS installation
```

1. Update the `hosts` file - run command `vim /etc/hosts` and write the following content to the file (replace `archeron` with a custom host name):

```sh
127.0.0.1 localhost.localdomain localhost
::1 localhost.localdomain localhost
127.0.0.1 archeron.localdomain archeron
```

1. Make network connections persistent:

```sh
[root@archiso /]# systemctl enable dhcpd
```

1. Create a new user:

```sh
[root@archiso /]# useradd -m -g users -G wheel mabel  # or any other username instead of 'mabel'
[root@archiso /]# passwd mabel  # or custom username instead of 'mabel', then write password, confirm and remember it
```

1. Associate `wheel` group with `sudo`:

```sh
[root@archiso /]# EDITOR=vim visudo # Go to line that says '# %wheel ALL=(ALL) NOPASSWD: ALL' and uncomment it by removing '# ' in the beginning
```

1. If you've made some additional changes besides steps discussed in the tutorial, run the following command to refresh `linux` boot images before proceeding:

```sh
[root@archiso /]# mkinitcpio -p linux
```

1. If you don't have **GRUB**, but still following this tutorial, check out [this link](https://www.youtube.com/watch?v=DPLnBPM4DhI&t=4718s) to the youtube video on how to install it. If you have **GRUB**, then at this step you can reboot into your **current linux OS**:

```sh
[root@archiso /]# ^C
reboot
```

1. Then **mount the new partition**:

```sh
mkdir -p /mnt/arch
sudo mount /dev/sdaX /mnt/arch
```

1. Then update **GRUB**. If update was successful, then log will contain messages saying that the **GRUB** installation has successfully discovered the new arch distribution:

```sh
sudo update-grub
```

If there are messages like `/usr/sbin/grub-probe: error: unknown filesystem.`, then check [this section](####metadata-csum-seed-partition-flag) of the tutorial.

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

## Postconditions

Reader has installed the core components of *arch linux*, configured **GRUB** and is ready to boot the newly installed system.

[official-guide]: https://wiki.archlinux.org/title/installation_guide
[official-forum]: https://bbs.archlinux.org/
[gparted]: https://gparted.org/
[cfdisk]: https://en.wikipedia.org/wiki/Cfdisk
