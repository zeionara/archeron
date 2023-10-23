# Network

It is highly recommended to install `network tools`, which enable Internet connectivity. There may be multiple options, but current tutorial so far covers only one:

## NetworkManager

To install `network-manager` service, run the following command:

```sh
pacman -S networkmanager # another network tools which are hopefully not required: wpa_supplicant wireless_tools netctl
```

Then enable the `network-manager` service to be initiated on startup:

```sh
systemctl enable NetworkManager
```
