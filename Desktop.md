# Desktop

Though technically desktop envrionment is not required during the system installation, arguably it is not possible to use a PC without a graphical interface. Depending on the user preferences, there are plenty of options available. One of these options is covered below.

## XFCE + lightdm

To install and enable `xfce` desktop environment and `light` desktop manager, run the following command:

```sh
pacman -S xfce4 xfce4-goodies lightdm lightdm-gtk-greeter network-manager-applet
systemctl enable lightdm
```

Then make some adjustments to the configuration by running `sudo vim /etc/systemd/system/display-manager.service` and adding the following lines to the `[Service]` section:

```sh
RestartSec=5
StartLimitInterval=0
```
