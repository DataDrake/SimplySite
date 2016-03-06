# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'SimplySite/version'

Gem::Specification.new do |spec|
  spec.name          = 'SimplySite'
  spec.version       = SimplySite::VERSION
  spec.authors       = ['bmeyers@datadrake.com']
  spec.summary       = %q{Because being a web-dev is hard enough}
  spec.description   = %q{SimplySite is a no-nonsense static sites builder, designed to make building sites easier than ever}
  spec.homepage      = 'http://www.datadrake.com'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
	spec.add_runtime_dependency 'commander', '~> 4.4.0'
end
