class MegaGreeter
	attr_accessor :names

	# create the object
	def initialize(names = "World")
		@names = names
	end

	# Say hi to everybody
	def say_hi
		if @names.nil?
			puts "..."
		elsif @names.respond_to?("each")
			# @names is a list of some kind, iterator!
			@names.each do |name|
				puts "Hello #{name}!"
			end
		else
			puts "Hello #{@names}!"
		end
	end

	# Say bye to everybody
	def say_bye
		if @names.nil?
			puts "..."
		elsif @names.respond_to?("join")
			# Join the list elements with comma
			puts "Goodbye #{@names.join(", ")}. Come back soon!"
		else
			puts "Goodbye #{@names}. Come back soon!"
		end
	end
end

if __FILE__ == $0
	mg = MegaGreeter.new
	mg.say_hi
	mg.say_bye

	# Change name to be "Zake"
	mg.names = "Zeke"
	mg.say_hi
	mg.say_bye

	# Change the name toan array of names
	mg.names = ["Albert", "Brenda", "Charles", "Dave", "Engelbert"]
	mg.say_hi
	mg.say_bye

	# change to nil
	mg.names = nil
	mg.say_hi
	mg.say_bye
end