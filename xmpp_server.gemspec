# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "xmpp_server/version"

Gem::Specification.new do |s|
  s.name        = "xmpp_server"
  s.version     = XmppServer::VERSION
  s.authors     = ["chucai"]
  s.email       = ["hexudong08@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Xmpp Server For Push Message}
  s.description = %q{A queue for push message to xmpp server}

  s.rubyforge_project = "xmpp_server"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
