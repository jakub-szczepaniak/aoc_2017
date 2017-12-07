#!/usr/bin/env ruby
gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require_relative 'inverse_captcha.rb'

class TestInverseCaptchaPart1 < MiniTest::Test
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

  def test_for_2_element_input_captcha_is_2
    assert_equal 2, inverse_captcha([1, 1])
  end

  def test_it_works_for_4_element_input
    assert_equal 3, inverse_captcha([1, 1, 2, 2])
  end

  def test_produces_0_for_4_element_input
    assert_equal 0, inverse_captcha([1, 2, 3, 4])
  end

  def test_it_works_for_long_circular_input
    assert_equal 9, inverse_captcha([9, 2, 3, 4, 9])
  end
end

class TestInverseCaptchaPart2 < MiniTest::Test
  def test_new_captcha_works_for_example_1
    assert_equal 6, halfway_captcha([1, 2, 1, 2])
  end

  def test_new_captcha_works_for_example_2
    assert_equal 0, halfway_captcha([1, 2, 2, 1])
  end
end

class TestInverseCaptchaWithInput < MiniTest::Test
  def test_for_real_input
    test_file = File.read('test_input.txt')

    input = test_file.split(//).map(&:to_i)

    assert_equal 1136, inverse_captcha(input)
  end
end