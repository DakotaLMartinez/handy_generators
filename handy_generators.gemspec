
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "handy_generators/version"

Gem::Specification.new do |spec|
  spec.name          = "handy_generators"
  spec.version       = HandyGenerators::VERSION
  spec.authors       = ["DakotaLMartinez"]
  spec.email         = ["dakotaleemusic@gmail.com"]

  spec.summary       = %q{Add rails generators to add a helper to add edit and delete links that work for multiple resources}
  spec.description   = %q{
    ## Usage

### Edit Links Helper

#### Generators

```
rails generate handy_generators:edit_links_helper
```

This generator will add a helper and a partial for displaying edit and
delete links for a record. This uses pundit by default to check
whether a user should be able to edit and/or delete the record before
displaying the link. If you'd like to always display these links when
you use the helper in the view or handle the logic yourself, simply
add --pundit false to your command.

```
rails generate handy_generators:edit_links_helper --pundit false
```

#### Helpers

`edit_links(record:, edit_classes: '', delete_classes: '')`

The `edit_links` helper receives three parameters `record`, `edit_classes`, 
and `delete_classes`. Record is the only required parameter, 
`edit_classes` and `delete_classes` will be empty by default, if you'd 
like to add classes you can pass them as parameters to the helper. The 
default helper uses pundit, and it will check if the logged in user has
permission to edit or delete the record before displaying the links. If
not, it will display the edit or delete links to all users.

`edit_record_link(record:, classes: '')`

The `edit_record_link` helper will just display an edit link, it won't check if the user has permission before displaying the link. Classes that you pass in as a parameter will be applied to the link.

`delete_record_link(record:, classes: '')`

The `delete_record_link` helper will display just display a delete link, with a confirm. It also doesn't check if the user has permission before displaying the link. Classes that you pass in as a parameter will be applied to the link.
  }
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
