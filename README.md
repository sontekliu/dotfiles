
# Archlinux 美化

### 1. 软件安装

* 必安软件

```shell
$ sudo pacman -S i3wm		# i3wm
$ sudo pacman -S i3-gaps	# 设置窗口间隔
$ sudo pacman -S i3lock		# 锁屏
$ sudo pacman -S feh		# 桌面
$ sudo pacman -S scrot		# 截图
$ sudo pacman -S compton	# 透明设置
$ sudo pacman -S rofi		# 应用程序启动器
$ sudo pacman -S ranger		# 基于终端的文件管理器
$ sudo pacman -S alsa-utils	# 声音设置

# urxvt 相关
$ sudo pacman -S rxvt-unicode	
$ sudo pacman -S urxvt-perls
$ yaourt font-size
$ yaourt urxvt-fullscreen



$ git clone git@github.com:ForAwesome/Font-Awesome.git ~/.fonts/
```

* 可选软件

```shell
$ sudo pacman -S pcmanfm	# 文件管理器
$ sudo pacman -S thunar		# 文件管理器
$ sudo pacman -S evince		# PDF 阅读器
$ sudo pacman -S dmenu		# 应用程序启动器
$ sudo pacman -S shadowsocks-qt5 # 科学上网
$ sudo pacman -S conky
$ sudo pacman -S gvfs-mtp	# 查看挂载的U盘等设备，结合 thunar 一起使用
```
