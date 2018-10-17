#!/bin/sh
function check_proxy(){
	if [ `ps -ef|grep ssh|grep 198.177.123.4|grep -v grep|wc -l` -gt 0 ];then
		echo "代理正在运行"
	else
		echo "代理已经停止"
	fi
}
function start_proxy(){
	if [ `ps -ef|grep ssh|grep 198.177.123.4|grep -v grep|wc -l` -gt 0 ];then
		echo "代理正在运行，先停止正在运行的代理"
		stop_proxy
	fi
	
	echo "正在启动代理......"
	ssh -C -N -f -n -D 9999 yangshuo@198.177.123.4
	if [ $? -eq  0 ]; then
		echo "启动代理成功"
	else
		echo "启动代理失败"
	fi
}

function stop_proxy(){
	echo "正在停止代理....."
	ps -ef|grep ssh|grep "9999"|grep "yangshuo@198.177.123.4"|grep -v grep|awk '{print $2}'|xargs kill -9 && echo "停止代理成功"
}


function start_http_proxy(){
#	privoxy /usr/local/etc/privoxy/config
	brew services start privoxy
}

function stop_http_proxy(){
	brew services stop privoxy
}


function check_http_proxy(){
	brew services list|grep privoxy
}
