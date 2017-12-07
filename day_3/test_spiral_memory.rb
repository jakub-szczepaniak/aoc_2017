#!/usr/bin/env ruby
gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require_relative 'spiral_memory.rb'

class TestSpiralMemory < MiniTest::Test
  def test_spiral_memory_of_level_0
    assert_equal spiral_memory_layer(0), [1]
  end
end