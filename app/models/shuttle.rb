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

  def average_age
    astronauts = self.missions.map do |mission|
       mission.astronaut
    end
    ages = current_astronauts.map do |astronaut| 
      astronaut.age
    end
    ages.sum.to_f / ages.length
  end

  def astronauts_specialties
    current_astronauts.map do |astro| astro.specialty end
  end

  def self.smallest_mission
    self.all.min_by do |shuttle|
      shuttle.capacity
    end
  end

  def self.most_common_model
    counts = Hash.new(0)
    
    self.all.max_by { |shuttle| shuttle.model}
  end
      



    

  
end 