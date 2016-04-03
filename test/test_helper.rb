require 'rubygems'
require "test/unit"

module Kernel
  def capture_stdout
    out = StringIO.new
    $stdout = out
    $stderr = out
    yield
    return out
  ensure
    $stdout = STDOUT
    $stderr = STDERR
  end

  # emulate awesome_print's ap function
  def ap(object)
    puts object
  end

  module_function :ap
end
