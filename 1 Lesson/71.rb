#Дан целочисленный массив. Удалить все элементы, встречающиеся менее двух раз.
a = [9, 2, 6, 3, 45, 2, 95, 905, 23, 6, 34, 6, 67, 23]

puts
puts "Дан целочисленный массив:  #{a}"
puts
bad_elements = a.uniq.select {|x| a.count(x) == 1}
print "Элементы, встречающиеся менее двух раз: "
print bad_elements
puts
puts
print "Целочисленный массив после удаления элементов, встречающихся менее двух раз: "
bad_elements.each {|x| a.delete(x)}
print a
puts
puts
