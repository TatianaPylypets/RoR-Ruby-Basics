array =  [621, 445, 147, 159, 430, 222, 482, 44, 194, 522, 652, 494, 14, 126, 532, 387, 441, 471, 337, 446, 18, 36, 202, 574, 556, 458, 16, 139, 222, 220, 107, 82, 264, 366, 501, 319, 314, 430, 55, 336]
puts array.size
print array.reverse
puts
puts array.max
puts array.min
print array.sort
puts
print array.sort{|a, b| b <=> a}
puts
print array.select {|num| num.even? }
puts
print array.select {|x| x%3==0}
puts
print array.uniq
puts
print array.map {|x| x.to_f/10.0}
puts
print abc_v2 = ('a'..'z').to_a.select {|x| array.include?(('a'..'z').to_a.index(x))}
puts
print array.values_at(0...10,12,11,10,13...40)
puts
print array[0...array.index(array.min)]
puts
print array.min(3)
puts




