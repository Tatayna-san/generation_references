# GenerationReferences

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/Generation_references`. To experiment with that code, run `bin/console` for an interactive prompt.

This gem allows you to get information about various facts about anime and information about MMO games. 
Information about the facts includes:
- Anime name
- Facts about anime
Information about Games includes:
- Title
- Thumbnail
- Short description
- Game url
- Genre
- Platform
- Publisher
- Developer
- Release
- Profile

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add Generation_references

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install Generation_references

## Usage

usage examples:
require "Generation_references"
Generation_references::Html_main::HTML_main_page.create_main("The path where to create files")

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Tatayna-san/generation_references. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the DreamTeam project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the code of conduct.
