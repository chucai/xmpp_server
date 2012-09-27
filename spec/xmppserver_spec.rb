require "spec_helper"
require 'drb/drb'

describe "xmppserver bin" do
	
	it "should push message to drb server" do
		SERVER_URI="druby://localhost:8787"  
		DRb.start_service  
		xmppserver = DRbObject.new_with_uri(SERVER_URI)  
		3.times do |i| 
			xmppserver.push("tester002", "testdddeeee....")
			puts i 
			sleep 1
		end  
	end

end
