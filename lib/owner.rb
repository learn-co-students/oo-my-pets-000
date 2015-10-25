require 'pry'

class Owner

  attr_reader :species
  attr_accessor :name, :pets
  
  @@owners = []

  def self.all
    @@owners
  end

  def self.reset_all
    @@owners = []
  end

  def self.count
    @@owners.count
  end

  def initialize (name)
    @@owners << self
    @name = name  
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(fish)
    @pets[:fishes] << Fish.new(fish)
  end

  def buy_cat(cat)
    @pets[:cats] << Cat.new(cat)
  end

  def buy_dog(dog)
    @pets[:dogs] << Dog.new(dog)
  end

  def walk_dogs
    @pets[:dogs].each{|dog| dog.mood=("happy")}
  end

  def play_with_cats
    @pets[:cats].each{|cat| cat.mood=("happy")}
  end

  def walk_dogs
    @pets[:dogs].each{|dog| dog.mood=("happy")}
  end

  def feed_fish
    @pets[:fishes].each{|fish| fish.mood=("happy")}
  end

  def sell_pets
    self.pets.each{|pet_type, pet|
      pet.each{|pet|
        pet.mood=("nervous")
      }
    }
    self.pets={}
  end

  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end

end

















