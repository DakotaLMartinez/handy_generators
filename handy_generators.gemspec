
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "handy_generators/version"

Gem::Specification.new do |spec|
  spec.name          = "handy_generators"
  spec.version       = HandyGenerators::VERSION
  spec.authors       = ["DakotaLMartinez"]
  spec.email         = ["dakotaleemusic@gmail.com"]

  spec.summary       = %q{Add rails generators to add a helper to add edit and delete links that work for multiple resources}
  spec.description   = %q{Run the edit_delete_links generator to add the edit_links helper to your app so you can use pundit (optional) to add edit and delete links to a resource's show page. Just pass the resource as an argument: edit_links(record: @post)}
  spec.homepage      = "https://github.com/DakotaLMartinez/handy_generators"
  spec.license       = "MIT"


  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "gem-release"
  spec.add_development_dependency "rails", ">4.0"
  spec.add_dependency "rails", ">4.0"
end
