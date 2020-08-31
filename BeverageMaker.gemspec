require_relative 'lib/BeverageMaker/version'

Gem::Specification.new do |spec|
  spec.name          = "BeverageMaker"
  spec.version       = BeverageMaker::VERSION
  spec.authors       = ["Edmond"]
  spec.email         = ["liugc@xueqiu.com"]

  spec.summary       = "BeverageMaker"
  spec.description   = "BeverageMaker"
  spec.homepage      = "https://looseyi.github.io"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://looseyi.github.io"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://looseyi.github.io"
  spec.metadata["changelog_uri"] = "https://looseyi.github.io"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = "beverage-maker"
  spec.require_paths = ["lib"]
  spec.add_runtime_dependency 'claide',         '>= 1.0.2', '< 2.0'
  spec.add_runtime_dependency 'colored2',       '~> 3.1'
end
