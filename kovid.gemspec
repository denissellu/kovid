require_relative 'lib/kovid/version'

Gem::Specification.new do |spec|
  spec.name          = "kovid"
  spec.version       = Kovid::VERSION
  spec.authors       = ["Emmanuel Hayford"]
  spec.email         = ["siawmensah@gmail.com"]

  spec.summary       = %q{A CLI tool to get the numbers surrounding the coronavirus pandemic.}
  spec.description   = %q{A CLI tool to get the numbers surrounding the coronavirus pandemic of 2019.}
  spec.homepage      = "https://github.com/siaw23/kovid"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://rubygems.org/"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/siaw23/kovid"
  spec.metadata["changelog_uri"] = "https://github.com/siaw23/kovid"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "thor"
  spec.add_dependency "terminal-table"
  spec.add_dependency "httparty"
  spec.add_dependency "typhoeus"
  spec.add_development_dependency "pry"
end
