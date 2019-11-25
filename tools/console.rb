require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

astronaut1 = Astronaut.new("Name 1", 45, "Ranger")
astronaut2 = Astronaut.new("Name 2", 61, "Pilot")
astronaut3 = Astronaut.new("Name 3", 59, "Biochemist")
astronaut4 = Astronaut.new("Name 4", 34, "Cosmonaut")
astronaut5 = Astronaut.new("Name 5", 18, "Astronaut in Training")

shuttle1 = Shuttle.new("Model1", 4)
shuttle2 = Shuttle.new("Model2", 5)
shuttle3 = Shuttle.new("Model3", 8)
shuttle4 = Shuttle.new("Model4", 7)

m1 = Mission.new(1981, astronaut5, shuttle3)
m2 = Mission.new(1981, astronaut3, shuttle4)
m3 = Mission.new(1981, astronaut4, shuttle2)
m4 = Mission.new(2023, astronaut2, shuttle1)
m5 = Mission.new(1984, astronaut1, shuttle4)
m6 = Mission.new(1984, astronaut2, shuttle1)



binding.pry

puts "Let's go to space!" # just in case pry is buggy and exits
