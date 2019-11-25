class Astronaut 
  attr_accessor :name, :age, :specialty
  attr_reader 

  @@all = []

  def initialize(name, age, specialty)
    @name = name
    @age = age
    @specialty = specialty


    @@all << self
  end

  def self.all
    @@all
  end


  

  


  def self.most_missions
    Astronaut.all.max_by do |astronaut|
      astronaut.missions.count
    end
  end
  

  def missions
    Mission.all.select do |mission|
      mission.astronaut == self
    end
  end

  def shuttles
    Mission.all.select do |mission| 
      mission.astronaut == self
    end
  end

  def join_shuttle(launch_date, shuttle)
    if shuttle.capacity > shuttle.missions.length
      Mission.new(launch_date, self, shuttle)
      else
    puts "This shuttle is at capacity!"
      end
    end
end