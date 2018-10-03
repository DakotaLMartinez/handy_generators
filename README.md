# HandyGenerators

This gem adds some handy generators to your Rails app. 

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'handy_generators'
```

And then execute:

    $ bundle

## Usage

After you add the gem to your Gemfile and run bundle, you'll have access to the following generators.

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

Running this generator will add the following helpers to your Rails app.

#### Helpers

`edit_links(record:, edit_classes: '', delete_classes: '')`

The `edit_links` helper receives three parameters `record`, `edit_classes`, and `delete_classes`. Record is the only required parameter, `edit_classes` and `delete_classes` will be empty by default, if you'd like to add classes you can pass them as parameters to the helper. The default helper uses pundit, and it will check if the logged in user haspermissionto edit or delete the record before displaying the links. If not, it will display the edit or delete links to all users.

`edit_record_link(record:, classes: '')`

The `edit_record_link` helper will just display an edit link, it won't check if the user has permission before displaying the link. Classes that you pass in as a parameter will be applied to the link.

`delete_record_link(record:, classes: '')`

The `delete_record_link` helper will display just display a delete link, with a confirm. It also doesn't check if the user has permission before displaying the link. Classes that you pass in as a parameter will be applied to the link.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/<github username>/handy_generators. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the HandyGenerators project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/<github username>/handy_generators/blob/master/CODE_OF_CONDUCT.md).
