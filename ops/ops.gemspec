require_relative "lib/ops/version"

Gem::Specification.new do |spec|
  spec.name        = "ops"
  spec.version     = Ops::VERSION
  spec.authors     = ["Xanderificnl"]
  spec.email       = ["info@web-refinery.com"]
  spec.homepage    = ""
  spec.summary     = ": Summary of Ops."
  spec.description = ": Description of Ops."
  
  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  #spec.metadata["allowed_push_host"] = ": Set to 'http://mygemserver.com'"

  #spec.metadata["homepage_uri"] = spec.homepage
  #spec.metadata["source_code_uri"] = ": Put your gem's public repo URL here."
  #spec.metadata["changelog_uri"] = ": Put your gem's CHANGELOG.md URL here."

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  # spec.add_dependency "rails", ">= 7.0.2.2"
end
