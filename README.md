# Process::Path

[![Gem Version](https://badge.fury.io/rb/process-path.svg)](https://badge.fury.io/rb/process-path)
![Ruby](https://github.com/yagihiro/process-path/workflows/Ruby/badge.svg)
[![Maintainability](https://api.codeclimate.com/v1/badges/39b1c2e07668d7354cdb/maintainability)](https://codeclimate.com/github/yagihiro/process-path/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/39b1c2e07668d7354cdb/test_coverage)](https://codeclimate.com/github/yagihiro/process-path/test_coverage)

Process::Path is a small library to get the path of the currently running process.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'process-path'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install process-path

## Usage

```ruby
require 'process/path'

Process::Path.path
#=> "/Users/yourname/.rbenv/versions/2.7.1/bin/ruby"
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. 
Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`.
To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, 
which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/yagihiro/process-path.
This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/yagihiro/process-path/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Process::Path project's code bases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/yagihiro/process-path/blob/master/CODE_OF_CONDUCT.md).
