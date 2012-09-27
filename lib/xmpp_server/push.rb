# -*- encoding: utf-8 -*-

module XmppServer
	
	extend self

	def push(username, content)
		m = M.new(username, content)
		QUEUE.push m 
	end
	
end
