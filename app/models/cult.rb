class Cult
  attr_accessor :name, :location, :founding_year, :slogan, :followers

  @@all = []

  def initialize(name, location, founding_year, slogan)
    @name = name
    @location = location
    @founding_year = founding_year
    @slogan = slogan
    @followers = []
    @@all << self
  end

  def self.all
    @@all
  end

  def recruit_follower(follower)
    @followers << follower
  end

  def cult_population
    @followers.length
  end

  def self.find_by_name(name)
    self.all.find {|cult| cult.name == name}
  end

  def self.find_by_location(location)
    self.all.select {|cult| cult.lcation == location}
  end

  def self.find_by_founding_year(year)
    self.all.select {|cult| cult.founding_year == year}
  end

end
