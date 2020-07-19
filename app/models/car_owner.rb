class CarOwner

  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def cars
    Car.all.select do |car|
      car.car_owner == self
    end
  end

  def mechanics
    self.cars.map do |car|
      car.mechanic
    end
  end

  def average_number_of_cars
    count_of_cars = Car.all.map do |car|
      car.make
    end.count
    count_of_car_owners = Car.all.map do |car|
      car.car_owner
    end.count

    average = count_of_cars.to_f / count_of_car_owners.to_f
  end


end


# - `CarOwner.all` Get a list of all owners

# - `CarOwner#cars` Get a list of all the cars that a specific owner has

# - `CarOwner#mechanics` Get a list of all the mechanics that a specific owner goes to

# - `CarOwner.average_number_of_cars` Get the average amount of cars owned for all 