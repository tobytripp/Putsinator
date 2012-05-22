require 'test_helper'

require "stringio"
require "putsinator"

class PutsinatorTest < Test::Unit::TestCase
  def setup
    @file = File.basename __FILE__
  end

  [:p, :puts].each do |meth|
    define_method "test_that_#{meth}_fingers_the_file_that_did_it" do
      stringy = "I'm #{meth}ing from a test whoooo"

      line = 0
      out = capture_stdout do
        line = __LINE__; send(meth, stringy)
      end

      assert_match @file, out.string
      assert_match /#{line}/, out.string
      assert_match stringy, out.string
      assert_match 'Putsinator', out.string # make sure the developer can find _us_ if desired
    end
  end

end
