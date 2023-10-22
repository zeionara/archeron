    1  ls
    2  ls 
    3  ls -alh
    4  cat .bashrc
    5  df -h .
    6  df -h .
    7  htop
    8  ping google.com
    9  lspci
   10  reboot
   11  ping google.com
   12  iwctl
   13  iwd
   14  iwctl
   15  ip a
   16  iwctl
   17  reboot
   18  ls
   19  ls
   20  sudo systemctl lightdm start
   21  sudo systemctl start lightdm
   22  sudo systemctl status lightdm
   23  startxfce4
   24  iwctl
   25  ip a
   26  ip link set wlan0 up
   27  sudo ip link set wlan0 up
   28  iwctl
   29  ip a
   30  sudo ip link set wlan0 up
   31  sudo ip link set wlan0 up
   32  cd /
   33  cd g5045-gpu-driver/
   34  s
   35  ls
   36  ./amd-driver-installer-15.302-x86.x86_64.run 
   37  sudo ./amd-driver-installer-15.302-x86.x86_64.run 
   38  ip a
   39  ping google.com
   40  pacman -Syu
   41  sudo pacman -Syu
   42  sudo pacman -S amdgpu-pro-installer
   43  sudo pacman -S amdgpu-pro
   44  sudo pacman -S amdgpu-pro-oblp
   45  sudo pacman -S amdgpu-pro-oglp
   46  sudo pacman -S mesa-amber
   47  sudo pacman -S xf86-video-ati
   48  reboot
   49  sudo systemctl status lightdm.service
   50  sudo systemctl start lightdm.service
   51  journalctl -xeu lightdm.service
   52  xset -b
   53  rmmod pcspkr
   54  sudo rmmod pcspkr
   55  nvim .bashrc
   56  sudo pacman -Syu
   57  sudo pacman -S xf86-video-amdgpu mesa
   58  sudo vim /etc/modprobe.d/modprobe.conf
   59  cat /etc/modprobe.d/modprobe.conf
   60  mkinitcpio -P
   61  sudo mkinitcpio -P
   62  cat /etc/modprobe.d/modprobe.conf
   63  radeon
   64  amdgpu
   65  modprobe amdgpu
   66  sudo vim /etc/modprobe.d/modprobe.conf
   67  modprobe amdgpu
   68  man modprobe
   69  modprobe -a
   70  modprobe -a amdgpu
   71  cat /etc/modprobe.d/modprobe.conf
   72  modprobe -a amdgpu
   73  modprobe -a amdgpu -v
   74  radeon.cik_support=0
   75  sudo reboot
   76  sudo pacman -S git
   77  git clone git://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git
   78  lsmod
   79  lsmod | grep amd
   80  ls
   81  rmmod pcspkr
   82  sudo rmmod pcspkr
   83  vim .bashrc
   84  sudo pacman -S linux-firmware
   85  sudo mkinitcpio -P
   86  sudo pacman -S ast-firmware linux-firmware-qlogic 
   87  sudo pacman -S linux-firmware-qlogic 
   88  sudo pacman -S yay
   89  sudo pacman -S base-devel
   90  sudo pacman -S yay
   91  yay
   92  reboot
   93  sudo systemctl start lightdm
   94  sudo systemctl status lightdm
   95  reboot
   96  sudo vim /etc/systemd/system/display-manager.service 
   97  sudo reboot
   98  ls
   99  df -h .
  100  speaker-test -c2
  101  speaker-test -c2
  102  speaker-test -c2
  103  pacman -S neofetch
  104  sudo pacman -S neofetch
  105  neofetch
  106  pacman -S htop
  107  sudo pacman -S htop
  108  htop
  109  google-chrome
  110  neofetch
  111  ls
  112  ls
  113  ls
  114  htop
  115  pacman -S alsa-utils
  116  sudo pacman -S alsa-utils
  117  alsamixer 
  118  alsamixer 
  119  alsamixer 
  120  alsamixer 
  121  ls
  122  git clone https://aur.archlinux.org/yay-git.git
  123  cd yay-git/
  124  makepkg -si
  125  yay -S google-chrome
  126  google-chrome
  127  google-chrome-stable 
  128  pacman -S pavicontrol
  129  sudo pacman -S pavicontrol
  130  sudo pacman -S pavucontrol
  131  pacman -S pulseaudio
  132  sudo pacman -S pulseaudio
  133  pulseaudio
  134  sudo systemctl status lightdm.service
  135  sudo vim /etc/systemd/system/display-manager.service 
  136  /usr/bin/lightdm
  137  sudo /usr/bin/lightdm
  138  sudo systemctl status lightdm.service
  139  sudo systemctl stop lightdm.service
  140  sudo systemctl  daemon-reload
  141  sudo systemctl stop lightdm.service
  142  sudo systemctl status lightdm.service
  143  sudo systemctl start lightdm.service
  144  sudo systemctl status lightdm.service
  145  sudo systemctl status lightdm.service
  146  sudo systemctl start lightdm.service
  147  sudo systemctl status lightdm.service
  148  dmesg
  149  sudo dmesg
  150  sudo systemctl start lightdm.service
  151  sudo dmesg
  152  dmesg
  153  sudo systemctl status lightdm.service
  154  sudo systemctl status lightdm
  155  sudo systemctl restart lightdm
  156  journalctl -xeu lightdm.service
  157  startxfce4 
  158  systemctl list-unit-files | grep enabled
  159  iwctl
  160  lightdm --test-mode --debug
  161  sudo pacman -S lightdm-gtk-greeter
  162  reboot
  163  pacman -S nm-connection-editor
  164  sudo pacman -S nm-connection-editor
  165  pacman -S tmux
  166  sudo pacman -S tmux
  167  tmux new -n main -s setup
  168  ping foo
  169  ping 8.8.8.8
  170  ip a
  171  lspci -k
  172  ip link set wlan0 up
  173  sudo ip link set wlan0 up
  174  ip a
  175  dmesg | grep firmware
  176  sudo dmesg | grep firmware
  177  sudo dmesg
  178  ls
  179  ip a
  180  sudo ip link set wlan0 up
  181  sudo dmesg | grep firmware
  182  lspci -k
  183  sudo dmesg | grep ath9k
  184  lsmod
  185  lsmod | grep ath9k
  186  iwctl
  187  ping google.com
  188  ping google.com
  189  iwctl
  190  iwctl
  191  htop
  192  ls
  193  lspci
  194  ifconfig
  195  ip a
  196  ip a
  197  iwctl
  198  sudo systemctl start iwd
  199  iwctl
  200  htop
  201  sudo amod pcspkr
  202  neofetch
  203  iwconfig
  204  ip link set wlan0 up
  205  sudo ip link set wlan0 up
  206  iwlist interface scan | less
  207  iwlist interface scan | less
  208  iwlist wlan0 scan | less
  209  ip a
  210  wifi-menu
  211  sudo wifi-menu
  212  sudo wifi-menu
  213  systemctl status "netctl@wlan0\\x2dhearts.service"
  214  sudo wifi-menu
  215  reboot
  216  sudo systemctl status NetworkManager
  217  pacman -S networkmanager
  218  sudo pacman -S networkmanager
  219  ip a
  220  sudo ip link set wlan0 up
  221  ip a
  222  ip a
  223  ip a
  224  ip a
  225  ip a
  226  ip a
  227  ip a
  228  history
  229  iwlist wlan0 scan | less
  230  iwlist wlan0 scan | less
  231  wifi-menu
  232  sudo wifi-menu
  233  sudo pacman -S network-manager-applet
  234  sudo pacman -S network-manager-applet
  235  wifi-menu
  236  sudo wifi-menu
  237  sudo wifi-menu
  238  reboot
  239  pacman -Qent
  240  htop
  241  neofetch
  242  xfconf-query -c xsettings -p /Gdk/WindowScalingFactor -s 2
  243  xfconf-query -c xsettings -p /Gdk/WindowScalingFactor -s 1
  244  xfconf-query -c xsettings -p /Gdk/WindowScalingFactor -s 1.5
  245  xfconf-query -c xsettings -p /Gdk/WindowScalingFactor -s 1
  246  reboot
  247  ls
  248  ls -alh
  249  cat .bashrc
  250  htop
  251  df -h .
  252  ls
  253  ls /
  254  pacman -S unzip
  255  sudo pacman -S unzip
  256  cd Downloads/
  257  ls
  258  unzip Inconsolata.zip 
  259  mkdir UbuntuMono
  260  unzip --help
  261  unzip UbuntuMono.zip -d UbuntuMono
  262  sudo fc-cache -f -v
  263  history > ~/installation-log.sh
  264  history | wc -l
  265  sudo fc-cache -f -v
  266  fc-cache -f -v
  267  ls /home/mabel/.fonts
  268  ls /home/mabel/.fonts
  269  fc-cache -f -v
  270  ls
  271  vim
  272  htop
  273  pacman -S conky
  274  sudo pacman -S conky
  275  conky
  276  conky
  277  ls
  278  python
  279  ls
  280  sshgen
  281  vim bash-tools/gpg.sh 
  282  gpgeng
  283  gpga
  284  git clone git@github.com:zeionara/colorful-prompt.git
  285  cat colorful-prompt/install.sh 
  286  test -z $(which lua)
  287  test -z $(which foo)
  288  lua
  289  pacman -S lua
  290  sudo pacman -S lua
  291  nvim colorful-prompt/install.sh 
  292  if test -z $(which luaa 2/dev/null); then echo foo; fi
  293  if test -z $(which luaa 2>/dev/null); then echo foo; fi
  294  if test -z $(which luaa 2 > /dev/null); then echo foo; fi
  295  if test -z $(which luaa 2>/dev/null); then echo foo; fi
  296  if test -z $(which lua 2>/dev/null); then echo foo; fi
  297  ls
  298  cd colorful-prompt/
  299  ls
  300  if test -z $(which lua 2> /dev/null); then echo foo; fi
  301  ls
  302  cd colorful-prompt/
  303  ls
  304  ls
  305  ls
  306  history | head
  307  history | wc -l
  308  cd colorful-prompt.sh 
  309  ls
  310  git diff
  311  vim colorful-prompt.sh 
  312  nvim install.sh 
  313  vim install.sh
  314  gtx
  315  git diff
  316  git status
  317  git add -u
  318  git status
  319  git commit -m 'feat(install): added support for arch in the installation script'
  320  gtu
  321  git push -u origin master
  322  curl -Ls https://cutt.ly/setup-git-tools
  323  curl -Ls https://cutt.ly/setup-git-tools | bash
  324  cd git-tools/
  325  gtrsuo git@github.com:zeionara/git-tools.git
  326  gtx
  327  gts
  328  ls
  329  neofetch
  330  test -z baa
  331  test -z pacman
  332  test -z lua
  333  if test -z lua; then echo foo; fi
  334  if test -z lua; then echo foo; fi
  335  if $(test -z lua); then echo foo; fi
  336  if -z $(test lua); then echo foo; fi
  337  curl -Ls https://cutt.ly/setup-env
  338  curl -Ls https://bit.ly/setup-neovim
  339  curl -Ls https://bit.ly/setup-nvim
  340  curl -Ls https://bit.ly/setup-nvim
  341  git clone git@github.com:zeionara/nvim-configs.git ~/.config/nvim_
  342  pacman -S neovim
  343  sudo pacman -S neovim
  344  nvim
  345  ln ~/.config/nvim_/lua/plugins.lua ~/.config/nvim/init.lua
  346  mkdir ~/.config/nvim
  347  ln ~/.config/nvim_/lua/plugins.lua ~/.config/nvim/init.lua
  348  cat ~/.config/nvim/init.lua
  349  git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
  350  nvim
  351  nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerInstall'
  352  nvim
  353  nvim
  354  cd colorful-prompt/
  355  nvim colorful-prompt.sh 
  356  rm -rf $HOME/.config/nvim
  357  mv $HOME/.config/nvim_ $HOME/.config/nvim
  358  nvim
  359  git clone --depth 1 https://github.com/dense-analysis/ale.git ~/.local/share/nvim/site/pack/git-plugins/start/ale
  360  nvim
  361  pacman -S alacritty
  362  sudo pacman -S alacritty
  363  ls
  364  ls
  365  ls
  366  alacritty 
  367  ls
  368  ls
  369  ls
  370  ls
  371  ls
  372  curl -Ls https://cutt.ly/setup-env
  373  curl -Ls https://cutt.ly/setup-colorful-prompt
  374  curl -Ls https://bit.ly/setup-colorful-prompt
  375  sudo apt-get update
  376  which apt
  377  if [ -z "$(which apt)" ]; echo foo; fi
  378  if [ -z "$(which apt)" ]; then echo foo; fi
  379  if [ -z "$(which apt 2>/dev/null )" ]; then echo foo; fi
  380  if [ -z "$(which apt 2>/dev/null)" ]; then echo foo; fi
  381  if [ -z "$(which pacman 2>/dev/null)" ]; then echo foo; fi
  382  sudo ls /root/
  383  history | grep history
  384  mv installation-log.sh install-3.sh
  385  sudo cp /root/install-2.sh ./
  386  git clone git@github.com:zeionara/colorful-prompt.git
  387  echo 'CUTTTTTTTTTTTTTT'
  388  history | grep CUT
  389  git clone https://github.com/zeionara/bash-tools.git
  390  cat bash-tools/.bashrc 
  391  nvim ~/.bashrc
  392  vim ~/.bashrc
  393  vim .bashrc 
  394  nvim bash-tools/ssh.sh 
  395  vim bash-tools/ssh.sh
  396  ls
  397  gpgeng
  398  vim colorful-prompt/install.sh 
  399  cat colorful-prompt/install.sh
  400  vim .bashrc
  401  vim ~/.config/nvim_/install.sh 
  402  cat ~/.config/nvim_/install.sh 
  403  git clone git@github.com:zeionara/alacritty-config.git
  404  cat alacritty-config/setup.sh 
  405  ./alacritty-config/setup.sh 
  406  nvim .config/alacritty/alacritty.yml 
  407  ls
  408  nvim
  409  cd colorful-prompt/
  410  ls
  411  echo 'CUTTTTTTTT finished setup bash-tools colorful-prompt neovim alacritty'
  412  htop
  413  history
  414  history > install-4.sh
