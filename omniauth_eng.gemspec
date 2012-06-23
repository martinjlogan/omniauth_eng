$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "omniauth_eng/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "omniauth_eng"
  s.version     = OmniauthEng::VERSION
  s.authors     = ["Martin J. Logan"]
  s.email       = ["martinjlogan@erlware.org"]
  s.homepage    = "http://erlware.org"
  s.summary     = "Simple omniauth engine"
  s.description = "Description of OmniauthEng."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.3"
  s.add_dependency "omniauth-twitter"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end
