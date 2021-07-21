# ユニーク要素
arr1 = [1, 2, 3, 1, 2, 1, 2, 6, 5, "ruby","python","ruby"]
p arr1.uniq

# nil削除
arr2 = ["ruby", nil, "java", nil, nil, "python"]
p arr2.compact

# 2次元配列の操作
# [["php", "バージョン3"], ["java", "バージョン2"], ["ruby", "バージョン1"], ["python", "バージョン0.1"]]に変更する
arr3 = [["php", "java", "ruby", "python"],["バージョン3","バージョン2","バージョン1","バージョン0.1"]]
p arr3.transpose

# zipメソッド
arr4 = ["ruby", "python", "java"]
num1 = [1, 2, 3]
p arr4.zip(num1)
# => [["ruby", 1], ["python", 2], ["java", 3]]

# productメソッド
arr5 = ["プログラミング言語"]
arr6 = ["ruby", "python", "java"]
p sets = arr5.product(arr6)
# => [["プログラミング言語", "ruby"], ["プログラミング言語", "python"], ["プログラミング言語", "java"]]

# sort
arr7 = [5, 6, 1, 3, 4]
p arr7.sort

# 配列内の要素数
arr8 = ["イシカワ","トウキョウ","アオモリ"]
p arr8.count

# 要素取得
arr9 = ["足立区","港区","豊島区","江東区"]
p arr9.take(3)

# 大文字
arr10 = ["ruby", "python", "java"]
p arr10.map{|e| e.upcase}

# 繰り返し
arr11 =["牛丼","豚丼","カツ丼"]
arr11.each_with_index  do |e,i|
  puts "#{i + 1}" + ":" + "#{e}"
end

# 配列で真の値の取得
arr12 = [20, 21, 22, 23, 24, 25, 26]
p arr12.select {|n| n % 3 == 0}

# 配列で偽の値の取得
arr13 = [20, 21, 22, 23, 24, 25, 26]
p arr13.reject{|n| n % 3 == 0}

# 最大値
arr14 = [12, 39, 49, 23, 52, 99, 20]
p arr14.max() # 引数の数字で大きい順に取得

# 最小値
arr15 = [12, 39, 49, 23, 52, 99, 20]
p arr15.min() 

# 絶対値
n1 = 5
n2 = 9
p (n1 - n2).abs

# 配列の差分
arr16 = [1, 2, 3, 4, 5]
arr17 = [2, 5, 3]
p arr16 - arr17

# 2次元配列
x = []
3.times do
  y = []
  3.times do
    y << 1
  end
  x << y
end
p x

# 多次元配列を1次元配列にする
arr18 = [1, 2, 3, [10, 100]]
p arr19 = arr18.flatten

arr20 = [1, 2, 3]
arr21 = [10, 100]
p arr20.concat(arr21) # 引数は1つだけ設定できる

# 値の追加
arr22 = [1, 2, 3, 4, 5]
arr22.unshift(0) # 先頭に追加
p arr22

arr22.push(6) # 最後に追加
p arr22

# 値の削除
arr23 = [1, 2, 3, 4, 5]
arr23.shift(1) # 先頭の値の削除
p arr23

arr23.pop(1) # 最後の値の削除
p arr23

# ループしているときの配列の先頭の値の表し方
arr24 = [1, 2, 3, 4, 5]
arr25 = [1, 2, 3, 4, 5, 6]
arr24.each_with_index do |a, i|
  p arr25[i - i]
end

# 数値・アルファベットの配列作成ほうほう
# '*'は配列展開(to_aでも同様)
alphabet = [*'a'..'z']
numbers = [*1..26]
p alphabet
p numbers

# 配列内の同じ値をグループ化する
arr26 = [9, 1, 2, 3, 1, 4, 3, 2, 4, 9]
p arr26.group_by{|a| a} # ハッシュでグループ化

# 反転
arr27 = [*1..26]
p arr27.reverse

# 値の入れ替え
# 3と5を入れ替える => [1, 2, 5, 4, 3]
arr28 = [1, 2, 3, 4, 5]
x, y = 3, 5
tmp = arr28[x - 1]
arr28[x - 1] = arr28[y - 1]
arr28[y - 1] = tmp
p arr28

# 指定の位置に値を追加
arr29 = [1, 2, 3, 4, 5]
arr29 = arr29.insert(3, 10) # 第1引数に場所、第2引数に追加する値
p arr29

# 各要素のペアについてのかけ算
n = 5
arr30 = [1, 2, 3, 4, 5]        
n.times do |i|
    i.times do |j|
        # puts "#{arr30[i]} * #{arr30[j]}"
        puts arr30[i] * arr30[j]     
    end
end

# 配列の生成
arr31 = Array.new(10, 1) # 第1引数に要素の数、第2引数で初期値の指定ができる
p arr31

# 一つの配列の値の比較
n = 5
students = [119,102,187,191,132]
ans = []
diff = 101
(0..n).each do |i|
  ((i+1)..n).each do |j|
     if i < (students.length - 1) && j < (students.length - 1) && (students[i] - students[j]).abs < diff
        diff = (students[i] - students[j]).abs
        ans = [students[i], students[j]]
     end
  end
end
puts ans.sort

# 演習
people = [*1..100]
cmds = [
  ["resize", "29"], 
  ["reverse"], 
  ["swap", "18", "24"], 
  ["resize", "47"],
  ["reverse"]
]

cmds.each do |cmd|
  c = cmd[0]
  c1 = cmd[1].to_i
  c2 = cmd[2].to_i

   if c ==  "swap"
       a = c1 - 1
       b = c2 - 1
       tmp = people[a]
       people[a] = people[b]
       people[b] = tmp
   elsif c == "reverse"
       people = people.reverse
   else
       if people.length > c1
          people = people.shift(c1)
       end
   end
end
puts people

# 最大値の求め方
n1, k1 = 3, 3
rows = [
  [226, 409, 419],
  [491, 524, 82],
  [417, 954, 751],
]
ans = 0
n1.times do |i|
   k1.times do |j|
      if rows[i][j] > ans
         ans = rows[i][j] 
      end
   end
end
puts ans

# 2次元配列の行と列の入れ替え１
arr32 = [
  [1,2,3],
  [4,5,6],
]
new_arr32 = arr32.transpose
new_arr32.each do |row|
  puts row.join(' ')
end

# 2次元配列の行と列の入れ替え２
n2 = 2
k2 = 3
arr33 = [
  [1,2,3],
  [4,5,6],
]
new1 = []
k2.times do |i|
  row = []
  n2.times do |j|
      if j == n2 - 1
         row << arr33[j][i] 
      else
         row << arr33[j][i]
      end
  end
  new1 << row
end
new1.each do |x|
   puts x.join(' ') 
end

# 素数判定
n = 10
prime_nums = []
(1..n).each do |i|
    next if i == 1
    
    if i == 2
       prime_nums << i 
       next
    end
    
    judge = true
    prime_nums.each do |number|
      if i % number == 0
        judge = false
        break
      end
  end

  prime_nums.push(i) if judge
end
puts prime_nums.length