numbers = [4, 8, 6, 5, 2, 1, 3, 9, 7]

def quick_sort(numbers)
  return numbers if numbers.size < 2
  target = numbers.shift
  smallers = []
  biggers = []

  numbers.each do |sort_number|
    if sort_number < target
      smallers << sort_number
    else
      biggers << sort_number
    end
  end

  quick_sort(smallers) + [target] + quick_sort(biggers)
end

p quick_sort(numbers)
