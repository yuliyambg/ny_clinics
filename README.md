# NyClinics

 NY Clinics Finder CLI Gem, allows users to find clinics in New York based on different search options. 

 
## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ny_clinics'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install ny_clinics

## Usage

The user is presented with a welcome message and the following search options:

```
----------------------------
Welcome to NY Clinic Finder
----------------------------
Press (1) to search by name
Press (2) to search by city
Press (3) to search by zip code
Press (4) to search by status
Press (5) to list all
----------------------------
```

The user needs to then select the option they would like to search by.
They will then get a prompt to enter the search criteria, and then will need to enter the criteria.

```
What is the zip code you would like to search for:
11235
```

All clinics with that option are shown below 

```
---------------------------
PRIME CARE ON THE BAY, LLC
1711 SHEEPSHEAD BAY RD
BROOKLYN
11235
CLOSED
---------------------------
```

After showing the clinics, user is given an option to continue or exit
```
If you want to continue enter c to quit enter any key
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/yuliyambg/ny_clinics. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/yuliyambg/ny_clinics/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the NyClinics project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/ny_clinics/blob/master/CODE_OF_CONDUCT.md).
