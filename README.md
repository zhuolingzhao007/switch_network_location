# switch_network_location


### 使用说明
1. 请先在 Mac 上[创建一个 Location][1],例如命名为 "Location"。
2. 请将 `script.sh` 文件中的 `xxx` 替换成你想在连接到哪个 Wi-Fi 网络时，Location 切换的 Wi-Fi 名称。
3. 请将 `script.sh` 文件中的 `Location` 替换成你在第一步创建的 Location 的名称。
4. 请将 `script.sh` 文件复制到 `/Users/your_username/` 目录下，并在 `script.sh` 文件的开头部分添加 `#!/bin/bash`。
5. 请在 `script.sh` 文件的开头部分添加你的开机密码，例如 `echo admin123 | sudo -S`。
6. 请在 Hammerspoon 的配置文件中添加下面的代码。
7. 请重启 Hammerspoon，让它生效。

[1]: https://support.apple.com/zh-cn/HT202662


```c

-- 定义 WiFi 连接变化的回调函数
-- password 是你的开机密码 path 是脚本位置
function wifiChanged()
      hs.alert.show("WiFi changed")
      hs.execute("echo password | sudo -S path")
end

-- 创建 WiFi 监视器
wifiWatcher = hs.wifi.watcher.new(wifiChanged)

-- 启动 WiFi 监视器
wifiWatcher:start()

-- 显示启动成功的提示
hs.alert.show("Hammerspoon WiFi Watcher Started")
```

