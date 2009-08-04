require 'test_helper'
require "stringio"

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

class PutsinatorTest < ActiveSupport::TestCase
  def setup
    @out
  end
  
  test "that 'puts' fingers file that did it" do
    stringy = "I'm putsing from a test whoooo"
    line = 0
    
    out = capture_stdout do
      line = __LINE__; puts stringy
    end
    
    assert_equal "[putsinator_test.rb:#{line}] #{stringy}", out
  end
end
