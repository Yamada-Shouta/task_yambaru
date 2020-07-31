class Travel
  attr_reader :plan, :price

  def initialize(plan, price)
    @plan = plan
    @price = price
  end
  
  def plan_info
    return "#{@plan}(¥#{@price})"
  end
end

plan1 = Travel.new("沖縄旅行", 10000)
plan2 = Travel.new("北海道旅行", 20000)
plan3 = Travel.new("九州旅行", 15000)

puts <<~TEXT
旅行プランを選択してください
1.#{plan1.plan_info}
2.#{plan2.plan_info}
3.#{plan3.plan_info}
TEXT

puts "プランを選択>"
choice = gets.to_i

case choice
when 1
  choice = plan1.price
  puts "#{plan1.plan}ですね。何人でいきますか？"
when 2
  choice = plan2.price
  puts "#{plan2.plan}ですね。何人でいきますか？"
when 3
  choice = plan3.price
  puts "#{plan3.plan}ですね。何人でいきますか？"
else
  puts "不正な値です"
end

puts "人数を入力>"
select_person_number = gets.to_i

if select_person_number <= 0
  puts "不正な値です。"
elsif select_person_number < 5
  puts "合計料金:¥#{select_person_number * choice}"
else
  puts <<~TEXT
  5人以上なので10%割引となります
  合計料金:¥#{select_person_number * choice * 0.9}
  TEXT
end