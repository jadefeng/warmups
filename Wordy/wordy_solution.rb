require 'pry'

class Calculator
	def ask(question)
		parts = question.split(/\s+/)	# Split by some amount of space
		index = nil								# A number will only arise if there is one number
		parts.each_with_index do |word, i|		# Like an index but passes in the index number
			if word.match /\d+/ 				# If the word has more than one digit - REGULAR EXPRESSION
				index = i
				break
			end
		end

		if index.nil?
			raise "No numbers found." 			# Throw an error. Stop execution of the program
		end

		operand1 = parts[index].to_i
		operator = parts[index + 1].downcase
		operand2 = parts[index + 2].to_i

		result = case operator
			when "plus" then operand1 + operand2
			when "minus" then operand1 - operand2
			when "times" then operand1 * operand2
			when "over" then operand1 / operand2
		end

		result
	end

end

binding.pry