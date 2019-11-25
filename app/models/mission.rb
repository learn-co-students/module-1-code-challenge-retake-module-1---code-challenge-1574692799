class Mission
  attr_accessor :launch_date, :astronaut, :shuttle
  attr_reader

  @@all = []

  def initialize(launch_date, astronaut, shuttle)
    @launch_date = launch_date
    @astronaut = astronaut
    @shuttle = shuttle


    @@all << self
  end

  def self.all
    @@all
  end

  



end
