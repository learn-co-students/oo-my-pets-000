class Owner
  # code goes here
  OWNERS = []
  attr_reader :species
  attr_accessor :name, :pets

  def initialize(species)
    @species = species
    OWNERS << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    OWNERS
  end

  def self.count
    OWNERS.length
  end

  def self.reset_all
      until OWNERS.empty?
        OWNERS.pop
    end
  end

  def say_species
    return "I am a #{@species}."
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def walk_dogs
    @pets[:dogs].each{|dog| dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each{|cat| cat.mood = "happy"}
  end

  def feed_fish
      @pets[:fishes].each{|fish| fish.mood = "happy"}
  end

  def sell_pets
    @pets[:dogs].each{|dog| dog.mood = "nervous"}
    @pets[:cats].each{|cat| cat.mood = "nervous"}
    @pets[:fishes].each{|fish| fish.mood = "nervous"}
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def list_pets
    string = "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end


end