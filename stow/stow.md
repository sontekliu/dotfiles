
# stow

### 1. install 

```shell
$ sudo pacman -S stow
```

### 2. use stow

1. 创建 dotfiles 目录，并使用 git 管理

```shell
$ mkdir dotfiles
$ git init --bare
```

2. 创建 zsh，rofi 目录，rofi 下面创建子目录

```shell
$ cd dotfiles
$ mkdir zsh
$ mkdir rofi
$ mkdir -p rofi/.config/rofi
```

3. 复制配置文件到指定的目录

```shell
$ cp ~/.zshrc ~/dotfiles/zsh
$ cp ~/.config/rofi/* ~/dotfiles/rofi/.config/rofi 
```

4. 删除源文件，并使用 stow 管理

```shell
$ rm -rf ~/.zshrc
$ rm -rf ~/.config/rofi

$ cd dotfiles
$ stow -t ~ zsh
$ stow -t ~ rofi
```

