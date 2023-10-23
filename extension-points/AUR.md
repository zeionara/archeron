# AUR

The steps described in this section are needed to be able to install packages from [AUR](https://aur.archlinux.org/), which greatly simplifies the further use of the system. There are multiple package managers available here, so there are many options, one of which is covered in this tutorial.

## Yay

First, make sure that you've installed tools for building packages:

```sh
pacman -S base-devel git
```

Then, download, build and install the `yay` tool:

```sh
git clone https://aur.archlinux.org/yay-git.git /tmp/yay
cd /tmp/yay
makepkg -si
```

After that, you can install packages from `AUR` using `yay`, for example:

```sh
yay -S google-chrome
```
