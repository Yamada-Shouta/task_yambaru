  travel_plan1 = "沖縄旅行"
  travel_plan2 = "北海道旅行"
  travel_plan3 = "九州旅行"

# 沖縄旅行の値段
  travel_price1= 10000
# 北海道旅行の値段
  travel_price2= 20000
# 九州旅行の値段
  travel_price3= 15000

puts <<~TEXT
旅行プランを選択してください
1. #{travel_plan1}（¥#{travel_price1}）
2. #{travel_plan2}（¥#{travel_price2}）
3. #{travel_plan3}（¥#{travel_price3}）
TEXT

puts "プランを選択>"
select_plan = gets.to_i

case select_plan
when 1
  select_plan = travel_price1
  puts "#{travel_plan1}ですね。何人でいきますか？"
when 2
  select_plan = travel_price2
  puts "#{travel_plan2}ですね、何人で行きますか？"
when 3
  select_plan = travel_price3
  puts "#{travel_plan3}ですね、何人で行きますか？"
end

puts "人数を入力>"
select_person_number = gets.to_i

if select_person_number <= 0
  puts "不正な値です。"
elsif select_person_number < 4
  puts "合計料金:¥#{select_plan * select_person_number}"
else
  puts <<~TEXT
  5人以上なので10%割引となります
  合計料金:¥#{(select_plan * select_person_number) * 0.9}
  TEXT
end