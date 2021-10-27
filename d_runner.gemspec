$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "d_runner/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "d_runner"
  s.version     = DRunner::VERSION
  s.authors     = ["Harry"]
  s.email       = ["matheusthebr@gmail.com"]
  s.homepage    = "https://github.com/deliverycenter/d_runner"
  s.summary     = "Ruby tasks runner."
  s.description = "Ruby tasks runner."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.2.0"
end
