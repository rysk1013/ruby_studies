arr1 = ["apple", "orange", "banana"]
arr1.each_with_index do |e, i|
  puts "#{i + 1}" + ":" + "#{e}"
end

5.times do |i|
  puts "#{i + 1}" + ":" + "ruby"
  i += 1
end

[5, 6].each do |n|
  next unless n == 6
  puts n
end

arr2 = ["ruby", "java", "python"]
arr2.each_with_index do |a, i|
  puts "#{i + 1}:#{a}"
end

# while文
num1 = 456
while num1.to_s != num1.to_s.reverse do
 num1 = num1.to_i + num1.to_s.reverse.to_i
 p num1
end
puts num1