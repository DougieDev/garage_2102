class Garage
  attr_reader :name,
              :customers

  def initialize(name)
    @name = name
    @customers = []
  end

  def add_customer(customer)
    @customers << customer
  end


  # ======UNFINISHED=====
  # def all_cars
  #   list = []
  #   @customers.each do |customer|
  #     customer.cars.each do |car|
  #       list[car.make] = [] if list[car.make].nil?
  #       list[car.make] << cars
  #     end
  #   end
  #   list
  # end
  
end