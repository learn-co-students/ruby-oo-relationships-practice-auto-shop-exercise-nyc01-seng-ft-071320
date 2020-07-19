class Mechanic

  attr_reader :name, :specialty
  @@all = []
def initialize(name, specialty)
  @name = name
  @specialty = specialty
  @@all << self
end

  def self.all
    @@all
  end

  def cars
    Car.all.select do |car|
      car.mechanic == self
    end
  end

  def car_owners
    self.all.map do |car|
      car.car_owners
    end
  end

  def car_owners_names
    car_owners.map do |car_owner|
      car_owner.name
    end
  end

end


# `Mechanic.all` Get a list of all mechanics

#   - `Mechanic#cars` Get a list of all cars that a mechanic services

#   - `Mechanic#car_owners` Get a list of all the car owners that go to a specific mechanic

#   - `Mechanic#car_owners_names` Get a list of the names of all car owners who go to a specific mechanic
