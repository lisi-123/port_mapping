## 机场 hy2端口跳跃教程

**适用于 v2board wyx2685 和 xboard**


<br>

首先要搭建一个普通的hy2节点

假设已经使用 **3000** 端口搭建了一个hy2节点

现在想做 **6000** 到 **7000** 的端口跳跃

执行以下脚本：

```bash
wget -N https://raw.githubusercontent.com/lisi-123/rclone/main/udp_port_mapping.sh && bash ./udp_port_mapping.sh

```

连接端口（起始）填写 **6000**

连接端口（终止）填写 **7000**

服务端口填写 **3000**

然后在机场那边，把“连接端口”改成 **6000-7000**


这里所说的端口，只是为了方便理解举的例子

实际操作中，可以根据需求随意调整


<br>
