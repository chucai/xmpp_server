require "xmpp_server/version"
require "xmpp4r/client"
require "xmpp_server/config"
require "xmpp_server/queue"
require "xmpp_server/push"

module XmppServer

	#xmpp client to push connect and push message to xmpp server
	class Client
		attr_accessor :jid, :password

		def initialize(jid, password)
		  @jid      = jid
			@password = password
			@client   = Jabber::Client.new @jid 
		end

		def connect
			@client.connect
		end

		def auth
			@client.auth @password
		end

		def push(m)
			to = "#{m.username}@#{XmppServer::Config.server}/nickname"
			msg = Jabber::Message::new(to, m.content).set_type(:normal).set_id(1)
			@client.send msg
		end
	end
end
