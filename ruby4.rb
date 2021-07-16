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