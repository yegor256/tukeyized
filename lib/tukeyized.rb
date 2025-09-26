# frozen_string_literal: true

# SPDX-FileCopyrightText: Copyright (c) 2025 Yegor Bugayenko
# SPDX-License-Identifier: MIT

# Array.
#
# Author:: Yegor Bugayenko (yegor256@gmail.com)
# Copyright:: Copyright (c) 2025 Yegor Bugayenko
# License:: MIT
class Array
  # Removes extreme values.
  #
  # @return [Array] New array
  def tukeyized
    return [] if empty?
    percentile = lambda do |a, x|
      k = (x / 100.0) * (a.length - 1)
      f = k.floor
      c = k.ceil
      return a[k.to_i] if f == c
      a[f] + ((a[c] - a[f]) * (k - f))
    end
    a = sort
    a.size
    q1 = percentile.call(a, 25)
    q3 = percentile.call(a, 75)
    iqr = q3 - q1
    lower = q1 - (1.5 * iqr)
    upper = q3 + (1.5 * iqr)
    select { |x| x.between?(lower, upper) }
  end
end
