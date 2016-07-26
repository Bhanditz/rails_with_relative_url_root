# RailsWithRelativeUrlRoot

Enforces Rails relative URL root at the Rack level, i.e. before requests reach
Rails.

## Why?

Because web servers like Puma are not aware of Rails' relative URL root.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rails_with_relative_url_root'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rails_with_relative_url_root

## Usage

In your application's config/application.rb, set `config.relative_url_root`.

Edit your application's config.ru and replace:

```ruby
run Rails.application
```

... with:

```ruby
require 'rails_with_relative_url_root'

run RailsWithRelativeUrlRoot.application
```

That's it.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/europeana/rails_with_relative_url_root.

## License

Licensed under the EUPL V.1.1.

For full details, see [LICENSE.md](LICENSE.md).
