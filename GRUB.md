# GRUB

**GRUB** is required to enable multi-OS setup support. This can be done in multiple ways, one of the following options must be chosen depending on reader's configuration :

## Install GRUB

If you don't have **GRUB**, but still following this tutorial, check out [this link](https://www.youtube.com/watch?v=DPLnBPM4DhI&t=4718s) to the youtube video on how to install it (then it is the last step of the current section for you). Following [the other tutorial](https://fasterland.net/how-to-install-grub-on-arch-linux-uefi.html), basically the steps are as follows:

> **Warning**
> **Dangerous zone**: The commands here are not tested, but they are based on the tutorials mentioned above, they do make sense and should work. **Proceed on your own risk**.

1. Install the required packages:

```sh
[root@archiso /] pacman -S grub # these tools might be optional or required (again, not tested): efibootmgr dosfstools mtools
```

2. Locate the `EFI` partition using command:

```sh
[root@archiso /] fdisk -l
```

3. Mount the `EFI` partition:

```sh
[root@archiso /] ^D
mkdir -p /mnt/boot/efi
mount /dev/sdaX /mnt/boot/efi
```

4. Refresh `fstab` file:

```sh
genfstab /mnt >> /mnt/etc/fstab
arch-chroot /mnt
```

5. Call `os-prober` to automatically discover other installed OSes. If reader is sure that there are no other OSes installed, this step can be skipped:

> **Note**
> It is advisable to **mount the partitions with other OSes** before proceeding to enable their discovery by **GRUB**. There is a problem that occurs if the partitions are not mounted when updating the existing **GRUB** installation

```sh
[root@archiso /] pacman -S os-prober
[root@archiso /] os-prober
```

6. Install **GRUB**:

```sh
[root@archiso /] grub-mkconfig -o /boot/grub/grub.cfg
[root@archiso /] grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=GRUB
```

## Update GRUB

The following steps are executed if reader already has **GRUB** installed. The reader should leave the `live usb` environment and boot into the **current linux OS**:

```sh
[root@archiso /] ^D
reboot
```

Then actions below should be performed:

1. **Mount the new partition**:

```sh
sudo mkdir -p /mnt/arch
sudo mount /dev/sdaX /mnt/arch
```

> **Important**
> Don't forget to mount the new partition before proceeding, otherwise grub won't be able to discover the new arch instance

2. Then update **GRUB**. If update was successful, then log will contain messages saying that the **GRUB** installation has successfully discovered the new arch distribution:

```sh
sudo update-grub
```

If there are messages like `/usr/sbin/grub-probe: error: unknown filesystem.`, then check [this section](README.md#metadata-csum-seed-partition-flag) of the tutorial's main page.

3. Unmount the partition mounted before:

```sh
sudo umount /mnt/arch
sudo rmdir /mnt/arch
```
