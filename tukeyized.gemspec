# frozen_string_literal: true

# SPDX-FileCopyrightText: Copyright (c) 2025 Yegor Bugayenko
# SPDX-License-Identifier: MIT

require 'English'

Gem::Specification.new do |s|
  s.required_rubygems_version = Gem::Requirement.new('>= 0') if s.respond_to? :required_rubygems_version=
  s.required_ruby_version = '>=3.2'
  s.name = 'tukeyized'
  s.version = '0.1.0'
  s.license = 'MIT'
  s.summary = 'Remove Array elements using Tukey\'s method'
  s.description =
    'This gem adds a simple tukeyized method to the Array class that ' \
    'returns a copy of the array without extreme values using Tukey\'s method'
  s.authors = ['Yegor Bugayenko']
  s.email = 'yegor256@gmail.com'
  s.homepage = 'https://github.com/yegor256/tukeyized'
  s.files = `git ls-files | grep -v -E '^(test/|\\.|renovate)'`.split($RS)
  s.executables = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.rdoc_options = ['--charset=UTF-8']
  s.extra_rdoc_files = ['README.md', 'LICENSE.txt']
  s.metadata['rubygems_mfa_required'] = 'true'
end
