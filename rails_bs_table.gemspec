# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails_bs_table/version'

Gem::Specification.new do |spec|
  spec.name          = "rails_bs_table"
  spec.version       = RailsBsTable::VERSION
  spec.authors       = ["star"]
  spec.email         = ["jn615@126.com"]

  spec.summary       = 'Integrate bootstrap table javascript library with Rails asset pipeline'
  spec.homepage      = "https://github.com/istar/rails_bs_table.git"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://github.com/istar/rails_bs_table.git"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  #spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.files = Dir["{app,lib,vendor}/**/*"] + ["LICENSE.txt", "README.md"]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "jbuilder", "~> 2.6.1"
end
