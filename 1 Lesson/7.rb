# Дан целочисленный массив. Преобразовать его, прибавив к нечетным числам последний элемент. Первый и последний элементы массива не изменять.
@ary = (1..12).to_a.shuffle
def adder
  print @ary.first, ' '
  @ary.index(@ary.first) + 1.upto(@ary.rindex(@ary.last) - 1) do |i|
    case @ary[i].odd?
    when true
      print @ary[i] += @ary.last, ' '
    else print @ary[i], ' '
    end
  end
  puts @ary.last
 end
puts adder
