require 'spec_helper'

describe "XmppServer.push" do
	
	it "should push message to queue" do
		XmppServer.push("tester1", "hello world")
		m = XmppServer::QUEUE.pop	
		m.username.should == "tester1"
		m.content.should  == "hello world"
	end

end
