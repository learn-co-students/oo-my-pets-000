class Owner
  # code goes here
  attr_accessor :pets, :name

  @@owners = []

  def initialize(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @@owners << self
  end

  def species()
    "human"
  end

  def say_species()
    "I am a human."
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

  def self.all 
    @@owners
  end

  def self.reset_all 
    @@owners = []
  end

  def self.count
    @@owners.count
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end
  
  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets 
    @pets.each do |type, pets|
      @pets[type] = []
      pets.each do |pet|
        pet.mood = "nervous"
      end
    end
  end

  def list_pets
    num_fish = @pets[:fishes].count
    num_dogs = @pets[:dogs].count
    num_cats = @pets[:cats].count

    "I have #{num_fish} fish, #{num_dogs} dog(s), and #{num_cats} cat(s)."
  end
end