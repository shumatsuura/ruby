puts "DIVE INTO CODE"
puts "私は受講生です"
puts "30歳です"


puts 5 + 5 == 10
puts 8 - 3 == 5
puts 5 * 5 == 25
puts 40 / 5 == 8
puts 28 % 6 ==  4

name = "山田太郎"
age = 18

puts name
puts age
puts "私の名前は#{name}です。年齢は#{age}歳です。"

season = ["春","夏","秋"]
season.push "冬"
puts season[2]

house = {price: "2000万",location: "東京都",size: "100坪"}
puts house[:location]

num = 10
if num >= 50
  puts "50以上だよ"
elsif num == 30
  puts "30ジャストだよ"
else
  puts "50未満だよ"
end

if num % 2 == 0
  puts "numは偶数"
else
  puts "numは奇数"
end

i = 0
while i < 10
  puts "おはよう"
  i += 1
end

for number in 1..10
  puts "こんにちわおはよう"
end

10.times do
  puts "こんばんわ"
end

array = (1..10).to_a
array.each do |i|
  puts i
end

x = 2
y = 3
z = 7
def addition(x,y,z)
  return x + y
end

puts addition(x,y,z)
