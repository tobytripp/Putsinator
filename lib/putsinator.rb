module Kernel
  def noisy_puts( *args )
    file, line = caller[0].split(':')
    file = File.basename file
    
    default_puts "[#{file}:#{line}]", args
  end
  
  alias_method :default_puts, :puts
  alias_method :puts, :noisy_puts
end
