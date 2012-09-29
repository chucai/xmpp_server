# -*- encoding: utf-8 -*-
module XmppServer

	#drb interface
	class Pusher
			def push(username, content)
				m = XmppServer::M.new(username, content)
				XmppServer::QUEUE.push m
				return nil  #from : http://ruby-china.org/topics/5550
			end
	end

end
