class Shuttle
  attr_accessor :model, :capacity
  attr_reader

  @@all = []

  def initialize(model, capacity)
    @model = model
    @capacity = capacity


    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_model(model)
    Shuttle.all.find do |shuttle|
      shuttle.model == model
    end
  end

  def missions
    Mission.all.select do |mission|
      mission.shuttle == self 
    end
  end 

  def current_astronauts
    missions.map do |mission| mission.astronaut
    end
  end


    

  
end 