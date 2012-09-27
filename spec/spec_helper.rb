require 'rubygems'
require 'bundle/setup'

Bundler.require(:default, :development)

RSpec.configure do |config|
	config.mock_with :rspec
	
	config.before(:each) do
   #pending
	end

end
