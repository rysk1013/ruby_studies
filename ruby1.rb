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