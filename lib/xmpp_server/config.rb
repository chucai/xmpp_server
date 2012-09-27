# -*- encoding: utf-8 -*- 

module XmppServer

	class Config
		@@server   = "weishanke.com"
		@@username = "tester001"
		@@password = "123456"

		class << self
			def server; @@server ;end
			def username; @@username; end
			def password; @@password; end
		end
	end


end
