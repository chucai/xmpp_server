# -*- encoding: utf-8 -*-
module XmppServer

	#drb interface
	class Pusher
			def push(username, content)
				m = XmppServer::M.new(username, content)
				XmppServer::QUEUE.push m
			end
	end

end
