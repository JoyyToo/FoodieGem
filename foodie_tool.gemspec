
lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'foodie_tool/version'

Gem::Specification.new do |spec|
  spec.name          = 'foodie_tool'
  spec.version       = FoodieTool::VERSION
  spec.authors       = ['joyytoo']
  spec.email         = ['joytoo97@gmail.com']

  spec.summary       = 'A method for application I use.'
  spec.description   = 'Determines whether food is nice or gross.'
  spec.homepage      = 'https://github.com/JoyyToo/FoodieGem'
  spec.license       = 'MIT'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'aruba'
  spec.add_development_dependency 'bundler', '~> 1.17'
  spec.add_development_dependency 'cucumber'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'

  spec.add_dependency 'activesupport', '~> 4.2.0'
  spec.add_dependency 'thor'
end
