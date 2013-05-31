class Pet
	attr_accessor :name, :type, :gender, :toys

	def initialize(name, type, gender, toys)
		@name = name
		@type = type
		@gender = gender
		@toys = toys
	end

	def get_toys
		if @toys.count == 0
			puts "No toys"
		else 
			puts @toys
		end
	end

	def to_s
		"#{@name} is a #{@gender} #{@type} with #{@toys} toys"
	end

end
