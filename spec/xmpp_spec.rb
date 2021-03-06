require 'spec_helper'

describe "push messgae to client" do
	
	it "should push message" do
		jid      = "#{XmppServer::Config.username}@#{XmppServer::Config::server}/pusher"
		jid.should == "tester001@weishanke.com/pusher"
		password = XmppServer::Config.password
		client   = XmppServer::Client.new(jid, password)
		m        = XmppServer::M.new("tester002", "hello,man")
		client.connect
		client.auth
		client.push m
	end

	it "default should could push message" do
		m      = XmppServer::M.new("tester002", "hello, world. default push")
		client = XmppServer::Client.get_default_client
		client.push m
	end

end
