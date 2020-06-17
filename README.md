# Quke demo app

[![Build Status](https://travis-ci.com/DEFRA/quke-demo-app.svg?branch=main)](https://travis-ci.com/DEFRA/quke-demo-app)
[![Maintainability Rating](https://sonarcloud.io/api/project_badges/measure?project=DEFRA_quke-demo-app&metric=sqale_rating)](https://sonarcloud.io/dashboard?id=DEFRA_quke-demo-app)
[![Coverage](https://sonarcloud.io/api/project_badges/measure?project=DEFRA_quke-demo-app&metric=coverage)](https://sonarcloud.io/dashboard?id=DEFRA_quke-demo-app)
[![security](https://hakiri.io/github/DEFRA/quke-demo-app/main.svg)](https://hakiri.io/github/DEFRA/quke-demo-app/main)
[![Gem Version](https://badge.fury.io/rb/quke_demo_app.svg)](https://badge.fury.io/rb/quke_demo_app)
[![Licence](https://img.shields.io/badge/Licence-OGLv3-blue.svg)](http://www.nationalarchives.gov.uk/doc/open-government-licence/version/3)

A Sinatra web app packaged as a gem that is used to demonstrate <https://github/DEFRA/quke>

## Installating the app

Add this line to your application's Gemfile

```ruby
gem 'quke_demo_app'
```

Or install it yourself as

```shell
gem install quke-demo-app
```

## Running the app

Run the app with its default port of **4567** using

```bash
quke_demo_app
```

You can change the port used if there is an issue with the default

```bash
quke_demo_app --port 9876
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bundle exec rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

> For those new to these commands it's literally just `bin/console` you enter and not `bundle exec bin/console` or `. bin/console`.

To install this gem onto your local machine, run `bundle exec rake install`.

## Contributing to this project

If you have an idea you'd like to contribute please log an issue.

All contributions should be submitted via a pull request.

## License

THIS INFORMATION IS LICENSED UNDER THE CONDITIONS OF THE OPEN GOVERNMENT LICENCE found at:

<http://www.nationalarchives.gov.uk/doc/open-government-licence/version/3>

The following attribution statement MUST be cited in your products and applications when using this information.

> Contains public sector information licensed under the Open Government license v3

### About the license

The Open Government Licence (OGL) was developed by the Controller of Her Majesty's Stationery Office (HMSO) to enable information providers in the public sector to license the use and re-use of their information under a common open licence.

It is designed to encourage use and re-use of information freely and flexibly, with only a few conditions.
