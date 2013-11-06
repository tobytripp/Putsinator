module Kernel
  def noisy_puts( *args )
    file, line = caller[0].split(':')
    file = File.basename file

    default_puts "[#{file}:#{line}]", *args
  end

  alias_method :default_puts, :puts
  alias_method :puts, :noisy_puts

  def noisy_p( *args )
    file, line = caller[0].split(':')
    file = File.basename file

    default_p "[#{file}:#{line}]", *args
  end

  alias_method :default_p, :p
  alias_method :p, :noisy_p
  alias_method :warn, :noisy_p
end
