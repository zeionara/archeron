<p align="center">
    <img src="assets/logo.png" width="300px"/>
</p>

# Archeron

**Arch Linux** installation instructions.  

> **Warning**
> **Disclaimer**: All text that follows is an expression of a personal view of the author. The statements must be taken rather critically.  

The following tutorial is designed as a beginner-friendly guide of installing *arch linux*. The purpose of the project therefore is to provide a clear and concise way of installing *arch linux*, because [official tutorial][official-guide] sucks in brevity, [community][official-forum] sucks in being helpful and other 3rd-party tutorials suck in being up-to-date, completeness and usefulness.  

**The scope** of this tutorial is to guide the reader through the entire installation process from having only current Linux OS installed on one's PC to a useful installation of *arch linux*. To keep the tutorial concise, there are certain axioms, that are taken at the beginning:

1. The reader is comfortable with using some basic tools related to linux and OS installation, such as **bootloader**, **GRUB**, **partition table**, and should be ready to search meaning of unknown words on their own;
1. Currently, reader already has a linux-based OS and **GRUB bootloader** installed. In particular, the assumption is that the reader has **Ubuntu 22.04** as their main OS right now, and this OS is **the first one linux-based OS installed on current device**. The *linux-based* is important here, because you may also have a *windows-based* OS, which was installed earlier. The important thing is that **the first installed linux-based OS** usually contains **GRUB config**, and that's exactly the reason why this OS will be used later to update the config to make it available to choose the OS at PC startup;
1. The tutorial only covers **UEFI** system configuation, because **BIOS** is outdated (this can be checked by entering one's device's boot menu on startup by pressing a certain combination of keys, which may be different for different devices; alternatively, if you see the option *Enter EFI configuration* in your grub menu, then you are using **UEFI** system);
1. The tutorial only covers **GPT** partition table, becaue **DOS** is outdated (specifically, before following this instruction should make sure that they are using this type of partition table, which can be done by booting from a usb and listing partitions using such tool as fdisk).

## Getting started

Before starting the tutorial a couple of preparation steps should be made:

1. **Think carefully** whether you want to install this distribution. It is not recommended to use as your main OS (**and on your main device**) if you haven't used it previously due to greater complexity in comparison to other alternatives;
1. If you've decided to install *arch linux*, then **backup all data that must not be lost**, because if anything goes wrong during installation, there may be awful concequences like wiping out your entire data. That's another **reason to not to use it on your main device**;
1. After you've become rock-solid in your decision to install *arch linux* and backed up all data, then comes the last preparation step - make sure that you've got enough storage capacity to install the new system. I would recommend **at least 128** GB. This can be done via various utilities (like [gparted][gparted]), the discussion of which is out of the scope of this tutorial.

[official-guide]: https://wiki.archlinux.org/title/installation_guide
[official-forum]: https://bbs.archlinux.org/
[gparted]: https://gparted.org/
