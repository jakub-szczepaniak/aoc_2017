#!/usr/bin/env ruby
gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require_relative 'inverse_captcha.rb'

class TestInverseCaptcha < MiniTest::Test
  def test_raises_argument_error_when_empty_input
    assert_raises(ArgumentError) { inverse_captcha [] }
  end
end
