# Дан целочисленный массив. Удалить все элементы, встречающиеся менее двух раз.
a = [9, 2, 6, 3, 45, 2, 95, 905, 23, 6, 34, 6, 67, 23]
bad_elements = a.uniq.select { |x| a.count(x) == 1 }
bad_elements.each { |x| a.delete(x) }
print a
