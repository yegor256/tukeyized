# frozen_string_literal: true

# SPDX-FileCopyrightText: Copyright (c) 2025 Yegor Bugayenko
# SPDX-License-Identifier: MIT

require_relative 'test__helper'
require_relative '../lib/tukeyized'

# Test.
# Author:: Yegor Bugayenko (yegor256@gmail.com)
# Copyright:: Copyright (c) 2025 Yegor Bugayenko
# License:: MIT
class TestWinsorized < Minitest::Test
  def test_filters_big_numbers
    assert_equal([1, 3, 2, 5], [1, 3, 2, 5, 800].tukeyized)
    assert_equal([1, 6, 3, 3, 2, 8], [1, 6, 3, 8888, 3, 2, 8, -19_292].tukeyized)
    assert_equal([3, 2, 1], [3, 2, 1].tukeyized)
  end

  def test_passes_empty_array
    assert_empty([].tukeyized)
  end

  def test_passes_short_array
    assert_equal([1, 33_333], [1, 33_333].tukeyized)
  end
end
