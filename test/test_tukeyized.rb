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
  def test_simple
    assert_equal([1, 3, 2, 5], [1, 3, 2, 5, 800].tukeyized)
  end

  def test_empty_array
    assert_equal([], [].tukeyized)
  end
end
