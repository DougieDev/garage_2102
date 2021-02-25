class Owner
  attr_reader :name,
              :occupation,
              :cars

  def initialize(name, occupation)
    @name = name
    @occupation = occupation
    @cars = []
  end

  def buy(car)
    @cars << car
  end

  def vintage_cars
    @cars.find_all do |car|
      car.age >= 25
    end
  end
end