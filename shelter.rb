class Shelter
	attr_accessor :name, :pets 

	def initialize(name)
		@name= name
		@pets= {}
	end

	def get_pets
		if @pets.length == 0
			puts "no pets in this shelter"
		else  
			puts @pets
		end 
	end 

	def add_pets(pet)
		 @pets[pet.name] = pet
	end

	def remove_pet(pet_name)
			@pets.delete(pet_name)
	end

	def to_s
		puts "#{@name} has #{@pets}"
	end 
end