#!/usr/bin/env ruby
gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'


class TestCorruptionCaptchaWithInput < MiniTest::Test
  def test_for_real_input_part_1
    input_file = File.read('test_input.txt')
    input_lines = input_file.split(/\n/)
    input_lines.map do |line|
      line.split(/\t/).map(&:to_i)
    end
  end
end