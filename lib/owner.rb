require "pry"

class Owner
  
  attr_accessor :name, :pets, :fish, :dog, :cat, :self_count
  
  SELF_COUNT = []

  def initialize(name)
    @name = name
    @pets = { :fishes => [], :dogs => [], :cats => []}
    SELF_COUNT << self
  end

  def species
    return name
  end

  def say_species
    return "I am a #{name}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes].push(fish)
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats].push(cat)
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs].push(dog)
  end

  def feed_fish
    pets[:fishes].each {|animal| animal.mood = "happy"}
  end

  def walk_dogs
    pets[:dogs].each {|animal| animal.mood = "happy"}
  end

  def play_with_cats
    pets[:cats].each {|animal| animal.mood = "happy"}
  end

  def sell_pets
    @pets.each do |species, array|
      array.each {|animal| animal.mood = "nervous"}
      array.clear
    end
  end

  def self.all
    SELF_COUNT
  end

  def self.reset_all
    SELF_COUNT.clear
  end

  def self.count
    SELF_COUNT.count
  end
  
  def list_pets
    return "I have #{pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
  end


end