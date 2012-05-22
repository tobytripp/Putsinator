module Kernel
  [:p, :puts].each do |meth|
    default, noisy = "default_#{meth}", "noisy_#{meth}"

    define_method noisy do |*args|
      send(default, "# Putsinator detected #{meth} at #{caller[0]}", *args)
    end

    alias_method default, meth
    alias_method meth, noisy
  end
end
