## 机场 hy2端口跳跃教程

**适用于 v2board wyx2685（肯定可以） 和 xboard（理论上也可以）**


<br>

首先搭建一个基础且可用的hy2节点（划重点，可用）

假设已经使用 **3000** 端口搭建了一个hy2节点

现在想做 **6000** 到 **7000** 的端口跳跃

<br>

首先执行以下脚本：

```bash
wget -N https://raw.githubusercontent.com/lisi-123/port_mapping/main/udp_port_mapping.sh && bash ./udp_port_mapping.sh

```

如果因为ipv6导致无法运行，试试这个：

```bash
wget -4 https://raw.githubusercontent.com/lisi-123/port_mapping/main/udp_port_mapping.sh && bash ./udp_port_mapping.sh

```

<br>

连接端口（起始）填写 **6000**

连接端口（终止）填写 **7000**

服务端口填写 **3000**

以上设置不会永久保存，重启vps自动失效，重启后需要重新设置

如果需要永久保存，执行这个

```bash
sudo apt install iptables-persistent

```
安装时所有选项都是确认

<br>

如果使用了防火墙，请确认 6000-7000 端口的udp可正常使用

<br>

最后打开机场管理面板，找到使用 **3000** 端口搭建的hy2节点

 **“连接端口”** 改成 **6000-7000**（注意符号！！！&nbsp; 中间是-而不是:）
 
**“服务端口”** 保持不变，还是 **3000**


<br>

这里提到的所有端口，只是为了方便理解举的例子

实际操作中，可以根据需求随意调整

注意：服务端口不能在连接端口的范围内！

<br>

本教程代码全部由gpt生成，本人仅测试过一次 &nbsp;&nbsp; (›´ω`‹ )

有问题请联系 [https://t.me/@talkingstick233_bot](https://t.me/talkingstick233_bot
)


<br>
