def rgb2hex(r, g, b)
  ('%02x' % r) + ('%02x' % g) + ('%02x' %b)
end

puts rgb2hex(255, 255, 255)
puts rgb2hex(0, 0, 0)