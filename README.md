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

## Getting started

Before starting the tutorial a couple of preparation steps should be made:

1. **Think carefully** whether you want to install this distribution. It is not recommended to use as your main OS (**and on your main device**) if you haven't used it previously due to greater complexity in comparison to other alternatives;
1. If you've decided to install *arch linux*, then **backup all data that must not be lost**, because if anything goes wrong during installation, there may be awful concequences like wiping out your entire data. That's another **reason to not to use it on your main device**;
1. After you've become rock-solid in your decision to install *arch linux* and backed up all data, then comes the last preparation step - make sure that you've got enough storage capacity to install the new system. I would recommend **at least 128** GB. This can be done via various utilities (like [gparted][gparted]), the discussion of which is out of the scope of this tutorial. In case reader haven't got free storage on the disk, it is advisable to load from a live usb, pick an existing partition and cut off a part of storage from it by resizing (which, again, might be done with such tool as [gparted][gparted]). For example, if there is a partition of 800 GB with Ubuntu installed, and only 50% of this space is used, it is possible to cut 200 GB from this partition, which will be converted into free space. **However, the cutting operation may lead data loss**, so make sure that you've copied all important data to an external device;
1. When there is enough free space, **the partition on which arch linux will be installed must be created in advance using the same tool which was applied during the current linux OS installation** to avoid later problems with booting from such partition. The type of partition must be **Linux filesystem** partition. When creating a new parition double check that you haven't accidentally changed other partitions. **This is the most dangerous step of the tutorial**. If everything looks file, go ahead and commit changes.

### Pitfalls

There are a couple pitfalls that may occur on this stage:

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

[official-guide]: https://wiki.archlinux.org/title/installation_guide
[official-forum]: https://bbs.archlinux.org/
[gparted]: https://gparted.org/
[cfdisk]: https://en.wikipedia.org/wiki/Cfdisk
