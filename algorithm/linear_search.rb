def linear_search(numbers,value)
  index = 0
  numbers.each do |i|
    if i == value
      return index
    end
    index += 1
  end
  "None"
end

numbers = [1, 3, 5, 11, 12, 13, 17, 22, 25, 28]

puts("numbers"+numbers.to_s)
puts('配列numbersから探したい数字を入力してください')

target_number = gets.chomp.to_i

puts(linear_search(numbers, target_number))
