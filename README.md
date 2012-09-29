## xmpp_server
给xmpp 服务器push 消息的中转站

###实例
* 如何启动服务
```shell
./bin/xmppserver
```
rake启动
```ruby
rake xmppserver:start
```

* 客户端code
```ruby
require 'drb/drb'
SERVER_URI="druby://localhost:8787"  
xmppserver = DRbObject.new_with_uri(SERVER_URI)  
3.times do |i| 
	xmppserver.push("tester002", "testdddeeee....")
	sleep 1
end  
```

* 修改服务器地址,用户名和密码
```ruby
XmppServer::Config.config do |s|
	s.username = "zhangsan"
	s.password = "xxxxxx"
	s.server   = "test.com"
end
```
Rails中，可以新建`config/initializers/xmppserver.rb`

* Rails项目中的使用
新建`config/initializers/xmppserver.rb`文件
```ruby
require 'drb/drb'
SERVER_URI="druby://localhost:8787"  
XMPPSERVER = DRbObject.new_with_uri(SERVER_URI)  
XmppServer::Config.config do |s|
	s.username = "zhangsan"
	s.password = "xxxxxx"
	s.server   = "test.com"
end
```
