require 'test_helper'
require "stringio"
require "test/unit"
require "putsinator"

module Kernel
  def capture_stdout
    out = StringIO.new
    $stdout = out
    yield
    return out
  ensure
    $stdout = STDOUT
  end
end

class PutsinatorTest < Test::Unit::TestCase 
  
  def test_that_puts_fingers_the_file_that_did_it
    stringy = "I'm putsing from a test whoooo"
    line = 0
    file = File.basename __FILE__.split(':').first
    out = capture_stdout do
      line = __LINE__; puts stringy
    end
    
    assert_equal "[#{file}:#{line}]\n#{stringy}\n", out.string
  end
end
