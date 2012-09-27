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

			def server=(server)
				@@server = server
			end

			def username=(username)
				@@username = username
			end

			def password=(password)
				@@password = password
			end

			def config
				yield self
			end
		end
	end


end
