# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'igi/version'

Gem::Specification.new do |spec|
  spec.name          = "igi"
  spec.version       = Igi::VERSION
  spec.authors       = ["Ben Bergstein, Jeff Rosen and Nick Chaffee"]
  spec.email         = ["pair+ben+jeff+nick@getsourcery.com"]

  spec.summary       = %q{Interactive Git Interface}
  spec.description   = %q{An interactive console for running many git command consecutively.}
  spec.homepage      = "http://sourcery.github.io/igi"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
