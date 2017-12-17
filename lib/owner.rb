class Owner
  # code goes here
  attr_reader :species
  attr_accessor :pets, :name

  @@all_owners = []

  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all_owners << self
  end

  def self.all
    @@all_owners
  end

  def self.reset_all
    @@all_owners.clear
  end

  def self.count
    @@all_owners.size
  end

  def say_species
    return "I am a #{@species}."
  end

  def buy_dog(name)
    dog = Dog.new(name)
    pets[:dogs] << dog
  end

  def buy_cat(name)
    cat = Cat.new(name)
    pets[:cats] << cat
  end

  def buy_fish(name)
    fish = Fish.new(name)
    pets[:fishes] << fish
  end

  def walk_dogs
    pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    pets.each do |type,pets|
      pets.each {|pet| pet.mood = "nervous"}
    end
    pets[:fishes].clear
    pets[:dogs].clear
    pets[:cats].clear
  end

  def list_pets
    "I have #{pets[:fishes].size} fish, #{pets[:dogs].size} dog(s), and #{pets[:cats].size} cat(s)."
  end

end
