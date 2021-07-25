# アルゴリズム

# オーダー記法
# その１
# O(n)
# nに比例することを表している
# データそれぞれに対してfor文やeach文でループする

# その２
# O(log n)
# 底を２とした対数に比例することを表している
# 二分探索など、１回の計算ごとにデータを２頭分、４等分、８等分…と
# 分割していくようなアルゴリズムがこれに当たる

# その３
# O(n^2)
# nの二乗に比例することを表している
# for文などで２重のループを行うアルゴリズムがこれに当たる

# その４
# O(2^n)
# ２のn乗に比例することを表している
# データに対して全ての組み合わせを調べるようなアルゴリズムがこれに当たる
# 指数時間アルゴリズムと呼ばれ、実用的にもとても時間が掛かるアルゴリズム

# 探索アルゴリズム
# 1.線形探索(O(n))
# n個のデータを１つずつ見て、指定された値を見つける方法
input = [3, 5, 9 ,12, 15, 21, 29, 35, 42, 51, 62, 78, 81, 87, 92, 93]

def linear_search(key, input)
  find_flag = false

  for i in 0..input.length
    if input[i] == key
      puts "#{key}はinput[#{i}]で発見しました！"
      find_flag = true
      break
    end
  end
  unless find_flag
    puts "#{key}は見つかりませでした"
  end
end

linear_search(62, input)
linear_search(9, input)
linear_search(10, input)

# 二分探索
# データは大きさ順に並んでいる必要がある
def binary_search1(key, input)
  find_flag = false

  left = 0
  right = input.length - 1
  center = (left + right) / 2

  while left <= right
    center = (left + right) / 2
    if key == input[center]
      find_flag = true
      break
    end
    break if center == right || center == left
    right = center if key <= input[center]; left = center if key >= input[center]
  end

  if find_flag
    puts "#{key}はinput[#{center}]で発見しました"
  else
    puts "#{key}は見つかりませんでした"
  end
end

binary_search1(62, input)

input2 = [1,2,3,4,5,6,7,8,9,10]

def binary_search2(key, input)
  left = 0
  right = input.length - 1
  center = (left + right) / 2

  while left <= right
    center = (left + right) / 2

    if input[center] == key
      return "index = #{center}"
    elsif input[center] < key
      left = center + 1
    else
      right = center - 1
    end
  end

  return "nothing"
end
puts binary_search2(5, input2)

# 挿入ソート
n = 5
arr1 = [4, 1, 3, 5, 2]

def insertion_sort(arr)
    i = 0
    
    while i < (arr.length - 1)
        x = arr[i+1]
        k = i+1
        
        while (k > 0) && arr[k-1] > x
            arr[k] = arr[k-1]
            k = k-1
        end
        
        arr[k] = x 
        i += 1
        
        p arr
    end
    
    arr
end
insertion_sort(arr1)