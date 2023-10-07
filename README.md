# 使右击菜单可以打开不同版本的PHPcmd

先使用 [updateBat.bat](/updateBat.bat) ， 会在指定文件夹下生成`regedit文件夹`，并在`regedit文件夹`内生成.bat文件

运行 [regAddPhp.bat](regAddPhp.bat) 即可添加到注册表（`regAddPhp.bat`还未实现）

## 原理
在注册表内添加一个值指向生成的 `.bat` 文件
生成的 `.bat` 文件内，为打开的`cmd`窗口一个临时环境变量，窗口关闭后环境变量消失

![img.png](/img/img.png)