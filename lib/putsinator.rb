module Kernel
  def noisy_puts( *args )
    noisy_output(:default_puts, *args)
  end

  alias_method :default_puts, :puts
  alias_method :puts, :noisy_puts

  def noisy_p( *args )
    noisy_output(:default_p, *args)
  end

  def noisy_output( outputter, *args )
    calls = caller_locations
    call = calls[1]
    file = File.basename call.path
    noise = "[#{file}:#{call.lineno}]"

    send outputter, noise, *args
  end

  alias_method :default_p, :p
  alias_method :p, :noisy_p
  alias_method :warn, :noisy_p
end
