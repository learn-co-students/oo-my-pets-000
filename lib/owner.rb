require 'pry'

require_relative 'fish'
require_relative 'dog'
require_relative 'cat'

class Owner
	attr_reader :species
	attr_accessor :name, :pets
	def initialize(name)
		@name = name
		@species = "human"
		Owner.all << self
	end

	def self.all
		@all ||= []
	end

	def self.reset_all
		self.all.clear
	end

	def self.count
		self.all.size
	end

	def say_species
		"I am a #{species}."
	end

	def pets
		@pets ||= {:fishes => [], :dogs => [], :cats => []}
	end

	def buy_fish(name)
		pets[:fishes] << Fish.new(name)
	end

	def buy_dog(name)
		pets[:dogs] << Dog.new(name)
	end

	def buy_cat(name)
		pets[:cats] << Cat.new(name)
	end

	def walk_dogs
		pets[:dogs].first.mood = "happy"
	end

	def play_with_cats
		pets[:cats].first.mood = "happy"
	end

	def feed_fish
		pets[:fishes].first.mood = "happy"
	end

	def sell_pets
		pets.values.each do |type_of_animal|
			type_of_animal.each do |animal|
				animal.mood = "nervous"
			end
			type_of_animal.clear
		end
	end

	def list_pets
		"I have #{pets[:fishes].size} fish, #{pets[:dogs].size} dog(s), and #{pets[:cats].size} cat(s)."
	end
end

