#!/bin/bash

# 检查是否已经安装sudo
if ! command -v sudo &> /dev/null; then
    echo "sudo 未安装，正在安装..."
    apt install sudo -y
fi

# 提示输入连接端口的起始和终止端口
echo "请输入连接端口（起始）:"
read start_port

echo "请输入连接端口（终止）:"
read end_port

echo "请输入服务端口:"
read service_port

# 检查输入格式是否正确
if [[ ! "$start_port" =~ ^[0-9]+$ ]] || [[ ! "$end_port" =~ ^[0-9]+$ ]] || [[ ! "$service_port" =~ ^[0-9]+$ ]]; then
    echo "端口格式无效，请重新输入。"
    exit 1
fi

# 检查服务端口是否在连接端口范围内
if [ "$service_port" -ge "$start_port" ] && [ "$service_port" -le "$end_port" ]; then
    echo "错误：服务端口不能在连接端口范围内！"
    exit 1
fi

# 执行 iptables 映射
echo "正在执行端口映射..."
sudo iptables -t nat -A PREROUTING -p udp --dport $start_port:$end_port -j REDIRECT --to-port $service_port

echo "端口映射已完成"
