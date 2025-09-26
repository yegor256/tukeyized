# frozen_string_literal: true

# SPDX-FileCopyrightText: Copyright (c) 2025 Yegor Bugayenko
# SPDX-License-Identifier: MIT

# Array.
#
# This class extends the standard Ruby Array with a method to remove
# extreme values using Tukey's method (also known as the Tukey fence
# for outlier detection). The method calculates the interquartile range
# and filters out values that fall outside 1.5 times the IQR from the
# first and third quartiles.
#
# For example:
#
#  require 'tukeyized'
#  [1, 6, 3, 8888, 3, 2, 8, -19292].tukeyized
#  # => [1, 6, 3, 3, 2, 8]
#
# Author:: Yegor Bugayenko (yegor256@gmail.com)
# Copyright:: Copyright (c) 2025 Yegor Bugayenko
# License:: MIT
class Array
  # Removes extreme values using Tukey's method.
  #
  # This method identifies and removes outliers from the array by calculating
  # the first quartile (Q1), third quartile (Q3), and interquartile range (IQR).
  # Values outside the range [Q1 - 1.5*IQR, Q3 + 1.5*IQR] are considered outliers
  # and are excluded from the result.
  #
  # The original array is not modified; a new array is returned.
  #
  # For example:
  #
  #  [1, 2, 3, 4, 5, 100].tukeyized
  #  # => [1, 2, 3, 4, 5]
  #
  #  [10, 20, 30, 40, 50].tukeyized
  #  # => [10, 20, 30, 40, 50]
  #
  #  [].tukeyized
  #  # => []
  #
  # @return [Array] New array without extreme values
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
