# -*- encoding: utf-8 -*- 

namespace :xmppserver do
	
	desc "启动xmppserver-drb服务器"
	task :start do
		puts "start xmpp drb server"
		path = File.expand_path("../../../bin",__FILE__)
		file_path = File.join(path, "xmppserver")
		system("#{file_path}")
	end

end
