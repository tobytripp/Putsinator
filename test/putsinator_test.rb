require 'test_helper'

require "stringio"
require "putsinator"

class PutsinatorTest < Test::Unit::TestCase
  def setup
    @file = File.basename __FILE__
  end

  def test_that_puts_fingers_the_file_that_did_it
    stringy = "I'm putsing from a test whoooo"

    line = 0
    out = capture_stdout do
      line = __LINE__; puts stringy
    end

    assert_equal "[#{@file}:#{line}]\n#{stringy}\n", out.string
  end

  def test_that_p_fingers_the_culprit
    string = "Foo"
    line = 0
    out = capture_stdout do
      line = __LINE__; p string
    end

    assert_equal "\"[#{@file}:#{line}]\"\n#{string.inspect}\n", out.string
  end

  def test_that_warn_fingers_the_culprit
    string = "Foo"
    line = 0
    out = capture_stdout do
      line = __LINE__; warn string
    end

    assert_equal "\"[#{@file}:#{line}]\"\n#{string.inspect}\n", out.string
  end
end
