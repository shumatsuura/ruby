def hogehoge(a)
  if a % 3 == 0
    puts "hoge"
  elsif a.to_s.include?("3")
    puts "hoge"
  else
    puts a
  end
end

a = 1

while a <= 40 do
  hogehoge(a)
  a += 1
end
