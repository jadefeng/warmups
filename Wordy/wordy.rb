require 'pry'

puts "What is your method?"
answer = gets.chomp.downcase.split(" ")
result = []

answer.each do |entry|
	if (entry == "plus")
		plus_index = answer.index("plus")
		result = (answer[plus_index-1].to_i).send('+', answer[plus_index+1].to_i)
	end
end

puts "The solution is #{ result }."

# binding.pry

