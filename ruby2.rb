# String
str1 = "こおんはによちうわ"
str1.each_char.with_index {|c, i| print c if i.odd?}
print "\n"

str2 = "こんにちは、こんばんわ"
str2.delete!("こ")
p str2

str3 = "Ruby,Python,PHP"
str3.insert(4, ",Java")
puts str3

str4 = "ありがとう,ごめんなさい,すいません"
str4.insert(5, ",おはよう")
str4.insert(-1, ",こんばんは")
puts str4

str5 = "プログラミング言語：ruby"
puts str5.reverse

str6 = "東京 大阪 名古屋"
p str6.gsub(/( | )+/, ",")

# 10進数から2進数に変換
num2 = 255
str7 = num2.to_s(2)
p str7

# nilガード
age ||= 12 #ageがnilなら12が代入される

# Hash
hash1 = { "像" => 5, "ライオン" => 6, "トラ" => 7 }
p hash1.keys
p hash1.values

prices = { "ほうれん草" => 150, "じゃがいも" => 190, "牛肉" => 200,"ねぎ"=> 100}
p prices.select {|k, v| v > 180}

hash2 = {"hash" => 1}
p hash2.key?(:hash)
p hash2.key?("hash")

hash3 = {:hash => "Value"}
p hash3.value?("Value")

p a:1, b:2 # ハッシュとなる

hash4 = { :key1 => "メモ１", :key2 => "メモ2" }
hash5 = { :key3 => "メモ3"}
p hash4.merge(hash5)

hash6 = {key1: "memo1", keys2: "mome2"}
hash6.merge(key3: "memo3")
p hash6
# mergegは非破壊的メソッド