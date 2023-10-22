# GPU

It is necessary to install `gpu driver` packages, which allow to use the graphical interface, **and without which the system won't boot**. Depending on the type of gpu reader uses, two options are available covered in the following sections. One of these two options must be selected and executed.

## AMD

In case of `AMD` GPU, execute the following command, which installs appropriate drivers:

```sh
pacman -S mesa xf86-video-amdgpu linux-firmware linux-firmware-qlogic xorg-server
```

## Intel

In case of `intel` GPU, execute the following command, which installs appropriate drivers:

```sh
pacman -S nvidia xorg-server
```
