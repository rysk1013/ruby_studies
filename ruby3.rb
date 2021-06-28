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