#Дан целочисленный массив. Преобразовать его, прибавив к четным числам первый элемент. Первый и последний элементы массива не изменять.

@ary = (1..12).to_a.shuffle
puts
puts "Дан целочисленный массив: #{@ary}"
puts
puts

def adder
   print @ary.first, ' '
   @ary.index(@ary.first)+1.upto(@ary.rindex(@ary.last)-1) do |i|
     case @ary[i] %2 == 0
       when true
         print @ary[i]+=@ary.first, ' '
       else print @ary[i], ' '
     end
   end
   puts @ary.last
 end

print "Преобразуем его, прибавив к четным числам первый элемент. Первый и последний элементы массива не изменяем: "
puts adder
puts
