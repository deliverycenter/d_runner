# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)

require 'd_runner/version'

Gem::Specification.new do |s|
  s.name        = 'd_runner'
  s.version     = DRunner::VERSION
  s.authors     = %w[Harry rodrigorfv]
  s.email       = ['matheusthebr@gmail.com', 'rodrigorfv@hotmail.com']
  s.homepage    = 'https://github.com/deliverycenter/d_runner'
  s.summary     = 'Ruby tasks runner.'
  s.description = 'Ruby tasks runner.'
  s.license     = 'MIT'

  s.metadata['homepage_uri'] = s.homepage
  s.metadata['source_code_uri'] = 'https://github.com/deliverycenter/d_runner'
  s.metadata['changelog_uri'] = 'https://github.com/deliverycenter/d_runner'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile',
                'README.md']
  s.test_files = Dir['spec/**/*']

  s.add_development_dependency 'pry'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'rubocop-rails'
  s.add_development_dependency 'simplecov'

  s.required_ruby_version = '>= 2.5.3'
  s.add_dependency 'open3'
  s.add_dependency 'rails', '~> 5.2.0'
end
