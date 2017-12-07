#!/usr/bin/env ruby
gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require_relative 'corruption_captcha.rb'

class TestCorruptionCaptchaWithInput < MiniTest::Test
  def test_for_real_input_part_1
    input_file = File.read('test_input.txt')
    input_lines = input_file.split(/\n/)
    input_lines.map do |line|
      line.split(/\t/).map(&:to_i)
    end
  end
end

class TestCalculationCorruptionChecksum < MiniTest::Test
  def test_returns_0_for_min_equals_max
    input = [1, 1]
    assert_equal 0, line_checksum(input)    
  end
  def test_returns_non_zero_for_example_1
    input = [5, 1, 9, 5]
    assert_equal(8, line_checksum(input))
  end

end