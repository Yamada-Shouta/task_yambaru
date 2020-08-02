users= [{name: :田中, age: 30, height: 160},
        {name: :佐藤, age: 70, height: 150},
        {name: :鈴木, age: 10, height: 120}
]

users.each do |user|

  puts "-------------------------"

  puts "#{user[:name]}さん"

  if user[:age] <= 64
    puts "年齢#{user[:age]}歳: 年齢確認OK"
  else
    puts "年齢#{user[:age]}歳: 年齢確認NG"
  end

  if user[:height] >= 130
    puts "身長#{user[:height]}cm: 身長確認OK"
  else
    puts "身長#{user[:height]}cm: 身長確認NG"
  end

  if user[:age] <= 64 && user[:height] >= 130
    puts "\nご利用いただけます"
  else
    puts "\nご利用いただけません"
  end
end