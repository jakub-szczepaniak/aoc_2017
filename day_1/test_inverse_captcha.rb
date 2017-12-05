#!/usr/bin/env ruby
gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require_relative 'inverse_captcha.rb'

class TestInverseCaptcha < MiniTest::Test
  def test_raises_argument_error_when_empty_input
    assert_raises(ArgumentError) { inverse_captcha [] }
  end

  def test_raises_argument_error_when_only_one_item_input
    assert_raises(ArgumentError) { inverse_captcha [1] }
  end

  def test_inverse_captcha_is_0_when_different_numbers
    assert_equal 0, inverse_captcha([1, 2])
  end

  def test_it_is_1_for_circular_input_are_repeated
    assert_equal 1, inverse_captcha([1, 2, 1])
  end

  def test_it_is_2_for_circular_input_are_repeated
    assert_equal 2, inverse_captcha([2, 1, 2])
  end
end
