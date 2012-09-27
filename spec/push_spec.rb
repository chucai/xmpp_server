require 'spec_helper'

describe "XmppServer.push" do
	
	it "should push message to queue" do
		XmppServer::Pusher.new().push("tester1", "hello world")
		m = XmppServer::QUEUE.pop	
		m.username.should == "tester1"
		m.content.should  == "hello world"
	end

	it "push data to queue" do
		3.times do |i|
			m = XmppServer::M.new("tester002", "hello #{i}")
			XmppServer::QUEUE.push(m)
			sleep 1
			p XmppServer::QUEUE
		end
	end

end
