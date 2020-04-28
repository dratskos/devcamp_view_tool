require_relative 'lib/devcamp_view_tool/version'

Gem::Specification.new do |spec|
  spec.name          = "devcamp_view_tool"
  spec.version       = DevcampViewTool::VERSION
  spec.authors       = ["Thanos Patrikas"]
  spec.email         = ["thanos.patrikas@gmail.com"]

  spec.summary       = %q{ Various view specific methods for applications in use}
  spec.description   = %q{ Provides generated HTML data for Rails applications.}
  spec.homepage      = "https://mypgportfolio.com"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
