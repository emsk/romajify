# Romajify

[![Gem Version](https://badge.fury.io/rb/romajify.svg)](https://badge.fury.io/rb/romajify)
[![Build Status](https://travis-ci.org/emsk/romajify.svg?branch=master)](https://travis-ci.org/emsk/romajify)
[![Coverage Status](https://coveralls.io/repos/github/emsk/romajify/badge.svg?branch=master)](https://coveralls.io/github/emsk/romajify)
[![Code Climate](https://codeclimate.com/github/emsk/romajify/badges/gpa.svg)](https://codeclimate.com/github/emsk/romajify)
[![Dependency Status](https://gemnasium.com/emsk/romajify.svg)](https://gemnasium.com/emsk/romajify)
[![Inline docs](http://inch-ci.org/github/emsk/romajify.svg?branch=master)](http://inch-ci.org/github/emsk/romajify)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE.txt)

Japanese romanization library for Ruby.

http://qiita.com/emsk/items/3e24628c220c825da709 (Japanese)

## Prerequisite

You have to install Ruby 2.0.0 or higher.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'romajify'
```

And then execute:

```sh
$ bundle
```

Or install it yourself as:

```sh
$ gem install romajify
```

## Usage

#### Command Line Interface

```sh
$ romajify hepburn すし
```

#### Ruby Source Code

```ruby
require 'romajify/converter'
puts Romajify::Converter.hepburn('すし')
```

## Supported Romaji

#### Hepburn Romaji

Modified Hepburn:

```sh
$ romajify hepburn しんばし
# => shinbashi
```

Traditional Hepburn:

```sh
$ romajify hepburn --traditional しんばし
# => shimbashi
```

#### Nihon-shiki Romaji

```sh
$ romajify nihon まちづくり
# => matidukuri
```

#### Kunrei-shiki Romaji

```sh
$ romajify kunrei まちづくり
# => matizukuri
```

## Command Options

| Option | Description | Default |
| :----- | :---------- | :------ |
| `-u/--upcase` | Whether to return upper case. | `false` - Lower case |
| `-t/--traditional` | Whether to convert to traditional hepburn. This is the option only for `hepburn` command. | `false` - Modified hepburn |

## Documentation

http://www.rubydoc.info/gems/romajify

## Supported Ruby Versions

* Ruby 2.0.0
* Ruby 2.1
* Ruby 2.2
* Ruby 2.3

## Contributing

1. Fork it ( https://github.com/emsk/romajify/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Related

* [mruby-romajify](https://github.com/emsk/mruby-romajify) - An mruby implementation of the romajify
* [go-romajify](https://github.com/emsk/go-romajify) - Pure Go implementation of the romajify
* [romajic](https://github.com/emsk/romajic) - Automatic romaji spelling checker for programmer

## License

[MIT](LICENSE.txt)
