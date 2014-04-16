vowels = "AEIOU"

puts "What's your name?"
name = gets.chomp
new_name = ""
name.each_char do |character|
  character = character.capitalize
  if vowels.include? character
    puts "Give me an... " + character
  else
    puts "Give me a... " + character
  end
  new_name = new_name + character
end
puts new_name + "'s just GRAND!"
