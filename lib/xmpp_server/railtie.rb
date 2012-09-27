require 'xmpp_server'
require 'rails'

module XmppServer
	class Railtie < Rails::Railtie

		rake_tasks do
			load File.join(File.expand_path("../../tasks", __FILE__), "xmpp_server.rake")
		end
	end
end
