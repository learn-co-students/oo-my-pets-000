require "pry"

class Owner
  
	attr_reader :species
  attr_accessor :name, :pets

	def initialize(species)
		OWNERS<<self
		@species = species
		@pets = {:fishes => [], :dogs => [], :cats => []}
	end

	def say_species
		"I am a #{@species}."
	end

	def buy_fish(fish_name)
		self.pets[:fishes]<<fish_name
		fish_name.name = fish_name
	end

	def buy_cat(cat_name)
		self.pets[:cats]<<cat_name
		cat_name.name = cat_name
	end

	def buy_dog(dog_name)
		self.pets[:dogs]<<dog_name
		dog_name.name = dog_name
	end

	def walk_dogs
		pets[:dogs].each do |dog|
			dog.mood = "happy"
		end
	end
	
	def play_with_cats
		pets[:cats].each do |cat|
			cat.mood = "happy"
		end
	end

	def feed_fish
		pets[:fishes].each do |fish|
			fish.mood = "happy"
		end
	end

	def sell_pets
		self.pets.each do |pet_type, pets|
			pets.each do |pet|
				pet.mood = "nervous"
			end
		end
		@pets = {:fishes => [], :dogs => [], :cats => []}
	end

	def list_pets
		"I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
	end

	OWNERS = []

	def self.all
		OWNERS
	end

	def self.reset_all
    OWNERS.clear
  end

	def self.count
		OWNERS.count
	end

end

class String

	attr_accessor :name

end


