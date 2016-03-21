# Romajify

[![Build Status](https://travis-ci.org/emsk/romajify.svg?branch=master)](https://travis-ci.org/emsk/romajify)
[![Coverage Status](https://coveralls.io/repos/github/emsk/romajify/badge.svg?branch=master)](https://coveralls.io/github/emsk/romajify)
[![Code Climate](https://codeclimate.com/github/emsk/romajify/badges/gpa.svg)](https://codeclimate.com/github/emsk/romajify)
[![Dependency Status](https://gemnasium.com/emsk/romajify.svg)](https://gemnasium.com/emsk/romajify)
[![Inline docs](http://inch-ci.org/github/emsk/romajify.svg?branch=master)](http://inch-ci.org/github/emsk/romajify)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE.txt)

Japanese romanization library for Ruby.

## Installation

WIP

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

```sh
$ romajify hepburn まちづくり
# => machizukuri
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

## Development

WIP

## Contributing

WIP

## License

[MIT](LICENSE.txt)
