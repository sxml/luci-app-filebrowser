# luci-app-filebrowser
在Lienol的源码基础上改进而来，添加了更多的特性和配置项。

在OpenWRT中配置filebrowser的LUCI应用

本分支已适配 OpenWrt 25.12（coolsnowwolf/luci 的 `openwrt-25.12` 分支）。  
25.12 的 `luci-base` 已改为纯 ucode 运行时，老式 Lua/CBI 界面所需的运行时和兼容库
（`luci-compat`、`luci-lua-runtime`、`luci-lib-nixio`、`luci-lib-jsonc` 等）
已在 Makefile 的 `LUCI_DEPENDS` 中声明，编译安装时会自动带上，无需手动额外安装。

> 旧版 18.06 / 19.x 固件请使用对应的 18.06 分支。

由于可执行文件很大，至少32MB，因此ipk中不集成filebrowser的可执行文件。

首次运行前，需要手动下载可执行文件，如果你的空间足够大，推荐可执行文件目录配置为`/usr/bin`，否则根据需要放到你认为合适的目录。（路径不能包含空格）

![preview.png](preview.png)

![preview2.png](preview2.png)


# 构建

Release页有编译好的ipk包，可直接安装，或者可以手动编译

```
git clone https://github.com/xiaozhuai/luci-app-filebrowser package/luci-app-filebrowser
make package/luci-app-filebrowser/compile
```

> AI生成
