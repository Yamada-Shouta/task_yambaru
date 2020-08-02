languages = ["Ruby", "PHP", "JAVA"]

puts "様々な言語のHello World"

languages.each do |language|
  case language
    when "Ruby"
      puts "Ruby: puts \"Hello World!\""
    when "PHP"
      puts "PHP: echo \"Hello World!\";"
    when "JAVA"
      puts "JAVA: System.out.println(\"Hello World!\");"
  end
end