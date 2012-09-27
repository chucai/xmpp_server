# -*- encoding: utf-8 -*- 

module XmppServer
	
	QUEUE = Queue.new

	#message node
	class M
		attr_accessor :username, :content

		def initialize(username, content)
			@username = username
			@content  = content
		end
	end
end
