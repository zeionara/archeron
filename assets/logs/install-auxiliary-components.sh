    7  mkinitcpio -P
    8  sudo mkinitcpio -P
    9  cat /etc/modprobe.d/modprobe.conf
   10  radeon
   11  amdgpu
   12  modprobe amdgpu
   13  sudo vim /etc/modprobe.d/modprobe.conf
   14  modprobe amdgpu
   15  man modprobe
   16  modprobe -a
   17  modprobe -a amdgpu
   18  cat /etc/modprobe.d/modprobe.conf
   19  modprobe -a amdgpu
   20  modprobe -a amdgpu -v
   21  radeon.cik_support=0
   22  sudo reboot
   23  sudo pacman -S git
   24  git clone git://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git
   25  lsmod
   26  lsmod | grep amd
   27  ls
   28  rmmod pcspkr
   29  sudo rmmod pcspkr
   30  vim .bashrc
   31  sudo pacman -S linux-firmware
   32  sudo mkinitcpio -P
   33  sudo pacman -S ast-firmware linux-firmware-qlogic 
   34  sudo pacman -S linux-firmware-qlogic 
   35  sudo pacman -S yay
   36  sudo pacman -S base-devel
   37  sudo pacman -S yay
   38  yay
   39  reboot
   40  sudo systemctl start lightdm
   41  sudo systemctl status lightdm
   42  reboot
   43  sudo vim /etc/systemd/system/display-manager.service 
   44  sudo reboot
   45  ls
   46  df -h .
   47  speaker-test -c2
   48  speaker-test -c2
   49  speaker-test -c2
   50  pacman -S neofetch
   51  sudo pacman -S neofetch
   52  neofetch
   53  pacman -S htop
   54  sudo pacman -S htop
   55  htop
   56  google-chrome
   57  neofetch
   58  ls
   59  ls
   60  ls
   61  htop
   62  pacman -S alsa-utils
   63  sudo pacman -S alsa-utils
   64  alsamixer 
   65  alsamixer 
   66  alsamixer 
   67  alsamixer 
   68  ls
   69  git clone https://aur.archlinux.org/yay-git.git
   70  cd yay-git/
   71  makepkg -si
   72  yay -S google-chrome
   73  google-chrome
   74  google-chrome-stable 
   75  pacman -S pavicontrol
   76  sudo pacman -S pavicontrol
   77  sudo pacman -S pavucontrol
   78  pacman -S pulseaudio
   79  sudo pacman -S pulseaudio
   80  pulseaudio
   81  sudo systemctl status lightdm.service
   82  sudo vim /etc/systemd/system/display-manager.service 
   83  /usr/bin/lightdm
   84  sudo /usr/bin/lightdm
   85  sudo systemctl status lightdm.service
   86  sudo systemctl stop lightdm.service
   87  sudo systemctl  daemon-reload
   88  sudo systemctl stop lightdm.service
   89  sudo systemctl status lightdm.service
   90  sudo systemctl start lightdm.service
   91  sudo systemctl status lightdm.service
   92  sudo systemctl status lightdm.service
   93  sudo systemctl start lightdm.service
   94  sudo systemctl status lightdm.service
   95  dmesg
   96  sudo dmesg
   97  sudo systemctl start lightdm.service
   98  sudo dmesg
   99  dmesg
  100  sudo systemctl status lightdm.service
  101  sudo systemctl status lightdm
  102  sudo systemctl restart lightdm
  103  journalctl -xeu lightdm.service
  104  startxfce4 
  105  systemctl list-unit-files | grep enabled
  106  iwctl
  107  lightdm --test-mode --debug
  108  sudo pacman -S lightdm-gtk-greeter
  109  reboot
  110  pacman -S nm-connection-editor
  111  sudo pacman -S nm-connection-editor
  112  pacman -S tmux
  113  sudo pacman -S tmux
  114  tmux new -n main -s setup
  115  ping foo
  116  ping 8.8.8.8
  117  ip a
  118  lspci -k
  119  ip link set wlan0 up
  120  sudo ip link set wlan0 up
  121  ip a
  122  dmesg | grep firmware
  123  sudo dmesg | grep firmware
  124  sudo dmesg
  125  ls
  126  ip a
  127  sudo ip link set wlan0 up
  128  sudo dmesg | grep firmware
  129  lspci -k
  130  sudo dmesg | grep ath9k
  131  lsmod
  132  lsmod | grep ath9k
  133  iwctl
  134  ping google.com
  135  ping google.com
  136  iwctl
  137  iwctl
  138  htop
  139  ls
  140  lspci
  141  ifconfig
  142  ip a
  143  ip a
  144  iwctl
  145  sudo systemctl start iwd
  146  iwctl
  147  htop
  148  sudo amod pcspkr
  149  neofetch
  150  iwconfig
  151  ip link set wlan0 up
  152  sudo ip link set wlan0 up
  153  iwlist interface scan | less
  154  iwlist interface scan | less
  155  iwlist wlan0 scan | less
  156  ip a
  157  wifi-menu
  158  sudo wifi-menu
  159  sudo wifi-menu
  160  systemctl status "netctl@wlan0\\x2dhearts.service"
  161  sudo wifi-menu
  162  reboot
  163  sudo systemctl status NetworkManager
  164  pacman -S networkmanager
  165  sudo pacman -S networkmanager
  166  ip a
  167  sudo ip link set wlan0 up
  168  ip a
  169  ip a
  170  ip a
  171  ip a
  172  ip a
  173  ip a
  174  ip a
  175  history
  176  iwlist wlan0 scan | less
  177  iwlist wlan0 scan | less
  178  wifi-menu
  179  sudo wifi-menu
  180  sudo pacman -S network-manager-applet
  181  sudo pacman -S network-manager-applet
  182  wifi-menu
  183  sudo wifi-menu
  184  sudo wifi-menu
  185  reboot
  186  pacman -Qent
  187  htop
  188  neofetch
  189  xfconf-query -c xsettings -p /Gdk/WindowScalingFactor -s 2
  190  xfconf-query -c xsettings -p /Gdk/WindowScalingFactor -s 1
  191  xfconf-query -c xsettings -p /Gdk/WindowScalingFactor -s 1.5
  192  xfconf-query -c xsettings -p /Gdk/WindowScalingFactor -s 1
  193  reboot
  194  ls
  195  ls -alh
  196  cat .bashrc
  197  htop
  198  df -h .
  199  ls
  200  ls /
  201  pacman -S unzip
  202  sudo pacman -S unzip
  203  cd Downloads/
  204  ls
  205  unzip Inconsolata.zip 
  206  mkdir UbuntuMono
  207  unzip --help
  208  unzip UbuntuMono.zip -d UbuntuMono
  209  sudo fc-cache -f -v
  210  history > ~/installation-log.sh
  211  history | wc -l
  212  sudo fc-cache -f -v
  213  fc-cache -f -v
  214  ls /home/mabel/.fonts
  215  ls /home/mabel/.fonts
  216  fc-cache -f -v
  217  ls
  218  vim
  219  htop
  220  pacman -S conky
  221  sudo pacman -S conky
  222  conky
  223  conky
  224  ls
  225  python
  226  ls
  227  sshgen
  228  vim bash-tools/gpg.sh 
  229  gpgeng
  230  gpga
  231  git clone git@github.com:zeionara/colorful-prompt.git
  232  cat colorful-prompt/install.sh 
  233  test -z $(which lua)
  234  test -z $(which foo)
  235  lua
  236  pacman -S lua
  237  sudo pacman -S lua
  238  nvim colorful-prompt/install.sh 
  239  if test -z $(which luaa 2/dev/null); then echo foo; fi
  240  if test -z $(which luaa 2>/dev/null); then echo foo; fi
  241  if test -z $(which luaa 2 > /dev/null); then echo foo; fi
  242  if test -z $(which luaa 2>/dev/null); then echo foo; fi
  243  if test -z $(which lua 2>/dev/null); then echo foo; fi
  244  ls
  245  cd colorful-prompt/
  246  ls
  247  if test -z $(which lua 2> /dev/null); then echo foo; fi
  248  ls
  249  cd colorful-prompt/
  250  ls
  251  ls
  252  ls
  253  history | head
  254  history | wc -l
  255  cd colorful-prompt.sh 
  256  ls
  257  git diff
  258  vim colorful-prompt.sh 
  259  nvim install.sh 
  260  vim install.sh
  261  gtx
  262  git diff
  263  git status
  264  git add -u
  265  git status
  266  git commit -m 'feat(install): added support for arch in the installation script'
  267  gtu
  268  git push -u origin master
  269  curl -Ls https://cutt.ly/setup-git-tools
  270  curl -Ls https://cutt.ly/setup-git-tools | bash
  271  cd git-tools/
  272  gtrsuo git@github.com:zeionara/git-tools.git
  273  gtx
  274  gts
  275  ls
  276  neofetch
  277  test -z baa
  278  test -z pacman
  279  test -z lua
  280  if test -z lua; then echo foo; fi
  281  if test -z lua; then echo foo; fi
  282  if $(test -z lua); then echo foo; fi
  283  if -z $(test lua); then echo foo; fi
  284  curl -Ls https://cutt.ly/setup-env
  285  curl -Ls https://bit.ly/setup-neovim
  286  curl -Ls https://bit.ly/setup-nvim
  287  curl -Ls https://bit.ly/setup-nvim
  288  git clone git@github.com:zeionara/nvim-configs.git ~/.config/nvim_
  289  pacman -S neovim
  290  sudo pacman -S neovim
  291  nvim
  292  ln ~/.config/nvim_/lua/plugins.lua ~/.config/nvim/init.lua
  293  mkdir ~/.config/nvim
  294  ln ~/.config/nvim_/lua/plugins.lua ~/.config/nvim/init.lua
  295  cat ~/.config/nvim/init.lua
  296  git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
  297  nvim
  298  nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerInstall'
  299  nvim
  300  nvim
  301  cd colorful-prompt/
  302  nvim colorful-prompt.sh 
  303  rm -rf $HOME/.config/nvim
  304  mv $HOME/.config/nvim_ $HOME/.config/nvim
  305  nvim
  306  git clone --depth 1 https://github.com/dense-analysis/ale.git ~/.local/share/nvim/site/pack/git-plugins/start/ale
  307  nvim
  308  pacman -S alacritty
  309  sudo pacman -S alacritty
  310  ls
  311  ls
  312  ls
  313  alacritty 
  314  ls
  315  ls
  316  ls
  317  ls
  318  ls
  319  curl -Ls https://cutt.ly/setup-env
  320  curl -Ls https://cutt.ly/setup-colorful-prompt
  321  curl -Ls https://bit.ly/setup-colorful-prompt
  322  sudo apt-get update
  323  which apt
  324  if [ -z "$(which apt)" ]; echo foo; fi
  325  if [ -z "$(which apt)" ]; then echo foo; fi
  326  if [ -z "$(which apt 2>/dev/null )" ]; then echo foo; fi
  327  if [ -z "$(which apt 2>/dev/null)" ]; then echo foo; fi
  328  if [ -z "$(which pacman 2>/dev/null)" ]; then echo foo; fi
  329  sudo ls /root/
  330  history | grep history
  331  mv installation-log.sh install-3.sh
  332  sudo cp /root/install-2.sh ./
  333  git clone git@github.com:zeionara/colorful-prompt.git
  334  echo 'CUTTTTTTTTTTTTTT'
  335  history | grep CUT
  336  git clone https://github.com/zeionara/bash-tools.git
  337  cat bash-tools/.bashrc 
  338  nvim ~/.bashrc
  339  vim ~/.bashrc
  340  vim .bashrc 
  341  nvim bash-tools/ssh.sh 
  342  vim bash-tools/ssh.sh
  343  ls
  344  gpgeng
  345  vim colorful-prompt/install.sh 
  346  cat colorful-prompt/install.sh
  347  vim .bashrc
  348  vim ~/.config/nvim_/install.sh 
  349  cat ~/.config/nvim_/install.sh 
  350  git clone git@github.com:zeionara/alacritty-config.git
  351  cat alacritty-config/setup.sh 
  352  ./alacritty-config/setup.sh 
  353  nvim .config/alacritty/alacritty.yml 
  354  ls
  355  nvim
  356  cd colorful-prompt/
  357  ls
  358  echo 'CUTTTTTTTT finished setup bash-tools colorful-prompt neovim alacritty'
  359  htop
  360  history
  361  history > install-4.sh
  362  cd ~/.config/nvim/
  363  gts
  364  gtx
  365  gts
  366  gtau
  367  gts
  368  gtc 'feat(install): added support for arch in the installation script'
  369  gtu
  370  cd ~
  371  mkdir archeron
  372  cd archeron/
  373  ls
  374  mkdir assets
  375  pacman -S telegram-desktop
  376  sudo pacman -S telegram-desktop
  377  nvim README.md
  378  gts
  379  gtau
  380  gtsu
  381  gtaa
  382  gts
  383  gtc 'feat(extension-points): added extension points, completed the first version of the tutorial'
  384  gtu
  385  nvim README.md 
  386  gtx
  387  gts
  388  gtau
  389  gts
  390  gtc 'feat(important): added important blocks, made other small fixes'
  391  gtu
  392  nvim README.md 
  393  gtx
  394  gts
  395  gtau
  396  gts
  397  gtc 'feat(alacritty): added missing alacritty installation command through pacman'
  398  gtu
  399  cd archeron/
  400  ls
  401  gts
  402  git init
  403  gts
  404  gta assets/ README.md 
  405  gts
  406  gtc 'init(repo): initial commit'
  407  gtu
  408  gtrao git@github.com:zeionara/archeron.git
  409  gtuoi
  410  mv ~/Downloads/logo.png assets/
  411  gts
  412  gtau
  413  gts
  414  gtc 'fix(logo): decreased logo size'
  415  gtu
  416  gts
  417  gtx
  418  gta README.md 
  419  gts
  420  gtc 'fix(readme): specified image size in readme'
  421  gtu
  422  gts
  423  gtau
  424  gts
  425  gtc 'feat(getting-started): added getting-started section'
  426  gtu
  427  gts
  428  gtau
  429  gts
  430  gtc 'feat(getting-started): described metadata-csum-seed error'
  431  gtu
  432  gts
  433  gtau
  434  gts
  435  gtc 'feat(preconditions): added preconditons and postconditions to the first section'
  436  gtu
  437  sudo cat /etc/fstab
  438  gts
  439  gts
  440  gtau
  441  gts
  442  timedatectl
  443  gts
  444  gta README.md 
  445  gts
  446  gtc 'feat(core-components): added core components installation instructions'
  447  gtu
  448  ts
  449  gts
  450  gtau
  451  gts
  452  gtc 'fix(hashes): fixed hashes in the document'
  453  gtu
  454  mkdir /mnt/foo
  455  gts
  456  gtx
  457  gts
  458  gtau
  459  gts
  460  gtc 'fix(numeration): updated steps numeration in the second section'
  461  gtu
  462  sudo pacman -S amd-ucode
  463  cp CPU.md GPU.md
  464  cp GPU.md Sound.md
  465  cp Sound.md Desktop.md
  466  sudo vim /etc/systemd/system/display-manager.service 
  467  cat /etc/systemd/system/display-manager.service
  468  cp Sound.md AUR.md
  469  ls ~/.fonts
  470  ls ~/.fonts/*.tff
  471  cat ~/.fonts/*.tff
  472  for file in ~/.fonts/*.tff; do echo $file; done
  473  for file in "~/.fonts/*.tff"; do echo $file; done
  474  for file in ~/.fonts/*; do echo $file; done
  475  touch foo.bar
  476  mv *.bar io
  477  ls
  478  rm io
  479  echo -E '\nfoo' >> ~/.bashrc
  480  echo -e '\nfoo' >> ~/.bashrc
  481  history
  482  curl -Ls https://bit.ly/setup-nvim
  483  cat ../install-2.sh 
  484  mkdir assets/logs
  485  mv ~/install-2.sh assets/logs/install-core-components.sh
  486  head ~/install-3.sh 
  487  head ~/install-4.sh 
  488  mv ~/install-4.sh assets/logs/install-auxiliary-components.sh
  489  ls ~
  490  rm ~/install-3.sh 
  491  ls ~/Downloads/
  492  rm ~/Downloads/*.zip
  493  ls ~/Downloads/
  494  rm -rf ~/Downloads/Inconsolate/
  495  rm -rf ~/Downloads/UbuntuMono/
  496  df -h .
  497  htop
  498  sudo pacman -S noto-fonts-emoji
  499  fc-cache -f -v
  500  htop
  501  ls
  502  ls
  503  ls
  504  zsh
  505  history
  506  history > ~/archeron/assets/logs/install-auxiliary-components.sh 
