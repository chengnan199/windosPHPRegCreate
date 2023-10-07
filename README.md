# 使右击菜单可以打开不同版本的PHPcmd

先使用 [updateBat.bat](/updateBat.bat) ， 会在指定文件夹下生成`regedit文件夹`，并在`regedit文件夹`内生成.bat文件

运行 [regAddPhp.bat](regAddPhp.bat) 即可添加到注册表

`regAddPhp.bat`还未实现,还需手动添加到右键菜单 自行搜索 [win10自定义鼠标右键多级菜单](https://www.bing.com/search?q=win10%E8%87%AA%E5%AE%9A%E4%B9%89%E9%BC%A0%E6%A0%87%E5%8F%B3%E9%94%AE%E5%A4%9A%E7%BA%A7%E8%8F%9C%E5%8D%95&PC=U316&FORM=CHROMN)
## 原理
在注册表内添加一个值指向生成的 `.bat` 文件
生成的 `.bat` 文件内，为打开的`cmd`窗口一个临时环境变量，窗口关闭后环境变量消失

![img.png](/img/img.png)