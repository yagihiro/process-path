# frozen_string_literal: true

require_relative 'lib/process/path/version'

Gem::Specification.new do |spec|
  spec.name          = 'process-path'
  spec.version       = Process::Path::VERSION
  spec.authors       = ['Hiroki Yagita']
  spec.email         = ['yagihiro@gmail.com']

  spec.summary       = 'Process::Path is a small library to get the path of the currently running process.'
  spec.description   = 'Process::Path is a small library to get the path of the currently running process.'
  spec.homepage      = 'https://github.com/yagihiro/process-path'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.6.0')
  spec.metadata['homepage_uri'] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end
