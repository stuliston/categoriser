require_relative 'lib/categoriser/version'

Gem::Specification.new do |spec|
  spec.name          = "categoriser"
  spec.version       = Categoriser::VERSION
  spec.authors       = ["Stu Liston"]
  spec.email         = ["stuart.liston@gmail.com"]

  spec.summary       = %q{Categorise your extracted Commbank transactions}
  spec.description   = %q{Categorise your Commbank transactions in CSV format for more flexible budgeting.}
  spec.homepage      = "https://github.com/stuliston/categoriser"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/stuliston/categoriser"
  # spec.metadata["changelog_uri"] = "https://github.com/stuliston/categoriser"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
