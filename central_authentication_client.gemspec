
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "central_authentication_client/version"

Gem::Specification.new do |spec|
  spec.name          = "central_authentication_client"
  spec.version       = CentralAuthenticationClient::VERSION
  spec.authors       = ["Diego Piccinini"]
  spec.email         = ["diego.piccinini@gmail.com"]

  spec.summary       = %q{Client to get the central authentication project.}
  spec.description   = %q{This gem is to create and get data for a central authentication server.}
  spec.homepage      = "https://github.com/diegopiccinini/central_authentication_client"
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
