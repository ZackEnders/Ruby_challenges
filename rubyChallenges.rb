# Links to an external site.Calculator
# Create a class to model a physical calculator

# Class Methods: Each of these methods accept two arguments value1 and value2 and output the result as a return value

# add
# subtract
# multiply
# divide
# (Links to an external site.)


# class Calculator

#   attr_accessor :value1, :value2

#   	def initialize (value1,value2)
#    		@value1 = value1.to_f
#    		@value2 = value2.to_f
#  	end

#  	def add
#  		puts @value1 + @value2
#  	end

#  	def subtract
#  		puts @value1 - @value2
#  	end

#  	def multiply
#  		puts @value1 * @value2
#  	end
#  	def divide
# 		 puts @value1 / @value2
# 		#  puts @value1.fdiv(@value2)
#  	end
 	
# end

# blah = Calculator.new(2,4)

# # blah.value1 = (30.0)
# # blah.value2 = (20.0)

# puts blah.divide
# puts blah.add


#Elevator
# Create a class to model an elevator

# Instance Variables:

# floor - the floor you are currently on
# Instance Methods:

# The following methods will change the floor instance variable:

# go_up - tell the elevator to go up a floor
# go_down - tell the elevator to go down a floor
# floor - set this as a readable attribute to be accessed outside of the class definition
# cheery_greeting - display to the terminal the current floor with a interesting greeting
# Use the cheery_greeting method to display your greeting every time you change floors
# Challenge: If you are looking for a challenge then try these.

# Prevent the go_up method from going past the 12th floor
# Prevent the go_down method from going below the 1st floor



class Elevator 
	attr_reader :floor
	def initialize()
		@floor = 0
	end

	def go_up
		@floor += 1
		cheeky_greeting
	end

	def go_down
		@floor -= 1
		cheeky_greeting
	end

	def cheeky_greeting
		@floor = floor
		puts 'You are on floor number ' + floor.to_s
	end

	def select(num)
		if num < 0
			puts "Can't go any lower"
		elsif num > 12
			puts "No more floors yo"
		elsif num <= 12
			@floor = num
			cheeky_greeting
		end
	end
end

ele1 = Elevator.new()
puts ele1.go_up
puts ele1.select(5)
puts ele1.floor
puts ele1.go_down
puts ele1.select(14)
puts ele1.select(-2)