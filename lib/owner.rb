require 'pry'
class Owner
  # code goes here

  attr_accessor :pets
  attr_reader :species, :owner

  @@OWNERS = []
  
  def initialize(name)
    @pets = {fishes: [], cats: [], dogs: []}
    @@OWNERS << self
  end

  def self.all
    @@OWNERS
  end

  def self.reset_all
    @@OWNERS = []
  end

  def self.count
    @@OWNERS.count
  end

  def species
    @species = "human"
  end

  def say_species
    "I am a human."
  end

  def name=(def_name)
    @owner = def_name
  end

  def name
    @owner
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    #walk each dog
    @pets[:dogs].each {|dog| dog.mood = 'happy'}
  end

  def play_with_cats
    #play with each cat
    @pets[:cats].each {|cat| cat.mood = 'happy'}
  end

  def feed_fish
    #feed each fish
    @pets[:fishes].each {|fish| fish.mood = 'happy'}
  end

  def sell_pets
    @pets.each do |animals, animal_list|
     animal_list.each {|pet| pet.mood = 'nervous'}
     @pets[animals] = []
    end
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end
end