# Romajify

[![Gem Version](https://badge.fury.io/rb/romajify.svg)](https://badge.fury.io/rb/romajify)
[![Build Status](https://github.com/emsk/romajify/actions/workflows/build.yml/badge.svg)](https://github.com/emsk/romajify/actions/workflows/build.yml)
[![Build Status](https://travis-ci.org/emsk/romajify.svg?branch=main)](https://travis-ci.org/emsk/romajify)
[![Build status](https://ci.appveyor.com/api/projects/status/nusknxpo5o04jrjp?svg=true)](https://ci.appveyor.com/project/emsk/romajify)
[![Build Status](https://dev.azure.com/emsk/romajify/_apis/build/status/emsk.romajify?branchName=main)](https://dev.azure.com/emsk/romajify/_build/latest?definitionId=2&branchName=main)
[![Codecov](https://codecov.io/gh/emsk/romajify/branch/main/graph/badge.svg)](https://codecov.io/gh/emsk/romajify)
[![Code Climate](https://codeclimate.com/github/emsk/romajify/badges/gpa.svg)](https://codeclimate.com/github/emsk/romajify)
[![Inline docs](http://inch-ci.org/github/emsk/romajify.svg?branch=main)](http://inch-ci.org/github/emsk/romajify)
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
shinbashi
```

Traditional Hepburn:

```sh
$ romajify hepburn --traditional しんばし
shimbashi
```

#### Nihon-shiki Romaji

```sh
$ romajify nihon まちづくり
matidukuri
```

#### Kunrei-shiki Romaji

```sh
$ romajify kunrei まちづくり
matizukuri
```

## Command Options

| Option | Description | Default |
| :----- | :---------- | :------ |
| `-u/--upcase` | Whether to return upper case. | `false` - Lower case |
| `-t/--traditional` | Whether to convert to traditional hepburn. This is the option only for `hepburn` command. | `false` - Modified hepburn |

## Documentation

http://www.rubydoc.info/gems/romajify

## Supported Ruby Versions

Ruby 2.0.0, 2.1, 2.2, 2.3, 2.4, 2.5, 2.6, 2.7, 3.0

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
