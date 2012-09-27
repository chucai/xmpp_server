## xmpp_server
给xmpp 服务器push 消息的中转站

###实例
* 如何启动服务
```shell
./bin/xmppserver
```

* 客户端code
```ruby
require 'drb/drb'

SERVER_URI="druby://localhost:8787"  
DRb.start_service  
xmppserver = DRbObject.new_with_uri(SERVER_URI)  
3.times do |i| 
	xmppserver.push("tester002", "testdddeeee....")
	sleep 1
end  
```

###需要实现
* 一个将配置文件复制到initializers目录的generator
* 启动xmpp server 中转站的 task[start, stop , restart]
* 需要充分的测试

