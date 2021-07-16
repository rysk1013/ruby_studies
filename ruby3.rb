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

x, y, z = 1000, 1300, 1500
days = 4
time = [[0, 9], [9, 17], [17, 22], [22, 23]]
sum = 0
(0..days-1).each do |i|
    (time[i][0]+1..time[i][1]).each do |t|
        if t <= 9
           sum += z
        elsif t <= 17
           sum += x        
        elsif t <= 22
           sum += y
        else
           sum += z
        end
    end
end
puts sum

# リーグ表結果出力
teams = 3
m = teams * (teams - 1) / 2
results = [[1,3], [2, 1], [2,3]]
rows = []
results = results.sort
teams.times do |i|
    row = []
    teams.times do |j|
       if i == j
           row << '-'
       elsif results[i][0] == i+1 && results[i][1] == j+1 || results.include?([i+1, j+1])
           row << 'W'
       else
           row << 'L'
       end
    end
    rows << row
end
rows.each do |r|
   puts r.join(' ')
end
# 求める出力結果
# - L W
# W - W
# L L -