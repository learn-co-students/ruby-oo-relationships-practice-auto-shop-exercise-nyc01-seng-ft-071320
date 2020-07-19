class Car

  attr_reader :make, :model
  attr_accessor :car_owner, :mechanic
  @@all = []

  def initialize(make, model, classification, car_owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @car_owner = car_owner
    @mechanic = mechanic
    @@all << self
  end

  def self.all
    @@all
  end

  def all_classification
    self.all.map do |car|
      car.classification
    end
  end

  def find_mechanics(classification)
    self.all.select do |car|
      car.mechanic.specialty == classification
    end
  end
  
end


# - `Car.all` Get a list of all cars

#   - `Car.classifications` Get a list of all car classifications

#   - `Car.find_mechanics(classification)` Get a list of mechanics that have an 
#   expertise that matches the passed in car classification