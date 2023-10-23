# CPU

It is necessary to install `cpu microcode` packages, which improve stability of the system. Depending on the type of cpu reader uses, two options are available covered in the following sections. One of these two options must be selected and executed.

## AMD

In case of `AMD` CPU, execute the following command:

```sh
pacman -S amd-ucode
```

## Intel

In case of `intel` CPU, execute the following command:

```sh
pacman -S intel-ucode
```
