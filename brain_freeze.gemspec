Gem::Specification.new do |spec|
  spec.name          = "brain_freeze"
  spec.version       = "1.1.1"
  spec.authors       = ["Aaron Christiansen"]
  spec.email         = ["aaronc20000@gmail.com"]

  spec.summary       = "Generate a Sorbet RBI for a gem with inline types"
  spec.homepage      = "https://github.com/AaronC81/brain_freeze"
  spec.license       = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "#{spec.homepage}/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = ["exe/brain_freeze"]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "parlour", "~> 2.0"
end
