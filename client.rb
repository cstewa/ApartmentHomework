class Client
	attr_accessor :name, :pets 

	def initialize (name)
		@name = name 
		@pets = {}
	end 

	def adopt_pet(pet)
		@pets[pet.name] = pet
	end

	def giveup_pet(pet)
		@pets.delete(pet.name)
	end

end