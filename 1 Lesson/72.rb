# Дан целочисленный массив. Удалить все элементы, встречающиеся более двух раз.
a = [9, 2, 6, 23, 45, 2, 95, 905, 23, 6, 34, 6, 67, 23]
bad_elements = a.uniq.select { |x| a.count(x) > 2 }
bad_elements.each { |x| a.delete(x) }
print a
