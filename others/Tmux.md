# Tmux 常用命令


### 1. Session 相关


| Index | Command                              | Description                                    |
|-------|--------------------------------------|------------------------------------------------|
| 1     | tmux                                 | 创建 session                                   |
| 2     | tmux new                             | 创建 session                                   |
| 3     | tmux new -s SESSION_NAME             | 创建名称为 SESSION_NAME 的 session             |
| 4     | tmux ls                              | 显示 session 列表                              |
| 5     | tmux kill-session -t SESSION_NAME    | 退出名称为 SESSION_NAME 的 session             |
| 6     | tmux kill-session -a -t SESSION_NAME | 退出所有 session，SESSION_NAME 的 session 除外 |
| 7     | tmux kill-session -a -t SESSION_NAME | 退出所有 session，SESSION_NAME 的 session 除外 |
| 8     | Ctrl + d                             | 退出当前 session                               |
| 9     | Ctrl + b  d                          | Detach 当前 session                            |
| 10    | Ctrl + b  s                          | 列出所有 session                               |


### 2. Window 相关

| Index | Command    | Description       |
|-------|------------|-------------------|
| 1     | Ctrl + b c | 创建新的 Window   |
| 2     | Ctrl + b w | 列出所有 Window   |
| 3     | Ctrl + b 0 | 切换到几号 Window |
| 4     | Ctrl + b , | 重命名当钱 Window        |

### 3. Pane 相关

| Index | Command    | Description                     |
|-------|------------|---------------------------------|
| 1     | Ctrl + b % | 将当前 Window 水平分割两个 Pane |
| 2     | Ctrl + b " | 将当前 Window 垂直分割两个 Pane |
| 3     | Ctrl + b o | 光标跳转到下一个 Pane           |
| 4     | Ctrl + b ; | 当前 Pane 和上一 Pane 之间切换  |
| 5     | Ctrl + b x | 关闭当前 Panel                  |
| 6     | Ctrl + b q | 显示 Panel 编号                 |
| 7     | Ctrl + b z | Pane 全屏切换                   |
| 8     | Ctrl + b t | 显示时间                        |



[参考资料]

https://tmuxcheatsheet.com/


