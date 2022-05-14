array = [8, 2, 5, 3, 7, 2, 9, 9, 6]

new_array =[]

array.each do |ele|
  if ele > 5
    new_array.push(ele)
  end
end
puts new_array
