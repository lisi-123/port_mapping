## 机场 hy2端口跳跃教程

**适用于 v2board wyx2685 和 xboard**


<br>

首先搭建一个普通且可用的hy2节点

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

以上设置不会永久保存，重启vps自动失效，所以重启后需要重新设置

<br>

最后打开机场管理面板

 **“连接端口”** 改成 **6000-7000**
 
**服务端口** 保持不变，还是 **3000**


<br>

这里提到的所有端口，只是为了方便理解举的例子

实际操作中，可以根据需求随意调整




<br>
