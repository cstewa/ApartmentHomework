require "pry"

require_relative "shelter"
require_relative "pet"
require_relative "client"

shelter = Shelter.new("Pet Home")

JaneTheCat = Pet.new("Jane", "cat", "female", ["ball", "string"])
PeterTheDog = Pet.new("Peter", "dog", "male", ["rubber duck", "bone", "chew toy"])
ChirpieTheBird = Pet.new("Chirpie", "bird", "female", ["stick"])

shelter.add_pets(JaneTheCat)
shelter.add_pets(PeterTheDog)
shelter.add_pets(ChirpieTheBird)

puts "Welcome to #{shelter.name}. What is your name?"

client_name = gets.chomp

client = Client.new(client_name)  


puts "Would you like to adopt a pet? (please say 'yes' or 'no')."

answer=gets.chomp.downcase
	if answer== "yes"
		puts shelter.pets
		puts "Which pet would you like to adopt? (please write the pet's name)."
		pet_to_adopt = gets.chomp.capitalize
		client.adopt_pet(shelter.pets[pet_to_adopt])
		shelter.remove_pet(pet_to_adopt)
		puts "Thank you for adopting #{pet_to_adopt}, #{client.name}"
	elsif answer== "no"
		puts "Would you like to give up a pet for adoption? (yes or no)" 
			answertwo= gets.chomp	
			if answertwo == "no"
				puts "goodbye, thanks for visiting #{client.name}."
			elsif answertwo == "yes"
				puts "Which pet would you like to give up?"
				pet_to_give = gets.chomp.capitalize
				puts "What kind of pet is it?"
				type = gets.chomp
				puts "What is your pet's gender (male or female)?"
				gender = gets.chomp
				pet_to_give = Pet.new(pet_to_give, type, gender, 0)
				shelter.add_pets(pet_to_give)
			end

	end






binding.pry