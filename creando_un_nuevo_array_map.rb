a = [1, 2, 3, 4, 5, 6, 7]
b = a.map do |e|
  e * 2
end
puts b
# inline
b = a.map { |e| e * 2 }
