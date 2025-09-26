# Remove Array Elements Using Tukey's Method

[![DevOps By Rultor.com](https://www.rultor.com/b/yegor256/tukeyized)](https://www.rultor.com/p/yegor256/tukeyized)
[![We recommend RubyMine](https://www.elegantobjects.org/rubymine.svg)](https://www.jetbrains.com/ruby/)

[![rake](https://github.com/yegor256/tukeyized/actions/workflows/rake.yml/badge.svg)](https://github.com/yegor256/tukeyized/actions/workflows/rake.yml)
[![PDD status](https://www.0pdd.com/svg?name=yegor256/tukeyized)](https://www.0pdd.com/p?name=yegor256/tukeyized)
[![Gem Version](https://badge.fury.io/rb/tukeyized.svg)](https://badge.fury.io/rb/tukeyized)
[![Test Coverage](https://img.shields.io/codecov/c/github/yegor256/tukeyized.svg)](https://codecov.io/github/yegor256/tukeyized?branch=master)
[![Yard Docs](https://img.shields.io/badge/yard-docs-blue.svg)](https://rubydoc.info/github/yegor256/tukeyized/master/frames)
[![Hits-of-Code](https://hitsofcode.com/github/yegor256/tukeyized)](https://hitsofcode.com/view/github/yegor256/tukeyized)
[![License](https://img.shields.io/badge/license-MIT-green.svg)](https://github.com/yegor256/tukeyized/blob/master/LICENSE.txt)

This gem adds a simple `tukeyized` to the `Array` class.
The method returns a copy of the array without extreme values.
It uses the [Tukey's method].

```ruby
require 'tukeyized'
puts [1, 6, 3, 3, 2, 8].tukeyized
```

Prints:

```text
1, 6, 3, 3, 2, 8
```

That's it.

## How to contribute

Read
[these guidelines](https://www.yegor256.com/2014/04/15/github-guidelines.html).
Make sure your build is green before you contribute
your pull request. You will need to have
[Ruby](https://www.ruby-lang.org/en/) 3.0+ and
[Bundler](https://bundler.io/) installed. Then:

```bash
bundle update
bundle exec rake
```

If it's clean and you don't see any error messages, submit your pull request.

[Tukey's method]: https://en.wikipedia.org/wiki/Tukey%27s_range_test
