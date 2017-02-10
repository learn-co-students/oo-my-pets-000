class Cat

  attr_reader :name
  attr_accessor :mood
  
  def initialize(name = nil)
    @mood = "nervous"
    @name = name
  end

end