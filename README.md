# Remove Array Elements Using Tukey's Method

[![evOps By Rultor.com][ai]][a]
[![e recommend RubyMine][bi]][b]

[![ake][ci]][c]
[![DD status][di]][d]
[![em Version][ei]][e]
[![est Coverage][fi]][f]
[![ard Docs][gi]][g]
[![its-of-Code][hi]][h]
[![icense][ii]][i]

This gem adds a simple `tukeyized` method to the `Array` class.
The method returns a copy of the array without extreme values.
It uses the [Tukey's method].

```ruby
require 'tukeyized'
puts [1, 6, 3, 8888, 3, 2, 8, -19292].tukeyized
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

[ai]: https://www.rultor.com/b/yegor256/tukeyized
[a]: https://www.rultor.com/p/yegor256/tukeyized
[bi]: https://www.elegantobjects.org/rubymine.svg
[b]: https://www.jetbrains.com/ruby/
[ci]: https://github.com/yegor256/tukeyized/actions/workflows/rake.yml/badge.svg
[c]: https://github.com/yegor256/tukeyized/actions/workflows/rake.yml
[di]: https://www.0pdd.com/svg?name=yegor256/tukeyized
[d]: https://www.0pdd.com/p?name=yegor256/tukeyized
[ei]: https://badge.fury.io/rb/tukeyized.svg
[e]: https://badge.fury.io/rb/tukeyized
[fi]: https://img.shields.io/codecov/c/github/yegor256/tukeyized.svg
[f]: https://codecov.io/github/yegor256/tukeyized?branch=master
[gi]: https://img.shields.io/badge/yard-docs-blue.svg
[g]: https://rubydoc.info/github/yegor256/tukeyized/master/frames
[hi]: https://hitsofcode.com/github/yegor256/tukeyized
[h]: https://hitsofcode.com/view/github/yegor256/tukeyized
[ii]: https://img.shields.io/badge/license-MIT-green.svg
[i]: https://github.com/yegor256/tukeyized/blob/master/LICENSE.txt
